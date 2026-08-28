Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-fd56e804c0c3423a.dsl_auto_type.677851e787f19548-cgu.02?download=true
inline.NumInlined: 1490
inline.NumDeleted: 380
begin_hunk_0_@_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type:bb.a
  br label %_RNvXs14_Cs50gxqRnCXtk_10proc_macroNtB6_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !range !4097, !alias.scope !4098, !noalias !4101, !noundef !4
  %i.aj = load <2 x i32>, ptr %.sroa.012.066.i, align 4, !alias.scope !4098, !noalias !4101
  br label %_RNvXs14_Cs50gxqRnCXtk_10proc_macroNtB6_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ak = load <2 x i32>, ptr %.sroa.012.066.i, align 4, !alias.scope !4103, !noalias !4090
  %.sroa.1018.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 8
  %.sroa.1018.0.copyload20.i = load i32, ptr %.sroa.1018.0..sroa_idx19.i, align 4, !alias.scope !4103, !noalias !4090 ; 2 uses
  %.sroa.1018.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.1018.0.copyload20.i to i8
  %.sroa.1018.sroa.7.0.extract.shift.i = and i32 %.sroa.1018.0.copyload20.i, -256
  %.sroa.13.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 12
  %.sroa.13.0.copyload22.i = load i32, ptr %.sroa.13.0..sroa_idx21.i, align 4, !alias.scope !4103, !noalias !4090 ; 3 uses
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.13.0.copyload22.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = lshr i32 %.sroa.13.0.copyload22.i, 8
  %.sroa.13.sroa.6.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.6.0.extract.shift.i to i8
  %.sroa.13.sroa.7.0.extract.shift.i = and i32 %.sroa.13.0.copyload22.i, -65536
  %.sroa.19.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.0..sroa_idx25.i, i64 3, i1 false), !alias.scope !4104, !noalias !4090
  br label %_RNvXs14_Cs50gxqRnCXtk_10proc_macroNtB6_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 12
  %i.am = load i8, ptr %i.al, align 4, !range !4105, !alias.scope !4106, !noalias !4109, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 13
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !4106, !noalias !4109
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.066.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !4106, !noalias !4109, !noundef !4 ; 2 uses
  %i.ar = load <2 x i32>, ptr %.sroa.012.066.i, align 4, !alias.scope !4106, !noalias !4109
  %.sroa.1018.sroa.0.0.extract.trunc31.i = trunc i32 %i.aq to i8
  %.sroa.1018.sroa.7.0.extract.shift33.i = and i32 %i.aq, -256
  br label %_RNvXs14_Cs50gxqRnCXtk_10proc_macroNtB6_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

_RNvXs14_Cs50gxqRnCXtk_10proc_macroNtB6_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i
  %.sroa.1018.sroa.7.sroa.0.0.i = phi i32 [ %.sroa.1018.sroa.7.0.extract.shift35.i, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.g ], [ %.sroa.1018.sroa.7.0.extract.shift.i, %bb.h ], [ %.sroa.1018.sroa.7.0.extract.shift33.i, %bb.i ]
  %.sroa.1018.sroa.0.0.i = phi i8 [ %.sroa.1018.sroa.0.0.extract.trunc32.i, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ %i.ai, %bb.g ], [ %.sroa.1018.sroa.0.0.extract.trunc.i, %bb.h ], [ %.sroa.1018.sroa.0.0.extract.trunc31.i, %bb.i ]
  %.sroa.13.sroa.7.0.i = phi i32 [ %.sroa.13.sroa.7.0.extract.shift29.i, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 0, %bb.g ], [ %.sroa.13.sroa.7.0.extract.shift.i, %bb.h ], [ 0, %bb.i ]
  %.sroa.13.sroa.6.0.i = phi i8 [ %.sroa.13.sroa.6.0.extract.trunc28.i, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ undef, %bb.g ], [ %.sroa.13.sroa.6.0.extract.trunc.i, %bb.h ], [ %i.ao, %bb.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc26.i, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ undef, %bb.g ], [ %.sroa.13.sroa.0.0.extract.trunc.i, %bb.h ], [ %i.am, %bb.i ]
  %.sroa.16.0.i = phi i8 [ %i.x, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ 4, %bb.g ], [ %i.x, %bb.h ], [ 6, %bb.i ]
  %i.as = phi <2 x i32> [ %i.af, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i ], [ %i.aj, %bb.g ], [ %i.ak, %bb.h ], [ %i.ar, %bb.i ]
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.064.i ; 5 uses
  %.sroa.1018.sroa.0.0.insert.ext.i = zext i8 %.sroa.1018.sroa.0.0.i to i32
  %.sroa.1018.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1018.sroa.7.sroa.0.0.i, %.sroa.1018.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.6.0.insert.ext.i = zext i8 %.sroa.13.sroa.6.0.i to i32
  %.sroa.13.sroa.6.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.6.0.insert.ext.i, 8
  %.sroa.13.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.6.0.insert.shift.i, %.sroa.13.sroa.7.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.6.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.852.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i, i64 3, i1 false), !noalias !4090
  store <2 x i32> %i.as, ptr %i.at, align 4, !noalias !4090
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.1018.sroa.0.0.insert.insert.i, ptr %.sroa.549.0..sroa_idx.i, align 4, !noalias !4090
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.650.0..sroa_idx.i, align 4, !noalias !4090
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %.sroa.16.0.i, ptr %.sroa.751.0..sroa_idx.i, align 4, !noalias !4090
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %i.au = icmp eq i64 %i.s, 0
  br i1 %i.au, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtCs50gxqRnCXtk_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #17, !noalias !4090
  unreachable

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.064.i, ptr %i.p, align 8, !noalias !4077
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.l unwind label %bb.j, !noalias !4090

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtCs50gxqRnCXtk_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.lr.ph.i, %_RNvXs14_Cs50gxqRnCXtk_10proc_macroNtB6_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8SLDEF1Cvau_13dsl_auto_type.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !4077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4077
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsiD8eKn5yFCp_11proc_macro29TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4114
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !4114
  %i.h = load i64, ptr %i.b, align 8, !range !3, !noalias !4114, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !4011, !noalias !4114, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8SLDEF1Cvau_13dsl_auto_type.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !4114
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14, !noalias !4114
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !4114, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4114
  store i64 %i.k, ptr %i.c, align 8, !noalias !4114
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !4114
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtCsiD8eKn5yFCp_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8SLDEF1Cvau_13dsl_auto_type.exit.i
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.45.sroa.7.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.45.sroa.8.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.015.089.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.v, %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ] ; 26 uses
  %.sroa.7.086.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.085.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.t, %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ]
  %i.t = add i64 %.sroa.10.085.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.015.089.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtCsiD8eKn5yFCp_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.086.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  %i.x = load i32, ptr %.sroa.015.089.i, align 8, !range !854, !alias.scope !4121, !noalias !4122, !noundef !4 ; 2 uses
  switch i32 %i.x, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  %i.z = load i32, ptr %i.y, align 8, !range !860, !alias.scope !4126, !noalias !4127, !noundef !4
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !4129, !alias.scope !4126, !noalias !4127, !noundef !4
  %i.ae = load ptr, ptr %i.ab, align 8, !alias.scope !4126, !noalias !4127, !nonnull !4, !noundef !4 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !4130, !noundef !4 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.ae, align 8, !noalias !4130
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i, !prof !10

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !range !4129, !alias.scope !4131, !noalias !4134, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !4131, !noalias !4134, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = invoke noundef i32 @_RNvXs8_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.am)
          to label %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i unwind label %bb.s, !noalias !4136

_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.aj, align 4, !range !4096, !alias.scope !4137, !noalias !4140, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !4137, !noalias !4140
  %i.aq = inttoptr i64 %.val.i.i.i.i.i to ptr
  %.sroa.841.sroa.0.0.extract.trunc.i.i = trunc i32 %storemerge.i.i.i.i to i8
  %2 = and i32 %storemerge.i.i.i.i, -256
  %3 = zext i32 %.val3.i.i.i.i.i to i64
  br label %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i, %bb.f
  %.sroa.4.0.i.i = phi i64 [ %3, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ], [ 0, %bb.f ]
  %.sroa.10.0.i.i = phi i8 [ %i.al, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ], [ undef, %bb.f ]
  %.sroa.841.sroa.0.0.i.i = phi i8 [ %.sroa.841.sroa.0.0.extract.trunc.i.i, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ], [ %i.ad, %bb.f ]
  %.sroa.841.sroa.5.sroa.0.0.i.i = phi i32 [ %2, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ], [ 0, %bb.f ]
  %.sroa.540.0.i.i = phi ptr [ %i.aq, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ], [ %i.ae, %bb.f ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXsz_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type.exit.i.i.i ], [ 1, %bb.f ]
  %i.ar = ptrtoint ptr %.sroa.540.0.i.i to i64    ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc40.i = trunc i64 %i.ar to i32
  %.sroa.11.sroa.7.0.extract.shift42.i = lshr i64 %i.ar, 32
  br label %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 24
  %i.au = load i8, ptr %i.at, align 8, !range !43, !alias.scope !4121, !noalias !4122, !noundef !4 ; 2 uses
  %.not21.i.i = icmp eq i8 %i.au, 2
  br i1 %.not21.i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.d
  %.sroa.718.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 4
  %.sroa.718.0.copyload20.i = load i32, ptr %.sroa.718.0..sroa_idx19.i, align 4, !alias.scope !4142, !noalias !4136
  %.sroa.721.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 8
  %.sroa.721.0.copyload23.i = load i64, ptr %.sroa.721.0..sroa_idx22.i, align 8, !alias.scope !4142, !noalias !4136 ; 2 uses
  %.sroa.721.sroa.7.0.extract.shift.i = lshr i64 %.sroa.721.0.copyload23.i, 32
  %.sroa.11.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 16
  %.sroa.11.0.copyload25.i = load i64, ptr %.sroa.11.0..sroa_idx24.i, align 8, !alias.scope !4142, !noalias !4136 ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.11.0.copyload25.i to i32
  %.sroa.11.sroa.7.0.extract.shift.i = lshr i64 %.sroa.11.0.copyload25.i, 32
  %.sroa.15.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 24
  %.sroa.15.0.copyload27.i = load i32, ptr %.sroa.15.0..sroa_idx26.i, align 8, !alias.scope !4142, !noalias !4136 ; 2 uses
  %.sroa.15.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.15.0.copyload27.i to i8
  %.sroa.15.sroa.7.0.extract.shift.i = and i32 %.sroa.15.0.copyload27.i, -256
  %.sroa.18.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 28
  %.sroa.18.0.copyload29.i = load i8, ptr %.sroa.18.0..sroa_idx28.i, align 4, !alias.scope !4142, !noalias !4136
  %.sroa.20.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 29
  %.sroa.20.0.copyload31.i = load i8, ptr %.sroa.20.0..sroa_idx30.i, align 1, !alias.scope !4142, !noalias !4136
  %.sroa.21.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 30
  %.sroa.21.0.copyload33.i = load i16, ptr %.sroa.21.0..sroa_idx32.i, align 2, !alias.scope !4142, !noalias !4136
  br label %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !88, !alias.scope !4121, !noalias !4122, !noundef !4
  %.not.i.i = icmp eq i64 %i.aw, -1
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ax = invoke { ptr, i64 } @_RNvXsf_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxeENtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %.noexc13.i unwind label %bb.s, !noalias !4136 ; 2 uses

.noexc13.i:                                       ; preds = %bb.m
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %i.ba = ptrtoint ptr %i.ay to i64
  br label %4

bb.n:                                             ; preds = %bb.j
  %.val1.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !4143, !noalias !4146
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !range !4097, !alias.scope !4143, !noalias !4146, !noundef !4
  %.sroa.06.sroa.5.0.insert.ext.i.i = zext nneg i8 %i.bc to i64
  br label %4

4:                                                ; preds = %bb.n, %.noexc13.i
  %.sroa.06.sroa.0.0.i.i = phi i64 [ %i.ba, %.noexc13.i ], [ %.val1.i.i.i, %bb.n ] ; 2 uses
  %.sroa.06.sroa.5.0.i.i = phi i64 [ %i.az, %.noexc13.i ], [ %.sroa.06.sroa.5.0.insert.ext.i.i, %bb.n ] ; 2 uses
  %.sroa.721.sroa.7.0.extract.shift48.i = lshr i64 %.sroa.06.sroa.0.0.i.i, 32
  %.sroa.11.sroa.0.0.extract.trunc41.i = trunc i64 %.sroa.06.sroa.5.0.i.i to i32
  %.sroa.11.sroa.7.0.extract.shift44.i = lshr i64 %.sroa.06.sroa.5.0.i.i, 32
  br label %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4148
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %.noexc14.i unwind label %bb.s, !noalias !4136

.noexc14.i:                                       ; preds = %bb.o
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !4148
  %.sroa.45.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !4148
  %.sroa.45.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !4148
  %.sroa.45.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4148
  %.sroa.45.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !4148
  %.sroa.45.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.45.sroa.7.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !4148
  %.sroa.45.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.45.sroa.8.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !4148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4148
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 28
  %i.bf = load i8, ptr %i.be, align 4, !range !4105, !alias.scope !4149, !noalias !4152, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 29
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !4149, !noalias !4152
  %.val4.i.i.i = load i32, ptr %i.bd, align 8, !range !4096, !alias.scope !4149, !noalias !4152, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !4149, !noalias !4152, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.015.089.i, i64 20
  %.val.i22.i.i = load i32, ptr %i.bk, align 4, !range !4096, !alias.scope !4149, !noalias !4152, !noundef !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc14.i
  %.sroa.5.sroa.9.0.i.i = phi i16 [ undef, %bb.p ], [ %.sroa.45.sroa.8.0.copyload.i.i, %.noexc14.i ]
  %.sroa.5.sroa.8.0.i.i = phi i8 [ %i.bh, %bb.p ], [ %.sroa.45.sroa.7.0.copyload.i.i, %.noexc14.i ]
  %.sroa.5.sroa.7.0.i.i = phi i8 [ %i.bf, %bb.p ], [ %.sroa.45.sroa.6.0.copyload.i.i, %.noexc14.i ]
  %.sroa.5.sroa.6.0.i.i = phi i32 [ %i.bj, %bb.p ], [ %.sroa.45.sroa.5.0.copyload.i.i, %.noexc14.i ] ; 2 uses
  %.sroa.5.sroa.5.0.i.i = phi i32 [ %.val.i22.i.i, %bb.p ], [ %.sroa.45.sroa.4.0.copyload.i.i, %.noexc14.i ]
  %.sroa.5.sroa.0.0.i.i = phi i32 [ %.val4.i.i.i, %bb.p ], [ %.sroa.45.sroa.0.0.copyload.i.i, %.noexc14.i ]
  %.sroa.0.0.i12.i = phi i64 [ -1, %bb.p ], [ %.sroa.04.0.copyload.i.i, %.noexc14.i ] ; 2 uses
  %.sroa.721.sroa.7.0.extract.shift50.i = lshr i64 %.sroa.0.0.i12.i, 32
  %.sroa.15.sroa.0.0.extract.trunc34.i = trunc i32 %.sroa.5.sroa.6.0.i.i to i8
  %.sroa.15.sroa.7.0.extract.shift36.i = and i32 %.sroa.5.sroa.6.0.i.i, -256
  %5 = zext i32 %.sroa.5.sroa.5.0.i.i to i64
  br label %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.q, %4, %bb.k, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i
  %.sroa.721.sroa.7.0.i = phi i64 [ %.sroa.4.0.i.i, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.721.sroa.7.0.extract.shift48.i, %4 ], [ %.sroa.721.sroa.7.0.extract.shift.i, %bb.k ], [ %.sroa.721.sroa.7.0.extract.shift50.i, %bb.q ]
  %.sroa.721.sroa.0.0.i = phi i64 [ %storemerge.i.i.i, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.06.sroa.0.0.i.i, %4 ], [ %.sroa.721.0.copyload23.i, %bb.k ], [ %.sroa.0.0.i12.i, %bb.q ]
  %.sroa.11.sroa.7.0.i = phi i64 [ %.sroa.11.sroa.7.0.extract.shift42.i, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.7.0.extract.shift44.i, %4 ], [ %.sroa.11.sroa.7.0.extract.shift.i, %bb.k ], [ %5, %bb.q ]
  %.sroa.11.sroa.0.0.i = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc40.i, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.0.0.extract.trunc41.i, %4 ], [ %.sroa.11.sroa.0.0.extract.trunc.i, %bb.k ], [ %.sroa.5.sroa.0.0.i.i, %bb.q ]
  %.sroa.15.sroa.7.sroa.0.0.i = phi i32 [ %.sroa.841.sroa.5.sroa.0.0.i.i, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ 0, %4 ], [ %.sroa.15.sroa.7.0.extract.shift.i, %bb.k ], [ %.sroa.15.sroa.7.0.extract.shift36.i, %bb.q ]
  %.sroa.15.sroa.0.0.i = phi i8 [ %.sroa.841.sroa.0.0.i.i, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ %i.au, %4 ], [ %.sroa.15.sroa.0.0.extract.trunc.i, %bb.k ], [ %.sroa.15.sroa.0.0.extract.trunc34.i, %bb.q ]
  %.sroa.21.0.i = phi i16 [ undef, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ undef, %4 ], [ %.sroa.21.0.copyload33.i, %bb.k ], [ %.sroa.5.sroa.9.0.i.i, %bb.q ]
  %.sroa.20.0.i = phi i8 [ undef, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ undef, %4 ], [ %.sroa.20.0.copyload31.i, %bb.k ], [ %.sroa.5.sroa.8.0.i.i, %bb.q ]
  %.sroa.18.0.i = phi i8 [ %.sroa.10.0.i.i, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ undef, %4 ], [ %.sroa.18.0.copyload29.i, %bb.k ], [ %.sroa.5.sroa.7.0.i.i, %bb.q ]
  %.sroa.718.0.i = phi i32 [ undef, %_RNvXsF_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5GroupNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i ], [ undef, %4 ], [ %.sroa.718.0.copyload20.i, %bb.k ], [ undef, %bb.q ]
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.086.i ; 8 uses
  %.sroa.721.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.721.sroa.7.0.i, 32
  %.sroa.721.sroa.0.0.insert.ext.i = and i64 %.sroa.721.sroa.0.0.i, 4294967295
  %.sroa.721.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.721.sroa.0.0.insert.ext.i, %.sroa.721.sroa.7.0.insert.shift.i
  %.sroa.11.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.11.sroa.7.0.i, 32
  %.sroa.11.sroa.0.0.insert.ext.i = zext i32 %.sroa.11.sroa.0.0.i to i64
  %.sroa.11.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.11.sroa.7.0.insert.shift.i, %.sroa.11.sroa.0.0.insert.ext.i
  %.sroa.15.sroa.0.0.insert.ext.i = zext i8 %.sroa.15.sroa.0.0.i to i32
  %.sroa.15.sroa.0.0.insert.insert.i = or i32 %.sroa.15.sroa.7.sroa.0.0.i, %.sroa.15.sroa.0.0.insert.ext.i
  store i32 %i.x, ptr %i.bl, align 8, !noalias !4136
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %.sroa.718.0.i, ptr %.sroa.466.0..sroa_idx.i, align 4, !noalias !4136
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.721.sroa.0.0.insert.insert.i, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !4136
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.11.sroa.0.0.insert.insert.i, ptr %.sroa.668.0..sroa_idx.i, align 8, !noalias !4136
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !4136
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  store i8 %.sroa.18.0.i, ptr %.sroa.870.0..sroa_idx.i, align 4, !noalias !4136
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 29
  store i8 %.sroa.20.0.i, ptr %.sroa.971.0..sroa_idx.i, align 1, !noalias !4136
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 30
  store i16 %.sroa.21.0.i, ptr %.sroa.1072.0..sroa_idx.i, align 2, !noalias !4136
  %i.bm = icmp eq i64 %i.t, 0
  br i1 %i.bm, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtCsiD8eKn5yFCp_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.r:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #17, !noalias !4136
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.086.i, ptr %i.q, align 8, !noalias !4114
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsiD8eKn5yFCp_11proc_macro29TokenTreeEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.c) #16
          to label %bb.t unwind label %bb.r, !noalias !4136

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtCsiD8eKn5yFCp_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.c, %_RNvXsO_CsiD8eKn5yFCp_11proc_macro2NtB5_9TokenTreeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8SLDEF1Cvau_13dsl_auto_type.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !4114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4114
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !4160, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !4163, !noundef !4
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !noalias !4163
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE9drop_slowCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.p = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4167)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !4170, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !4171, !noundef !4
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !noalias !4171
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE9drop_slowCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit8.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.u = icmp eq i64 %i.p, %i.d
  br i1 %i.u, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit8.i, %bb.c
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !200, !alias.scope !4172, !noundef !4
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !4177, !noundef !4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit.i unwind label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !200, !alias.scope !4184, !noundef !4
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !4187, !noundef !4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit8.i unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro9TokenTreeECs8SLDEF1Cvau_13dsl_auto_type.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit.i unwind label %bb.b
end_hunk_0
