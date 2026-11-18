Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datagen-a5afd340982ad6cb.lance_datagen.23b3debfd5a2dbaa-cgu.0?download=true
inline.NumInlined: 5943
inline.NumDeleted: 2255
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvNtNtCs342JT7D9NXi_13lance_datagen9generator5array4randNtNtCs4ytUTZt2Gw9_11arrow_array5types22DurationNanosecondTypeEB6_:bb.a
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @66, 1
  ret { ptr, ptr } %i.m

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCs342JT7D9NXi_13lance_datagen9generator5array4randNtNtCs4ytUTZt2Gw9_11arrow_array5types23DurationMicrosecondTypeEB6_() unnamed_addr #0 personality ptr @rust_eh_personality !guid !3739 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @45, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3740)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) @45, i64 24, i1 false), !alias.scope !3741
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 1, ptr %i.d, align 8, !alias.scope !3742
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.e, align 8, !alias.scope !3742
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %i.f, align 4, !alias.scope !3742
  store i64 1, ptr %i.b, align 8, !alias.scope !3742
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %i.g, align 8, !alias.scope !3742
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3743
  %i.h = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !3743 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

.body:                                            ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @67, 1
  ret { ptr, ptr } %i.m

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCs342JT7D9NXi_13lance_datagen9generator5array4randNtNtCs4ytUTZt2Gw9_11arrow_array5types23DurationMillisecondTypeEB6_() unnamed_addr #0 personality ptr @rust_eh_personality !guid !3749 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @46, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3750)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) @46, i64 24, i1 false), !alias.scope !3751
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 1, ptr %i.d, align 8, !alias.scope !3752
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.e, align 8, !alias.scope !3752
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %i.f, align 4, !alias.scope !3752
  store i64 1, ptr %i.b, align 8, !alias.scope !3752
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %i.g, align 8, !alias.scope !3752
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3753
  %i.h = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !3753 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

.body:                                            ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @68, 1
  ret { ptr, ptr } %i.m

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 41) %4) unnamed_addr #4 personality ptr @rust_eh_personality !guid !3756 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !14, !alias.scope !3757, !noundef !12 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3757
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !3757
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 41) %4), !noalias !3757
  %i.h = load i64, ptr %i.a, align 8, !range !27, !noalias !3757, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !3757, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !3757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3757
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #37
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !3757, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3757
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !3757
  %i.o = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !3757
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 67818912035696881) %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !3777 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.017 = alloca [72 x i8], align 8          ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = mul nuw nsw i64 %2, 136                  ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.thread, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3778
  %i.i = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #36, !noalias !3778 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #37
  unreachable

.lr.ph:                                           ; preds = %bb.b
  store i64 %2, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.017.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.017, i64 48
  %.sroa.017.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.017, i64 24
  br label %bb.d

.thread:                                          ; preds = %bb.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.thread
  %3 = phi ptr [ %i.h, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.thread ], [ %i.l, %bb.p ]
  store i64 %2, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit52:                                      ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.016.067 = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.p ] ; 11 uses
  %.sroa.7.066 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.p ] ; 3 uses
  %.sroa.10.065 = phi i64 [ %2, %.lr.ph ], [ %4, %bb.p ]
  %4 = add nsw i64 %.sroa.10.065, -1              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 136
  %i.n = add nuw nsw i64 %.sroa.7.066, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3780
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 48
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %.noexc unwind label %.loopexit52, !inline_history !3763

.noexc:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 72
  %i.q = load <2 x i64>, ptr %i.p, align 8, !alias.scope !3779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3780
  %i.r = getelementptr i8, ptr %.sroa.016.067, i64 8
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !3779, !nonnull !12, !noundef !12
  %i.s = getelementptr i8, ptr %.sroa.016.067, i64 16
  %.val13.i = load i64, ptr %i.s, align 8, !alias.scope !3779, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3782), !noalias !3780
  %i.t = icmp eq i64 %.val13.i, 0
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.u = mul nuw nsw i64 %.val13.i, 24            ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3783
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #36, !noalias !3783 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #37
          to label %.noexc15 unwind label %bb.j

.noexc15:                                         ; preds = %bb.f
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.h
  %.sroa.012.034.i.i = phi ptr [ %i.y, %bb.h ], [ %.val.i, %bb.e ] ; 4 uses
  %.sroa.7.033.i.i = phi i64 [ %i.x, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %8, %bb.h ], [ %.val13.i, %bb.e ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3784), !noalias !3780
  %5 = load ptr, ptr %.sroa.012.034.i.i, align 8, !alias.scope !3785, !noalias !3786, !nonnull !12, !noundef !12
  %6 = atomicrmw add ptr %5, i64 1 monotonic, align 8, !noalias !3787
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.trap(), !noalias !3780
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.x = add nuw nsw i64 %.sroa.7.033.i.i, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 24
  %8 = add nsw i64 %.sroa.10.032.i.i, -1          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !3785, !noalias !3786, !noundef !12
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.sroa.7.033.i.i ; 2 uses
  %i.ac = load <2 x ptr>, ptr %.sroa.012.034.i.i, align 8, !alias.scope !3785, !noalias !3786
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !noalias !3788
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.aa, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !3788
  %i.ad = icmp eq i64 %8, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.ae, %bb.j ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %bb.r unwind label %bb.o, !noalias !3789, !inline_history !3763

bb.j:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit:                                        ; preds = %bb.h, %.noexc
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %.noexc ], [ %i.v, %bb.h ]
  store i64 %.val13.i, ptr %i.b, align 8, !alias.scope !3781, !noalias !3790
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i14, align 8, !alias.scope !3781, !noalias !3790
  store i64 %.val13.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3781, !noalias !3790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3780
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !3791, !noalias !3789, !nonnull !12, !noundef !12
  %i.ai = load i64, ptr %i.af, align 8, !alias.scope !3791, !noalias !3789, !noundef !12
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.ai)
          to label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit unwind label %bb.k, !inline_history !3776

bb.k:                                             ; preds = %.loopexit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %bb.i unwind label %bb.o, !noalias !3789, !inline_history !3763

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit: ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !3779, !noundef !12 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !noalias !3789
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3779, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 104
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !3779
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 120
  %i.at = load <2 x i64>, ptr %i.as, align 8, !alias.scope !3779
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3789, !inline_history !3763
  unreachable

bb.p:                                             ; preds = %bb.m, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i = phi ptr [ %i.ap, %bb.m ], [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit ]
  %i.av = phi <2 x i64> [ %i.ar, %bb.m ], [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit ]
  %i.aw = phi <2 x i64> [ %i.at, %bb.m ], [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3780
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %i.i, i64 %.sroa.7.066 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.017, i64 72, i1 false)
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store <2 x i64> %i.q, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.al, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.742.0..sroa_idx, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store <2 x i64> %i.av, ptr %.sroa.843.0..sroa_idx, align 8
  %.sroa.1045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  store <2 x i64> %i.aw, ptr %.sroa.1045.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  %i.ay = icmp eq i64 %4, 0
  br i1 %i.ay, label %.thread, label %bb.d

bb.q:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.r:                                             ; preds = %.loopexit52, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %lpad.loopexit, %.loopexit52 ]
  store i64 %.sroa.7.066, ptr %i.l, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECs342JT7D9NXi_13lance_datagen(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3818 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4294967295
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %1 to i32                  ; 2 uses
  %i.d = load i64, ptr %0, align 8, !alias.scope !3819, !noundef !12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3819, !noundef !12 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 23)
  %i.i = add i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3819, !noundef !12 ; 3 uses
  %i.l = shl i64 %i.k, 17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3819, !noundef !12
  %i.o = xor i64 %i.n, %i.d                       ; 2 uses
  %i.p = xor i64 %i.k, %i.f                       ; 3 uses
  %i.q = xor i64 %i.o, %i.k                       ; 4 uses
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !3819
  %i.r = xor i64 %i.p, %i.d                       ; 5 uses
  store i64 %i.r, ptr %0, align 8, !alias.scope !3819
  %i.s = xor i64 %i.o, %i.l                       ; 2 uses
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !3819
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 45) ; 3 uses
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !3819
  %i.u = lshr i64 %i.i, 32
  %i.v = mul nuw i64 %i.u, %1                     ; 2 uses
  %i.w = lshr i64 %i.v, 32                        ; 2 uses
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  %i.y = sub i32 0, %i.c
  %i.z = icmp ult i32 %i.y, %i.x
  br i1 %i.z, label %bb.d, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.t, %i.r                      ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 23)
  %i.ac = add i64 %i.ab, %i.r
  %i.ad = shl i64 %i.q, 17
  %i.ae = xor i64 %i.s, %i.r                      ; 2 uses
  %i.af = xor i64 %i.q, %i.t                      ; 3 uses
  %i.ag = xor i64 %i.ae, %i.q
  store i64 %i.ag, ptr %i.j, align 8, !alias.scope !3820
  %i.ah = xor i64 %i.af, %i.r
  store i64 %i.ah, ptr %0, align 8, !alias.scope !3820
  %i.ai = xor i64 %i.ae, %i.ad
  store i64 %i.ai, ptr %i.m, align 8, !alias.scope !3820
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 45)
  store i64 %i.aj, ptr %i.e, align 8, !alias.scope !3820
  %i.ak = lshr i64 %i.ac, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = tail call i32 @llvm.umulh.i32(i32 %i.al, i32 %i.c)
  %i.an = xor i32 %i.x, -1
  %.not11.i.i.i.i = icmp ugt i32 %i.am, %i.an
  %i.ao = zext i1 %.not11.i.i.i.i to i64
  %i.ap = add nuw nsw i64 %i.w, %i.ao
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

bb.e:                                             ; preds = %bb.b
  %i.aq = load i64, ptr %0, align 8, !alias.scope !3821, !noundef !12 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !3821, !noundef !12 ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 23)
  %i.av = add i64 %i.au, %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !3821, !noundef !12 ; 3 uses
  %i.ay = shl i64 %i.ax, 17
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !3821, !noundef !12
  %i.bb = xor i64 %i.ba, %i.aq                    ; 2 uses
  %i.bc = xor i64 %i.ax, %i.as                    ; 3 uses
  %i.bd = xor i64 %i.bb, %i.ax                    ; 4 uses
  store i64 %i.bd, ptr %i.aw, align 8, !alias.scope !3821
  %i.be = xor i64 %i.bc, %i.aq                    ; 5 uses
  store i64 %i.be, ptr %0, align 8, !alias.scope !3821
  %i.bf = xor i64 %i.bb, %i.ay                    ; 2 uses
  store i64 %i.bf, ptr %i.az, align 8, !alias.scope !3821
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 45) ; 3 uses
  store i64 %i.bg, ptr %i.ar, align 8, !alias.scope !3821
  %i.bh = zext i64 %i.av to i128
  %i.bi = zext i64 %1 to i128
  %i.bj = mul nuw i128 %i.bh, %i.bi               ; 2 uses
  %i.bk = lshr i128 %i.bj, 64
  %i.bl = trunc nuw i128 %i.bk to i64             ; 2 uses
  %i.bm = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bn = sub i64 0, %1
  %i.bo = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.f, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

bb.f:                                             ; preds = %bb.e
  %i.bp = add i64 %i.bg, %i.be                    ; 2 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 23)
  %i.br = add i64 %i.bq, %i.be
  %i.bs = shl i64 %i.bd, 17
  %i.bt = xor i64 %i.bf, %i.be                    ; 2 uses
  %i.bu = xor i64 %i.bd, %i.bg                    ; 3 uses
  %i.bv = xor i64 %i.bt, %i.bd
  store i64 %i.bv, ptr %i.aw, align 8, !alias.scope !3822
  %i.bw = xor i64 %i.bu, %i.be
  store i64 %i.bw, ptr %0, align 8, !alias.scope !3822
  %i.bx = xor i64 %i.bt, %i.bs
  store i64 %i.bx, ptr %i.az, align 8, !alias.scope !3822
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 45)
  store i64 %i.by, ptr %i.ar, align 8, !alias.scope !3822
  %i.bz = tail call i64 @llvm.umulh.i64(i64 %i.br, i64 %1)
  %i.ca = xor i64 %i.bm, -1
  %.not7.i.i.i.i = icmp ugt i64 %i.bz, %i.ca
  %i.cb = zext i1 %.not7.i.i.i.i to i64
  %i.cc = add nuw i64 %i.cb, %i.bl
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  %.sroa.64.0 = phi i64 [ %i.w, %bb.c ], [ %i.ap, %bb.d ], [ %i.cc, %bb.f ], [ %i.bl, %bb.e ]
  ret i64 %.sroa.64.0

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0E0Cs342JT7D9NXi_13lance_datagen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 !guid !3824 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !20, !noundef !12 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !20, !noundef !12 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !17, !noundef !12
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsgczF5crJ4sT_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0Cs342JT7D9NXi_13lance_datagen.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std4sync9lazy_lock14panic_poisoned() #37
  unreachable

_RNCNvMNtNtCsgczF5crJ4sT_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0Cs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !inline_history !3823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs342JT7D9NXi_13lance_datagen(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !guid !3847 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_18CycleNullGeneratorNtB5_14ArrayGenerator8generate:bb.a
  br i1 %i.ed, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %reass.sub.i.i.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, 4611686018427387840
  %i.ee = add nuw nsw i64 %reass.sub.i.i.i.i.i.i.i.i.i31.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.ef = icmp samesign ult i64 %i.ee, %.sroa.0.0.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i
  br i1 %i.ef, label %.invoke.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.4.0.i.i.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.ee, %bb.ad ]
  %i.eg = shl nuw nsw i64 %i.ea, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i33.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.eg, i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i33.i.i.i.i.i.i.i.i)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9730

.noexc7.i:                                        ; preds = %bb.ae
  %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9742, !noalias !9743
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i

.invoke.i:                                        ; preds = %bb.q, %bb.w, %bb.ad
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #37
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9730

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i, %bb.ab
  %i.eh = phi i64 [ %i.dx, %bb.ab ], [ %.pre.i.i.i.i.i.i.i.i34.i.i.i.i.i.i.i.i, %.noexc7.i ]
  %i.ei = load ptr, ptr %.sroa.527.0..sroa_idx.i, align 16, !alias.scope !9742, !noalias !9743, !nonnull !12, !noundef !12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ej, i8 0, i64 %i.dz, i1 false), !noalias !9741
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9742, !noalias !9743
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i, %bb.aa
  store i64 %i.dt, ptr %i.aw, align 16, !alias.scope !9742, !noalias !9743
  br i1 %i.dr, label %bb.af, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters4takeINtBY_4TakepENtNtNtB12_6traits8iterator8Iterator8try_fold5checkRbuINtNtB9_9try_trait17NeverShortCircuituENCINvMB2x_B2u_10wrap_mut_2uB2r_NCINvNtB10_6copied9copy_foldbuNCINvNvB1D_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4F_13BooleanBufferINtNtB1H_7collect12FromIteratorbE9from_iterINtB3H_6CopiedIB1r_INtNtB10_4skip4SkipINtNtB10_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEEEEE0E0E0E0E0INtB7_5FnMutTuB2r_EE8call_mutCs342JT7D9NXi_13lance_datagen.exit.i29.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i
  %i.ek = load ptr, ptr %.sroa.527.0..sroa_idx.i, align 16, !alias.scope !9736, !noalias !9743, !nonnull !12, !noundef !12
  %i.el = trunc i64 %i.ds to i8
  %i.em = and i8 %i.el, 7
  %i.en = shl nuw i8 1, %i.em
  %i.eo = lshr i64 %i.ds, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eo ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !9741, !noundef !12
  %i.er = or i8 %i.eq, %i.en
  store i8 %i.er, ptr %i.ep, align 1, !noalias !9741
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters4takeINtBY_4TakepENtNtNtB12_6traits8iterator8Iterator8try_fold5checkRbuINtNtB9_9try_trait17NeverShortCircuituENCINvMB2x_B2u_10wrap_mut_2uB2r_NCINvNtB10_6copied9copy_foldbuNCINvNvB1D_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4F_13BooleanBufferINtNtB1H_7collect12FromIteratorbE9from_iterINtB3H_6CopiedIB1r_INtNtB10_4skip4SkipINtNtB10_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEEEEE0E0E0E0E0INtB7_5FnMutTuB2r_EE8call_mutCs342JT7D9NXi_13lance_datagen.exit.i29.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters4takeINtBY_4TakepENtNtNtB12_6traits8iterator8Iterator8try_fold5checkRbuINtNtB9_9try_trait17NeverShortCircuituENCINvMB2x_B2u_10wrap_mut_2uB2r_NCINvNtB10_6copied9copy_foldbuNCINvNvB1D_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4F_13BooleanBufferINtNtB1H_7collect12FromIteratorbE9from_iterINtB3H_6CopiedIB1r_INtNtB10_4skip4SkipINtNtB10_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEEEEE0E0E0E0E0INtB7_5FnMutTuB2r_EE8call_mutCs342JT7D9NXi_13lance_datagen.exit.i29.i.i.i.i.i.i.i.i: ; preds = %bb.af, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i
  %i.es = icmp eq i64 %i.dq, 0
  br i1 %i.es, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i, label %bb.z

bb.ag:                                            ; preds = %bb.l
  %i.et = add i64 %i.ai, -1                       ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %i.af) ; 2 uses
  %i.eu = sub nuw i64 %i.et, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ag
  %i.ev = icmp samesign eq i64 %i.af, 0
  br i1 %i.ev, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i, label %.preheader.split.i.i.i.i.i.i.i.i.i

.preheader.split.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ew, %.preheader.split.i.i.i.i.i.i.i.i.i ], [ %i.eu, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i12.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i, i64 %i.af) ; 2 uses
  %i.ew = sub nuw i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i12.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.pn = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %bb.ag ], [ %.sroa.0.0.i.i12.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.pn
  %i.ey = icmp samesign eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.pn, %i.af
  br i1 %i.ey, label %bb.ah, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i.i.i.i.i
  %i.ez = icmp samesign eq i64 %i.af, 0
  br i1 %i.ez, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i.i.i.i.i
  %.val.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.ah ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.sink.i.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.ae, %bb.r, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i, %.invoke.i
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fh, %bb.aj ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.am, !noalias !9730

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters4takeINtBY_4TakepENtNtNtB12_6traits8iterator8Iterator8try_fold5checkRbuINtNtB9_9try_trait17NeverShortCircuituENCINvMB2x_B2u_10wrap_mut_2uB2r_NCINvNtB10_6copied9copy_foldbuNCINvNvB1D_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4F_13BooleanBufferINtNtB1H_7collect12FromIteratorbE9from_iterINtB3H_6CopiedIB1r_INtNtB10_4skip4SkipINtNtB10_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEEEEE0E0E0E0E0INtB7_5FnMutTuB2r_EE8call_mutCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i.i.i, %_RNCINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB7_5CycleINtNtNtBd_5slice4iter4IterbEENtNtNtBb_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB9_4takeINtB2n_4TakepEB1v_8try_fold5checkRbuINtNtNtBd_3ops9try_trait17NeverShortCircuituENCINvMB3a_B37_10wrap_mut_2uB34_NCINvNtB9_6copied9copy_foldbuNCINvNvB1v_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB5n_13BooleanBufferINtNtB1z_7collect12FromIteratorbE9from_iterINtB4q_6CopiedIB2y_INtNtB9_4skip4SkipBQ_EEEE0E0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_EE0Cs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters4takeINtBY_4TakepENtNtNtB12_6traits8iterator8Iterator8try_fold5checkRbuINtNtB9_9try_trait17NeverShortCircuituENCINvMB2x_B2u_10wrap_mut_2uB2r_NCINvNtB10_6copied9copy_foldbuNCINvNvB1D_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4F_13BooleanBufferINtNtB1H_7collect12FromIteratorbE9from_iterINtB3H_6CopiedIB1r_INtNtB10_4skip4SkipINtNtB10_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEEEEE0E0E0E0E0INtB7_5FnMutTuB2r_EE8call_mutCs342JT7D9NXi_13lance_datagen.exit.i29.i.i.i.i.i.i.i.i, %bb.ah, %.preheader.i.i.i.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters4takeINtB1L_4TakepEBL_8try_fold5checkRbuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvMB2I_B2F_10wrap_mut_2uB2C_NCINvNtB1N_6copied9copy_foldbuNCINvNvBL_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4V_13BooleanBufferINtNtBP_7collect12FromIteratorbE9from_iterINtB3Y_6CopiedIB27_INtNtB1N_4skip4SkipINtNtB1N_5cycle5CycleB3_EEEEE0E0E0E0E0INtNtB2K_12control_flow11ControlFlowB2F_EECs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9745)
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.527.0..sroa_idx.i, align 16, !alias.scope !9745, !noalias !9730, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9745, !noalias !9730 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.527.0..sroa_idx.i, align 16, !alias.scope !9745, !noalias !9730
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9745, !noalias !9730
  %i.fb = load i64, ptr %i.aw, align 16, !alias.scope !9745, !noalias !9730, !noundef !12
  store i64 0, ptr %i.aw, align 16, !alias.scope !9745, !noalias !9730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9746
  store i64 1, ptr %i.a, align 8, !noalias !9746
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.fc, align 8, !noalias !9746
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.fd, align 8, !noalias !9746
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !9746
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !9746
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fe = load <2 x i64>, ptr %i.c, align 16, !alias.scope !9745, !noalias !9730
  store i64 128, ptr %i.c, align 16, !alias.scope !9745, !noalias !9730
  store i64 0, ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !9745, !noalias !9730
  store <2 x i64> %i.fe, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !9746
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9747
  %i.ff = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9747 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ai, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i, !prof !13

bb.ai:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i.i unwind label %bb.aj, !noalias !9746

.noexc.i.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body.i unwind label %bb.ak, !noalias !9746

bb.ak:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !9746
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ff, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !9746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9746
  store ptr %i.ff, ptr %i.b, align 8, !noalias !9746
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.fj, align 8, !noalias !9746
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.fk, align 8, !noalias !9746
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.fb)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9748

bb.al:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9746
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.an unwind label %bb.ax

bb.am:                                            ; preds = %.body.i
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !9730
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9730
  %i.fm = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp eq i64 %i.af, 0
  br i1 %i.fn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = add i64 %i.ai, %2
  %i.fp = urem i64 %i.fo, %i.af
  store i64 %i.fp, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fq)
          to label %bb.ar unwind label %bb.bi

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #37
          to label %bb.aq unwind label %bb.bi

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !12, !noundef !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !12 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9749)
  %i.fz = mul nuw nsw i64 %i.fy, 24               ; 2 uses
  %i.ga = icmp eq i64 %i.fy, 0
  br i1 %i.ga, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9750
  %i.gb = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fz, i64 noundef range(i64 1, 9) 8) #36, !noalias !9750 ; 3 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.at, label %.lr.ph.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fz) #37
          to label %.noexc39 unwind label %bb.aw

.noexc39:                                         ; preds = %bb.at
  unreachable

.lr.ph.i:                                         ; preds = %bb.as, %bb.av
  %.sroa.012.034.i = phi ptr [ %i.ge, %bb.av ], [ %i.fw, %bb.as ] ; 4 uses
  %.sroa.7.033.i = phi i64 [ %i.gd, %bb.av ], [ 0, %bb.as ] ; 2 uses
  %.sroa.10.032.i = phi i64 [ %7, %bb.av ], [ %i.fy, %bb.as ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9751)
  %4 = load ptr, ptr %.sroa.012.034.i, align 8, !alias.scope !9752, !nonnull !12, !noundef !12
  %5 = atomicrmw add ptr %4, i64 1 monotonic, align 8, !noalias !9753
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %.lr.ph.i
  %i.gd = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 24
  %7 = add nsw i64 %.sroa.10.032.i, -1            ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !9752, !noundef !12
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %.sroa.7.033.i ; 2 uses
  %i.gi = load <2 x ptr>, ptr %.sroa.012.034.i, align 8, !alias.scope !9752
  store <2 x ptr> %i.gi, ptr %i.gh, align 8, !noalias !9754
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i64 %i.gg, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !9754
  %i.gj = icmp eq i64 %7, 0
  br i1 %i.gj, label %.loopexit, label %.lr.ph.i

bb.aw:                                            ; preds = %bb.at
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit:                                        ; preds = %bb.av, %bb.ar
  %.sroa.547.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ar ], [ %i.gb, %bb.av ]
  store i64 %i.fy, ptr %i.e, align 8, !noalias !9749
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.547.0, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !9749
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.fy, ptr %.sroa.748.0..sroa_idx, align 8, !noalias !9749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !12, !noundef !12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !noundef !12
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gm, i64 noundef %i.go)
          to label %bb.ay unwind label %bb.bd

bb.ax:                                            ; preds = %bb.az, %bb.j, %bb.k, %bb.al, %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %.loopexit
  invoke void @_RNvMNtCs56ggtDZRYpd_10arrow_data4dataNtB2_9ArrayData13new_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.fs, i64 noundef 0, i64 undef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.fu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gq = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.h)
          to label %bb.ba unwind label %bb.ax     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.gr = extractvalue { ptr, ptr } %i.gq, 0
  %i.gs = extractvalue { ptr, ptr } %i.gq, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gr, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gs, ptr %i.gu, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.j)
          to label %bb.bb unwind label %bb.f

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !9755)
  call void @llvm.experimental.noalias.scope.decl(metadata !9756)
  %i.gv = load ptr, ptr %i.l, align 8, !alias.scope !9757, !nonnull !12, !noundef !12
  %i.gw = atomicrmw add ptr %i.gv, i64 -1 release, align 8, !noalias !9757
  %i.gx = icmp eq i64 %i.gw, 1
  br i1 %i.gx, label %bb.bc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit40

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit40

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit40: ; preds = %bb.bc, %bb.bb, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bd:                                            ; preds = %.loopexit
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bj, %bb.bh, %bb.e, %.noexc41, %bb.bd, %.body
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bf:                                            ; preds = %bb.bd, %bb.aw
  %.pn.ph = phi { ptr, i32 } [ %i.gk, %bb.aw ], [ %i.gy, %bb.bd ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9758)
  %i.ha = load ptr, ptr %i.f, align 8, !alias.scope !9758, !noundef !12 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %.noexc41, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hc = atomicrmw add ptr %i.ha, i64 -1 release, align 8, !noalias !9759
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.bh, label %.noexc41

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc41 unwind label %bb.be

.noexc41:                                         ; preds = %bb.bh, %bb.bf, %bb.bg
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body unwind label %bb.be

bb.bi:                                            ; preds = %bb.ap, %bb.ao
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9760)
  call void @llvm.experimental.noalias.scope.decl(metadata !9761)
  call void @llvm.experimental.noalias.scope.decl(metadata !9762)
  call void @llvm.experimental.noalias.scope.decl(metadata !9763)
  %i.he = load ptr, ptr %i.i, align 8, !alias.scope !9764, !nonnull !12, !noundef !12
  %i.hf = atomicrmw add ptr %i.he, i64 -1 release, align 8, !noalias !9764
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.bj, label %.body

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body unwind label %bb.be

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn32.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs3_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_18CycleNullGeneratorNtB5_14ArrayGenerator9data_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 !guid !9765 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !20, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !12, !nonnull !12
  %i.g = tail call noundef nonnull align 8 ptr %i.f(ptr noundef nonnull %i.b)
  ret ptr %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !guid !9766 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = load i8, ptr %0, align 8, !range !26, !noundef !12
  switch i8 %i.u, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
    i8 37, label %bb.am
    i8 38, label %bb.an
    i8 39, label %bb.ao
    i8 40, label %bb.ap
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_13NullGeneratorNtB5_14ArrayGenerator8generate:bb.a
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0.5 = phi i64 [ %i.do, %bb.t ], [ %.sroa.0.4, %bb.s ] ; 2 uses
  %.sroa.0.1.4.i.i.i.i.i.i.i.i = phi i8 [ %i.dm, %bb.t ], [ %i.de, %bb.s ]
  %i.dp = shl nuw nsw i8 %.sroa.0.1.4.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dq = or disjoint i64 %i.br, 2
  %i.dr = icmp ult i64 %i.dq, %i.aj
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = lshr i64 %i.bj, 40
  %i.dt = trunc i64 %i.ds to i8
  %i.du = icmp ugt i8 %i.av, %i.dt                ; 2 uses
  %i.dv = xor i1 %i.du, true
  %i.dw = zext i1 %i.dv to i8
  %i.dx = or disjoint i8 %i.dp, %i.dw
  %i.dy = zext i1 %i.du to i64
  %i.dz = add i64 %.sroa.0.5, %i.dy
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.0.6 = phi i64 [ %i.dz, %bb.v ], [ %.sroa.0.5, %bb.u ] ; 2 uses
  %.sroa.0.1.5.i.i.i.i.i.i.i.i = phi i8 [ %i.dx, %bb.v ], [ %i.dp, %bb.u ]
  %i.ea = shl nuw nsw i8 %.sroa.0.1.5.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eb = or disjoint i64 %i.br, 1
  %i.ec = icmp ult i64 %i.eb, %i.aj
  br i1 %i.ec, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ed = lshr i64 %i.bj, 48
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = icmp ugt i8 %i.av, %i.ee                ; 2 uses
  %i.eg = xor i1 %i.ef, true
  %i.eh = zext i1 %i.eg to i8
  %i.ei = or disjoint i8 %i.ea, %i.eh
  %i.ej = zext i1 %i.ef to i64
  %i.ek = add i64 %.sroa.0.6, %i.ej
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.7 = phi i64 [ %i.ek, %bb.x ], [ %.sroa.0.6, %bb.w ] ; 2 uses
  %.sroa.0.1.6.i.i.i.i.i.i.i.i = phi i8 [ %i.ei, %bb.x ], [ %i.ea, %bb.w ]
  %i.el = shl nuw i8 %.sroa.0.1.6.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.em = icmp ult i64 %i.br, %i.aj
  br i1 %i.em, label %bb.z, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjhuNCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB15_13NullGeneratorNtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3E_3VechE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.en = lshr i64 %i.bj, 56
  %i.eo = trunc nuw i64 %i.en to i8
  %i.ep = icmp ugt i8 %i.av, %i.eo                ; 2 uses
  %i.eq = xor i1 %i.ep, true
  %i.er = zext i1 %i.eq to i8
  %i.es = or disjoint i8 %i.el, %i.er
  %i.et = zext i1 %i.ep to i64
  %i.eu = add i64 %.sroa.0.7, %i.et
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjhuNCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB15_13NullGeneratorNtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3E_3VechE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjhuNCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB15_13NullGeneratorNtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3E_3VechE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.0.8 = phi i64 [ %i.eu, %bb.z ], [ %.sroa.0.7, %bb.y ] ; 2 uses
  %.sroa.0.1.7.i.i.i.i.i.i.i.i = phi i8 [ %i.es, %bb.z ], [ %i.el, %bb.y ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  store i8 %.sroa.0.1.7.i.i.i.i.i.i.i.i, ptr %i.ev, align 1, !noalias !10944
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bg, %.sroa.015.0
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit, label %bb.m

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjhuNCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB15_13NullGeneratorNtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3E_3VechE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i.i.i.i.i.i
  store i64 %i.bo, ptr %3, align 8, !noalias !10943
  store i64 %i.bq, ptr %i.ay, align 8, !noalias !10943
  store i64 %i.bn, ptr %i.az, align 8, !noalias !10943
  store i64 %i.bp, ptr %i.ba, align 8, !noalias !10943
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit: ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit, %bb.j
  %.sroa.0.9 = phi i64 [ 0, %bb.j ], [ %.sroa.0.8, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit ]
  %.sroa.10.0.i27.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.j ], [ %i.aw, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit ] ; 2 uses
  %.val5.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.015.0, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10945
  store i64 1, ptr %i.a, align 8, !noalias !10945
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ew, align 8, !noalias !10945
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i27.i, ptr %i.ex, align 8, !noalias !10945
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val5.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10945
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10945
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10945
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.015.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10945
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10946
  %i.ey = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10946 ; 3 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.aa, label %bb.ad, !prof !13

bb.aa:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.ab, !noalias !10945

.noexc.i:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.ac, !noalias !10945

bb.ac:                                            ; preds = %bb.ab
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !10945
  unreachable

bb.ad:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ey, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !10945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10945
  br label %bb.ak

bb.ae:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fc = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.af unwind label %bb.at

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer9new_unset(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, i64 noundef %i.fc)
          to label %bb.ag unwind label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.fd = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10947)
  call void @llvm.experimental.noalias.scope.decl(metadata !10948)
  call void @llvm.experimental.noalias.scope.decl(metadata !10949)
  call void @llvm.experimental.noalias.scope.decl(metadata !10950)
  %i.ff = load ptr, ptr %i.g, align 8, !alias.scope !10951, !nonnull !12, !noundef !12
  %i.fg = atomicrmw add ptr %i.ff, i64 -1 release, align 8, !noalias !10951
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.ai, label %.body

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.body unwind label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %.sroa.051.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.sroa.0.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.sroa.2.0.copyload = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.g, %bb.ad, %bb.aj
  %.sroa.424.sroa.3.0 = phi i64 [ undef, %bb.g ], [ %.sroa.2.sroa.2.0.copyload, %bb.aj ], [ %.val5.i.i.i.i.i.i, %bb.ad ]
  %.sroa.424.sroa.0.0 = phi ptr [ undef, %bb.g ], [ %.sroa.2.sroa.0.0.copyload, %bb.aj ], [ %.sroa.10.0.i27.i, %bb.ad ]
  %i.fi = phi ptr [ null, %bb.g ], [ %.sroa.051.0.copyload, %bb.aj ], [ %i.ey, %bb.ad ] ; 3 uses
  %.sroa.020.0 = phi i64 [ 0, %bb.g ], [ %i.fd, %bb.aj ], [ %.sroa.0.9, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.fi, ptr %i.h, align 8
  %.sroa.424.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.424.sroa.0.0, ptr %.sroa.424.0..sroa_idx26, align 8
  %.sroa.424.sroa.3.0..sroa.424.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.424.sroa.3.0, ptr %.sroa.424.sroa.3.0..sroa.424.0..sroa_idx26.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj)
          to label %bb.an unwind label %bb.bd

bb.al:                                            ; preds = %bb.bj, %bb.bf, %bb.bc, %bb.ai, %.noexc68, %bb.az, %.body
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.am:                                            ; preds = %bb.i, %bb.g
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.fm, ptr %i.fl, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

bb.an:                                            ; preds = %bb.ak
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !12, !noundef !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !12 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10952)
  %i.fv = mul nuw nsw i64 %i.fu, 24               ; 2 uses
  %i.fw = icmp eq i64 %i.fu, 0
  br i1 %i.fw, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10953
  %i.fx = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fv, i64 noundef range(i64 1, 9) 8) #36, !noalias !10953 ; 3 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.ap, label %.lr.ph.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fv) #37
          to label %.noexc67 unwind label %bb.as

.noexc67:                                         ; preds = %bb.ap
  unreachable

.lr.ph.i:                                         ; preds = %bb.ao, %bb.ar
  %.sroa.012.034.i = phi ptr [ %i.ga, %bb.ar ], [ %i.fs, %bb.ao ] ; 4 uses
  %.sroa.7.033.i = phi i64 [ %i.fz, %bb.ar ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.10.032.i = phi i64 [ %7, %bb.ar ], [ %i.fu, %bb.ao ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10954)
  %4 = load ptr, ptr %.sroa.012.034.i, align 8, !alias.scope !10955, !nonnull !12, !noundef !12
  %5 = atomicrmw add ptr %4, i64 1 monotonic, align 8, !noalias !10956
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i
  call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %.lr.ph.i
  %i.fz = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 24
  %7 = add nsw i64 %.sroa.10.032.i, -1            ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !10955, !noundef !12
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %.sroa.7.033.i ; 2 uses
  %i.ge = load <2 x ptr>, ptr %.sroa.012.034.i, align 8, !alias.scope !10955
  store <2 x ptr> %i.ge, ptr %i.gd, align 8, !noalias !10957
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 %i.gc, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !10957
  %i.gf = icmp eq i64 %7, 0
  br i1 %i.gf, label %.loopexit, label %.lr.ph.i

bb.as:                                            ; preds = %bb.ap
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit:                                        ; preds = %bb.ar, %bb.an
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.an ], [ %i.fx, %bb.ar ]
  store i64 %i.fu, ptr %i.c, align 8, !noalias !10952
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !10952
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.fu, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !10952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !12, !noundef !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.gk = load i64, ptr %i.gj, align 8, !noundef !12
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gi, i64 noundef %i.gk)
          to label %bb.au unwind label %bb.az

bb.at:                                            ; preds = %bb.av, %bb.h, %bb.ae, %bb.af, %bb.l, %bb.bg, %bb.au
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %.loopexit
  invoke void @_RNvMNtCs56ggtDZRYpd_10arrow_data4dataNtB2_9ArrayData13new_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.fo, i64 noundef 1, i64 %.sroa.020.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.fq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gm = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.f)
          to label %bb.aw unwind label %bb.at     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.gn = extractvalue { ptr, ptr } %i.gm, 0
  %i.go = extractvalue { ptr, ptr } %i.gm, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gn, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.go, ptr %i.gq, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.k)
          to label %bb.ax unwind label %.thread114

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10958)
  call void @llvm.experimental.noalias.scope.decl(metadata !10959)
  %i.gr = load ptr, ptr %i.m, align 16, !alias.scope !10960, !nonnull !12, !noundef !12
  %i.gs = atomicrmw add ptr %i.gr, i64 -1 release, align 8, !noalias !10960
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72: ; preds = %bb.ay, %bb.ax, %bb.b, %bb.am, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.az:                                            ; preds = %.loopexit
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %bb.ba unwind label %bb.al

bb.ba:                                            ; preds = %bb.az, %bb.as
  %.pn.ph = phi { ptr, i32 } [ %i.gg, %bb.as ], [ %i.gu, %bb.az ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10961)
  %i.gv = load ptr, ptr %i.d, align 8, !alias.scope !10961, !noundef !12 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %.noexc68, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gx = atomicrmw add ptr %i.gv, i64 -1 release, align 8, !noalias !10962
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.bc, label %.noexc68

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc68 unwind label %bb.al

.noexc68:                                         ; preds = %bb.bc, %bb.ba, %bb.bb
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #38
          to label %.body unwind label %bb.al

bb.bd:                                            ; preds = %bb.ak
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ha = icmp eq ptr %i.fi, null
  br i1 %i.ha, label %.body, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hb = atomicrmw add ptr %i.fi, i64 -1 release, align 8, !noalias !10963
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bf, label %.body

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.al

bb.bg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.y, ptr %i.i, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @729, ptr noundef nonnull %i.i)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs342JT7D9NXi_13lance_datagen.exit unwind label %bb.at

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -9223372036854775794, ptr %0, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.k)
          to label %bb.bh unwind label %.thread114

bb.bh:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs342JT7D9NXi_13lance_datagen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10964)
  call void @llvm.experimental.noalias.scope.decl(metadata !10965)
  %i.hd = load ptr, ptr %i.m, align 16, !alias.scope !10966, !nonnull !12, !noundef !12
  %i.he = atomicrmw add ptr %i.hd, i64 -1 release, align 8, !noalias !10966
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit74: ; preds = %.thread, %bb.bj
  resume { ptr, i32 } %.pn62113

.thread:                                          ; preds = %.body, %.thread114
  %.pn62113 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread114 ], [ %.pn60, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10967)
  call void @llvm.experimental.noalias.scope.decl(metadata !10968)
  %i.hg = load ptr, ptr %i.m, align 16, !alias.scope !10969, !nonnull !12, !noundef !12
  %i.hh = atomicrmw add ptr %i.hg, i64 -1 release, align 8, !noalias !10969
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit74

bb.bj:                                            ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit74 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_13NullGeneratorNtB5_14ArrayGenerator8metadata(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !10970 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !20, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12
  tail call void %i.e(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_13NullGeneratorNtB5_14ArrayGenerator9data_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !guid !10971 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !20, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !12, !nonnull !12
  %i.f = tail call noundef nonnull align 8 ptr %i.e(ptr noundef nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !guid !10972 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !25, !noundef !12 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775796
  tail call void @llvm.assume(i1 %i.s)
  %i.t = xor i64 %i.r, -9223372036854775808
end_hunk_2
