Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.14?download=true
inline.NumInlined: 1346
inline.NumDeleted: 576
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCshMFl0SviwmK_3syn4attrNtB3_9Attribute15parse_args_withNvMNtB5_10punctuatedINtB11_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrNtNtB5_5token5CommaE16parse_terminatedEB1F_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !307
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !308, !noundef !13
  %.not.i.i.i.i.i6 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i6, label %_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noundef i32 @_RNvXs8_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai), !noalias !309
  br label %_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.al = phi i32 [ %i.ak, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  store i32 %i.al, ptr %i.b, align 4, !noalias !310
  invoke void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.j, !noalias !309

bb.j:                                             ; preds = %_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i unwind label %bb.l, !noalias !309

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !309
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.am

_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXsU_Cs50gxqRnCXtk_10proc_macroNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !311
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0.copyload3.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !311
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload5.i.i = load i64, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !307
  br label %_RINvMs0_NtCshMFl0SviwmK_3syn4attrNtB6_8MetaList15parse_args_withNvMNtB8_10punctuatedINtB13_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrNtNtB8_5token5CommaE16parse_terminatedEB1H_.exit

_RINvMs0_NtCshMFl0SviwmK_3syn4attrNtB6_8MetaList15parse_args_withNvMNtB8_10punctuatedINtB13_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrNtNtB8_5token5CommaE16parse_terminatedEB1H_.exit: ; preds = %bb.g, %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.46.0.i.i = phi i32 [ undef, %bb.g ], [ %i.al, %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.g ], [ %.sroa.4.0.copyload5.i.i, %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.3.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %.sroa.3.0.copyload3.i.i, %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.0.0.i.i = phi i64 [ -1, %bb.g ], [ %.sroa.0.0.copyload1.i.i, %_RNvXsA_NtCsf5uYjtxkodL_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ]
  store i64 %.sroa.0.0.i.i, ptr %i.c, align 8, !alias.scope !301, !noalias !312
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !301, !noalias !312
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.4.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !301, !noalias !312
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.sroa.46.0.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !301, !noalias !312
  call void @_RINvNtCshMFl0SviwmK_3syn5parse12parse_scopedNvMNtB4_10punctuatedINtBJ_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrNtNtB4_5token5CommaE16parse_terminatedEB1m_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aq = tail call noundef nonnull align 4 ptr @_RNvXseM_NtCshMFl0SviwmK_3syn5tokenNtB6_2EqNtNtNtCscI6d9CVNmLh_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ap)
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !13
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.as, ptr %i.f, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.at, ptr %i.e, align 8
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1_NtNtCshMFl0SviwmK_3syn4attr7parsingNtB5_16DisplayAttrStyleNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.212.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.au, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs2_NtNtCshMFl0SviwmK_3syn4attr7parsingNtB5_11DisplayPathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.214.0..sroa_idx, align 8
  call void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i32 noundef %i.ar, ptr noundef nonnull @5, ptr noundef nonnull %i.d)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RINvMs0_NtCshMFl0SviwmK_3syn4attrNtB6_8MetaList15parse_args_withNvMNtB8_10punctuatedINtB13_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrNtNtB8_5token5CommaE16parse_terminatedEB1H_.exit, %_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionRNtNtCshMFl0SviwmK_3syn4path11PathSegmentE6unwrapCsluMP4ekZjHw_14diesel_derives.exit3, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtCshMFl0SviwmK_3syn3litNtB6_6LitInt12base10_parsejECsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs3_NtCshMFl0SviwmK_3syn3litNtB5_6LitInt13base10_digits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  switch i64 %i.c, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !alias.scope !324, !noundef !13 ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.a
  %.pr.i.i.i = load i8, ptr %i.b, align 1, !alias.scope !324
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i.i, %bb.b
  %i.e = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.d, %bb.b ]
  %cond.i.i.i = icmp eq i8 %i.e, 43               ; 2 uses
  %i.f = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.c, %i.f      ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.g, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.c
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %.loopexit5, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.f
  %.not52.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not52.i.i.i, label %.loopexit5, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.c, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i35 = phi ptr [ %i.h, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i.i.i34 = phi i64 [ %i.i, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.c ]
  %.sroa.042.0.i.i.i33 = phi i64 [ %i.t, %.preheader56.i.i.i ], [ 0, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i35, i64 1
  %i.i = add nsw i64 %.sroa.15.1.i.i.i34, -1      ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i33, i64 10) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.j, 1
  %i.m = load i8, ptr %.sroa.0.1.i.i.i35, align 1, !alias.scope !324, !noundef !13 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.d, !prof !21

bb.d:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.q = add i8 %i.m, -48
  %i.r = icmp ult i8 %i.q, 10
  %spec.select = select i1 %i.r, i8 2, i8 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.o to i64
  %i.t = add i64 %i.k, %i.s                       ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.k
  br i1 %i.u, label %.loopexit, label %.preheader56.i.i.i, !prof !21

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.g
  %.sroa.0.269.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.aa, %bb.g ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.ad, %bb.g ], [ 0, %.preheader.i.i.i ]
  %i.v = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !324, !noundef !13
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.z = mul i64 %.sroa.042.267.i.i.i, 10
  %i.aa = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = add i64 %i.z, %i.ac                     ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not53.i.i.i, label %.loopexit5, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %bb.d, %bb.f, %.lr.ph.i.i.i, %bb.e, %bb.a, %bb.b, %bb.b
  %.sroa.2.0.ph = phi i8 [ 1, %bb.b ], [ %spec.select, %bb.e ], [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.i.i.i ], [ 1, %bb.d ], [ 2, %bb.f ]
  %i.ae = tail call noundef i32 @_RNvMs3_NtCshMFl0SviwmK_3syn3litNtB5_6LitInt4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !325
  tail call void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %i.ae, i8 noundef range(i8 0, 6) %.sroa.2.0.ph), !noalias !326
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsluMP4ekZjHw_14diesel_derives.exit

.loopexit5:                                       ; preds = %.preheader56.i.i.i, %bb.g, %.preheader.i.i.i
  %.sroa.9.0 = phi i64 [ %i.ad, %bb.g ], [ 0, %.preheader.i.i.i ], [ %i.t, %.preheader56.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %i.af, align 8, !alias.scope !327
  store i64 -1, ptr %0, align 8, !alias.scope !327
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsluMP4ekZjHw_14diesel_derives.exit

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %.loopexit, %.loopexit5
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtCshMFl0SviwmK_3syn3litNtB6_6LitInt12base10_parselECsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs3_NtCshMFl0SviwmK_3syn3litNtB5_6LitInt13base10_digits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 5 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  switch i64 %i.c, label %thread-pre-split.i.i.i [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !alias.scope !338, !noundef !13 ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 43, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread
    i8 45, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.a
  %.pr.i.i.i = load i8, ptr %i.b, align 1, !alias.scope !338
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i.i, %bb.b
  %i.e = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.d, %bb.b ]
  switch i8 %i.e, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.g = add nsw i64 %i.c, -1
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.i = add nsw i64 %i.c, -1                     ; 3 uses
  %i.j = icmp samesign ult i64 %i.c, 9
  br i1 %i.j, label %.preheader118.i.i.i, label %.lr.ph.i.i.i

.preheader118.i.i.i:                              ; preds = %bb.e
  %.not105139.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not105139.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.h, %bb.i, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %.preheader.i.i.i, %.preheader118.i.i.i
  %.sroa.086.1.i.i.i = phi i32 [ %i.aj, %bb.i ], [ %i.cq, %bb.t ], [ %i.aw, %bb.m ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader118.i.i.i ], [ %i.az, %bb.n ], [ %i.bh, %bb.o ], [ %i.bo, %bb.p ], [ %i.bv, %bb.q ], [ %i.cc, %bb.r ], [ %i.cj, %bb.s ], [ %i.x, %bb.h ]
  %i.k = zext i32 %.sroa.086.1.i.i.i to i64
  %i.l = shl nuw i64 %i.k, 32
  br label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.h
  %.sroa.0.1138.i.i.i = phi ptr [ %i.m, %bb.h ], [ %i.h, %bb.e ] ; 3 uses
  %.sroa.26.1137.i.i.i = phi i64 [ %i.n, %bb.h ], [ %i.i, %bb.e ]
  %.sroa.086.0136.i.i.i = phi i32 [ %i.x, %bb.h ], [ 0, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i, i64 1
  %i.n = add nsw i64 %.sroa.26.1137.i.i.i, -1     ; 2 uses
  %i.o = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i, i32 10) ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 0
  %i.q = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.q, label %.loopexit114.sink.split.i.i.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.r = load i8, ptr %.sroa.0.1138.i.i.i, align 1, !alias.scope !338, !noundef !13
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -48                    ; 2 uses
  %i.u = icmp ult i32 %i.t, 10
  br i1 %i.u, label %bb.g, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.p, i32 %i.t) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  br i1 %i.w, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.x = extractvalue { i32, i1 } %i.v, 0         ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not104.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.loopexit114.sink.split.i.i.i:                    ; preds = %.lr.ph.i.i.i, %.preheader115.i.i.i
  %.sroa.0.3147.lcssa.sink.i.i.i = phi ptr [ %.sroa.0.3147.i.i.i, %.preheader115.i.i.i ], [ %.sroa.0.1138.i.i.i, %.lr.ph.i.i.i ]
  %.sink190.i.i.i = phi i64 [ 513, %.preheader115.i.i.i ], [ 769, %.lr.ph.i.i.i ]
  %i.y = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i, align 1, !alias.scope !338, !noundef !13
  %i.z = add i8 %i.y, -48
  %i.aa = icmp ult i8 %i.z, 10
  %i.ab = select i1 %i.aa, i64 %.sink190.i.i.i, i64 257
  br label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit

.lr.ph143.i.i.i:                                  ; preds = %.preheader118.i.i.i, %bb.i
  %.sroa.0.2142.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %i.h, %.preheader118.i.i.i ] ; 2 uses
  %.sroa.26.2141.i.i.i = phi i64 [ %i.ah, %bb.i ], [ %i.i, %.preheader118.i.i.i ]
  %.sroa.086.2140.i.i.i = phi i32 [ %i.aj, %bb.i ], [ 0, %.preheader118.i.i.i ]
  %i.ac = load i8, ptr %.sroa.0.2142.i.i.i, align 1, !alias.scope !338, !noundef !13
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.i:                                             ; preds = %.lr.ph143.i.i.i
  %i.ag = mul i32 %.sroa.086.2140.i.i.i, 10
  %i.ah = add nsw i64 %.sroa.26.2141.i.i.i, -1    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i.i.i, i64 1
  %i.aj = sub i32 %i.ag, %i.ae                    ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not105.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

bb.j:                                             ; preds = %bb.d, %bb.c
  %.sroa.26.0.i.i.i = phi i64 [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 9 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ] ; 8 uses
  %i.ak = icmp samesign ult i64 %.sroa.26.0.i.i.i, 8
  br i1 %i.ak, label %.preheader.i.i.i, label %.preheader115.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j
  %.not107148.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not107148.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i

.preheader115.i.i.i:                              ; preds = %bb.j, %bb.m
  %.sroa.0.3147.i.i.i = phi ptr [ %i.al, %bb.m ], [ %.sroa.0.0.i.i.i, %bb.j ] ; 3 uses
  %.sroa.26.3146.i.i.i = phi i64 [ %i.am, %bb.m ], [ %.sroa.26.0.i.i.i, %bb.j ]
  %.sroa.086.3145.i.i.i = phi i32 [ %i.aw, %bb.m ], [ 0, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i.i, i64 1
  %i.am = add nsw i64 %.sroa.26.3146.i.i.i, -1    ; 2 uses
  %i.an = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i.i, i32 10) ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 0
  %i.ap = extractvalue { i32, i1 } %i.an, 1
  br i1 %i.ap, label %.loopexit114.sink.split.i.i.i, label %bb.k, !prof !21

bb.k:                                             ; preds = %.preheader115.i.i.i
  %i.aq = load i8, ptr %.sroa.0.3147.i.i.i, align 1, !alias.scope !338, !noundef !13
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.l, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.au = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ao, i32 %i.as) ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.au, 1
  br i1 %i.av, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.aw = extractvalue { i32, i1 } %i.au, 0       ; 2 uses
  %.not106.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not106.i.i.i, label %.loopexit.i.i.i, label %.preheader115.i.i.i

.lr.ph152.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.ax = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !338, !noundef !13
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 3 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %bb.n, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.n:                                             ; preds = %.lr.ph152.i.i.i
  %.not107.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 1
  br i1 %.not107.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.1

.lr.ph152.i.i.i.1:                                ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !338, !noundef !13
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.o, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.o:                                             ; preds = %.lr.ph152.i.i.i.1
  %i.bg = mul nuw nsw i32 %i.az, 10
  %i.bh = add nuw nsw i32 %i.be, %i.bg            ; 2 uses
  %.not107.i.i.i.1 = icmp eq i64 %.sroa.26.0.i.i.i, 2
  br i1 %.not107.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.2

.lr.ph152.i.i.i.2:                                ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !338, !noundef !13
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.p, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.p:                                             ; preds = %.lr.ph152.i.i.i.2
  %i.bn = mul nuw nsw i32 %i.bh, 10
  %i.bo = add nuw nsw i32 %i.bl, %i.bn            ; 2 uses
  %.not107.i.i.i.2 = icmp eq i64 %.sroa.26.0.i.i.i, 3
  br i1 %.not107.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.3

.lr.ph152.i.i.i.3:                                ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !338, !noundef !13
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.q, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.q:                                             ; preds = %.lr.ph152.i.i.i.3
  %i.bu = mul nuw nsw i32 %i.bo, 10
  %i.bv = add nuw nsw i32 %i.bs, %i.bu            ; 2 uses
  %.not107.i.i.i.3 = icmp eq i64 %.sroa.26.0.i.i.i, 4
  br i1 %.not107.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.4

.lr.ph152.i.i.i.4:                                ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !338, !noundef !13
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -48                  ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 10
  br i1 %i.ca, label %bb.r, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.r:                                             ; preds = %.lr.ph152.i.i.i.4
  %i.cb = mul i32 %i.bv, 10
  %i.cc = add i32 %i.bz, %i.cb                    ; 2 uses
  %.not107.i.i.i.4 = icmp eq i64 %.sroa.26.0.i.i.i, 5
  br i1 %.not107.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.5

.lr.ph152.i.i.i.5:                                ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !338, !noundef !13
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 10
  br i1 %i.ch, label %bb.s, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.s:                                             ; preds = %.lr.ph152.i.i.i.5
  %i.ci = mul i32 %i.cc, 10
  %i.cj = add i32 %i.cg, %i.ci                    ; 2 uses
  %.not107.i.i.i.5 = icmp eq i64 %.sroa.26.0.i.i.i, 6
  br i1 %.not107.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.6

.lr.ph152.i.i.i.6:                                ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !338, !noundef !13
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ult i32 %i.cn, 10
  br i1 %i.co, label %bb.t, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.t:                                             ; preds = %.lr.ph152.i.i.i.6
  %i.cp = mul i32 %i.cj, 10
  %i.cq = add i32 %i.cn, %i.cp
  br label %.loopexit.i.i.i

_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %.loopexit.i.i.i, %.loopexit114.sink.split.i.i.i
  %.sroa.12.0.insert.insert.i.i.i = phi i64 [ %i.ab, %.loopexit114.sink.split.i.i.i ], [ %i.l, %.loopexit.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.cr = trunc i64 %.sroa.12.0.insert.insert.i.i.i to i1
  br i1 %i.cr, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread, label %bb.u

_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread: ; preds = %bb.g, %bb.f, %.lr.ph143.i.i.i, %bb.k, %bb.l, %.lr.ph152.i.i.i, %.lr.ph152.i.i.i.1, %.lr.ph152.i.i.i.2, %.lr.ph152.i.i.i.3, %.lr.ph152.i.i.i.4, %.lr.ph152.i.i.i.5, %.lr.ph152.i.i.i.6, %bb.a, %bb.b, %bb.b, %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit
  %.sroa.12.0.insert.insert.i.i.i5 = phi i64 [ %.sroa.12.0.insert.insert.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit ], [ 257, %bb.b ], [ 257, %.lr.ph152.i.i.i ], [ 1, %bb.a ], [ 257, %.lr.ph143.i.i.i ], [ 257, %bb.k ], [ 257, %bb.b ], [ 257, %.lr.ph152.i.i.i.6 ], [ 257, %.lr.ph152.i.i.i.5 ], [ 257, %.lr.ph152.i.i.i.4 ], [ 257, %.lr.ph152.i.i.i.3 ], [ 257, %.lr.ph152.i.i.i.2 ], [ 257, %.lr.ph152.i.i.i.1 ], [ 513, %bb.l ], [ 769, %bb.g ], [ 257, %bb.f ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i5, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  %i.cs = tail call noundef i32 @_RNvMs3_NtCshMFl0SviwmK_3syn3litNtB5_6LitInt4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !340
  tail call void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %i.cs, i8 noundef range(i8 0, 6) %.sroa.4.0.extract.trunc.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultlNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parselE0ECsluMP4ekZjHw_14diesel_derives.exit

bb.u:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.ct, align 8, !alias.scope !339
  store i64 -1, ptr %0, align 8, !alias.scope !339
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultlNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parselE0ECsluMP4ekZjHw_14diesel_derives.exit

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultlNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parselE0ECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre5parselECsluMP4ekZjHw_14diesel_derives.exit.thread, %bb.u
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtCshMFl0SviwmK_3syn3litNtB6_6LitInt12base10_parsemECsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs3_NtCshMFl0SviwmK_3syn3litNtB5_6LitInt13base10_digits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  switch i64 %i.c, label %thread-pre-split.i.i.i [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !alias.scope !351, !noundef !13 ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 43, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread
    i8 45, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.a
  %.pr.i.i.i = load i8, ptr %i.b, align 1, !alias.scope !351
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i.i, %bb.b
  %i.e = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.d, %bb.b ]
  %cond.i.i.i = icmp eq i8 %i.e, 43               ; 2 uses
  %i.f = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.c, %i.f      ; 10 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.idx.i.i.i ; 9 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.i.i.i, 9
  br i1 %i.g, label %.preheader.i.i.i, label %.preheader60.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.c
  %.not5668.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5668.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.preheader60.i.i.i:                               ; preds = %bb.f
  %.not55.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not55.i.i.i, label %.loopexit.i.i.i, label %.preheader60.i.i.i.preheader

.loopexit.i.i.i:                                  ; preds = %.preheader60.i.i.i, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %.preheader.i.i.i
  %.sroa.045.1.i.i.i = phi i32 [ %i.bw, %bb.n ], [ 0, %.preheader.i.i.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.h ], [ %i.an, %bb.i ], [ %i.au, %bb.j ], [ %i.bb, %bb.k ], [ %i.bi, %bb.l ], [ %i.bp, %bb.m ], [ %i.u, %.preheader60.i.i.i ]
  %i.h = zext i32 %.sroa.045.1.i.i.i to i64
  %i.i = shl nuw i64 %i.h, 32
  br label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit

.preheader60.i.i.i.preheader:                     ; preds = %bb.c, %.preheader60.i.i.i
  %.sroa.0.1.i.i.i35 = phi ptr [ %i.j, %.preheader60.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i.i.i34 = phi i64 [ %i.k, %.preheader60.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.c ]
  %.sroa.045.0.i.i.i33 = phi i32 [ %i.u, %.preheader60.i.i.i ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i35, i64 1
  %i.k = add nsw i64 %.sroa.15.1.i.i.i34, -1      ; 2 uses
  %i.l = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i33, i32 10) ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 0         ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.l, 1
  %i.o = load i8, ptr %.sroa.0.1.i.i.i35, align 1, !alias.scope !351, !noundef !13 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.d, !prof !21

bb.d:                                             ; preds = %.preheader60.i.i.i.preheader
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.f, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.e:                                             ; preds = %.preheader60.i.i.i.preheader
  %i.s = add i8 %i.o, -48
  %i.t = icmp ult i8 %i.s, 10
  %spec.select.i.i.i = select i1 %i.t, i64 513, i64 257
  br label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit

bb.f:                                             ; preds = %bb.d
  %i.u = add i32 %i.q, %i.m                       ; 3 uses
  %i.v = icmp ult i32 %i.u, %i.m
  br i1 %i.v, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread, label %.preheader60.i.i.i, !prof !21

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.w = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !351, !noundef !13
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 3 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.g, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %.not56.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 1
  br i1 %.not56.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !351, !noundef !13
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.h:                                             ; preds = %.lr.ph.i.i.i.1
  %i.af = mul nuw nsw i32 %i.y, 10
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  %.not56.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i, 2
  br i1 %.not56.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !351, !noundef !13
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i.i.2
  %i.am = mul nuw nsw i32 %i.ag, 10
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  %.not56.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i, 3
  br i1 %.not56.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !351, !noundef !13
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.j, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.i.i.3
  %i.at = mul nuw nsw i32 %i.an, 10
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  %.not56.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i, 4
  br i1 %.not56.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !351, !noundef !13
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ult i32 %i.ay, 10
  br i1 %i.az, label %bb.k, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.k:                                             ; preds = %.lr.ph.i.i.i.4
  %i.ba = mul i32 %i.au, 10
  %i.bb = add i32 %i.ay, %i.ba                    ; 2 uses
  %.not56.i.i.i.4 = icmp eq i64 %.sroa.15.0.i.i.i, 5
  br i1 %.not56.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !351, !noundef !13
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 10
  br i1 %i.bg, label %bb.l, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.l:                                             ; preds = %.lr.ph.i.i.i.5
  %i.bh = mul i32 %i.bb, 10
  %i.bi = add i32 %i.bf, %i.bh                    ; 2 uses
  %.not56.i.i.i.5 = icmp eq i64 %.sroa.15.0.i.i.i, 6
  br i1 %.not56.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !351, !noundef !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.m, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.i.i.6
  %i.bo = mul i32 %i.bi, 10
  %i.bp = add i32 %i.bm, %i.bo                    ; 2 uses
  %.not56.i.i.i.6 = icmp eq i64 %.sroa.15.0.i.i.i, 7
  br i1 %.not56.i.i.i.6, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 7
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !351, !noundef !13
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 10
  br i1 %i.bu, label %bb.n, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.i.i.7
  %i.bv = mul i32 %i.bp, 10
  %i.bw = add i32 %i.bt, %i.bv
  br label %.loopexit.i.i.i

_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %.loopexit.i.i.i, %bb.e
  %.sroa.8.0.insert.insert.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.e ], [ %i.i, %.loopexit.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.bx = trunc i64 %.sroa.8.0.insert.insert.i.i.i to i1
  br i1 %i.bx, label %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread, label %bb.o

_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread: ; preds = %bb.f, %bb.d, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7, %bb.a, %bb.b, %bb.b, %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit
  %.sroa.8.0.insert.insert.i.i.i5 = phi i64 [ %.sroa.8.0.insert.insert.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit ], [ 257, %bb.b ], [ 257, %.lr.ph.i.i.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %.lr.ph.i.i.i.7 ], [ 257, %.lr.ph.i.i.i.6 ], [ 257, %.lr.ph.i.i.i.5 ], [ 257, %.lr.ph.i.i.i.4 ], [ 257, %.lr.ph.i.i.i.3 ], [ 257, %.lr.ph.i.i.i.2 ], [ 257, %.lr.ph.i.i.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i5, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  %i.by = tail call noundef i32 @_RNvMs3_NtCshMFl0SviwmK_3syn3litNtB5_6LitInt4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !353
  tail call void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %i.by, i8 noundef range(i8 0, 6) %.sroa.4.0.extract.trunc.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultmNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsemE0ECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.bz, align 8, !alias.scope !352
  store i64 -1, ptr %0, align 8, !alias.scope !352
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultmNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsemE0ECsluMP4ekZjHw_14diesel_derives.exit

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultmNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCshMFl0SviwmK_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsemE0ECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre5parsemECsluMP4ekZjHw_14diesel_derives.exit.thread, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEEECsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !22, !noundef !13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.d, !noalias !356, !inline_history !23

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #21, !noalias !356, !inline_history !23
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn2ty4TypeEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #21, !noalias !356, !inline_history !23
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3pat3PatEEECsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !22, !noundef !13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3pat3PatEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn3pat3PatECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(184) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3pat3PatEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.d, !noalias !359, !inline_history !360

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 184, i64 noundef 8) #21, !noalias !359
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn3pat3PatEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 184, i64 noundef 8) #21, !noalias !359
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4expr4ExprEEECsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !22, !noundef !13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4expr4ExprEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4expr4ExprECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(176) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4expr4ExprEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.d, !noalias !363, !inline_history !364

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 176, i64 noundef 8) #21, !noalias !363
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4expr4ExprEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 176, i64 noundef 8) #21, !noalias !363
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEEECsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !22, !noundef !13 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377), !noalias !378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379), !noalias !378
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load i8, ptr %i.d, align 8, !range !24, !alias.scope !380, !noalias !378, !noundef !13
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !380, !noalias !378, !noundef !13 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !380, !noalias !378, !nonnull !13, !noundef !13
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #21, !noalias !381, !inline_history !373
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.i = load i64, ptr %i.a, align 8, !range !25, !alias.scope !382, !noalias !378, !noundef !13 ; 2 uses
  %i.j = xor i64 %i.i, -9223372036854775808
  %i.k = icmp slt i64 %i.i, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 2
  switch i64 %i.l, label %bb.f [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEECsluMP4ekZjHw_14diesel_derives.exit
    i64 1, label %bb.g
  ]

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path29ParenthesizedGenericArgumentsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.h, !inline_history !373

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path30AngleBracketedGenericArgumentsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.h, !inline_history !373

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 88, i64 noundef 8) #21, !noalias !378
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path11PathSegmentEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.f, %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 88, i64 noundef 8) #21, !noalias !378
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path15GenericArgumentEEECsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !22, !noundef !13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path15GenericArgumentEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path15GenericArgumentECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(312) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path15GenericArgumentEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.d, !noalias !385, !inline_history !386

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 312, i64 noundef 8) #21, !noalias !385
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4path15GenericArgumentEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 312, i64 noundef 8) #21, !noalias !385
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn8generics13CapturedParamEEECsluMP4ekZjHw_14diesel_derives(ptr captures(address) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn8generics13CapturedParamEECsluMP4ekZjHw_14diesel_derives.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !24, !alias.scope !389, !noundef !13
  %i.d = icmp eq i8 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !389 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i.i, 0
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn8generics13CapturedParamEECsluMP4ekZjHw_14diesel_derives.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i: ; preds = %bb.c
end_hunk_0
