Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.03?download=true
inline.NumInlined: 2478
inline.NumDeleted: 770
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBU_10StructAttrEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterB1S_ENCINvBU_16parse_attributesB1S_E0EE11spec_extendBW_:bb.a

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_10StructAttrEE7reserveBJ_.exit.i: ; preds = %bb.m, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrENCINvB1G_16parse_attributesB1E_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i, %bb.j
  %i.u = load ptr, ptr %i.i, align 8, !alias.scope !5594, !noalias !5597, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw [256 x i8], ptr %i.u, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.v, ptr noundef nonnull align 8 dereferenceable(256) %i.f, i64 256, i1 false)
  %i.w = add nuw nsw i64 %i.q, 1
  store i64 %i.w, ptr %i.h, align 8, !alias.scope !5594, !noalias !5597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5612
  br label %bb.b

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrEBF_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.f)
          to label %.body.i unwind label %bb.n

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrENCINvB1G_16parse_attributesB1E_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i: ; preds = %bb.k
  %i.y = load i64, ptr %i.e, align 8, !noalias !5612, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5612
  %i.z = call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 1) ; 2 uses
  %i.aa = load i64, ptr %i.h, align 8, !alias.scope !5613, !noalias !5597, !noundef !11 ; 2 uses
  %i.ab = load i64, ptr %0, align 8, !range !1058, !alias.scope !5613, !noalias !5597, !noundef !11
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ugt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.m, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_10StructAttrEE7reserveBJ_.exit.i, !prof !5593

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrENCINvB1G_16parse_attributesB1E_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa, i64 noundef range(i64 1, 0) %i.z, i64 noundef 8, i64 noundef 256)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_10StructAttrEE7reserveBJ_.exit.i unwind label %bb.l

bb.n:                                             ; preds = %bb.l, %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrENCINvB1T_16parse_attributesB1R_E0EEB1V_.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBJ_10StructAttrEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterB1H_ENCINvBJ_16parse_attributesB1H_E0EEBL_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5602
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBU_9FieldAttrEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterB1S_ENCINvBU_16parse_attributesB1S_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [248 x i8], align 8               ; 5 uses
  %i.d = alloca [248 x i8], align 8               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [256 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5619)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_9FieldAttrEE7reserveBJ_.exit.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5624
  invoke void @_RNvXsn_NtCshMFl0SviwmK_3syn10punctuatedINtB5_8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBU_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !range !5626, !noalias !5624, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBJ_9FieldAttrEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterB1H_ENCINvBJ_16parse_attributesB1H_E0EEBL_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false), !noalias !5624
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5627, !noalias !5628 ; 2 uses
  %i.k = invoke noundef i32 @_RNvXs5_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_9FieldAttrNtB5_9MySpanned4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.c)
          to label %bb.d unwind label %bb.h, !noalias !5629

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false), !noalias !5624
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5632
  invoke void @_RNvYRNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens17into_token_streamCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %.val.i.i)
          to label %bb.f unwind label %bb.e, !noalias !5629

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrEBF_(ptr noalias noundef align 8 dereferenceable(248) %i.b) #17
          to label %.body.i unwind label %bb.g, !noalias !5629

bb.f:                                             ; preds = %bb.d
  %i.m = invoke noundef i32 @_RNvNtCsa66IwKi6YE3_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.j unwind label %bb.e, !noalias !5629

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18, !noalias !5629
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrEBF_(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.c) #17
          to label %.body.i unwind label %bb.g, !noalias !5629

.body.i:                                          ; preds = %bb.l, %bb.i, %bb.h, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.p, %bb.i ], [ %i.o, %bb.h ], [ %i.x, %bb.l ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENCINvB1T_16parse_attributesB1R_E0EEB1V_.exit.i unwind label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7.0..sroa_idx9.i, i64 240, i1 false), !noalias !5634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5624
  store i64 %i.j, ptr %i.f, align 8, !noalias !5634
  store i32 %i.m, ptr %.sroa.710.0..sroa_idx.i, align 8, !noalias !5634
  store i32 %i.k, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !5634
  %i.q = load i64, ptr %i.h, align 8, !alias.scope !5616, !noalias !5619, !noundef !11 ; 4 uses
  %i.r = icmp ult i64 %i.q, 36028797018963968
  call void @llvm.assume(i1 %i.r)
  %i.s = load i64, ptr %0, align 8, !range !1058, !alias.scope !5616, !noalias !5619, !noundef !11
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_9FieldAttrEE7reserveBJ_.exit.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5634
  invoke void @_RNvXsn_NtCshMFl0SviwmK_3syn10punctuatedINtB5_8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintBU_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENCINvB1G_16parse_attributesB1E_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i unwind label %bb.l

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_9FieldAttrEE7reserveBJ_.exit.i: ; preds = %bb.m, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENCINvB1G_16parse_attributesB1E_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i, %bb.j
  %i.u = load ptr, ptr %i.i, align 8, !alias.scope !5616, !noalias !5619, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw [256 x i8], ptr %i.u, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.v, ptr noundef nonnull align 8 dereferenceable(256) %i.f, i64 256, i1 false)
  %i.w = add nuw nsw i64 %i.q, 1
  store i64 %i.w, ptr %i.h, align 8, !alias.scope !5616, !noalias !5619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5634
  br label %bb.b

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrEBF_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.f)
          to label %.body.i unwind label %bb.n

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENCINvB1G_16parse_attributesB1E_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i: ; preds = %bb.k
  %i.y = load i64, ptr %i.e, align 8, !noalias !5634, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5634
  %i.z = call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 1) ; 2 uses
  %i.aa = load i64, ptr %i.h, align 8, !alias.scope !5635, !noalias !5619, !noundef !11 ; 2 uses
  %i.ab = load i64, ptr %0, align 8, !range !1058, !alias.scope !5635, !noalias !5619, !noundef !11
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ugt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.m, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_9FieldAttrEE7reserveBJ_.exit.i, !prof !5593

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENCINvB1G_16parse_attributesB1E_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_.exit.i
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa, i64 noundef range(i64 1, 0) %i.z, i64 noundef 8, i64 noundef 256)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBH_9FieldAttrEE7reserveBJ_.exit.i unwind label %bb.l

bb.n:                                             ; preds = %bb.l, %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENCINvB1T_16parse_attributesB1R_E0EEB1V_.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtBJ_9FieldAttrEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated8IntoIterB1H_ENCINvBJ_16parse_attributesB1H_E0EEBL_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5624
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtCsf5uYjtxkodL_11proc_macro29TokenTreeEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB1V_3map3MapIB2N_IB2N_INtNtB4_9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_BT_NtBT_11TokenStreamINtNtNtB1X_6traits7collect12FromIteratorB5n_E9from_iterB38_E0ENCINvXs6_NtBT_3impNtB6O_11TokenStreamIB5G_B6X_E9from_iterB33_Es_0EEE11spec_extendB4j_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 4 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 3 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [28 x i8], align 4          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5641)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert75.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert80.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtCsf5uYjtxkodL_11proc_macro29TokenTreeE7reserveCsluMP4ekZjHw_14diesel_derives.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5643)
  call void @llvm.experimental.noalias.scope.decl(metadata !5646)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !5649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5652
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !5656, !noalias !5657, !noundef !11
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs3_NtCsf5uYjtxkodL_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.d
  %i.q = load i32, ptr %i.g, align 8, !range !5658, !noalias !5652, !noundef !11 ; 2 uses
  %.not6.i.i.i.i = icmp eq i32 %i.q, -1
  br i1 %.not6.i.i.i.i, label %bb.e, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_IB15_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3Y_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterB1p_E0ENCINvXs6_NtB3Y_3impNtB5Q_11TokenStreamIB4J_B60_E9from_iterB1k_Es_0EENtNtB4N_8iterator8Iterator4nextB2X_.exit.thread.i

bb.e:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !alias.scope !5659, !noalias !5657, !noundef !11
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsluMP4ekZjHw_14diesel_derives.exit.thread21.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtCsf5uYjtxkodL_11proc_macro29TokenTreeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsluMP4ekZjHw_14diesel_derives.exit.thread21.i.i.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i, !noalias !5662

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsluMP4ekZjHw_14diesel_derives.exit.thread21.i.i.i: ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.j, align 8, !alias.scope !5656, !noalias !5657
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i: ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.j, align 8, !alias.scope !5656, !noalias !5657
  br label %.body.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_IB15_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3Y_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterB1p_E0ENCINvXs6_NtB3Y_3impNtB5Q_11TokenStreamIB4J_B60_E9from_iterB1k_Es_0EENtNtB4N_8iterator8Iterator4nextB2X_.exit.thread.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.0..sroa_idx19.i.i.i, i64 28, i1 false), !noalias !5663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5652
  br label %bb.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsluMP4ekZjHw_14diesel_derives.exit.thread21.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5652
  call void @llvm.experimental.noalias.scope.decl(metadata !5664)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !5667, !noalias !5668, !noundef !11
  %.not.i4.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i4.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5669)
  call void @llvm.experimental.noalias.scope.decl(metadata !5672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5675
  call void @llvm.experimental.noalias.scope.decl(metadata !5677)
  call void @llvm.experimental.noalias.scope.decl(metadata !5680)
  %i.v = load ptr, ptr %i.k, align 8, !alias.scope !5683, !noalias !5684, !nonnull !11, !noundef !11
  %i.w = load ptr, ptr %i.l, align 8, !alias.scope !5683, !noalias !5684, !nonnull !11, !noundef !11 ; 4 uses
  %i.x = icmp eq ptr %i.w, %i.v
  br i1 %i.x, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3u_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB3V_E9from_iterBW_E0ENtNtB4j_8iterator8Iterator4nextB2t_.exit.thread.i.i.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.y, ptr %i.l, align 8, !alias.scope !5683, !noalias !5684
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !5687 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3u_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB3V_E9from_iterBW_E0ENtNtB4j_8iterator8Iterator4nextB2t_.exit.thread.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !5689
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !5688
  invoke void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc4.i unwind label %.loopexit.i

.noexc4.i:                                        ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5688
  %.pr.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !5675 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3u_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB3V_E9from_iterBW_E0ENtNtB4j_8iterator8Iterator4nextB2t_.exit.thread.i.i.i.i.i, label %bb.h

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3u_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB3V_E9from_iterBW_E0ENtNtB4j_8iterator8Iterator4nextB2t_.exit.thread.i.i.i.i.i: ; preds = %.noexc4.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5675
  br label %.loopexit.i.i.i

bb.h:                                             ; preds = %.noexc4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2.i.i.i.i.i, i64 24, i1 false), !noalias !5690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5675
  store i64 %.pr.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !5690
  call void @llvm.experimental.noalias.scope.decl(metadata !5691)
  %i.z = icmp eq i64 %.pr.i.i.i.i.i.i, -1
  br i1 %i.z, label %bb.m, label %bb.i, !prof !5694

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsf5uYjtxkodL_11proc_macro23imp8mismatch(i32 noundef 221) #19
          to label %bb.j unwind label %bb.k, !noalias !5695

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #17
          to label %.body.i unwind label %bb.l, !noalias !5696

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18, !noalias !5696
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5691, !noalias !5690, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5697
  invoke void @_RNvXsc_NtCsf5uYjtxkodL_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull %i.ac)
          to label %.noexc5.i unwind label %.loopexit.i

.noexc5.i:                                        ; preds = %bb.m
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !5698, !noalias !5668, !noundef !11
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc5.i
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtCsf5uYjtxkodL_11proc_macro29TokenTreeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i unwind label %bb.r, !noalias !5701

.loopexit.i.i.i:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3u_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB3V_E9from_iterBW_E0ENtNtB4j_8iterator8Iterator4nextB2t_.exit.thread.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5705
  %i.af = load ptr, ptr %i.m, align 8, !alias.scope !5707, !noalias !5708, !noundef !11
  %.not.i5.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i5.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtCsf5uYjtxkodL_11proc_macro29TokenTreeE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB1H_3map3MapIB2z_IB2z_INtNtB6_9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_BI_NtBI_11TokenStreamINtNtNtB1J_6traits7collect12FromIteratorB59_E9from_iterB2U_E0ENCINvXs6_NtBI_3impNtB6A_11TokenStreamIB5s_B6J_E9from_iterB2P_Es_0EEEB45_.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i.i
  invoke void @_RNvXs3_NtCsf5uYjtxkodL_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.noexc6.i unwind label %.loopexit.split-lp.i

.noexc6.i:                                        ; preds = %bb.o
  %i.ag = load i32, ptr %i.c, align 8, !range !5658, !noalias !5705, !noundef !11 ; 2 uses
  %.not6.i6.i.i.i = icmp eq i32 %i.ag, -1
  br i1 %.not6.i6.i.i.i, label %bb.p, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_IB15_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3Y_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterB1p_E0ENCINvXs6_NtB3Y_3impNtB5Q_11TokenStreamIB4J_B60_E9from_iterB1k_Es_0EENtNtB4N_8iterator8Iterator4nextB2X_.exit.i

bb.p:                                             ; preds = %.noexc6.i
  %i.ah = load ptr, ptr %i.m, align 8, !alias.scope !5709, !noalias !5708, !noundef !11
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_IB15_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3Y_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterB1p_E0ENCINvXs6_NtB3Y_3impNtB5Q_11TokenStreamIB4J_B60_E9from_iterB1k_Es_0EENtNtB4N_8iterator8Iterator4nextB2X_.exit.thread20.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtCsf5uYjtxkodL_11proc_macro29TokenTreeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_IB15_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3Y_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterB1p_E0ENCINvXs6_NtB3Y_3impNtB5Q_11TokenStreamIB4J_B60_E9from_iterB1k_Es_0EENtNtB4N_8iterator8Iterator4nextB2X_.exit.thread20.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i7.i.i.i, !noalias !5712

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_IB15_INtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_Csf5uYjtxkodL_11proc_macro2NtB3Y_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterB1p_E0ENCINvXs6_NtB3Y_3impNtB5Q_11TokenStreamIB4J_B60_E9from_iterB1k_Es_0EENtNtB4N_8iterator8Iterator4nextB2X_.exit.thread20.i: ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.m, align 8, !alias.scope !5707, !noalias !5708
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtCsf5uYjtxkodL_11proc_macro29TokenTreeE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB1H_3map3MapIB2z_IB2z_INtNtB6_9into_iter8IntoIterNtNtCshMFl0SviwmK_3syn5error5ErrorENCNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derives5_0ENCINvXsb_BI_NtBI_11TokenStreamINtNtNtB1J_6traits7collect12FromIteratorB59_E9from_iterB2U_E0ENCINvXs6_NtBI_3impNtB6A_11TokenStreamIB5s_B6J_E9from_iterB2P_Es_0EEEB45_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsf5uYjtxkodL_11proc_macro29TokenTreeEECsluMP4ekZjHw_14diesel_derives.exit.i7.i.i.i: ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.m, align 8, !alias.scope !5707, !noalias !5708
  br label %.body.i

bb.r:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !5668
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsf5uYjtxkodL_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i: ; preds = %bb.n, %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !5668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5697
  br label %bb.c
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB16_5token5CommaEEINtB2_18SpecFromIterNestedB11_INtB14_9IntoPairsB1F_B2E_EE9from_iterB1J_:bb.a

bb.l:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.f, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aa = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 1)
  %.sroa.0.0.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.aa, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 264)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.l
  %i.ab = load i64, ptr %i.d, align 8, !range !1208, !noundef !11
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5739, !noundef !11 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !5593

bb.m:                                             ; preds = %.noexc
  %i.ag = load i64, ptr %i.af, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #19
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.ah = load ptr, ptr %i.af, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i, %i.ae
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, ptr noundef nonnull align 8 dereferenceable(264) %i.h, i64 264, i1 false)
  store i64 %i.ae, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.e, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 288, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6019)
  call void @llvm.experimental.noalias.scope.decl(metadata !6022)
  call void @llvm.experimental.noalias.scope.decl(metadata !6024)
  call void @llvm.experimental.noalias.scope.decl(metadata !6027)
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBJ_5token5CommaEE7reserveB1m_.exit.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6029
  invoke void @_RNvXsj_NtCshMFl0SviwmK_3syn10punctuatedINtB5_9IntoPairsNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBV_(ptr noalias noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.e)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.aa, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.bd, %bb.aa ], [ %i.aj, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated9IntoPairsNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.e) #17
          to label %.body unwind label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.ak = load i64, ptr %i.c, align 8, !range !96, !noalias !6029, !noundef !11
  %.not.i.i = icmp eq i64 %i.ak, -2
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull align 8 dereferenceable(264) %i.c, i64 264, i1 false), !noalias !6029
  %i.al = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6030, !noalias !6031, !noundef !11 ; 4 uses
  %i.am = icmp ult i64 %i.al, 34937015291116576
  call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %i.i, align 8, !range !1058, !alias.scope !6030, !noalias !6031, !noundef !11
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.z, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBJ_5token5CommaEE7reserveB1m_.exit.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6029
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEEEB1u_.exit.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.e) #17
          to label %.body unwind label %bb.y

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEEEB1u_.exit.i.i.i: ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !6032)
  call void @llvm.experimental.noalias.scope.decl(metadata !6035)
  call void @llvm.experimental.noalias.scope.decl(metadata !6038)
  %i.ar = load i64, ptr %i.e, align 8, !range !251, !alias.scope !6041, !noalias !6030, !noundef !11
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBW_5token5CommaEEINtB2_10SpecExtendBR_INtBU_9IntoPairsB1v_B2u_EE11spec_extendB1z_.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEEEB1u_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6044)
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  call void @llvm.experimental.noalias.scope.decl(metadata !6047)
  call void @llvm.experimental.noalias.scope.decl(metadata !6050)
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.av = load i8, ptr %i.au, align 8, !range !9, !alias.scope !6053, !noalias !6030, !noundef !11
  %i.aw = icmp eq i8 %i.av, 2
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEBF_.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !6053, !noalias !6030, !noundef !11 ; 2 uses
  %i.ay = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEBF_.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !6053, !noalias !6030, !nonnull !11, !noundef !11
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i.i.i, i64 noundef 1) #15, !noalias !6054
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEBF_.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEBF_.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.e)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBW_5token5CommaEEINtB2_10SpecExtendBR_INtBU_9IntoPairsB1v_B2u_EE11spec_extendB1z_.exit unwind label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6029
  invoke void @_RNvXsj_NtCshMFl0SviwmK_3syn10punctuatedINtB5_9IntoPairsNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintBV_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.e)
          to label %bb.ab unwind label %bb.aa

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBJ_5token5CommaEE7reserveB1m_.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.s
  %i.ba = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6030, !noalias !6031, !nonnull !11, !noundef !11
  %i.bb = getelementptr inbounds nuw [264 x i8], ptr %i.ba, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.bb, ptr noundef nonnull align 8 dereferenceable(264) %i.c, i64 264, i1 false)
  %i.bc = add nuw nsw i64 %i.al, 1
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6030, !noalias !6031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6029
  br label %bb.o

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1j_(ptr noalias noundef align 8 dereferenceable(264) %i.b) #17
          to label %bb.p unwind label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.be = load i64, ptr %i.a, align 8, !noalias !6029, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6029
  %i.bf = call i64 @llvm.uadd.sat.i64(i64 %i.be, i64 1) ; 2 uses
  %i.bg = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6055, !noalias !6031, !noundef !11 ; 2 uses
  %i.bh = load i64, ptr %i.i, align 8, !range !1058, !alias.scope !6055, !noalias !6031, !noundef !11
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = icmp ugt i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.ac, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBJ_5token5CommaEE7reserveB1m_.exit.i.i, !prof !5593

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bg, i64 noundef range(i64 1, 0) %i.bf, i64 noundef 8, i64 noundef 264)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBJ_5token5CommaEE7reserveB1m_.exit.i.i unwind label %bb.aa

bb.ad:                                            ; preds = %bb.aa, %bb.p
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEBF_.exit.i.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.u, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.ae ], [ %i.aq, %bb.u ], [ %.pn.i.i, %bb.p ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1d_5token5CommaEEEB1Q_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #17
          to label %common.resume unwind label %bb.af

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBW_5token5CommaEEINtB2_10SpecExtendBR_INtBU_9IntoPairsB1v_B2u_EE11spec_extendB1z_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEEEB1u_.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEBF_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated9IntoPairsNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1o_.exit

bb.af:                                            ; preds = %bb.ag, %.body, %bb.k
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ag:                                            ; preds = %bb.k, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.y, %bb.k ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated9IntoPairsNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1o_(ptr noalias noundef align 8 dereferenceable(288) %1) #17
          to label %common.resume unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB16_5token5CommaEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB3z_9enumerate9EnumerateINtNtNtB3B_7sources8repeat_n7RepeatNBR_EEBR_NCNvB1H_15expand_variadics0_0EE9from_iterB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [8 x i8], align 8         ; 3 uses
  %.sroa.7.i.i = alloca [8 x i8], align 8         ; 3 uses
  %i.a = alloca [264 x i8], align 8               ; 4 uses
  %i.b = alloca [264 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 14 uses
  %.sroa.5 = alloca [8 x i8], align 8             ; 3 uses
  %.sroa.7 = alloca [8 x i8], align 8             ; 3 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  %i.f = alloca [264 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtB9_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2H_5token5CommaEEEEB25_NCNvB3i_15expand_variadics0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_(ptr noalias noundef align 8 captures(address) dereferenceable(264) %i.f, ptr noalias noundef align 8 dereferenceable(112) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !96, !noundef !11
  %.not = icmp eq i64 %i.i, -2
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(264) %i.f, i64 264, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6066)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !6068, !noalias !6069, !noundef !11
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !6070, !noalias !6073, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !6070, !noalias !6073, !nonnull !11, !noundef !11
  %i.n = ptrtoint ptr %.val4.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 264
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6068, !noalias !6069, !noundef !11
  %.not55.i.i = icmp eq ptr %i.s, null
  br i1 %.not55.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit66.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i64.i.i = load ptr, ptr %i.t, align 8, !alias.scope !6076, !noalias !6079, !nonnull !11, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val4.i65.i.i = load ptr, ptr %i.u, align 8, !alias.scope !6076, !noalias !6079, !nonnull !11, !noundef !11
  %i.v = ptrtoint ptr %.val4.i65.i.i to i64
  %i.w = ptrtoint ptr %.val.i64.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 264
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit66.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit66.i.i: ; preds = %bb.f, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.aa = load i64, ptr %1, align 8, !range !276, !alias.scope !6068, !noalias !6069, !noundef !11 ; 2 uses
  %.not56.i.i = icmp eq i64 %i.aa, -2
  br i1 %.not56.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit66.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val63.i.i = load i64, ptr %i.ab, align 8, !alias.scope !6068, !noalias !6069
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, -1
  %i.ac = icmp eq i64 %.val63.i.i, 0
  %i.ad = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.ac
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit66.i.i
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_9enumerate9EnumerateINtNtNtBI_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2U_5token5CommaEEEEB2i_NCNvB3v_15expand_variadics0_0EEB3x_(ptr noalias noundef align 8 dereferenceable(112) %1)
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBW_5token5CommaEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB3f_9enumerate9EnumerateINtNtNtB3h_7sources8repeat_n7RepeatNBH_EEBH_NCNvB1x_15expand_variadics0_0EE11spec_extendB1z_.exit, %bb.i
  ret void

bb.k:                                             ; preds = %bb.m, %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1j_(ptr noalias noundef align 8 dereferenceable(264) %i.e) #17
          to label %bb.ae unwind label %bb.ac

bb.l:                                             ; preds = %bb.g, %bb.h
  %.sink81.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.h ], [ %.sroa.5, %bb.g ]
  %.sink.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i, ptr %.sink81.i.i.sroa.phi, align 8, !alias.scope !6069, !noalias !6068
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %.sroa.0.0.i = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 264)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.l
  %i.ai = load i64, ptr %i.c, align 8, !range !1208, !noundef !11
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !5739, !noundef !11 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n, !prof !5593

bb.m:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #19
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = icmp ult i64 %i.ah, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull align 8 dereferenceable(264) %i.f, i64 264, i1 false)
  store i64 %i.al, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6090)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBJ_5token5CommaEE7reserveB1m_.exit.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6092
  invoke fastcc void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtB9_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2H_5token5CommaEEEEB25_NCNvB3i_15expand_variadics0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_(ptr noalias noundef align 8 captures(address) dereferenceable(264) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.y, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.ax, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_9enumerate9EnumerateINtNtNtBI_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2U_5token5CommaEEEEB2i_NCNvB3v_15expand_variadics0_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d) #17
          to label %.body unwind label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.b, align 8, !range !96, !noalias !6092, !noundef !11
  %.not.i.i6 = icmp eq i64 %i.ay, -2
  br i1 %.not.i.i6, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBL_5token5CommaEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB31_9enumerate9EnumerateINtNtNtB33_7sources8repeat_n7RepeatNBw_EEBw_NCNvB1m_15expand_variadics0_0EEB1o_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(264) %i.b, i64 264, i1 false), !noalias !6092
  %i.az = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6093, !noalias !6094, !noundef !11 ; 5 uses
  %i.ba = icmp ult i64 %i.az, 34937015291116576
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.g, align 8, !range !1058, !alias.scope !6093, !noalias !6094, !noundef !11
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBJ_5token5CommaEE7reserveB1m_.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6095)
  call void @llvm.experimental.noalias.scope.decl(metadata !6098)
  call void @llvm.experimental.noalias.scope.decl(metadata !6100)
  call void @llvm.experimental.noalias.scope.decl(metadata !6103)
  %i.bd = load ptr, ptr %i.aq, align 8, !alias.scope !6105, !noalias !6106, !noundef !11
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1C_5token5CommaEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2f_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !6107, !noalias !6110, !nonnull !11, !noundef !11
  %.val4.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !6107, !noalias !6110, !nonnull !11, !noundef !11
  %i.be = ptrtoint ptr %.val4.i.i.i.i.i to i64
end_hunk_1
