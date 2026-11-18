Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/advanced_blog_cli-7275b01720a11b73.advanced_blog_cli.6af03eca1abeceee-cgu.14?download=true
inline.NumInlined: 252
inline.NumDeleted: 163
begin_hunk_0_@_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterRlENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli:bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecRlENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB11_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !326 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 7
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBH_4auth4UserEEBH_(ptr noalias noundef nonnull align 8 %.val, i64 noundef %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBR_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !6
  store i64 %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.q, align 8
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBR_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB12_4auth4UserExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !327 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBI_4auth4UserExEEBI_(ptr noalias noundef nonnull align 8 %.val, i64 noundef %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBS_4auth4UserExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !6
  store i64 %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.q, align 8
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBS_4auth4UserExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB9_6string6StringExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !328 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 96                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBI_.exit, label %.lr.ph

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit7.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB7_6string6StringExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit.i
  %.sroa.0.0.i4 = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit.i unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit7.i: ; preds = %.lr.ph6
  %i.q = add nuw nsw i64 %.sroa.0.1.i5, 1         ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit7.i
  %.sroa.0.1.i5 = phi i64 [ %i.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit7.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.u)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit7.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBI_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringExEEBH_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB7_6string6StringExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEIB1c_B2a_EENtNtNtB9_6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !358 {
bb.a:
  %.sroa.632 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.628 = alloca [24 x i8], align 8          ; 11 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 13 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.d = load ptr, ptr %1, align 8
  %.fr = freeze ptr %i.d
  %.not.i2 = icmp eq ptr %.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.promoted48 = load ptr, ptr %i.b, align 8      ; 2 uses
  %.promoted49 = load ptr, ptr %i.c, align 8      ; 8 uses
  br i1 %.not.i2, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.promoted50 = load ptr, ptr %i.g, align 8      ; 5 uses
  %i.h = icmp eq ptr %.promoted, null
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.628)
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.peel, label %bb.b

bb.b:                                             ; preds = %.split.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.i = icmp eq ptr %.promoted49, %.promoted48
  br i1 %i.i, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.peel, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.peel

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.peel: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted49, i64 32
  store ptr %i.j, ptr %i.c, align 8, !alias.scope !362
  %.sroa.026.0.copyload.peel = load ptr, ptr %.promoted49, align 8, !noalias !363 ; 2 uses
  %.sroa.628.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted49, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.0..sroa_idx.peel, i64 24, i1 false), !noalias !363
  %.not6.i.peel = icmp eq ptr %.sroa.026.0.copyload.peel, null
  br i1 %.not6.i.peel, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.peel, label %.split52.us

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.peel: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.peel, %bb.b
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35.peel unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !364

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35.peel: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.peel
  store ptr null, ptr %i.a, align 8, !alias.scope !359
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.peel: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35.peel, %.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.k = icmp eq ptr %.promoted50, %i.f
  br i1 %i.k, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.peel

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.peel: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.peel
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted50, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !367
  %.sroa.0.0.copyload10.peel = load i64, ptr %.promoted50, align 8, !noalias !367 ; 3 uses
  %.sroa.8.0..sroa_idx11.peel = getelementptr inbounds nuw i8, ptr %.promoted50, i64 8
  %.sroa.8.sroa.0.0.copyload.peel = load ptr, ptr %.sroa.8.0..sroa_idx11.peel, align 8, !noalias !367 ; 6 uses
  %.not1.peel = icmp eq i64 %.sroa.0.0.copyload10.peel, -1
  br i1 %.not1.peel, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.peel
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted50, i64 16
  %.sroa.8.sroa.5.0.copyload.peel = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx.peel, align 8, !noalias !367 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.peel) ]
  %i.m = icmp ult i64 %.sroa.8.sroa.5.0.copyload.peel, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload.peel, i64 %.sroa.8.sroa.5.0.copyload.peel ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %.split.peel.next unwind label %.loopexit.split-lp

.split.peel.next:                                 ; preds = %bb.c
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10.peel, ptr %.sroa.621.0..sroa_idx22, align 8
  store ptr %i.n, ptr %i.b, align 8
  br label %.split

.split.us:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.628)
  %.not.i.us = icmp eq ptr %.promoted, null
  br i1 %.not.i.us, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.us, label %bb.d

bb.d:                                             ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.o = icmp eq ptr %.promoted49, %.promoted48
  br i1 %i.o, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.us, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.us

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.us: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.promoted49, i64 32
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !371
  %.sroa.026.0.copyload.us = load ptr, ptr %.promoted49, align 8, !noalias !372 ; 2 uses
  %.sroa.628.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.promoted49, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.0..sroa_idx.us, i64 24, i1 false), !noalias !372
  %.not6.i.us = icmp eq ptr %.sroa.026.0.copyload.us, null
  br i1 %.not6.i.us, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.us, label %.split52.us

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.us: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.us, %bb.d
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35.us unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !364

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35.us: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.us
  store ptr null, ptr %i.a, align 8, !alias.scope !368
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.us

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.us: ; preds = %.split.us, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35.us
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  br label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread

.split:                                           ; preds = %.split.peel.next, %bb.l
  %i.q = phi ptr [ %i.w, %bb.l ], [ %i.l, %.split.peel.next ] ; 5 uses
  %i.r = phi ptr [ %.sroa.8.sroa.0.0.copyload, %bb.l ], [ %.sroa.8.sroa.0.0.copyload.peel, %.split.peel.next ] ; 4 uses
  %i.s = phi ptr [ %i.y, %bb.l ], [ %i.n, %.split.peel.next ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %.split
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.c, align 8, !alias.scope !371
  %.sroa.026.0.copyload = load ptr, ptr %i.r, align 8, !noalias !372 ; 2 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.0..sroa_idx, i64 24, i1 false), !noalias !372
  %.not6.i = icmp eq ptr %.sroa.026.0.copyload, null
  br i1 %.not6.i, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i, label %.split52.us

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i: ; preds = %.split, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !364

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i
  store ptr null, ptr %i.a, align 8, !alias.scope !368
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.v = icmp eq ptr %i.q, %i.f
  br i1 %i.v, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit

common.resume:                                    ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.ah, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i7 ], [ %lpad.phi62, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.us, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !alias.scope !368
  br label %common.resume

.split52.us:                                      ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.peel, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.us
  %.us-phi = phi ptr [ %.sroa.026.0.copyload.us, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.us ], [ %.sroa.026.0.copyload.peel, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i.peel ], [ %.sroa.026.0.copyload, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628, i64 24, i1 false), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  store ptr %.us-phi, ptr %0, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.e

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.g, align 8, !alias.scope !375
  %.sroa.0.0.copyload10 = load i64, ptr %i.q, align 8, !noalias !375 ; 3 uses
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx11, align 8, !noalias !375 ; 6 uses
  %.not1 = icmp eq i64 %.sroa.0.0.copyload10, -1
  br i1 %.not1, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit9, %.split52.us
  ret void

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx, align 8, !noalias !375 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  %i.x = icmp ult i64 %.sroa.8.sroa.5.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.5.0.copyload ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.l unwind label %.loopexit

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.peel, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.peel, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit.thread35, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.us
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !377, !noundef !6
  %.not.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !380, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !380, !nonnull !6, !noundef !6 ; 4 uses
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i8, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i4

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i4: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ag, ptr %i.ad, align 8, !alias.scope !380
  %.sroa.030.0.copyload = load ptr, ptr %i.ae, align 8, !noalias !381 ; 2 uses
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632.0..sroa_idx, i64 24, i1 false), !noalias !381
  %.not6.i6 = icmp eq ptr %.sroa.030.0.copyload, null
  br i1 %.not6.i6, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i8, label %bb.i

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli.exit.thread
  store ptr null, ptr %0, align 8, !alias.scope !376
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit9

bb.i:                                             ; preds = %bb.j, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i4
  %.sroa.030.0 = phi ptr [ null, %bb.j ], [ %.sroa.030.0.copyload, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i4 ]
  store ptr %.sroa.030.0, ptr %0, align 8, !noalias !377
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, i64 24, i1 false), !noalias !377
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit9

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i8: ; preds = %bb.g, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.i4
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.j unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i7, !noalias !376

bb.j:                                             ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i8
  store ptr null, ptr %i.z, align 8, !alias.scope !377
  br label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli.exit.i7: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli.exit.thread.i8
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.z, align 8, !alias.scope !377
  br label %common.resume

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  br label %bb.e

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa = phi ptr [ %i.y, %.loopexit ], [ %i.n, %.loopexit.split-lp ]
  %.sroa.0.0.copyload10.lcssa = phi i64 [ %.sroa.0.0.copyload10, %.loopexit ], [ %.sroa.0.0.copyload10.peel, %.loopexit.split-lp ]
  %.sroa.8.sroa.0.0.copyload.lcssa = phi ptr [ %.sroa.8.sroa.0.0.copyload, %.loopexit ], [ %.sroa.8.sroa.0.0.copyload.peel, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi62 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp ]
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10.lcssa, ptr %.sroa.621.0..sroa_idx22, align 8
  store ptr %.lcssa, ptr %i.b, align 8
  br label %common.resume

bb.l:                                             ; preds = %bb.f
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10, ptr %.sroa.621.0..sroa_idx22, align 8
  store ptr %i.y, ptr %i.b, align 8
  br label %.split, !llvm.loop !357
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !387 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !388, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9bejAFUsR8E_17advanced_blog_cli(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9bejAFUsR8E_17advanced_blog_cli.exit

_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs9ZYirdRbabK_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9ZYirdRbabK_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9ZYirdRbabK_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intobECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9ZYirdRbabK_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intolECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9ZYirdRbabK_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoxECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9bejAFUsR8E_17advanced_blog_cli(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9ZYirdRbabK_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs9ZYirdRbabK_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_NtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_NtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9bejAFUsR8E_17advanced_blog_cli4auth4UserENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBK_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB17_4auth4UserEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB17_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs9bejAFUsR8E_17advanced_blog_cli4auth4UserENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecRlENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBR_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBR_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtBS_4auth4UserExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB7_6string6StringExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTRljEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapRljNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTBP_jEE6extendINtNtNtB1N_8adapters3map3MapINtNtB2S_9enumerate9EnumerateINtNtNtB1P_5slice4iter4IterNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostEENCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtB4d_7comment7CommentNtNtB4d_4auth4UserEEINtB53_9GroupedByB49_E10grouped_by0EEB4d_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostEIB17_NtNtB1H_4auth4UserEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1D_B2u_EEE6extendB1H_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsfKiFC1ztrmh_9hashbrownlINtB2_10EquivalentRlE10equivalentCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostEIBQ_NtNtB1q_4auth4UserEEINtB5_6ExtendTB1m_B2c_EE20extend_one_uncheckedB1q_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostEIBQ_NtNtB1q_4auth4UserEEINtB5_6ExtendTB1m_B2c_EE10extend_oneB1q_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 4 ptr @_RNvXs8O_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBT_4auth4UserEINtNtNtBa_12associations10belongs_to9BelongsToNtNtBT_4post4PostE11foreign_keyBT_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs9ZYirdRbabK_12clap_builder4util9any_valueNtB4_8AnyValueNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBR_4auth4UserEE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCs40k4W9msRzi_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE4fillINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCs40k4W9msRzi_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE9move_tailCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_QINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2a_5array4iter8IntoIterRNtNtB6_6string6StringKj1_ENvYB3k_INtNtB2a_7convert4IntoBU_E4intoEE9from_iterCs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCs40k4W9msRzi_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs9ZYirdRbabK_12clap_builder(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!135 = !{!122, !120, !118, !116}
!136 = distinct !{!136, i1 true, !"_RINvMs1_NtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_txECs9bejAFUsR8E_17advanced_blog_cli"}
!137 = distinct !{!137, !136, !"_RINvMs1_NtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_txECs9bejAFUsR8E_17advanced_blog_cli: argument 2"}
!138 = distinct !{!138, !136, !"_RINvMs1_NtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_txECs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!139 = distinct !{!139, !136, !"_RINvMs1_NtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_txECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!140 = distinct !{!140, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9bejAFUsR8E_17advanced_blog_cli"}
!141 = distinct !{!141, !140, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!142 = distinct !{!142, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdECs9bejAFUsR8E_17advanced_blog_cli"}
!143 = distinct !{!143, !142, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!144 = distinct !{!144, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECs9bejAFUsR8E_17advanced_blog_cli"}
!145 = distinct !{!145, !144, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!146 = distinct !{!146, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECs9bejAFUsR8E_17advanced_blog_cli"}
!147 = distinct !{!147, !146, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!148 = distinct !{!148, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdECs9bejAFUsR8E_17advanced_blog_cli"}
!149 = distinct !{!149, !148, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util2id2IdECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!150 = distinct !{!150, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECs9bejAFUsR8E_17advanced_blog_cli"}
!151 = distinct !{!151, !150, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str3StrECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!152 = distinct !{!152, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECs9bejAFUsR8E_17advanced_blog_cli"}
!153 = distinct !{!153, !152, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCs9ZYirdRbabK_12clap_builder7builder3str5inner5InnerECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!154 = distinct !{!154, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultxNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueE6expectCs9bejAFUsR8E_17advanced_blog_cli"}
!155 = distinct !{!155, !154, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultxNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueE6expectCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!156 = distinct !{!156, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli"}
!157 = distinct !{!157, !156, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!158 = distinct !{!158, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli"}
!159 = distinct !{!159, !158, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!160 = distinct !{!160, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli"}
!161 = distinct !{!161, !160, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!162 = !{i64 -156571042311704209}
!163 = !{!139, !138, !137}
!164 = !{!139}
!165 = !{!141}
!166 = !{!138, !137}
!167 = !{!147, !145, !143, !139}
!168 = !{!153, !151, !149, !139}
!169 = !{!155}
!170 = !{!157}
!171 = !{!159}
!172 = !{!161}
!173 = !{!161, !159, !157}
!174 = !{!161, !159, !157, !155}
!175 = distinct !{!175, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli"}
!176 = distinct !{!176, !175, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!177 = distinct !{!177, i1 true, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli"}
!178 = distinct !{!178, !177, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!179 = distinct !{!179, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli"}
!180 = distinct !{!180, !179, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!181 = distinct !{!181, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli"}
!182 = distinct !{!182, !181, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!183 = distinct !{!183, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli"}
!184 = distinct !{!184, !183, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!185 = distinct !{!185, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli"}
!186 = distinct !{!186, !185, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!187 = distinct !{!187, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli"}
!188 = distinct !{!188, !187, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!189 = distinct !{!189, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli"}
!190 = distinct !{!190, !189, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!191 = distinct !{!191, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli"}
!192 = distinct !{!192, !191, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!193 = !{i64 1652615314760009912}
!194 = !{!176}
!195 = !{!178}
!196 = !{!178, !176}
!197 = !{!180}
!198 = !{!182}
!199 = !{!184}
!200 = !{!184, !182, !180, !186}
!201 = !{!184, !182, !180, !178, !176}
!202 = !{!188}
!203 = !{!190}
!204 = !{!192}
!205 = !{!192, !190, !188, !186}
!206 = !{!192, !190, !188, !178, !176}
!207 = !{i64 877667403224328888}
!208 = !{i64 -8149841442148592952}
!209 = !{i64 -1971132405409500292}
!210 = !{i64 5634979786897278430}
!211 = !{i64 -5993076058104066717}
!212 = distinct !{!212, i1 true, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB11_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB11_"}
!213 = distinct !{!213, !212, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB11_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB11_: argument 0"}
!214 = !{i64 8480254684765839336}
!215 = !{!213}
!216 = distinct !{!216, i1 true, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB11_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB11_"}
!217 = distinct !{!217, !216, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB11_4auth4UserEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB11_: argument 0"}
!218 = !{i64 1385211301457565720}
!219 = !{!217}
!220 = distinct !{!220, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1t_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEIB1p_B2n_EEECs9bejAFUsR8E_17advanced_blog_cli"}
!221 = distinct !{!221, !220, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1t_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEIB1p_B2n_EEECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!222 = distinct !{!222, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEECs9bejAFUsR8E_17advanced_blog_cli"}
!223 = distinct !{!223, !222, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!224 = distinct !{!224, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB12_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEECs9bejAFUsR8E_17advanced_blog_cli"}
!225 = distinct !{!225, !224, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB12_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!226 = distinct !{!226, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli"}
!227 = distinct !{!227, !226, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!228 = distinct !{!228, i1 true, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli"}
!229 = distinct !{!229, !228, !"_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!230 = !{i64 9046045975900609383}
!231 = !{!221}
!232 = !{!223}
!233 = !{!225}
!234 = !{!225, !223, !221}
!235 = !{!227}
!236 = !{!229}
!237 = !{!229, !227, !225, !223, !221}
!238 = !{i64 -807791779496380282}
!239 = !{i64 -689339888505642584}
!240 = !{i64 -3285372641864303549}
!241 = distinct !{!241, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli"}
!242 = distinct !{!242, !241, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!243 = distinct !{!243, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli"}
!244 = distinct !{!244, !243, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!245 = !{i64 6293565983345254410}
!246 = !{!242}
!247 = !{!244}
!248 = !{!244, !242}
!249 = !{i64 -7665731523134269126}
!250 = !{i64 7709120474170172369}
!251 = !{i64 8751908519324625509}
!252 = !{i64 5363395771072977106}
!253 = !{i64 -6017164319952933560}
!254 = !{i64 -7539821422058545889}
!255 = !{i64 5584852670236430422}
!256 = !{i64 -3827289932173016704}
!257 = !{i64 -8531862422643405321}
!258 = !{i64 8174146320752997903}
!259 = distinct !{!259, i1 true, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB1k_4auth4UserENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCs40k4W9msRzi_5alloc3vec3VecB1g_EIB3g_B21_EEB1f_E0E0B1k_"}
!260 = distinct !{!260, !259, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB1k_4auth4UserENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCs40k4W9msRzi_5alloc3vec3VecB1g_EIB3g_B21_EEB1f_E0E0B1k_: argument 0"}
!261 = !{i64 -3861565741829659630}
!262 = !{!260}
!263 = distinct !{!263, i1 true, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB1k_4auth4UserENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs40k4W9msRzi_5alloc3vec3VecB1g_EIB35_B21_EEB1f_E0E0B1k_"}
!264 = distinct !{!264, !263, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB1k_4auth4UserENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs40k4W9msRzi_5alloc3vec3VecB1g_EIB35_B21_EEB1f_E0E0B1k_: argument 0"}
!265 = !{i64 -1458917035332943399}
!266 = !{!264}
!267 = distinct !{!267, i1 true, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1f_4auth4UserETRjB1a_EuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecB1a_EINtB2B_9GroupedByNtNtB1f_4post4PostE10grouped_bys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2l_NCB2w_s0_0E0E0B1f_"}
!268 = distinct !{!268, !267, !"_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1f_4auth4UserETRjB1a_EuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecB1a_EINtB2B_9GroupedByNtNtB1f_4post4PostE10grouped_bys_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2l_NCB2w_s0_0E0E0B1f_: argument 0"}
!269 = distinct !{!269, i1 true, !"_RNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1x_4auth4UserEEINtB6_9GroupedByNtNtB1x_4post4PostE10grouped_bys_0B1x_"}
!270 = distinct !{!270, !269, !"_RNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1x_4auth4UserEEINtB6_9GroupedByNtNtB1x_4post4PostE10grouped_bys_0B1x_: argument 0"}
!271 = distinct !{!271, i1 true, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRljEE4findNCINvNtB8_3map14equivalent_keylBQ_jE0ECs9bejAFUsR8E_17advanced_blog_cli"}
!272 = distinct !{!272, !271, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTRljEE4findNCINvNtB8_3map14equivalent_keylBQ_jE0ECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!273 = distinct !{!273, i1 true, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!274 = distinct !{!274, !273, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!275 = distinct !{!275, i1 true, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!276 = distinct !{!276, !275, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!277 = distinct !{!277, !269, !"_RNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1x_4auth4UserEEINtB6_9GroupedByNtNtB1x_4post4PostE10grouped_bys_0B1x_: argument 1"}
!278 = distinct !{!278, i1 true, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callTRjTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1n_4auth4UserEENCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecB1i_EINtB2B_9GroupedByNtNtB1n_4post4PostE10grouped_bys0_0E0B1n_"}
!279 = distinct !{!279, !278, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callTRjTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1n_4auth4UserEENCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecB1i_EINtB2B_9GroupedByNtNtB1n_4post4PostE10grouped_bys0_0E0B1n_: argument 0"}
!280 = distinct !{!280, i1 true, !"_RNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1x_4auth4UserEEINtB6_9GroupedByNtNtB1x_4post4PostE10grouped_bys0_0B1x_"}
!281 = distinct !{!281, !280, !"_RNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1x_4auth4UserEEINtB6_9GroupedByNtNtB1x_4post4PostE10grouped_bys0_0B1x_: argument 0"}
!282 = distinct !{!282, i1 true, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBK_4auth4UserEE8push_mutBK_"}
!283 = distinct !{!283, !282, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBK_4auth4UserEE8push_mutBK_: argument 0"}
!284 = distinct !{!284, !282, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBK_4auth4UserEE8push_mutBK_: argument 1"}
!285 = !{i64 -2168521612784775675}
!286 = !{!268}
!287 = !{!270}
!288 = !{!270, !268}
!289 = !{!276, !274, !272, !270, !268}
!290 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!291 = !{!270, !277}
!292 = !{!281, !279, !268}
!293 = !{!283}
!294 = !{i64 0, i64 -9223372036854775808}
!295 = !{!284, !281, !279, !268}
!296 = !{i64 -330355761818246373}
!297 = !{i64 8766766083626963496}
!298 = distinct !{!298, i1 true, !"_RNvXse_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostEIBy_NtNtB18_4auth4UserEENtNtB7_7default7Default7defaultB18_"}
!299 = distinct !{!299, !298, !"_RNvXse_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostEIBy_NtNtB18_4auth4UserEENtNtB7_7default7Default7defaultB18_: argument 0"}
!300 = !{i64 -5282847433619501273}
!301 = !{!299}
!302 = !{i64 5025000052867661594}
!303 = !{i64 6123355627255843407}
!304 = !{i64 2762918936191733363}
!305 = distinct !{!305, i1 true, !"_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1B_3ops9try_traitINtB2E_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1t_8for_each4callBK_INvNtB1B_3mem4dropBK_EE0E0B30_ECs9bejAFUsR8E_17advanced_blog_cli"}
!306 = distinct !{!306, !305, !"_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1B_3ops9try_traitINtB2E_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1t_8for_each4callBK_INvNtB1B_3mem4dropBK_EE0E0B30_ECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!307 = distinct !{!307, i1 true, !"_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!308 = distinct !{!308, !307, !"_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!309 = distinct !{!309, i1 true, !"_RNCINvMNtNtCscI6d9CVNmLh_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_INvNtB9_3mem4dropB1k_EE0E0Cs9bejAFUsR8E_17advanced_blog_cli"}
!310 = distinct !{!310, !309, !"_RNCINvMNtNtCscI6d9CVNmLh_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_INvNtB9_3mem4dropB1k_EE0E0Cs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!311 = distinct !{!311, i1 true, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINvNtBe_3mem4dropB1f_EE0Cs9bejAFUsR8E_17advanced_blog_cli"}
!312 = distinct !{!312, !311, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINvNtBe_3mem4dropB1f_EE0Cs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!313 = distinct !{!313, i1 true, !"_RNvYINvNtCscI6d9CVNmLh_4core3mem4dropNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEINtNtNtB7_3ops8function5FnMutTBz_EE8call_mutCs9bejAFUsR8E_17advanced_blog_cli"}
!314 = distinct !{!314, !313, !"_RNvYINvNtCscI6d9CVNmLh_4core3mem4dropNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEINtNtNtB7_3ops8function5FnMutTBz_EE8call_mutCs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!315 = !{i64 -7300588951859298602}
!316 = !{!306}
!317 = !{!308, !306}
!318 = !{!308}
!319 = !{!312, !310, !306}
!320 = !{!314, !312, !310, !306}
!321 = !{i64 6072809248191658546}
!322 = !{i64 5828712939692463101}
!323 = !{i64 7137341438310806220}
!324 = !{i64 -767571317413294047}
!325 = !{i64 -6910922959748439502}
!326 = !{i64 9004045454226946056}
!327 = !{i64 -7915602277241694853}
!328 = !{i64 4394392594827993756}
!329 = distinct !{!329, i1 true, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli"}
!330 = distinct !{!330, !329, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli: argument 1:Peel0"}
!331 = distinct !{!331, i1 true, !"_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli"}
!332 = distinct !{!332, !331, !"_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli: argument 1:Peel0"}
!333 = distinct !{!333, i1 true, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!334 = distinct !{!334, !333, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1:Peel0"}
!335 = distinct !{!335, i1 true, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli"}
!336 = distinct !{!336, !335, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!337 = distinct !{!337, i1 true, !"_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!338 = distinct !{!338, !337, !"_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1:Peel0"}
!339 = distinct !{!339, i1 true, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!340 = distinct !{!340, !339, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1:Peel0"}
!341 = distinct !{!341, !335, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!342 = distinct !{!342, i1 true, !"_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli"}
!343 = distinct !{!343, !342, !"_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!344 = distinct !{!344, i1 true, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!345 = distinct !{!345, !344, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!346 = distinct !{!346, i1 true, !"_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!347 = distinct !{!347, !346, !"_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!348 = distinct !{!348, i1 true, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!349 = distinct !{!349, !348, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!350 = distinct !{!350, i1 true, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli"}
!351 = distinct !{!351, !350, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!352 = distinct !{!352, !350, !"_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!353 = distinct !{!353, i1 true, !"_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli"}
!354 = distinct !{!354, !353, !"_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Y_3ops8function6FnOnceTQB5_EE9call_onceCs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!355 = distinct !{!355, i1 true, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli"}
!356 = distinct !{!356, !355, !"_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder4util9any_value8AnyValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9bejAFUsR8E_17advanced_blog_cli: argument 1"}
!357 = distinct !{!357, !382}
!358 = !{i64 -1809090558675438611}
!359 = !{!330}
!360 = !{!332}
!361 = !{!334}
!362 = !{!334, !332, !330}
!363 = !{!334, !332, !336, !330}
!364 = !{!336}
!365 = !{!338}
!366 = !{!340}
!367 = !{!340, !338}
!368 = !{!341}
!369 = !{!343}
!370 = !{!345}
!371 = !{!345, !343, !341}
!372 = !{!345, !343, !336, !341}
!373 = !{!347}
!374 = !{!349}
!375 = !{!349, !347}
!376 = !{!351}
!377 = !{!352}
!378 = !{!354}
!379 = !{!356}
!380 = !{!356, !354, !352}
!381 = !{!356, !354, !351, !352}
!382 = !{!"llvm.loop.peeled.count", i32 1}
!383 = distinct !{!383, i1 true, !"_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9bejAFUsR8E_17advanced_blog_cli"}
!384 = distinct !{!384, !383, !"_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!385 = distinct !{!385, i1 true, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9bejAFUsR8E_17advanced_blog_cli"}
!386 = distinct !{!386, !385, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9bejAFUsR8E_17advanced_blog_cli: argument 0"}
!387 = !{i64 7495739394566697498}
!388 = !{!386, !384}
end_hunk_1
