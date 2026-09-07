Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.06?download=true
inline.NumInlined: 1365
inline.NumDeleted: 581
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir:bb.a

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !1938 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8Xq8PKFYOms_3hir.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !1938, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %.val2.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8Xq8PKFYOms_3hir.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !1938 ; 2 uses
  %i.m = icmp eq i64 %.val.i2, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8Xq8PKFYOms_3hir.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !1938, !nonnull !4, !noundef !4
  %i.n = shl nuw i64 %.val.i2, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def10ModuleIdLtEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def7TraitIdj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsileJQcQObtj_7hir_def7TraitIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !1941 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def7TraitIdEECs8Xq8PKFYOms_3hir.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !1941, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %.val2.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def7TraitIdEECs8Xq8PKFYOms_3hir.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !1941 ; 2 uses
  %i.m = icmp eq i64 %.val.i2, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def7TraitIdEECs8Xq8PKFYOms_3hir.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !1941, !nonnull !4, !noundef !4
  %i.n = shl nuw i64 %.val.i2, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def7TraitIdEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCsileJQcQObtj_7hir_def7TraitIdEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def7TraitIdEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def7TraitIdEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !1958, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = ptrtoint ptr %.val7.i to i64
  %i.i = and i64 %i.h, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %.val7.i, i64 -9   ; 5 uses
  %.not1.i.i.i.i = icmp eq ptr %i.j, null
  %.not.i.i.i.i = or i1 %.not1.i.i.i.i, %.not.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1958
  store ptr %i.j, ptr %i.b, align 8, !noalias !1958
  %i.k = load atomic i64, ptr %i.j acquire, align 8, !noalias !1958
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.d, label %.noexc.i, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !1958
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1958
  store ptr %i.j, ptr %i.a, align 8, !noalias !1958
  %i.m = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1959
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i

bb.e:                                             ; preds = %.noexc.i
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #33, !noalias !1958
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i: ; preds = %bb.e, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1958
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit

common.resume:                                    ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.t

bb.f:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.e, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.q, ptr %i.s, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !1960 ; 2 uses
  %i.u = icmp eq i64 %.val2.i, 0
  br i1 %i.u, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !1961, !nonnull !4, !noundef !4
  %i.v = shl nuw i64 %.val2.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !1962
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %.val.i3 = load i64, ptr %i.c, align 8, !alias.scope !1960 ; 2 uses
  %i.w = icmp eq i64 %.val.i3, 0
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8Xq8PKFYOms_3hir.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !1961, !nonnull !4, !noundef !4
  %i.x = shl nuw i64 %.val.i3, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !1963
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i, %.lr.ph.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %i.h = load i32, ptr %i.f, align 8, !range !22, !alias.scope !1984, !noundef !4
  %switch.i.i.i = icmp samesign ult i32 %i.h, 2
  br i1 %switch.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1985, !nonnull !4, !noundef !4
  %i.k = icmp eq ptr %i.j, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit.i unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.c
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.g, %i.c
  br i1 %i.n, label %common.resume, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i
  %.sroa.0.111.i = phi i64 [ %1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.111.i ; 2 uses
  %1 = add i64 %.sroa.0.111.i, 1                  ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !range !22, !alias.scope !1986, !noundef !4
  %switch.i.i7.i = icmp samesign ult i32 %i.p, 2
  br i1 %switch.i.i7.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph13.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1987, !nonnull !4, !noundef !4
  %i.s = icmp eq ptr %i.r, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i: ; preds = %bb.g, %bb.f, %.lr.ph13.i
  %2 = icmp eq i64 %1, %i.c
  br i1 %2, label %common.resume, label %.lr.ph13.i

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i, %bb.j, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.z, %bb.j ], [ %i.z, %bb.k ], [ %i.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit9.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.w, ptr %i.y, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !1988 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i, 0
  br i1 %i.aa, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val3.i = load ptr, ptr %i.x, align 8, !alias.scope !1988, !nonnull !4, !noundef !4
  %i.ab = shl nuw i64 %.val2.i, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !1988 ; 2 uses
  %i.ac = icmp eq i64 %.val.i2, 0
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackEECs8Xq8PKFYOms_3hir.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1.i = load ptr, ptr %i.x, align 8, !alias.scope !1988, !nonnull !4, !noundef !4
  %i.ad = shl nuw i64 %.val.i2, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackECs8Xq8PKFYOms_3hir.exit.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !1991 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEECs8Xq8PKFYOms_3hir.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !1991, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %.val2.i, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEECs8Xq8PKFYOms_3hir.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !1991 ; 2 uses
  %i.m = icmp eq i64 %.val.i2, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEECs8Xq8PKFYOms_3hir.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !1991, !nonnull !4, !noundef !4
  %i.n = shl nuw i64 %.val.i2, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !1994 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEECs8Xq8PKFYOms_3hir.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !1994, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %.val2.i, 20
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEECs8Xq8PKFYOms_3hir.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !1994 ; 2 uses
  %i.m = icmp eq i64 %.val.i, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEECs8Xq8PKFYOms_3hir.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !1994, !nonnull !4, !noundef !4
  %i.n = mul nuw i64 %.val.i, 20
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9.i = load ptr, ptr %i.f, align 8, !alias.scope !1999, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !1999, !noundef !4
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !noalias !1999
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i: ; preds = %.lr.ph.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i) #33, !noalias !1999
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECs8Xq8PKFYOms_3hir.exit

common.resume:                                    ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.p

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.o, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !2000 ; 2 uses
  %i.q = icmp eq i64 %.val2.i, 0
  br i1 %i.q, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !2000, !nonnull !4, !noundef !4
  %i.r = shl nuw i64 %.val2.i, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !2000 ; 2 uses
  %i.s = icmp eq i64 %.val.i2, 0
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !2000, !nonnull !4, !noundef !4
  %i.t = shl nuw i64 %.val.i2, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECs8Xq8PKFYOms_3hir.exit: ; preds = %.lr.ph.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010.i
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !2011, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !2011, !noundef !4
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !noalias !2011
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit.i unwind label %bb.d, !noalias !2011

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.c
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.g, %i.c
  br i1 %i.n, label %common.resume, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit9.i
  %.sroa.0.111.i = phi i64 [ %1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit9.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.111.i
  %1 = add i64 %.sroa.0.111.i, 1                  ; 2 uses
  %.val.i2 = load ptr, ptr %i.o, align 8, !alias.scope !2011, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i2, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !2011, !noundef !4
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !noalias !2011
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit9.i

bb.e:                                             ; preds = %.lr.ph13.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i2) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit9.i unwind label %bb.f, !noalias !2011

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit9.i: ; preds = %bb.e, %.lr.ph13.i
  %2 = icmp eq i64 %1, %i.c
  br i1 %2, label %common.resume, label %.lr.ph13.i

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit9.i, %bb.h, %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %i.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit9.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !2011
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.w, ptr %i.y, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !2012 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i, 0
  br i1 %i.aa, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val3.i = load ptr, ptr %i.x, align 8, !alias.scope !2013, !nonnull !4, !noundef !4
  %i.ab = shl nuw i64 %.val2.i, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !2014
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i3 = load i64, ptr %i.a, align 8, !alias.scope !2012 ; 2 uses
  %i.ac = icmp eq i64 %.val.i3, 0
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEEECs8Xq8PKFYOms_3hir.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i = load ptr, ptr %i.x, align 8, !alias.scope !2013, !nonnull !4, !noundef !4
  %i.ad = shl nuw i64 %.val.i3, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !2015
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECs8Xq8PKFYOms_3hir.exit.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_ENtNtNtB2k_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(88) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.09.i ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENtNtNtBK_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2030 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.j, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val3.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !2031, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %.val2.i.i.i, 12
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !noalias !2032
  br label %.body.i

bb.e:                                             ; preds = %.lr.ph.i
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2030 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val1.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !2031, !nonnull !4, !noundef !4
  %i.o = mul nuw i64 %.val.i.i.i, 12
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !noalias !2033
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.f, %bb.e
  %i.p = icmp eq i64 %i.g, %i.c
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.q = add i64 %.sroa.0.1.i24, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.c
  br i1 %i.r, label %common.resume, label %.lr.ph

.body.i:                                          ; preds = %bb.d, %bb.c
  %i.s = icmp eq i64 %i.g, %i.c
  br i1 %i.s, label %common.resume, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i24 = phi i64 [ %i.q, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.1.i24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #36
          to label %bb.g unwind label %bb.h

common.resume:                                    ; preds = %bb.g, %.body.i, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.aa, %bb.k ], [ %i.i, %.body.i ], [ %i.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.x, ptr %i.z, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBK_11MacroCallIdIBw_INtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1n_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEENtNtNtB1O_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !2034 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i, 0
  br i1 %i.ab, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val3.i = load ptr, ptr %i.y, align 8, !alias.scope !2034, !nonnull !4, !noundef !4
  %i.ac = mul nuw i64 %.val2.i, 40
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !2034 ; 2 uses
  %i.ad = icmp eq i64 %.val.i2, 0
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1d_11MacroCallIdIBC_INtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1Q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEECs8Xq8PKFYOms_3hir.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1.i = load ptr, ptr %i.y, align 8, !alias.scope !2034, !nonnull !4, !noundef !4
  %i.ae = mul nuw i64 %.val.i2, 40
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1d_11MacroCallIdIBC_INtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1Q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1d_11MacroCallIdIBC_INtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1Q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBH_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1k_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECs8Xq8PKFYOms_3hir.exit.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB1d_11MacroCallIdIBC_INtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherB1Q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEECs8Xq8PKFYOms_3hir.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !2042
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !2042
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !2042
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !2042
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !2042
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !2042
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !2042
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !2042
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !2042
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !2042
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !2043, !noalias !2044, !nonnull !4, !noundef !4
  %i.ad = call fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !2043 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs8Xq8PKFYOms_3hir.exit

bb.h:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !2043, !noalias !2044, !noundef !4 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2045
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i.i
    i64 1, label %bb.k
  ], !prof !12

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !2046, !noalias !2045
  store i8 3, ptr %i.a, align 8, !alias.scope !2046, !noalias !2045
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i.i unwind label %bb.l, !noalias !2043

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2045
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !2043, !noalias !2044
  resume { ptr, i32 } %i.an

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !2043, !noalias !2044
  br label %_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs8Xq8PKFYOms_3hir.exit

_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs8Xq8PKFYOms_3hir.exit: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCs8Xq8PKFYOms_3hir.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @14, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !2047
  ret i1 %i.a
end_hunk_0
