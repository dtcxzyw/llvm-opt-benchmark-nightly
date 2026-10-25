Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvNvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB8_9MapAccesspENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtNtCscI6d9CVNmLh_4core6option6OptionINtB5_3VecNtNtB7_6string6StringEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 24 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = mul i64 %2, 24                           ; 3 uses
  %or.cond.i.i = icmp ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !434

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBv_NtNtB6_6string6StringEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !88804
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 8) #68, !noalias !88804 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBv_NtNtB6_6string6StringEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.c) #72
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBv_NtNtB6_6string6StringEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.e, %bb.c ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %2, %bb.c ] ; 2 uses
  %i.g = icmp samesign ule i64 %2, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.g)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88806)
  %i.j = icmp samesign ugt i64 %2, 1
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBv_NtNtB6_6string6StringEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.k = load i64, ptr %1, align 8, !range !414, !alias.scope !88807, !noundef !409
  %.not.i.i3 = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !88806, !nonnull !409
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.m, align 8, !alias.scope !88806
  br i1 %.not.i.i3, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader, label %.lr.ph.split.i

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader: ; preds = %.lr.ph.i
  %i.n = add nsw i64 %2, -1                       ; 2 uses
  %i.o = add nsw i64 %2, -2
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader
  %unroll_iter = and i64 %i.n, -4
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new
  %.sroa.0.023.us.i = phi ptr [ %.sroa.10.0.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new ], [ %i.t, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new ], [ %niter.next.3, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88810)
  store i64 -1, ptr %i.a, align 8, !alias.scope !88809, !noalias !88808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.us.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !88808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88808
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.023.us.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88808
  store i64 -1, ptr %i.a, align 8, !alias.scope !88811, !noalias !88808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !88808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88808
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.023.us.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88808
  store i64 -1, ptr %i.a, align 8, !alias.scope !88812, !noalias !88808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !88808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88808
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.023.us.i, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88808
  store i64 -1, ptr %i.a, align 8, !alias.scope !88813, !noalias !88808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !88808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88808
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.023.us.i, i64 96 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBv_NtNtB6_6string6StringEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge.thread.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sroa.0.023.i = phi ptr [ %i.ai, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %.sroa.10.0.i, %.lr.ph.i ] ; 2 uses
  %.sroa.03.022.i = phi i64 [ %i.ah, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 1, %.lr.ph.i ]
  %storemerge21.i = phi i64 [ %i.aj, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88810)
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val.i.i, i64 %.val1.i.i)
          to label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %.body, !noalias !88808

bb.e:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.i, align 8, !alias.scope !88805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88814)
  %i.u = load i64, ptr %1, align 8, !range !414, !alias.scope !88815, !noundef !409 ; 3 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_NtNtB7_6string6StringEEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88816)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !88817, !nonnull !409, !noundef !409 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !88817, !noundef !409 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88818)
  %i.y = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.y, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88820)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !range !412, !alias.scope !88821, !noalias !88822, !noundef !409 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !88821, !noalias !88822, !nonnull !409, !noundef !409
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !88823
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq i64 %i.aa, %.val1.i.i.i
  br i1 %i.ad, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %bb.f
  %i.ae = icmp eq i64 %i.u, 0
  br i1 %i.ae, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_NtNtB7_6string6StringEEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.af = mul nuw i64 %i.u, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !88822
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_NtNtB7_6string6StringEEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader
  %.sroa.0.023.us.i.epil.init = phi ptr [ %.sroa.10.0.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader ], [ %i.t, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader
  %.sroa.0.023.us.i.epil = phi ptr [ %i.ag, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil ], [ %.sroa.0.023.us.i.epil.init, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil ], [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88810)
  store i64 -1, ptr %i.a, align 8, !alias.scope !88809, !noalias !88808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.us.i.epil, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !88808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88808
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023.us.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil, !llvm.loop !88803

._crit_edge.thread.i:                             ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil, %._crit_edge.i
  %.sroa.0.0.lcssa39.i = phi ptr [ %.sroa.10.0.i, %._crit_edge.i ], [ %i.ag, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil ], [ %i.t, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.ai, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa39.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !88805
  store i64 %2, ptr %i.i, align 8, !alias.scope !88805
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_NtNtB7_6string6StringEEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.lr.ph.split.i
  %i.ah = add nuw nsw i64 %.sroa.03.022.i, 1      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !88808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88808
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i, i64 24 ; 2 uses
  %i.aj = add nuw i64 %storemerge21.i, 1
  %exitcond.not.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.split.i

.body:                                            ; preds = %.lr.ph.split.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge21.i, ptr %i.i, align 8, !alias.scope !88805
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1) #73, !noalias !88805
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_NtNtBG_6string6StringEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.b) #73
  br label %bb.i

_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_NtNtB7_6string6StringEEE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %._crit_edge.thread.i, %bb.h, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %.pn6 = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.ak, %.body ]
  resume { ptr, i32 } %.pn6

bb.j:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #73
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 8 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 26 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = shl i64 %2, 5                            ; 4 uses
  %i.d = icmp samesign ugt i64 %2, 576460752303423487
  %.not.i.i = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i.i = or i1 %i.d, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !434

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !88859
  %i.f = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 8) #68, !noalias !88859 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.c) #72
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.f, %bb.c ] ; 6 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %2, %bb.c ] ; 2 uses
  %i.h = icmp samesign ule i64 %2, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88861)
  %i.k = icmp samesign ugt i64 %2, 1
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.l = load i64, ptr %1, align 8, !range !430, !alias.scope !88862, !noundef !409 ; 3 uses
  %.not.i.i3 = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !88861, !nonnull !409 ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !88861 ; 6 uses
  %i.o = mul nuw nsw i64 %.val3.i.i.i, 24         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i, i64 %.val3.i.i.i
  br i1 %.not.i.i3, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader, label %.lr.ph.split.i

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader: ; preds = %.lr.ph.i
  %i.s = add nsw i64 %2, -1                       ; 2 uses
  %i.t = add nsw i64 %2, -2
  %xtraiter = and i64 %i.s, 7                     ; 3 uses
  %i.u = icmp ult i64 %i.t, 7
  br i1 %i.u, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.epil.preheader, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader
  %unroll_iter = and i64 %i.s, -8
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new
  %.sroa.0.044.us.i = phi ptr [ %.sroa.10.0.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new ], [ %i.ac, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i ] ; 9 uses
  %niter = phi i64 [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i.preheader.new ], [ %niter.next.7, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88863)
  store i64 -1, ptr %.sroa.0.044.us.i, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  store i64 -1, ptr %i.v, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  store i64 -1, ptr %i.w, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  store i64 -1, ptr %i.x, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  store i64 -1, ptr %i.y, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  store i64 -1, ptr %i.z, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  store i64 -1, ptr %i.aa, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  store i64 -1, ptr %i.ab, align 8, !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us.i, i64 256 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ad = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.ad, label %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i, label %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i

_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i: ; preds = %.lr.ph.split.i, %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i
  %.sroa.0.044.us47.i = phi ptr [ %i.af, %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i ], [ %.sroa.10.0.i, %.lr.ph.split.i ] ; 3 uses
  %.sroa.03.043.us48.i = phi i64 [ %i.ae, %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i ], [ 1, %.lr.ph.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88863)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88866
  store i64 0, ptr %i.a, align 8, !noalias !88866
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !noalias !88866
  store i64 0, ptr %i.q, align 8, !noalias !88866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !88867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false), !noalias !88868
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.ae = add nuw nsw i64 %.sroa.03.043.us48.i, 1 ; 2 uses
  store i64 %i.l, ptr %.sroa.0.044.us47.i, align 8, !noalias !88864
  %.sroa.5.0..sroa.0.0.sroa_idx.us50.i = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us47.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.sroa_idx.us50.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !88864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.044.us47.i, i64 32 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.ae, %2
  br i1 %exitcond70.not.i, label %._crit_edge.thread.i, label %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.us.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.n, label %._crit_edge.thread.i

_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i: ; preds = %.lr.ph.split.i, %.noexc14.loopexit.i
  %.sroa.0.044.i = phi ptr [ %i.bm, %.noexc14.loopexit.i ], [ %.sroa.10.0.i, %.lr.ph.split.i ] ; 3 uses
  %.sroa.03.043.i = phi i64 [ %i.bl, %.noexc14.loopexit.i ], [ 1, %.lr.ph.split.i ]
  %storemerge40.i = phi i64 [ %i.bn, %.noexc14.loopexit.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88863)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88866
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !88869
  %i.ag = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 17) 8) #68, !noalias !88869 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.o) #72
          to label %.noexc17.i unwind label %bb.v, !noalias !88864

.noexc17.i:                                       ; preds = %bb.e
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXsG_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i
  store i64 %.val3.i.i.i, ptr %i.a, align 8, !noalias !88866
  store ptr %i.ag, ptr %i.p, align 8, !noalias !88866
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXsC_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.014.039.i.i.i = phi ptr [ %i.ak, %_RNvXsC_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ %.val2.i.i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.7.038.i.i.i = phi i64 [ %i.al, %_RNvXsC_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.10.037.i.i.i = phi i64 [ %i.ai, %_RNvXsC_NtCsj4DjkV52PPz_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ], [ %.val3.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.ai = add nsw i64 %.sroa.10.037.i.i.i, -1     ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writerINtB4_10FileWriterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingE11write_array0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.sroa.661.i271.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.an = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i272.i.i = alloca [7 x i8], align 1    ; 6 uses
  %.sroa.6.i273.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.ao = alloca [56 x i8], align 8               ; 9 uses
  %i.ap = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i189.i.i = alloca [7 x i8], align 1  ; 6 uses
  %.sroa.661.i190.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.aq = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i191.i.i = alloca [7 x i8], align 1    ; 6 uses
  %.sroa.6.i192.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.ar = alloca [56 x i8], align 8               ; 9 uses
  %i.as = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i108.i.i = alloca [7 x i8], align 1  ; 6 uses
  %.sroa.661.i109.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.at = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i110.i.i = alloca [7 x i8], align 1    ; 6 uses
  %.sroa.6.i111.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.au = alloca [56 x i8], align 8               ; 9 uses
  %i.av = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i27.i.i = alloca [7 x i8], align 1   ; 6 uses
  %.sroa.661.i28.i.i = alloca [40 x i8], align 8  ; 6 uses
  %i.aw = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i29.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.6.i30.i.i = alloca [40 x i8], align 8    ; 6 uses
  %i.ax = alloca [56 x i8], align 8               ; 9 uses
  %i.ay = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.661.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %i.az = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i.i.i = alloca [7 x i8], align 1       ; 6 uses
  %.sroa.6.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.ba = alloca [56 x i8], align 8               ; 9 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.329.i = alloca [7 x i8], align 1         ; 2 uses
  %.sroa.530.i = alloca [40 x i8], align 8        ; 2 uses
  %.sroa.15.i = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.17.i = alloca [40 x i8], align 8         ; 6 uses
  %.sroa.327.i = alloca [7 x i8], align 1         ; 2 uses
  %.sroa.529.i = alloca [40 x i8], align 8        ; 2 uses
  %.sroa.3.i85 = alloca [7 x i8], align 1         ; 6 uses
  %.sroa.621.i = alloca [40 x i8], align 8        ; 6 uses
  %i.bd = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.319.i = alloca [7 x i8], align 1         ; 2 uses
  %.sroa.521.i = alloca [40 x i8], align 8        ; 2 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 6 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 6 uses
  %i.be = alloca [56 x i8], align 8               ; 9 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.10450 = alloca [7 x i8], align 1         ; 9 uses
  %.sroa.18 = alloca [40 x i8], align 8           ; 10 uses
  %.sroa.9444.sroa.0 = alloca [7 x i8], align 1   ; 7 uses
  %.sroa.9444.sroa.7 = alloca [40 x i8], align 1  ; 7 uses
  %.sroa.9420.sroa.0 = alloca [7 x i8], align 1   ; 7 uses
  %.sroa.9420.sroa.7 = alloca [40 x i8], align 1  ; 7 uses
  %i.bh = alloca [56 x i8], align 8               ; 9 uses
  %i.bi = alloca [56 x i8], align 8               ; 9 uses
  %i.bj = alloca [56 x i8], align 8               ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 4, !range !554, !noundef !409
  switch i8 %i.bl, label %default.unreachable830 [
    i8 0, label %bb.c
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.x
    i8 4, label %bb.aq
    i8 5, label %bb.ba
    i8 6, label %bb.bv
    i8 7, label %._crit_edge654
    i8 8, label %bb.b
    i8 9, label %bb.qk
    i8 10, label %bb.uv
  ]

._crit_edge654:                                   ; preds = %bb.a
  %.phi.trans.insert655 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val42.pre = load ptr, ptr %.phi.trans.insert655, align 8
  %.phi.trans.insert657 = getelementptr i8, ptr %1, i64 120
  %.val43.pre = load ptr, ptr %.phi.trans.insert657, align 8
  br label %bb.ps

default.unreachable830:                           ; preds = %bb.uv, %bb.qk, %bb.nu, %bb.me, %bb.ko, %bb.iy, %bb.hi, %bb.fs, %bb.ec, %bb.cl, %bb.cc, %bb.bv, %bb.ba, %bb.x, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writerINtB4_10FileWriterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingE24write_fixed_stride_array0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bh, ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.qb unwind label %bb.qa

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !409
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.d, label %bb.e, !prof !419

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @644, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1643) #72
          to label %bb.f unwind label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.bq = load ptr, ptr %1, align 8, !nonnull !409, !align !410, !noundef !409
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !409, !align !410, !noundef !409
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.br)
          to label %bb.g unwind label %bb.t

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit72: ; preds = %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.t
  %.pn37 = phi { ptr, i32 } [ %i.hm, %bb.t ], [ %.pn34.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.pn34.pn, %bb.o ]
  store i8 2, ptr %i.bk, align 4
  resume { ptr, i32 } %.pn37

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %i.bt, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %1, align 8, !nonnull !409, !align !410, !noundef !409 ; 3 uses
  %i.bv = load i64, ptr %i.bn, align 8, !noundef !409 ; 15 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141473)
  %i.bx = shl i64 %i.bv, 4                        ; 4 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.bx, 9223372036854775800
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.h, !prof !434

bb.h:                                             ; preds = %bb.g
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !141474
  %i.bz = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bx, i64 noundef range(i64 1, 17) 8) #68, !noalias !141474 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.bx) #72
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.bz, %bb.i ] ; 10 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bv, %bb.i ] ; 2 uses
  %i.cb = icmp samesign ule i64 %i.bv, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bv, 0
  br i1 %i.cc, label %.loopexit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %xtraiter = and i64 %i.bv, 1
  %i.cd = icmp eq i64 %i.bv, 1
  br i1 %i.cd, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bv, -2
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.ce = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.de, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ce
  %.val16.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !141475, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.cg = load ptr, ptr %.val16.i.i.i.i.i.i.i.i.i, align 8, !noalias !141476, !nonnull !409, !noundef !409
  %i.ch = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !141476, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !413, !invariant.load !409, !noalias !141476
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = and i64 %i.cl, -16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.ce ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8, !noalias !141477
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ci, ptr %i.cq, align 8, !noalias !141477
  %i.cr = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cr
  %.val16.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cs, align 8, !noalias !141475, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.ct = load ptr, ptr %.val16.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !141476, !nonnull !409, !noundef !409
  %i.cu = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i.1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !141476, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !range !413, !invariant.load !409, !noalias !141476
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = and i64 %i.cy, -16
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.cr ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !noalias !141477
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.cv, ptr %i.dd, align 8, !noalias !141477
  %i.de = add nuw i64 %i.ce, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.de, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod998 = trunc i64 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod998)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.epil.init
  %.val16.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.df, align 8, !noalias !141475, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.dg = load ptr, ptr %.val16.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !141476, !nonnull !409, !noundef !409
  %i.dh = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i.epil, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !141476, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !413, !invariant.load !409, !noalias !141476
  %i.dl = add nsw i64 %i.dk, -1
  %i.dm = and i64 %i.dl, -16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !noalias !141477
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.di, ptr %i.dq, align 8, !noalias !141477
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !141478
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !141478
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.bv, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !141478
  %i.dr = load ptr, ptr %i.bs, align 8, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !range !615, !noundef !409
  switch i8 %i.ds, label %bb.k [
    i8 0, label %.thread
    i8 1, label %bb.s
    i8 2, label %bb.s
    i8 3, label %bb.s
    i8 4, label %bb.s
    i8 5, label %bb.s
    i8 6, label %bb.s
    i8 7, label %bb.s
    i8 8, label %bb.s
    i8 9, label %bb.s
    i8 10, label %bb.s
    i8 11, label %bb.s
    i8 12, label %bb.s
    i8 13, label %bb.s
    i8 14, label %bb.s
    i8 15, label %bb.s
    i8 16, label %bb.s
    i8 17, label %bb.s
    i8 18, label %bb.s
    i8 21, label %bb.s
    i8 29, label %bb.s
    i8 37, label %bb.s
    i8 38, label %bb.s
    i8 20, label %.thread831
    i8 22, label %.thread831
    i8 23, label %.thread831
    i8 24, label %.thread831
    i8 25, label %.thread831
    i8 26, label %.thread831
    i8 34, label %.thread832
    i8 32, label %bb.p
    i8 30, label %.thread834
    i8 27, label %.thread833
  ]

.thread:                                          ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !409, !align !410, !noundef !409
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dx = load i32, ptr %i.dw, align 8, !noundef !409
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !409, !align !410, !noundef !409
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eb = load <2 x ptr>, ptr %i.dt, align 8
  store <2 x ptr> %i.eb, ptr %i.ea, align 8
  %.sroa.8291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.dv, ptr %.sroa.8291.0..sroa_idx, align 8
  %.sroa.9292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9292.0..sroa_idx, align 8
  %.sroa.10293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bv, ptr %.sroa.10293.0..sroa_idx, align 8
  %.sroa.11294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.dz, ptr %.sroa.11294.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i32 %i.dx, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 180
  br label %bb.z

.thread832:                                       ; preds = %.loopexit
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !409, !align !410, !noundef !409
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !409, !align !410, !noundef !409
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ek = load i32, ptr %i.ej, align 8, !noundef !409
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !409, !align !410, !noundef !409
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eo = load <2 x ptr>, ptr %i.ee, align 8
  store <2 x ptr> %i.eo, ptr %i.en, align 8
  %.sroa.8362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.eg, ptr %.sroa.8362.0..sroa_idx, align 8
  %.sroa.9363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9363.0..sroa_idx, align 8
  %.sroa.10364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bv, ptr %.sroa.10364.0..sroa_idx, align 8
  %.sroa.11365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ei, ptr %.sroa.11365.0..sroa_idx, align 8
  %.sroa.12366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.em, ptr %.sroa.12366.0..sroa_idx, align 8
  %.sroa.14368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 %i.ek, ptr %.sroa.14368.0..sroa_idx, align 8
  %.sroa.16370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.16370.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.bw

.thread833:                                       ; preds = %.loopexit
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !409, !align !410, !noundef !409
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eu = load i32, ptr %i.et, align 8, !noundef !409
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !409, !align !410, !noundef !409
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ey = load <2 x ptr>, ptr %i.eq, align 8
  store <2 x ptr> %i.ey, ptr %i.ex, align 8
  %.sroa.8410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.es, ptr %.sroa.8410.0..sroa_idx, align 8
  %.sroa.9411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9411.0..sroa_idx, align 8
  %.sroa.10412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bv, ptr %.sroa.10412.0..sroa_idx, align 8
  %.sroa.11413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ew, ptr %.sroa.11413.0..sroa_idx, align 8
  %.sroa.13415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 %i.eu, ptr %.sroa.13415.0..sroa_idx, align 8
  %.sroa.15417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.15417.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9420.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9420.sroa.7)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3119.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3119.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i155.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i155.sroa.5)
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.ql

.thread834:                                       ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !409, !align !410, !noundef !409
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ff = load i32, ptr %i.fe, align 8, !noundef !409
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !409, !align !410, !noundef !409
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fj = load <2 x ptr>, ptr %i.fb, align 8
  store <2 x ptr> %i.fj, ptr %i.fi, align 8
  %.sroa.8434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.fd, ptr %.sroa.8434.0..sroa_idx, align 8
  %.sroa.9435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9435.0..sroa_idx, align 8
  %.sroa.10436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bv, ptr %.sroa.10436.0..sroa_idx, align 8
  %.sroa.11437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.fh, ptr %.sroa.11437.0..sroa_idx, align 8
  %.sroa.13439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 %i.ff, ptr %.sroa.13439.0..sroa_idx, align 8
  %.sroa.15441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.15441.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9444.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9444.sroa.7)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3108.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3108.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i188.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i188.sroa.5)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.uw

bb.k:                                             ; preds = %.loopexit
end_hunk_1
