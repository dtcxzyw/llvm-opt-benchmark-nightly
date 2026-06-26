inline.NumInlined: 1579
inline.NumDeleted: 580
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtBL_3aws12precondition16S3ConditionalPutEECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.c = icmp sgt i64 %i.a, -1
  br i1 %i.c, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws12precondition16S3ConditionalPutECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws12precondition16S3ConditionalPutECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.g, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws12precondition16S3ConditionalPutECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws12precondition16S3ConditionalPutECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split: ; preds = %bb.f, %bb.c
  %.sink = phi ptr [ %0, %bb.c ], [ %i.f, %bb.f ]
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws12precondition16S3ConditionalPutECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws12precondition16S3ConditionalPutECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws12precondition16S3ConditionalPutECs9rVkZwOUgsI_13deltalake_aws.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !36, !noundef !22
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !380, !noundef !22 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !noalias !393, !nonnull !22, !noundef !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !393, !noundef !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !393, !noundef !22
  invoke void %i.e(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c, !inline_history !394

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !404, !nonnull !22, !align !153, !noundef !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !404, !nonnull !22, !noundef !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !404, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !404, !noundef !22
  invoke void %i.o(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.r, i64 noundef %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d, !inline_history !405

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !415, !nonnull !22, !align !153, !noundef !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !415, !nonnull !22, !noundef !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !415, !noundef !22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !415, !noundef !22
  tail call void %i.x(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.aa, i64 noundef %i.ac), !inline_history !416
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !420, !noalias !423
  %.promoted9.i = load i64, ptr %i.b, align 8, !alias.scope !417
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !417, !nonnull !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !417 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !417, !nonnull !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.e, align 8, !alias.scope !417
  br label %bb.b

bb.b:                                             ; preds = %.noexc2, %bb.a
  %i.p = phi ptr [ %i.aq, %.noexc2 ], [ %.promoted12.i, %bb.a ] ; 7 uses
  %.sroa.5.0.i10.i = phi i64 [ %.sroa.5.0.i11.i, %.noexc2 ], [ %.promoted9.i, %bb.a ] ; 3 uses
  %.sroa.0.0.i7.i = phi i64 [ %.sroa.0.0.i8.i, %.noexc2 ], [ %.promoted.i, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !417
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.q = trunc nuw i64 %.sroa.0.0.i7.i to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %.sroa.5.0.i10.i, %i.j
  br i1 %i.r, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.s = icmp eq ptr %i.p, %i.d
  br i1 %i.s, label %bb.l, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 3 uses
  store ptr %i.t, ptr %i.e, align 8, !alias.scope !429, !noalias !430
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !432 ; 5 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.sroa.5.0.i10.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !204, !noalias !433, !noundef !22
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %.thread.i

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0.i10.i, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noalias !433, !noundef !22
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.e
  %.sroa.5.0.i.i = phi i64 [ %i.z, %bb.g ], [ undef, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.e ] ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !420, !noalias !423
  store i64 %.sroa.5.0.i.i, ptr %i.b, align 8, !alias.scope !420, !noalias !423
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !noalias !420
  store i64 0, ptr %i.a, align 8, !alias.scope !423, !noalias !420
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.h:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, i64 32, i1 false), !noalias !420
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !420
  %i.ac = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  %.sroa.56.0.i.i = select i1 %i.ac, i64 %.sroa.7.0.copyload.i.i, i64 undef ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !420, !noalias !423
  store i64 %.sroa.56.0.i.i, ptr %i.b, align 8, !alias.scope !420, !noalias !423
  store i64 1, ptr %i.a, align 8, !alias.scope !423, !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.ad = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !449, !noalias !417, !noundef !22 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !462, !nonnull !22, !noundef !22
  %i.ah = load ptr, ptr %i.g, align 8, !alias.scope !463, !noalias !417, !noundef !22
  %i.ai = load i64, ptr %i.h, align 8, !alias.scope !463, !noalias !417, !noundef !22
  invoke void %i.ag(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.j, !noalias !417, !inline_history !464

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.ak = load ptr, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !474, !noalias !417, !nonnull !22, !align !153, !noundef !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !475, !nonnull !22, !noundef !22
  %i.an = load ptr, ptr %i.n, align 8, !alias.scope !474, !noalias !417, !noundef !22
  %i.ao = load i64, ptr %i.o, align 8, !alias.scope !474, !noalias !417, !noundef !22
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.an, i64 noundef %i.ao)
          to label %.body unwind label %bb.k, !noalias !417, !inline_history !405

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !417
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %bb.h, %.thread.i
  %i.aq = phi ptr [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.p, %.thread.i ]
  %.sroa.5.0.i11.i = phi i64 [ %.sroa.56.0.i.i, %bb.h ], [ %.sroa.56.0.i.i, %bb.i ], [ %.sroa.5.0.i.i, %.thread.i ]
  %.sroa.0.0.i8.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.h ], [ %.sroa.0.0.copyload.i.i, %bb.i ], [ %.sroa.0.0.i.i, %.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.ar = load ptr, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !485, !noalias !417, !nonnull !22, !align !153, !noundef !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !486, !nonnull !22, !noundef !22
  %i.au = load ptr, ptr %i.n, align 8, !alias.scope !485, !noalias !417, !noundef !22
  %i.av = load i64, ptr %i.o, align 8, !alias.scope !485, !noalias !417, !noundef !22
  invoke void %i.at(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.au, i64 noundef %i.av)
          to label %.noexc2 unwind label %.loopexit, !inline_history !487

.noexc2:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  br label %bb.b

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.p

bb.l:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  store i64 0, ptr %i.i, align 8, !alias.scope !417
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit5 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.az, %bb.m ], [ %eh.lpad-body, %.body ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #31
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit5
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit5
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
  ret void

bb.p:                                             ; preds = %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3k_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2O_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2V_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2V_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2O_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEB24_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !494, !nonnull !22, !noundef !22
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !497
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !504, !nonnull !22, !noundef !22
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !505
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBL_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2L_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBL_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2L_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3k_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) #31
          to label %common.resume unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBL_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2L_.exit: ; preds = %bb.d, %bb.e
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3k_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBL_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2L_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

end_hunk_0
begin_hunk_1_@_RINvXs6_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMapINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECs9rVkZwOUgsI_13deltalake_aws:bb.a

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.noexc
  %i.bk = load ptr, ptr %i.bi, align 8, !noalias !3252, !nonnull !22, !noundef !22
  %i.bl = icmp ult i64 %.sroa.022.0.i, %i.bh
  tail call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3252
  store i64 %i.bh, ptr %i.m, align 8, !noalias !3252
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bk, ptr %i.bm, align 8, !noalias !3252
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.bn, align 8, !noalias !3252
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE11extend_withCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.ba, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.h, !noalias !3252

bb.h:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.m) #31
          to label %.body unwind label %bb.i, !noalias !3252

bb.i:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !3252
  unreachable

_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !3248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3252
  %i.bq = invoke { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE16into_boxed_sliceCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc22 unwind label %bb.c   ; 2 uses

.noexc22:                                         ; preds = %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3248
  %.val31.i = load i64, ptr %i.as, align 8, !alias.scope !3248, !noundef !22 ; 2 uses
  %i.bt = icmp eq i64 %.val31.i, 0
  br i1 %i.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.j

bb.j:                                             ; preds = %.noexc22
  %.val.i19 = load ptr, ptr %i.ar, align 8, !alias.scope !3248, !nonnull !22, !noundef !22
  %i.bu = shl nuw nsw i64 %.val31.i, 2
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i19, i64 noundef range(i64 1, 0) %i.bu, i64 noundef 2) #27, !noalias !3248
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.k:                                             ; preds = %bb.e
  %i.bv = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.ba) #33
          to label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.j, %.noexc22
  store ptr %i.br, ptr %i.ar, align 8, !alias.scope !3248
  store i64 %i.bs, ptr %i.as, align 8, !alias.scope !3248
  %i.bw = lshr i64 %i.ba, 2
  %i.bx = sub nsw i64 %i.ba, %i.bw                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3248
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.bx, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc24 unwind label %bb.c

.noexc24:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.by = load i64, ptr %i.n, align 8, !range !204, !noalias !3248, !noundef !22
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !36, !noalias !3248, !noundef !22 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !6

bb.l:                                             ; preds = %.noexc24
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !3248
  br label %.invoke

.invoke:                                          ; preds = %bb.g, %bb.l
  %i.ce = phi i64 [ %i.cb, %bb.l ], [ %i.bh, %bb.g ]
  %i.cf = phi i64 [ %i.cd, %bb.l ], [ %i.bj, %bb.g ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cf) #28
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %.noexc24
  %i.cg = load ptr, ptr %i.cc, align 8, !noalias !3248, !nonnull !22, !noundef !22 ; 2 uses
  %i.ch = icmp ule i64 %i.bx, %i.cb
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3248
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %i.ci, %bb.n ]
  store i64 %i.cb, ptr %i.an, align 8, !alias.scope !3248
  %.sroa.5.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx.i20, align 8, !alias.scope !3248
  store i64 0, ptr %i.ah, align 8, !alias.scope !3248
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.o
  store i64 %i.cb, ptr %i.an, align 8, !alias.scope !3248
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx18.i, align 8, !alias.scope !3248
  store i64 0, ptr %i.ah, align 8, !alias.scope !3248
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.k
  br i1 %i.bv, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCs9rVkZwOUgsI_13deltalake_aws.exit.thread, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCs9rVkZwOUgsI_13deltalake_aws.exit, !prof !3255

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCs9rVkZwOUgsI_13deltalake_aws.exit.thread: ; preds = %bb.d, %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
          to label %.noexc26 unwind label %bb.c

.noexc26:                                         ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCs9rVkZwOUgsI_13deltalake_aws.exit.thread
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  %i.cl = load i64, ptr %i.w, align 8, !range !204, !alias.scope !3259, !noalias !3256, !noundef !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.co = load i64, ptr %i.cm, align 8, !alias.scope !3259, !noalias !3256, !noundef !22 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !3259, !noalias !3256, !noundef !22 ; 2 uses
  %i.cr = icmp ult i64 %i.co, %i.cq
  br i1 %i.cr, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3261)
  %i.cs = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3264, !noalias !3265, !nonnull !22, !noundef !22
  %i.ct = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3264, !noalias !3265, !nonnull !22, !noundef !22 ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.cs
  br i1 %i.cu, label %bb.w, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3264, !noalias !3265
  %.sroa.0.0.copyload.i = load i64, ptr %i.ct, align 8, !noalias !3267 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %.not.i, label %bb.w, label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !3259, !noalias !3256, !nonnull !22, !noundef !22
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.cx, i64 %i.co ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !range !204, !noalias !3268, !noundef !22
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.v, label %bb.z

bb.u:                                             ; preds = %bb.r
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323) #32
          to label %.noexc28 unwind label %bb.c

.noexc28:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !3268, !noundef !22
  br label %bb.z

bb.w:                                             ; preds = %bb.s, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.x

bb.x:                                             ; preds = %bb.ec, %bb.w
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.y:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3267
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.df = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  %.sroa.56.0.i = select i1 %i.df, i64 %.sroa.7.0.copyload.i, i64 undef
  store i64 %.sroa.0.0.copyload.i, ptr %i.w, align 8, !alias.scope !3259, !noalias !3256
  store i64 %.sroa.56.0.i, ptr %i.cm, align 8, !alias.scope !3259, !noalias !3256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.de, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5102.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6105.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.5102.8..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.6105.8..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.eh = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.ae

bb.z:                                             ; preds = %bb.v, %bb.t
  %.sroa.5.0.i = phi i64 [ %i.dd, %bb.v ], [ undef, %bb.t ]
  %.sroa.0.0.i27 = phi i64 [ 1, %bb.v ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i27, ptr %i.w, align 8, !alias.scope !3259, !noalias !3256
  store i64 %.sroa.5.0.i, ptr %i.cm, align 8, !alias.scope !3259, !noalias !3256
  %i.es = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.54.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.es, i64 40, i1 false), !noalias !3259
  store i64 0, ptr %i.u, align 8, !alias.scope !3256, !noalias !3259
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 73 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load i64, ptr %i.u, align 8, !range !187, !noundef !22
  %.not10 = icmp eq i64 %i.eu, 2
  br i1 %.not10, label %.body, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  call void @llvm.experimental.noalias.scope.decl(metadata !3272)
  call void @llvm.experimental.noalias.scope.decl(metadata !3275)
  %i.ev = load ptr, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !3278, !nonnull !22, !align !153, !noundef !22
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !3278, !nonnull !22, !noundef !22
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !3278, !noundef !22
  %i.fb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !3278, !noundef !22
  invoke void %i.ex(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef %i.fa, i64 noundef %i.fc)
          to label %.body unwind label %bb.ad, !inline_history !405

bb.ad:                                            ; preds = %.body36.thread122, %bb.ac, %.body
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ae:                                            ; preds = %bb.ed, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !3279)
  call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.833.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  %i.fe = load i64, ptr %i.ah, align 8, !alias.scope !3287, !noalias !3288, !noundef !22 ; 4 uses
  %i.ff = icmp ult i64 %i.fe, 88686269585142076
  call void @llvm.assume(i1 %i.ff)
  %i.fg = load i64, ptr %0, align 8, !range !187, !alias.scope !3287, !noalias !3288, !noundef !22
  %i.fh = icmp eq i64 %i.fg, 1
  %i.fi = load i64, ptr %i.as, align 8, !alias.scope !3287, !noalias !3288, !noundef !22 ; 5 uses
  br i1 %i.fh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fj = uitofp nneg i64 %i.fe to float
  %i.fk = uitofp i64 %i.fi to float
  %i.fl = fdiv float %i.fj, %i.fk
  %i.fm = fcmp ult float %i.fl, 2.000000e-01
  br i1 %i.fm, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fn = lshr i64 %i.fi, 2
  %i.fo = sub i64 %i.fi, %i.fn
  %i.fp = icmp eq i64 %i.fe, %i.fo
  br i1 %i.fp, label %bb.aq, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvMs12_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_6Danger7set_red(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %.noexc.i unwind label %.loopexit, !noalias !3288

.noexc.i:                                         ; preds = %bb.ah
  %i.fq = load ptr, ptr %i.ar, align 8, !alias.scope !3287, !noalias !3288, !nonnull !22, !noundef !22 ; 5 uses
  %i.fr = load i64, ptr %i.as, align 8, !alias.scope !3287, !noalias !3288, !noundef !22 ; 2 uses
  %.idx.i.i = shl i64 %i.fr, 2                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx.i.i
  %i.ft = icmp eq i64 %i.fr, 0
  br i1 %i.ft, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc.i
  %i.fu = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.fv = lshr exact i64 %i.fu, 2
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fu, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader782, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.fw, 9223372036854775800     ; 3 uses
  %i.fx = shl i64 %n.vec, 2
  %i.fy = getelementptr i8, ptr %i.fq, i64 %i.fx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fz = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fq, i64 %i.fz
  %i.ga = getelementptr i8, ptr %i.fq, i64 %i.fz
  %next.gep776 = getelementptr i8, ptr %i.ga, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !3288
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep776, align 2, !noalias !3288
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !3290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader782

.lr.ph.i.i.preheader782:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.01.018.i.i.ph = phi ptr [ %i.fq, %.lr.ph.i.i.preheader ], [ %i.fy, %middle.block ]
  br label %.lr.ph.i.i

bb.ai:                                            ; preds = %bb.af
  store i64 0, ptr %0, align 8, !alias.scope !3287, !noalias !3288
  %i.gc = shl i64 %i.fi, 1
  %i.gd = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.gc) #33
          to label %.noexc65.i unwind label %.loopexit, !noalias !3288

.noexc65.i:                                       ; preds = %bb.ai
  br i1 %i.gd, label %bb.bd, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9rVkZwOUgsI_13deltalake_aws.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader782, %.lr.ph.i.i
  %.sroa.01.018.i.i = phi ptr [ %i.ge, %.lr.ph.i.i ], [ %.sroa.01.018.i.i.ph, %.lr.ph.i.i.preheader782 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i.i, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.018.i.i, align 2, !noalias !3288
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i.i, i64 2
  store i16 0, ptr %i.gf, align 2, !noalias !3288
  %i.gg = icmp eq ptr %i.ge, %i.fs
  br i1 %i.gg, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !3293

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.gh = load ptr, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !alias.scope !3297, !noalias !3288, !nonnull !22, !noundef !22 ; 2 uses
  %i.gi = load i64, ptr %i.ah, align 8, !alias.scope !3297, !noalias !3288, !noundef !22 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.gi, 104
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx.i.i.i
  %i.gk = icmp eq i64 %i.gi, 0
  br i1 %i.gk, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9rVkZwOUgsI_13deltalake_aws.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.gl = load i16, ptr %i.dg, align 8, !alias.scope !3297, !noalias !3288 ; 3 uses
  %i.gm = load ptr, ptr %i.ar, align 8, !alias.scope !3297, !noalias !3288, !nonnull !22 ; 3 uses
  %i.gn = load i64, ptr %i.as, align 8, !alias.scope !3297, !noalias !3288 ; 4 uses
  %i.go = zext i16 %i.gl to i64
  %.not = icmp eq i64 %i.gn, 0
  %.not954.a = icmp eq i64 %i.gn, 0
  br label %bb.aj

end_hunk_1
begin_hunk_2_@_RINvXs6_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMapINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.dl:                                            ; preds = %bb.dg
  %i.qj = getelementptr inbounds nuw [72 x i8], ptr %i.nm, i64 %i.pq ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store i64 1, ptr %i.qk, align 8, !noalias !3477
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store i64 %.sroa.0.062.i.i, ptr %i.ql, align 8, !noalias !3477
  br label %bb.dk

bb.dm:                                            ; preds = %bb.dk
  %i.qm = icmp ult i64 %i.po, %i.of
  br i1 %i.qm, label %bb.dq, label %.invoke.i.i.i

bb.dn:                                            ; preds = %bb.dk
  %i.qn = icmp ult i64 %i.po, %i.le
  br i1 %i.qn, label %bb.do, label %.invoke.i.i.i

bb.do:                                            ; preds = %bb.dn
  %i.qo = getelementptr inbounds nuw [104 x i8], ptr %i.my, i64 %i.po ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !range !204, !noalias !3477, !noundef !22
  %i.qq = trunc nuw i64 %i.qp to i1
  br i1 %i.qq, label %bb.dp, label %.invoke98.i.i.i, !prof !3154

bb.dp:                                            ; preds = %bb.do
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store i64 %.sroa.0.062.i.i, ptr %i.qr, align 8, !noalias !3477
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.invoke98.i.i.i:                                  ; preds = %bb.do, %bb.di
  %i.qs = phi ptr [ @33, %bb.di ], [ @36, %bb.do ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qs) #28
          to label %.cont99.i.i.i unwind label %bb.df, !noalias !3477

.cont99.i.i.i:                                    ; preds = %.invoke98.i.i.i
  unreachable

bb.dq:                                            ; preds = %bb.dm
  %i.qt = getelementptr inbounds nuw [72 x i8], ptr %i.nm, i64 %i.po ; 2 uses
  store i64 1, ptr %i.qt, align 8, !noalias !3477
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store i64 %.sroa.0.062.i.i, ptr %i.qu, align 8, !noalias !3477
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.invoke.i.i.i:                                    ; preds = %bb.dn, %bb.dm, %bb.dh, %bb.dg, %bb.dd
  %i.qv = phi i64 [ %i.po, %bb.dn ], [ %i.pq, %bb.dg ], [ %i.pq, %bb.dh ], [ %i.po, %bb.dm ], [ %.sroa.0.062.i.i, %bb.dd ]
  %i.qw = phi i64 [ %i.le, %bb.dn ], [ %i.of, %bb.dg ], [ %i.le, %bb.dh ], [ %i.of, %bb.dm ], [ %i.of, %bb.dd ]
  %i.qx = phi ptr [ @35, %bb.dn ], [ @34, %bb.dg ], [ @32, %bb.dh ], [ @37, %bb.dm ], [ @31, %bb.dd ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.qv, i64 noundef %i.qw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qx) #28
          to label %.cont.i.i.i unwind label %bb.df, !noalias !3477

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.dr:                                            ; preds = %bb.df
  %i.qy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !3477
  unreachable

_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dq, %bb.dp, %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !3501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3477
  %i.qz = load i64, ptr %i.dv, align 8, !range !204, !noalias !3475, !noundef !22
  %i.ra = trunc nuw i64 %i.qz to i1
  br i1 %i.ra, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.rb = load i64, ptr %i.dw, align 8, !noalias !3475, !noundef !22 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3502)
  call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.rc = load ptr, ptr %i.dx, align 8, !alias.scope !3514, !noalias !3475, !nonnull !22, !align !153, !noundef !22
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = load ptr, ptr %i.rd, align 8, !noalias !3515, !nonnull !22, !noundef !22
  %i.rf = load ptr, ptr %i.dz, align 8, !alias.scope !3514, !noalias !3475, !noundef !22
  %i.rg = load i64, ptr %i.ea, align 8, !alias.scope !3514, !noalias !3475, !noundef !22
  invoke void %i.re(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %i.rf, i64 noundef %i.rg)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !3454, !inline_history !3516

.noexc12.i:                                       ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3475
  %i.rh = icmp ult i64 %i.rb, %i.of
  br i1 %i.rh, label %.lr.ph.i.i45, label %._crit_edge.i.invoke.i

bb.dt:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  call void @llvm.experimental.noalias.scope.decl(metadata !3520)
  call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  call void @llvm.experimental.noalias.scope.decl(metadata !3526)
  %i.ri = load ptr, ptr %i.dx, align 8, !alias.scope !3529, !noalias !3475, !nonnull !22, !align !153, !noundef !22
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.rk = load ptr, ptr %i.rj, align 8, !noalias !3530, !nonnull !22, !noundef !22
  %i.rl = load ptr, ptr %i.dz, align 8, !alias.scope !3529, !noalias !3475, !noundef !22
  %i.rm = load i64, ptr %i.ea, align 8, !alias.scope !3529, !noalias !3475, !noundef !22
  invoke void %i.rk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %i.rl, i64 noundef %i.rm)
          to label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %.loopexit.split-lp.i.loopexit, !noalias !3454, !inline_history !3516

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3475
  br label %bb.dv

bb.du:                                            ; preds = %.body.i43
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !3465
  unreachable

bb.dv:                                            ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.cg
  %i.ro = getelementptr inbounds nuw i8, ptr %i.mz, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.ro, i64 40, i1 false), !noalias !3531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ro, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  call void @llvm.experimental.noalias.scope.decl(metadata !3535)
  call void @llvm.experimental.noalias.scope.decl(metadata !3538)
  %i.rp = load ptr, ptr %i.t, align 8, !alias.scope !3541, !nonnull !22, !align !153, !noundef !22
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !3541, !nonnull !22, !noundef !22
  %i.rs = load ptr, ptr %i.ec, align 8, !alias.scope !3541, !noundef !22
  %i.rt = load i64, ptr %i.ed, align 8, !alias.scope !3541, !noundef !22
  invoke void %i.rr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef %i.rs, i64 noundef %i.rt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit52 unwind label %.body36.thread127.loopexit, !inline_history !405

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit52: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit52
  %.sroa.7.0 = phi i64 [ %i.jv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit52 ], [ %i.jj, %bb.dy ] ; 6 uses
  %i.ru = load i64, ptr %i.w, align 8, !range !204, !alias.scope !3542, !noalias !3545, !noundef !22
  %i.rv = trunc nuw i64 %i.ru to i1
  br i1 %i.rv, label %.lr.ph, label %._crit_edge

bb.dx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3373
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
          to label %.noexc53 unwind label %.body36.thread127.loopexit.split-lp

.noexc53:                                         ; preds = %bb.dx
  unreachable

bb.dy:                                            ; preds = %bb.cd, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dw

.lr.ph:                                           ; preds = %bb.dw, %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3547)
  %i.rw = load i64, ptr %i.cm, align 8, !alias.scope !3547, !noalias !3545, !noundef !22 ; 3 uses
  %i.rx = load i64, ptr %i.eh, align 8, !alias.scope !3547, !noalias !3545, !noundef !22 ; 2 uses
  %i.ry = icmp ult i64 %i.rw, %i.rx
  br i1 %i.ry, label %bb.dz, label %bb.ea

._crit_edge:                                      ; preds = %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCs9rVkZwOUgsI_13deltalake_aws.exit, %bb.dw
  call void @llvm.experimental.noalias.scope.decl(metadata !3549)
  %i.rz = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3552, !noalias !3553, !nonnull !22, !noundef !22
  %i.sa = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3552, !noalias !3553, !nonnull !22, !noundef !22 ; 6 uses
  %i.sb = icmp eq ptr %i.sa, %i.rz
  br i1 %i.sb, label %bb.ec, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i54

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i54: ; preds = %._crit_edge
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 104
  store ptr %i.sc, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3552, !noalias !3553
  %.sroa.0.0.copyload.i55 = load i64, ptr %i.sa, align 8, !noalias !3555 ; 3 uses
  %.not.i56 = icmp eq i64 %.sroa.0.0.copyload.i55, 2
  br i1 %.not.i56, label %bb.ec, label %bb.ed

bb.dz:                                            ; preds = %.lr.ph
  %i.sd = load ptr, ptr %i.ei, align 8, !alias.scope !3547, !noalias !3545, !nonnull !22, !noundef !22
  %i.se = getelementptr inbounds nuw [72 x i8], ptr %i.sd, i64 %i.rw ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sg = load i64, ptr %i.sf, align 8, !range !204, !noalias !3556, !noundef !22
  %i.sh = trunc nuw i64 %i.sg to i1
  br i1 %i.sh, label %bb.eb, label %bb.ee

bb.ea:                                            ; preds = %.lr.ph
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.rw, i64 noundef %i.rx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323) #32
          to label %.noexc68 unwind label %.body36.thread127.loopexit.split-lp

.noexc68:                                         ; preds = %bb.ea
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sj = load i64, ptr %i.si, align 8, !noalias !3556, !noundef !22
  br label %bb.ee

bb.ec:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i54, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.x

bb.ed:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.i54
  %.sroa.9.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.sa, i64 64
  %.sroa.7.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %.sroa.7.0.copyload.i59 = load i64, ptr %.sroa.7.0..sroa_idx.i58, align 8, !noalias !3555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i57, i64 32, i1 false)
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sl = trunc nuw i64 %.sroa.0.0.copyload.i55 to i1
  %.sroa.56.0.i63 = select i1 %i.sl, i64 %.sroa.7.0.copyload.i59, i64 undef
  store i64 %.sroa.0.0.copyload.i55, ptr %i.w, align 8, !alias.scope !3547, !noalias !3545
  store i64 %.sroa.56.0.i63, ptr %i.cm, align 8, !alias.scope !3547, !noalias !3545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.sk, i64 40, i1 false)
  br label %bb.ae

bb.ee:                                            ; preds = %bb.eb, %bb.dz
  %.sroa.5.0.i65 = phi i64 [ %i.sj, %bb.eb ], [ undef, %bb.dz ]
  %.sroa.0.0.i66 = phi i64 [ 1, %bb.eb ], [ 0, %bb.dz ]
  store i64 %.sroa.0.0.i66, ptr %i.w, align 8, !alias.scope !3547, !noalias !3545
  store i64 %.sroa.5.0.i65, ptr %i.cm, align 8, !alias.scope !3547, !noalias !3545
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.sm, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  %i.sn = load i64, ptr %i.ah, align 8, !noalias !3557, !noundef !22 ; 2 uses
  %.not.i70 = icmp ult i64 %.sroa.7.0, %i.sn
  br i1 %.not.i70, label %bb.ef, label %bb.ep

bb.ef:                                            ; preds = %bb.ee
  %i.so = load ptr, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !noalias !3557, !nonnull !22, !noundef !22
  %i.sp = getelementptr inbounds nuw [104 x i8], ptr %i.so, i64 %.sroa.7.0 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3560)
  call void @llvm.experimental.noalias.scope.decl(metadata !3563)
  %i.sq = load i64, ptr %i.sp, align 8, !range !204, !alias.scope !3560, !noalias !3565, !noundef !22
  %i.sr = trunc nuw i64 %i.sq to i1
  br i1 %i.sr, label %bb.eg, label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 16 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !alias.scope !3560, !noalias !3565, !noundef !22 ; 4 uses
  %i.su = load i64, ptr %i.dr, align 8, !alias.scope !3563, !noalias !3567, !noundef !22 ; 7 uses
  %i.sv = icmp ult i64 %i.su, 128102389400760776
  call void @llvm.assume(i1 %i.sv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eo, ptr noundef nonnull align 8 dereferenceable(40) %i.sm, i64 40, i1 false)
  store i64 1, ptr %i.c, align 8, !noalias !3568
  store i64 %i.st, ptr %i.ep, align 8, !noalias !3568
  store i64 0, ptr %i.eq, align 8, !noalias !3568
  store i64 %.sroa.7.0, ptr %i.er, align 8, !noalias !3568
  call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  call void @llvm.experimental.noalias.scope.decl(metadata !3572)
  %i.sw = load i64, ptr %i.ej, align 8, !range !161, !alias.scope !3574, !noalias !3575, !noundef !22
  %i.sx = icmp eq i64 %i.su, %i.sw
  br i1 %i.sx, label %bb.eh, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.ei, !noalias !3575

bb.ei:                                            ; preds = %bb.eh
  %i.sy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !3576)
  call void @llvm.experimental.noalias.scope.decl(metadata !3579)
  call void @llvm.experimental.noalias.scope.decl(metadata !3582)
  call void @llvm.experimental.noalias.scope.decl(metadata !3585)
  %i.sz = load ptr, ptr %i.eo, align 8, !alias.scope !3588, !noalias !3589, !nonnull !22, !align !153, !noundef !22
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8, !noalias !3590, !nonnull !22, !noundef !22
  %i.tc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.td = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.te = load ptr, ptr %i.td, align 8, !alias.scope !3588, !noalias !3589, !noundef !22
  %i.tf = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.tg = load i64, ptr %i.tf, align 8, !alias.scope !3588, !noalias !3589, !noundef !22
  invoke void %i.tb(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tc, ptr noundef %i.te, i64 noundef %i.tg)
          to label %.body unwind label %bb.ej, !noalias !3567, !inline_history !3500

bb.ej:                                            ; preds = %bb.ei
  %i.th = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !3567
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.eh, %bb.eg
  %i.ti = load ptr, ptr %i.dq, align 8, !alias.scope !3574, !noalias !3575, !nonnull !22, !noundef !22
  %i.tj = getelementptr inbounds nuw [72 x i8], ptr %i.ti, i64 %i.su
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tj, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !3567
  %i.tk = add nuw nsw i64 %i.su, 1                ; 2 uses
  store i64 %i.tk, ptr %i.dr, align 8, !alias.scope !3574, !noalias !3575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3568
  %.not.i.i = icmp ugt i64 %i.st, %i.su
  br i1 %.not.i.i, label %.noexc.i72, label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.tl = load i64, ptr %i.dr, align 8, !alias.scope !3563, !noalias !3567, !noundef !22 ; 6 uses
  %i.tm = icmp ult i64 %i.tl, 128102389400760776
  call void @llvm.assume(i1 %i.tm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 8 dereferenceable(40) %i.sm, i64 40, i1 false)
  store i64 0, ptr %i.b, align 8, !noalias !3568
  store i64 %.sroa.7.0, ptr %i.el, align 8, !noalias !3568
  store i64 0, ptr %i.em, align 8, !noalias !3568
  store i64 %.sroa.7.0, ptr %i.en, align 8, !noalias !3568
  call void @llvm.experimental.noalias.scope.decl(metadata !3591)
  call void @llvm.experimental.noalias.scope.decl(metadata !3594)
  %i.tn = load i64, ptr %i.ej, align 8, !range !161, !alias.scope !3596, !noalias !3597, !noundef !22
  %i.to = icmp eq i64 %i.tl, %i.tn
  br i1 %i.to, label %bb.el, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit9.i.i

bb.el:                                            ; preds = %bb.ek
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit9.i.i unwind label %bb.em, !noalias !3597

bb.em:                                            ; preds = %bb.el
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !3598)
  call void @llvm.experimental.noalias.scope.decl(metadata !3601)
  call void @llvm.experimental.noalias.scope.decl(metadata !3604)
  call void @llvm.experimental.noalias.scope.decl(metadata !3607)
  %i.tq = load ptr, ptr %i.ek, align 8, !alias.scope !3610, !noalias !3611, !nonnull !22, !align !153, !noundef !22
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  %i.ts = load ptr, ptr %i.tr, align 8, !noalias !3612, !nonnull !22, !noundef !22
  %i.tt = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.tu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.tv = load ptr, ptr %i.tu, align 8, !alias.scope !3610, !noalias !3611, !noundef !22
  %i.tw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.tx = load i64, ptr %i.tw, align 8, !alias.scope !3610, !noalias !3611, !noundef !22
  invoke void %i.ts(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef %i.tv, i64 noundef %i.tx)
          to label %.body unwind label %bb.en, !noalias !3567, !inline_history !3500

bb.en:                                            ; preds = %bb.em
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !3567
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit9.i.i: ; preds = %bb.el, %bb.ek
  %i.tz = load ptr, ptr %i.dq, align 8, !alias.scope !3596, !noalias !3597, !nonnull !22, !noundef !22
  %i.ua = getelementptr inbounds nuw [72 x i8], ptr %i.tz, i64 %i.tl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ua, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !3567
  %i.ub = add nuw nsw i64 %i.tl, 1
  store i64 %i.ub, ptr %i.dr, align 8, !alias.scope !3596, !noalias !3597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3568
  store i64 1, ptr %i.sp, align 8, !alias.scope !3560, !noalias !3565
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i64 %i.tl, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !3560, !noalias !3565
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store i64 %i.tl, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !3560, !noalias !3565
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCs9rVkZwOUgsI_13deltalake_aws.exit

bb.eo:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.uc = load ptr, ptr %i.dq, align 8, !alias.scope !3563, !noalias !3567, !nonnull !22, !noundef !22
  %i.ud = getelementptr inbounds nuw [72 x i8], ptr %i.uc, i64 %i.st ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  store i64 1, ptr %i.ue, align 8, !noalias !3567
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  store i64 %i.su, ptr %i.uf, align 8, !noalias !3567
  store i64 1, ptr %i.sp, align 8, !alias.scope !3560, !noalias !3565
  store i64 %i.su, ptr %i.ss, align 8, !alias.scope !3560, !noalias !3565
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCs9rVkZwOUgsI_13deltalake_aws.exit

.noexc.i72:                                       ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.st, i64 noundef %i.tk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
          to label %.noexc73 unwind label %.body36.thread127.loopexit.split-lp

.noexc73:                                         ; preds = %.noexc.i72
  unreachable

bb.ep:                                            ; preds = %bb.ee
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.0, i64 noundef %i.sn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #28
          to label %bb.eq unwind label %bb.er, !noalias !3557

bb.eq:                                            ; preds = %bb.ep
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.ug = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !3613)
  call void @llvm.experimental.noalias.scope.decl(metadata !3616)
  call void @llvm.experimental.noalias.scope.decl(metadata !3619)
  %i.uh = load ptr, ptr %i.p, align 8, !alias.scope !3622, !nonnull !22, !align !153, !noundef !22
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  %i.uj = load ptr, ptr %i.ui, align 8, !noalias !3622, !nonnull !22, !noundef !22
  %i.uk = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ul = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !alias.scope !3622, !noundef !22
  %i.un = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.uo = load i64, ptr %i.un, align 8, !alias.scope !3622, !noundef !22
  invoke void %i.uj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.uk, ptr noundef %i.um, i64 noundef %i.uo)
          to label %.body unwind label %bb.es, !inline_history !405

bb.es:                                            ; preds = %bb.er
  %i.up = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.eo, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit9.i.i
  %i.uq = load i64, ptr %i.w, align 8, !range !204, !alias.scope !3623, !noalias !3545, !noundef !22
  %i.ur = trunc nuw i64 %i.uq to i1
  br i1 %i.ur, label %.lr.ph, label %._crit_edge

.body36.thread122:                                ; preds = %.body36.loopexit, %.body36.loopexit.split-lp, %bb.bp, %.body.i32
  %eh.lpad-body37125 = phi { ptr, i32 } [ %eh.lpad-body.i33, %bb.bp ], [ %eh.lpad-body.i33, %.body.i32 ], [ %lpad.loopexit169, %.body36.loopexit ], [ %lpad.loopexit.split-lp170, %.body36.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  call void @llvm.experimental.noalias.scope.decl(metadata !3628)
  call void @llvm.experimental.noalias.scope.decl(metadata !3631)
  %i.us = load ptr, ptr %i.v, align 8, !alias.scope !3634, !nonnull !22, !align !153, !noundef !22
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 32
  %i.uu = load ptr, ptr %i.ut, align 8, !noalias !3634, !nonnull !22, !noundef !22
end_hunk_2
begin_hunk_3_@_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions11try_default:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions8from_map(ptr noalias noundef nonnull sret([656 x i8]) align 16 captures(none) dereferenceable(656) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions14u64_or_default(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 32, 41) %2, i64 noundef range(i64 10, 16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = load i64, ptr %i.b, align 8, !range !36, !noundef !22
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3710)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3710, !nonnull !22, !noundef !22 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3710, !noundef !22 ; 2 uses
  switch i64 %i.g, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.e, align 1, !alias.scope !3713, !noalias !3716, !noundef !22 ; 2 uses
  switch i8 %i.h, label %bb.d [
    i8 43, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i
    i8 45, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.b
  %.pr.i.i = load i8, ptr %i.e, align 1, !alias.scope !3713, !noalias !3716
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i, %bb.c
  %i.i = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.h, %bb.c ]
  %cond.i.i = icmp eq i8 %i.i, 43                 ; 2 uses
  %i.j = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.g, %i.j        ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.k = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.k, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.d
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i15, i64 1
  %i.m = add nsw i64 %.sroa.15.1.i.i14, -1        ; 2 uses
  %.not52.i.not.i = icmp eq i64 %i.m, 0
  br i1 %.not52.i.not.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.d, %.preheader56.i.i
  %.sroa.0.1.i.i15 = phi ptr [ %i.l, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %.sroa.15.1.i.i14 = phi i64 [ %i.m, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.d ]
  %.sroa.042.0.i.i13 = phi i64 [ %i.v, %.preheader56.i.i ], [ 0, %bb.d ]
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i13, i64 10) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %.preheader56.i.i.preheader
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  %i.q = load i8, ptr %.sroa.0.1.i.i15, align 1, !alias.scope !3713, !noalias !3716, !noundef !22
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ugt i32 %i.s, 9
  %i.u = zext nneg i32 %i.s to i64
  %i.v = add i64 %i.p, %i.u                       ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.p
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.w, !prof !3251
  br i1 %or.cond.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i, label %.preheader56.i.i, !prof !3251

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.f
  %.sroa.0.269.i.i = phi ptr [ %i.ad, %bb.f ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.ac, %bb.f ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.af, %bb.f ], [ 0, %.preheader.i.i ]
  %i.x = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !3713, !noalias !3716, !noundef !22
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 9
  br i1 %i.aa, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ab = mul i64 %.sroa.042.267.i.i, 10
  %i.ac = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = add i64 %i.ab, %i.ae                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not53.i.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i, label %.lr.ph.i.i

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i: ; preds = %bb.e, %.preheader56.i.i.preheader, %.preheader56.i.i, %bb.f, %.lr.ph.i.i, %.preheader.i.i, %bb.c, %bb.c, %bb.b
  %.sink.i.i = phi i64 [ %3, %bb.c ], [ 0, %.preheader.i.i ], [ %3, %bb.b ], [ %3, %bb.c ], [ %3, %.lr.ph.i.i ], [ %i.af, %bb.f ], [ %3, %bb.e ], [ %3, %.preheader56.i.i.preheader ], [ %i.v, %.preheader56.i.i ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions14u64_or_default0B9_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.g
  resume { ptr, i32 } %i.ag

_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions14u64_or_default0B9_.exit: ; preds = %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions14u64_or_default0B9_.exit
  %.sroa.0.0 = phi i64 [ %.sink.i.i, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions14u64_or_default0B9_.exit ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions8from_map(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([656 x i8]) align 16 captures(none) dereferenceable(656) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [9920 x i8], align 8              ; 4 uses
  %i.c = alloca [416 x i8], align 16              ; 4 uses
  %i.d = alloca [216 x i8], align 8               ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [96 x i8], align 16               ; 10 uses
  %i.i = alloca [416 x i8], align 16              ; 6 uses
  %i.j = alloca [9936 x i8], align 8              ; 6 uses
  %i.k = alloca [416 x i8], align 16              ; 6 uses
  %i.l = alloca [9936 x i8], align 8              ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [416 x i8], align 16             ; 10 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.019 = alloca [560 x i8], align 8         ; 10 uses
  %.sroa.14 = alloca [52 x i8], align 4           ; 4 uses
  %i.ap = alloca [9920 x i8], align 8             ; 8 uses
  %i.aq = alloca [40 x i8], align 8               ; 8 uses
  %i.ar = alloca [416 x i8], align 8              ; 9 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [48 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  call void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B15_EE9from_iterINtNtNtB1T_8adapters3map3MapINtNtB3c_6filter6FilterINtB7_4IterB15_B15_ENCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB4o_16S3StorageOptions8from_map0ENCB4i_s_0EEB4q_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.av, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3718
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 10)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.aw = load i64, ptr %i.af, align 8, !range !36, !noalias !3718, !noundef !22
  %.not.i = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !3718
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.cg, %bb.ch, %bb.av, %.thread27.i, %.thread18.i, %bb.al, %bb.ao, %bb.ae, %bb.ag, %bb.z, %bb.c
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.av ], [ %i.co, %bb.ao ], [ %i.by, %bb.z ], [ %i.cg, %bb.ae ], [ %i.ax, %bb.c ], [ %i.ch, %bb.ag ], [ %i.cl, %bb.al ], [ %.pn7.ph.i, %.thread27.i ], [ %.pn921.i, %.thread18.i ], [ %.pn.pn.pn.pn.pn, %bb.ch ], [ %.pn.pn.pn.pn.pn, %bb.cg ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.cz

bb.c:                                             ; preds = %bb.cb, %bb.bn, %bb.bl, %bb.ba, %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit11.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit8.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i67, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %bb.as, %bb.ab, %bb.u, %bb.t, %bb.s, %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3722
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 11)
          to label %.noexc39 unwind label %bb.c

.noexc39:                                         ; preds = %bb.d
  %i.ay = load i64, ptr %i.ad, align 8, !range !36, !noalias !3722, !noundef !22
  %.not.i38 = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not.i38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !3722
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 11, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %.noexc39, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3726
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 17)
          to label %.noexc43 unwind label %bb.c

.noexc43:                                         ; preds = %bb.f
  %i.az = load i64, ptr %i.ab, align 8, !range !36, !noalias !3726, !noundef !22
  %.not.i42 = icmp eq i64 %i.az, -9223372036854775808
  br i1 %.not.i42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !3726
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 17, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %.noexc43, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3730
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 21)
          to label %.noexc47 unwind label %bb.c

.noexc47:                                         ; preds = %bb.h
  %i.ba = load i64, ptr %i.z, align 8, !range !36, !noalias !3730, !noundef !22
  %.not.i46 = icmp eq i64 %i.ba, -9223372036854775808
  br i1 %.not.i46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !3730
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.j unwind label %bb.c

bb.j:                                             ; preds = %.noexc47, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3734
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 17)
          to label %.noexc51 unwind label %bb.c

.noexc51:                                         ; preds = %bb.j
  %i.bb = load i64, ptr %i.x, align 8, !range !36, !noalias !3734, !noundef !22
  %.not.i50 = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %.not.i50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !3734
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 17, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.l unwind label %bb.c

bb.l:                                             ; preds = %.noexc51, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3738
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 27)
          to label %.noexc55 unwind label %bb.c

.noexc55:                                         ; preds = %bb.l
  %i.bc = load i64, ptr %i.v, align 8, !range !36, !noalias !3738, !noundef !22
  %.not.i54 = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %.not.i54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !3738
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 27, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.n unwind label %bb.c

bb.n:                                             ; preds = %.noexc55, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3742
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 12)
          to label %.noexc59 unwind label %bb.c

.noexc59:                                         ; preds = %bb.n
  %i.bd = load i64, ptr %i.t, align 8, !range !36, !noalias !3742, !noundef !22
  %.not.i58 = icmp eq i64 %i.bd, -9223372036854775808
  br i1 %.not.i58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !3742
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.p unwind label %bb.c

bb.p:                                             ; preds = %.noexc59, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3746
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 21)
          to label %.noexc63 unwind label %bb.c

.noexc63:                                         ; preds = %bb.p
  %i.be = load i64, ptr %i.r, align 8, !range !36, !noalias !3746, !noundef !22
  %.not.i62 = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not.i62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !3746
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.r unwind label %bb.c

bb.r:                                             ; preds = %.noexc63, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bf = invoke fastcc noundef i64 @_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions14u64_or_default(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 32, i64 noundef 15)
          to label %bb.s unwind label %bb.c

bb.s:                                             ; preds = %bb.r
  %i.bg = invoke fastcc noundef i64 @_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions14u64_or_default(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 33, i64 noundef 10)
          to label %bb.t unwind label %bb.c

bb.t:                                             ; preds = %bb.s
  %i.bh = invoke fastcc noundef i64 @_RNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB5_16S3StorageOptions14u64_or_default(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 40, i64 noundef 10)
          to label %bb.u unwind label %bb.c

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 23)
          to label %bb.v unwind label %bb.c

bb.v:                                             ; preds = %bb.u
  %i.bi = load i64, ptr %i.at, align 8, !range !36, !noundef !22
  %.not = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3750)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !3750, !noundef !22
  %i.bl = icmp eq i64 %i.bk, 7
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !3750, !nonnull !22, !noundef !22 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 1
  %i.bp = xor i32 %i.bo, 1953655158
  %i.bq = getelementptr i8, ptr %i.bn, i64 3
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = xor i32 %i.br, 1818326388
  %i.bt = or i32 %i.bp, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0.i = phi i8 [ %i.bx, %bb.x ], [ 0, %bb.w ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps0_0B9_.exit unwind label %bb.c

bb.ab:                                            ; preds = %bb.v, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps0_0B9_.exit
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.i, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps0_0B9_.exit ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 26)
          to label %bb.ac unwind label %bb.c

_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps0_0B9_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ab

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load i64, ptr %i.as, align 8, !range !36, !noundef !22
  %.not29 = icmp eq i64 %i.ca, -9223372036854775808
  br i1 %.not29, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3753)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !3753, !nonnull !22, !noundef !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !3753, !noundef !22
  %i.cf = invoke noundef zeroext i1 @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13str_is_truthy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
          to label %bb.af unwind label %bb.ae, !noalias !3753

bb.ae:                                            ; preds = %bb.ad
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #31
          to label %.body unwind label %bb.ai

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i67 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i67: ; preds = %bb.af
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps1_0B9_.exit unwind label %bb.c

bb.ai:                                            ; preds = %bb.ae
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.aj:                                            ; preds = %bb.ac, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps1_0B9_.exit
  %.sroa.02.0 = phi i8 [ %i.cs, %_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps1_0B9_.exit ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3756
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 25)
          to label %.noexc75 unwind label %bb.c

.noexc75:                                         ; preds = %bb.aj
  %i.ck = load i64, ptr %i.p, align 8, !range !36, !noalias !3756, !noundef !22
  %.not.i71 = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not.i71, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5.i, label %bb.ak

bb.ak:                                            ; preds = %.noexc75
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.noexc78 unwind label %bb.c

.noexc78:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3756
  br label %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5.i: ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3756
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 23)
          to label %.noexc79 unwind label %bb.c

.noexc79:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5.i
  %i.cn = load i64, ptr %i.o, align 8, !range !36, !noalias !3756, !noundef !22
  %.not2.i = icmp eq i64 %i.cn, -9223372036854775808
  br i1 %.not2.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit11.i, label %bb.an

bb.an:                                            ; preds = %.noexc79
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit8.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit8.i: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.noexc80 unwind label %bb.c

.noexc80:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3756
  br label %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit11.i: ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3756
  %i.cq = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 12)
          to label %.noexc81 unwind label %bb.c

.noexc81:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit11.i
  br i1 %i.cq, label %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread92, label %bb.aq

bb.aq:                                            ; preds = %.noexc81
  %i.cr = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 16)
          to label %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit unwind label %bb.c

_RNCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB7_16S3StorageOptions8from_maps1_0B9_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.cs = zext i1 %i.cf to i8
  br label %bb.aj

_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit: ; preds = %bb.aq
  br i1 %i.cr, label %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread92, label %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread

_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread92: ; preds = %.noexc81, %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit
  store i64 -9223372036854775807, ptr %i.ar, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.cf, %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread92
  %i.ct = phi i1 [ false, %bb.cf ], [ true, %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.019)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke fastcc void @_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage10str_option(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 23)
          to label %bb.cj unwind label %bb.ci

_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread: ; preds = %.noexc80, %.noexc78, %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit
  %i.cu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 6
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp samesign ugt i64 %i.cu, 3
  br i1 %i.cw, label %bb.as, label %bb.au

bb.as:                                            ; preds = %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr @94, ptr %i.aq, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 22, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr @94, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 22, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr @93, ptr %i.da, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull @92, ptr noundef nonnull inttoptr (i64 117 to ptr), i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aq)
          to label %bb.at unwind label %bb.c

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.au

bb.au:                                            ; preds = %_RNvNtCs9rVkZwOUgsI_13deltalake_aws7storage6is_aws.exit.thread, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %1, ptr %i.db, align 8, !alias.scope !3759, !noalias !3762
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 43
  store i8 0, ptr %i.dc, align 1, !alias.scope !3759, !noalias !3762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3764
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle11try_current(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.n)
          to label %bb.ax unwind label %bb.aw, !noalias !3764

bb.av:                                            ; preds = %bb.bz
  br i1 %.sroa.04.3.i, label %.thread18.i, label %.body

bb.aw:                                            ; preds = %bb.ay, %bb.au
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread18.i

bb.ax:                                            ; preds = %bb.au
  %i.dd = load i64, ptr %i.n, align 8, !range !187, !noalias !3764, !noundef !22 ; 3 uses
  %i.de = icmp eq i64 %i.dd, 2
  br i1 %i.de, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3764
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7builderNtB2_7Builder18new_current_thread(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.d)
          to label %bb.br unwind label %bb.aw, !noalias !3764

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3764
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !3764, !noundef !22 ; 2 uses
  store i64 %i.dd, ptr %i.m, align 8, !noalias !3764
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr %i.dg, ptr %i.dh, align 8, !noalias !3764
  %i.di = trunc nuw i64 %i.dd to i1
  br i1 %i.di, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3764
  store i64 1, ptr %i.l, align 8, !noalias !3764
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.dg, ptr %i.dj, align 8, !noalias !3764
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9920) %i.dk, ptr noundef nonnull align 8 dereferenceable(9920) %i.ap, i64 9920, i1 false), !noalias !3768
  invoke void @_RINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1u_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B38_EB1u_(ptr noalias noundef nonnull sret([416 x i8]) align 16 captures(address) dereferenceable(416) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(9936) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
          to label %.noexc84 unwind label %bb.c

.noexc84:                                         ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3764
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3764
  store i64 -9223372036854775806, ptr %i.k, align 16, !noalias !3764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3764
  store ptr %i.k, ptr %i.j, align 8, !noalias !3764
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.dl, align 8, !noalias !3764
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9920) %i.dm, ptr noundef nonnull align 8 dereferenceable(9920) %i.ap, i64 9920, i1 false), !noalias !3768
  invoke void @_RINvNtNtCs2pqxYH9ZEk8_3std6thread6scoped5scopeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtBP_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_0uEBP_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(9936) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %bb.bc unwind label %bb.bq, !noalias !3764

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.i, ptr noundef nonnull align 16 dereferenceable(416) %i.k, i64 416, i1 false), !noalias !3764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3764
  store i64 -9223372036854775807, ptr %i.g, align 8, !noalias !3764
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !3769
  %i.dn = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 697) 24, i64 noundef 8) #27, !noalias !3769 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.bd, label %bb.bg, !prof !6

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc.i unwind label %bb.be, !noalias !3764

.noexc.i:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws6errors19DynamoDbConfigErrorEBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %bb.bo unwind label %bb.bf, !noalias !3764

bb.bf:                                            ; preds = %bb.be
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !3764
  unreachable

.body.i:                                          ; preds = %bb.bh
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.thread27.i

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3764
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 -9223372036854775802, ptr %i.ds, align 8, !noalias !3764
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @15, ptr %.sroa.4.0..sroa_idx.i, align 16, !noalias !3764
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 18, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3764
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.dn, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !3764
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @14, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3764
  store i64 -9223372036854775743, ptr %i.h, align 16, !noalias !3764
  %i.dt = load i64, ptr %i.i, align 16, !range !163, !noalias !3764, !noundef !22
  %.not.i83 = icmp eq i64 %i.dt, -9223372036854775806
  br i1 %.not.i83, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.ag, ptr noundef nonnull align 16 dereferenceable(416) %i.i, i64 416, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.h)
          to label %bb.bj unwind label %.body.i, !noalias !3764

bb.bi:                                            ; preds = %bb.bg
  %i.du = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.du, ptr noundef nonnull align 16 dereferenceable(96) %i.h, i64 96, i1 false)
  store i64 -9223372036854775806, ptr %i.ag, align 16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3764
  call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  call void @llvm.experimental.noalias.scope.decl(metadata !3775)
  %i.dv = load i64, ptr %i.m, align 8, !range !204, !alias.scope !3778, !noalias !3764, !noundef !22
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  %i.dx = load ptr, ptr %i.dh, align 8, !alias.scope !3785, !noalias !3764, !nonnull !22, !noundef !22
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !noalias !3786
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dh) #29
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !3787)
  call void @llvm.experimental.noalias.scope.decl(metadata !3790)
end_hunk_3
