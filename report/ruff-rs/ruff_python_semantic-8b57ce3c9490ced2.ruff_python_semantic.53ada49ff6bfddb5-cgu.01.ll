Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.01?download=true
inline.NumInlined: 492
inline.NumDeleted: 239
begin_hunk_0_@_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing16is_type_var_like:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.es = load i64, ptr %i.er, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.es, 96
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i34.i = load i32, ptr %i.eu, align 8, !alias.scope !454, !noalias !455 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val5.i.i.i35.i = load i32, ptr %i.ev, align 4, !alias.scope !454, !noalias !455 ; 2 uses
  %i.ew = icmp eq i64 %i.es, 0
  br i1 %i.ew, label %_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB2_18TypeVarLikeCheckerEB6_.exit, label %.lr.ph

bb.ag:                                            ; preds = %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i
  %i.ex = icmp eq ptr %i.ez, %i.et
  br i1 %i.ex, label %_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB2_18TypeVarLikeCheckerEB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af, %bb.ag
  %i.ey = phi ptr [ %i.ez, %bb.ag ], [ %i.eq, %bb.af ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !456, !align !8, !noundef !4 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i, label %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.fc = load i32, ptr %i.fb, align 8, !range !9, !noalias !457, !noundef !4
  switch i32 %i.fc, label %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i [
    i32 28, label %bb.ai
    i32 29, label %bb.aj
    i32 30, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fe = load i32, ptr %i.fd, align 8, !noalias !457, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.fg = load i32, ptr %i.ff, align 4, !noalias !457, !noundef !4
  %i.fh = icmp eq i32 %i.fe, %.val.i.i.i34.i
  %i.fi = icmp eq i32 %i.fg, %.val5.i.i.i35.i
  %or.cond.i.i.i39.i = and i1 %i.fh, %i.fi
  br i1 %or.cond.i.i.i39.i, label %bb.al, label %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i

bb.aj:                                            ; preds = %bb.ah, %bb.ah
  %i.fj = load i32, ptr %i.ey, align 8, !range !9, !noalias !457, !noundef !4
  switch i32 %i.fj, label %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i [
    i32 7, label %bb.ak
    i32 29, label %bb.ak
    i32 30, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !457, !nonnull !4, !noundef !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !457, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !457, !nonnull !4, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !457, !noundef !4
  %i.fs = tail call fastcc noundef align 8 ptr @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing12match_target(i32 %.val.i.i.i34.i, i32 %.val5.i.i.i35.i, ptr noundef nonnull align 8 %i.fl, i64 noundef %i.fn, ptr noundef nonnull align 8 %i.fp, i64 noundef %i.fr), !noalias !457
  br label %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i

_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.lr.ph
  %.sroa.0.0.i.i36.i = phi ptr [ null, %.lr.ph ], [ %i.fs, %bb.ak ], [ null, %bb.ah ], [ null, %bb.aj ], [ null, %bb.ai ] ; 2 uses
  %.not.i37.i = icmp eq ptr %.sroa.0.0.i.i36.i, null
  br i1 %.not.i37.i, label %bb.ag, label %bb.al

bb.al:                                            ; preds = %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i, %bb.ai
  %.sroa.0.0.i38.ph.i = phi ptr [ %i.ey, %bb.ai ], [ %.sroa.0.0.i.i36.i, %_RNCINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB4_18TypeVarLikeCheckerEs1_0B8_.exit.i.i ]
  %i.ft = tail call noundef zeroext i1 @_RNvXse_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typingNtB5_18TypeVarLikeCheckerNtB5_11TypeChecker17match_initializer(ptr noundef nonnull align 8 %.sroa.0.0.i38.ph.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1)
  br label %_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB2_18TypeVarLikeCheckerEB6_.exit

_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10check_typeNtB2_18TypeVarLikeCheckerEB6_.exit: ; preds = %bb.ag, %bb.z, %bb.q, %bb.t, %bb.af, %bb.y, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.thread44.i, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.thread48.i, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.thread.i, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.i, %bb.u, %bb.v, %bb.w, %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing11match_value.exit.i.i, %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing11match_value.exit.thread6.i.i, %bb.x, %bb.ad, %bb.ae, %bb.al
  %.sroa.0.1.i = phi i1 [ false, %bb.f ], [ false, %bb.a ], [ false, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.thread48.i ], [ false, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.i ], [ false, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.thread.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.v ], [ false, %bb.w ], [ %i.el, %bb.ad ], [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.b ], [ false, %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing11match_value.exit.i.i ], [ %i.ft, %bb.al ], [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.ae ], [ false, %bb.q ], [ false, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4findNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing14find_parameter0EB3r_.exit.thread44.i ], [ false, %bb.g ], [ false, %bb.u ], [ %i.de, %_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing11match_value.exit.thread6.i.i ], [ false, %bb.af ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.ag ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_immutable_func(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 64051194700380388) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 10 uses
  %i.b = alloca [144 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %0, align 8, !range !9, !noundef !4
  %i.d = icmp eq i32 %i.c, 26
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %.sroa.0.0)
  %i.g = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  %i.h = load i64, ptr %i.a, align 8, !range !5, !alias.scope !465, !noalias !466, !noundef !4 ; 2 uses
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !465, !noalias !466, !nonnull !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !465, !noalias !466
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !alias.scope !465, !noalias !466
  %i.p = zext i32 %i.o to i64
  %.sroa.3.0.i = select i1 %i.i, i64 %i.m, i64 %i.p
  %.sroa.01.0.i = select i1 %i.i, ptr %i.k, ptr %i.j
  %i.q = invoke noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib6typing24is_immutable_return_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.3.0.i)
          to label %bb.f unwind label %bb.e, !noalias !466

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #13
          to label %common.resume.i unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameNtB5_13SliceContains14slice_containsCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 64051194700380388) %3)
          to label %._crit_edge.i unwind label %bb.e

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.a, align 8, !range !5, !alias.scope !467, !noalias !466
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.f
  %i.t = phi i64 [ %i.h, %bb.f ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i1 [ true, %bb.f ], [ %i.s, %._crit_edge.i ]
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.n)
  br label %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_immutable_func0B7_.exit

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_immutable_func0B7_.exit

bb.m:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_immutable_func0B7_.exit: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_immutable_func0B7_.exit
  %.sroa.03.0 = phi i1 [ %.sroa.0.0.i, %_RNCNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_immutable_func0B7_.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.03.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing17is_pep585_generic(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 35 uses
  %i.b = alloca [144 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %0)
  %i.c = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.ch, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.d = load i64, ptr %i.a, align 8, !range !5, !alias.scope !470, !noundef !4 ; 2 uses
  %i.e = trunc nuw i64 %i.d to i1                 ; 32 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !470, !nonnull !4 ; 31 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !470
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !470
  %i.l = zext i32 %i.k to i64
  %.sroa.76.0.i = select i1 %i.e, i64 %i.i, i64 %i.l
  %.sroa.01.0.i = select i1 %i.e, ptr %i.g, ptr %i.f ; 8 uses
  switch i64 %.sroa.76.0.i, label %.thread396.i [
    i64 2, label %bb.c
    i64 3, label %bb.bj
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.01.0.i.sroa.sel16 = select i1 %i.e, ptr %.sroa.gep14, ptr %i.h
  %i.m = load i64, ptr %.sroa.01.0.i.sroa.sel16, align 8, !noundef !4
  switch i64 %i.m, label %.thread396.i [
    i64 0, label %bb.d
    i64 11, label %bb.e
    i64 7, label %bb.g
    i64 10, label %bb.i
    i64 9, label %bb.m
    i64 2, label %bb.o
    i64 5, label %bb.q
    i64 6, label %bb.u
  ]

bb.d:                                             ; preds = %bb.c
  %.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.gep84 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel85 = select i1 %i.e, ptr %.sroa.gep83, ptr %.sroa.gep84 ; 4 uses
  %.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel88 = select i1 %i.e, ptr %.sroa.gep86, ptr %.sroa.gep87
  %i.n = load i64, ptr %.sroa.01.0.i.sroa.sel88, align 8, !noundef !4
  switch i64 %i.n, label %.thread531.i [
    i64 4, label %bb.bd
    i64 9, label %bb.be
    i64 3, label %bb.bg
    i64 5, label %bb.bh
  ]

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.p = load i64, ptr %i.o, align 1
  %i.q = xor i64 %i.p, 7598807758542761827
  %i.r = getelementptr i8, ptr %i.o, i64 3
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 8317708060514805100
  %i.u = or i64 %i.q, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.gep78 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel79 = select i1 %i.e, ptr %.sroa.gep77, ptr %.sroa.gep78 ; 4 uses
  %.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep81 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel82 = select i1 %i.e, ptr %.sroa.gep80, ptr %.sroa.gep81
  %i.y = load i64, ptr %.sroa.01.0.i.sroa.sel82, align 8, !noundef !4
  switch i64 %i.y, label %.thread531.i [
    i64 5, label %bb.ay
    i64 11, label %bb.az
    i64 8, label %bb.ba
    i64 7, label %bb.bb
  ]

bb.g:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1853453153
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1869177710
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %.split.thread492.i

bb.h:                                             ; preds = %bb.g
  %.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.gep66 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel67 = select i1 %i.e, ptr %.sroa.gep65, ptr %.sroa.gep66 ; 2 uses
  %.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep69 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel70 = select i1 %i.e, ptr %.sroa.gep68, ptr %.sroa.gep69
  %i.aj = load i64, ptr %.sroa.01.0.i.sroa.sel70, align 8, !noundef !4
  switch i64 %i.aj, label %.thread396.i [
    i64 6, label %bb.aw
    i64 4, label %bb.ax
  ]

bb.i:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 7815003630535077731
  %i.an = getelementptr i8, ptr %i.ak, i64 8
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i64
  %i.aq = xor i64 %i.ap, 25193
  %i.ar = or i64 %i.am, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %.thread396.i

bb.j:                                             ; preds = %bb.i
  %.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel55 = select i1 %i.e, ptr %.sroa.gep53, ptr %.sroa.gep54 ; 2 uses
  %.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel58 = select i1 %i.e, ptr %.sroa.gep56, ptr %.sroa.gep57
  %i.av = load i64, ptr %.sroa.01.0.i.sroa.sel58, align 8, !noundef !4
  switch i64 %i.av, label %.thread396.i [
    i64 27, label %bb.au
    i64 22, label %bb.av
  ]

bb.k:                                             ; preds = %bb.e
  %i.aw = load i64, ptr %i.o, align 1
  %i.ax = xor i64 %i.aw, 8314045561195225444
  %i.ay = getelementptr i8, ptr %i.o, i64 3
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = xor i64 %i.az, 8315179226402415457
  %i.bb = or i64 %i.ax, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.l, label %.thread396.i

bb.l:                                             ; preds = %bb.k
  %.sroa.gep71 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel73 = select i1 %i.e, ptr %.sroa.gep71, ptr %.sroa.gep72
  %i.bf = load i64, ptr %.sroa.01.0.i.sroa.sel73, align 8, !noundef !4
  %i.bg = icmp eq i64 %i.bf, 5
  br i1 %i.bg, label %bb.at, label %.thread396.i

bb.m:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 %i.bi, 7813586424186172774
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = xor i64 %i.bm, 115
  %i.bo = or i64 %i.bj, %i.bn
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %.thread396.i

bb.n:                                             ; preds = %bb.m
  %.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel49 = select i1 %i.e, ptr %.sroa.gep47, ptr %.sroa.gep48 ; 2 uses
  %.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel52 = select i1 %i.e, ptr %.sroa.gep50, ptr %.sroa.gep51
  %i.bs = load i64, ptr %.sroa.01.0.i.sroa.sel52, align 8, !noundef !4
  switch i64 %i.bs, label %.thread396.i [
    i64 15, label %bb.ar
    i64 13, label %bb.as
  ]

bb.o:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 1
  %i.bv = icmp ne i16 %i.bu, 29551
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep42 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel43 = select i1 %i.e, ptr %.sroa.gep41, ptr %.sroa.gep42
  %i.by = load i64, ptr %.sroa.01.0.i.sroa.sel43, align 8, !noundef !4
  %i.bz = icmp eq i64 %i.by, 8
  br i1 %i.bz, label %bb.aq, label %.thread396.i

bb.q:                                             ; preds = %bb.c
  %i.ca = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = xor i32 %i.cb, 1969583473
  %i.cd = getelementptr i8, ptr %i.ca, i64 4
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cf, 101
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
end_hunk_0
