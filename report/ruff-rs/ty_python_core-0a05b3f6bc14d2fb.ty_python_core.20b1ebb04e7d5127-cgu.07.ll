Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.07?download=true
inline.NumInlined: 1156
inline.NumDeleted: 548
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB29_8adapters3map3MapINtNtB3b_6copied6CopiedINtNtNtB2b_5slice4iter4IterNtBL_11LiveBindingEENCNvMs2_NtBP_7builderNtB4O_20SemanticIndexBuilder15visit_stmt_impls9_0EEBP_:bb.a
  %i.u = add nuw i64 %.sroa.010.0.i, 1
  %i.v = call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E8try_growBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0        ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 -1, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge
    i64 0, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit.thread
  ], !prof !729

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.h, align 8, !alias.scope !880, !noalias !883 ; 2 uses
  %.pre39 = call i64 @llvm.umax.i64(i64 %.pre, i64 2)
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.d:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit
  %i.x = extractvalue { i64, i64 } %i.v, 1
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.w, i64 noundef %i.x) #35
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre39, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge ], [ %.sink.i.i, %bb.a ] ; 3 uses
  %i.y = phi i64 [ %.pre, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge ], [ %i.i, %bb.a ]
  %i.z = icmp ugt i64 %i.y, 2                     ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !880, !noalias !883, !nonnull !4
  %.sink9.i = select i1 %i.z, ptr %i.aa, ptr %0
  %.sink8.i = select i1 %i.z, ptr %i.k, ptr %i.h  ; 4 uses
  %i.ab = load i64, ptr %.sink8.i, align 8, !noundef !4 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %.sink.i.pre-phi
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.e

._crit_edge:                                      ; preds = %bb.i, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
  %storemerge.lcssa = phi i64 [ %i.ab, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit ], [ %.sink.i.pre-phi, %bb.i ]
  store i64 %storemerge.lcssa, ptr %.sink8.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ae = load <2 x ptr>, ptr %i.e, align 16
  store <2 x ptr> %i.ae, ptr %i.c, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !885
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.af = load i32, ptr %i.a, align 4, !range !888, !noalias !885, !noundef !4
  %i.ag = trunc nuw i32 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.sroa.01.0.copyload.i1431 = load i32, ptr %i.ah, align 4, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !885
  br i1 %i.ag, label %.lr.ph35, label %._crit_edge36

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %storemerge30 = phi i64 [ %i.ab, %.lr.ph ], [ %i.az, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !889
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.h unwind label %bb.k

.lr.ph35:                                         ; preds = %._crit_edge, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit
  %.sroa.0.0.i1533.in.in = phi i32 [ %.sroa.01.0.copyload.i14, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit ], [ %.sroa.01.0.copyload.i1431, %._crit_edge ]
  %.sroa.0.0.i1533.in = and i32 %.sroa.0.0.i1533.in.in, 2147483647
  %.sroa.0.0.i1533 = add nuw i32 %.sroa.0.0.i1533.in, 1
  %i.ai = load i64, ptr %i.h, align 8, !alias.scope !892, !noalias !897, !noundef !4 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 2                   ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !892, !noalias !897, !nonnull !4
  %.sink9.i.i = select i1 %i.aj, ptr %i.ak, ptr %0
  %.sink8.i.i = select i1 %i.aj, ptr %i.k, ptr %i.h ; 2 uses
  %.sink.i.i16 = call i64 @llvm.umax.i64(i64 %i.ai, i64 2)
  %i.al = load i64, ptr %.sink8.i.i, align 8, !alias.scope !899, !noundef !4 ; 2 uses
  %i.am = icmp eq i64 %i.al, %.sink.i.i16
  br i1 %i.am, label %bb.f, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit, !prof !13

bb.f:                                             ; preds = %.lr.ph35
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E21reserve_one_uncheckedBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.an = load ptr, ptr %0, align 8, !alias.scope !899, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.k, align 8, !alias.scope !899
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit: ; preds = %.lr.ph35, %bb.f
  %i.ao = phi i64 [ %.pre.i, %bb.f ], [ %i.al, %.lr.ph35 ]
  %.sroa.01.0.i = phi ptr [ %i.k, %bb.f ], [ %.sink8.i.i, %.lr.ph35 ] ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.an, %bb.f ], [ %.sink9.i.i, %.lr.ph35 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i17, i64 %i.ao
  store i32 %.sroa.0.0.i1533, ptr %i.ap, align 4
  %i.aq = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !899, !noundef !4
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %.sroa.01.0.i, align 8, !alias.scope !899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !885
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.as = load i32, ptr %i.a, align 4, !range !888, !noalias !885, !noundef !4
  %i.at = trunc nuw i32 %i.as to i1
  %.sroa.01.0.copyload.i14 = load i32, ptr %i.ah, align 4, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !885
  br i1 %i.at, label %.lr.ph35, label %._crit_edge36

._crit_edge36:                                    ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.b, align 4, !range !888, !noalias !889, !noundef !4
  %i.av = trunc nuw i32 %i.au to i1
  %.sroa.01.0.copyload.i = load i32, ptr %i.ad, align 4, !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !889
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = and i32 %.sroa.01.0.copyload.i, 2147483647
  %i.ax = add nuw i32 %i.aw, 1
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sink9.i, i64 %storemerge30
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = add i64 %storemerge30, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %.sink.i.pre-phi
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

bb.j:                                             ; preds = %bb.h
  store i64 %storemerge30, ptr %.sink8.i, align 8
  br label %bb.g

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge30, ptr %.sink8.i, align 8
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB29_8adapters3map3MapINtNtNtB2b_5slice4iter4IterNtBL_11LiveBindingENvMs3_BL_B3Z_7bindingEEBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 12                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !900, !noalias !905, !noundef !4 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2) ; 2 uses
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !907
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit.thread, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit.thread, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit, !prof !13

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E8try_growBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge
    i64 0, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit.thread
  ], !prof !729

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !908, !noalias !911 ; 2 uses
  %.pre53 = tail call i64 @llvm.umax.i64(i64 %.pre, i64 2)
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.d:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit
  %i.u = extractvalue { i64, i64 } %i.s, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.t, i64 noundef %i.u) #35
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre53, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge ], [ %.sink.i.i, %bb.a ] ; 5 uses
  %i.v = phi i64 [ %.pre, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit_crit_edge ], [ %i.f, %bb.a ]
  %i.w = icmp ugt i64 %i.v, 2                     ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !alias.scope !908, !noalias !911, !nonnull !4
  %.sink9.i = select i1 %i.w, ptr %i.x, ptr %0    ; 4 uses
  %.sink8.i = select i1 %i.w, ptr %i.h, ptr %i.e  ; 3 uses
  %i.y = load i64, ptr %.sink8.i, align 8, !noundef !4 ; 11 uses
  %i.z = icmp ult i64 %i.y, %.sink.i.pre-phi
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
  %i.aa = mul i64 %i.a, 3074457345618258603
  %i.ab = mul i64 %i.b, -3074457345618258603
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = xor i64 %i.y, -1
  %i.af = add i64 %.sink.i.pre-phi, %i.ae
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.af) ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 32
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.scevcheck

.lr.ph.preheader68:                               ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %storemerge48.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %vector.scevcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ay, %vector.body ]
  %.sroa.0.047.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.ba, %vector.body ]
  br label %.lr.ph

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.ai = sub i64 %i.a, %i.b
  %i.aj = and i64 %i.ai, 3
  %ident.check.not = icmp eq i64 %i.aj, 0
  br i1 %ident.check.not, label %vector.memcheck, label %.lr.ph.preheader68

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ak = shl i64 %i.y, 2
  %scevgep = getelementptr i8, ptr %.sink9.i, i64 %i.ak
  %i.al = mul i64 %i.a, 3074457345618258603
  %.neg = mul i64 %i.b, -3074457345618258603
  %i.am = add i64 %.neg, %i.al
  %i.an = lshr i64 %i.am, 2
  %i.ao = xor i64 %i.y, -1
  %i.ap = add i64 %.sink.i.pre-phi, %i.ao
  %umin = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ap) ; 2 uses
  %i.aq = add i64 %i.y, %umin
  %i.ar = shl i64 %i.aq, 2
  %i.as = getelementptr i8, ptr %.sink9.i, i64 %i.ar
  %scevgep62 = getelementptr i8, ptr %i.as, i64 4
  %i.at = mul i64 %umin, 12
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %scevgep63 = getelementptr i8, ptr %i.au, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep63
  %bound1 = icmp ult ptr %1, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.av = and i64 %i.ah, 3                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 4, i64 %i.av
  %n.vec = sub nsw i64 %i.ah, %i.ax               ; 3 uses
  %i.ay = add i64 %i.y, %n.vec
  %i.az = mul i64 %n.vec, 12
  %i.ba = getelementptr i8, ptr %1, i64 %i.az
  %i.bb = getelementptr [4 x i8], ptr %.sink9.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bc
  %i.bd = getelementptr i8, ptr %1, i64 %i.bc
  %next.gep64 = getelementptr i8, ptr %i.bd, i64 12
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  %next.gep65 = getelementptr i8, ptr %i.be, i64 24
  %i.bf = getelementptr i8, ptr %1, i64 %i.bc
  %next.gep66 = getelementptr i8, ptr %i.bf, i64 36
  %i.bg = load i32, ptr %next.gep, align 4, !alias.scope !913, !noalias !918, !noundef !4
  %i.bh = load i32, ptr %next.gep64, align 4, !alias.scope !913, !noalias !918, !noundef !4
  %i.bi = load i32, ptr %next.gep65, align 4, !alias.scope !913, !noalias !918, !noundef !4
  %i.bj = load i32, ptr %next.gep66, align 4, !alias.scope !913, !noalias !918, !noundef !4
  %i.bk = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 1
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 2
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.bj, i64 3
  %i.bo = and <4 x i32> %i.bn, splat (i32 2147483647)
  %i.bp = add nuw <4 x i32> %i.bo, splat (i32 1)
  %i.bq = getelementptr [4 x i8], ptr %i.bb, i64 %index
  store <4 x i32> %i.bp, ptr %i.bq, align 4, !alias.scope !921, !noalias !923
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %.lr.ph.preheader68, label %vector.body, !llvm.loop !924

._crit_edge:                                      ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit
  %.sroa.0.0.lcssa = phi ptr [ %1, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit ], [ %i.ci, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit ] ; 2 uses
  %storemerge.lcssa = phi i64 [ %i.y, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit ], [ %.sink.i.pre-phi, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit ]
  store i64 %storemerge.lcssa, ptr %.sink8.i, align 8
  %i.bs = icmp eq ptr %.sroa.0.0.lcssa, %2
  br i1 %i.bs, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit
  %storemerge48 = phi i64 [ %i.cm, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit ], [ %storemerge48.ph, %.lr.ph.preheader68 ] ; 3 uses
  %.sroa.0.047 = phi ptr [ %i.ci, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit ], [ %.sroa.0.047.ph, %.lr.ph.preheader68 ] ; 3 uses
  %i.bt = icmp eq ptr %.sroa.0.047, %2
  br i1 %i.bt, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19: ; preds = %._crit_edge, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit
  %.sroa.032.050 = phi ptr [ %i.bu, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.050, i64 12 ; 2 uses
  %.val.i17 = load i32, ptr %.sroa.032.050, align 4, !alias.scope !925, !noalias !928, !noundef !4
  %i.bv = and i32 %.val.i17, 2147483647
  %i.bw = add nuw i32 %i.bv, 1
  %i.bx = load i64, ptr %i.e, align 8, !alias.scope !931, !noalias !936, !noundef !4 ; 2 uses
  %i.by = icmp ugt i64 %i.bx, 2                   ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !alias.scope !931, !noalias !936, !nonnull !4
  %.sink9.i.i = select i1 %i.by, ptr %i.bz, ptr %0
  %.sink8.i.i = select i1 %i.by, ptr %i.h, ptr %i.e ; 2 uses
  %.sink.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 2)
  %i.ca = load i64, ptr %.sink8.i.i, align 8, !alias.scope !938, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %.sink.i.i20
  br i1 %i.cb, label %bb.e, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit, !prof !13

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19
  tail call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E21reserve_one_uncheckedBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.cc = load ptr, ptr %0, align 8, !alias.scope !938, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !938
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19, %bb.e
  %i.cd = phi i64 [ %.pre.i, %bb.e ], [ %i.ca, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19 ]
  %.sroa.01.0.i = phi ptr [ %i.h, %bb.e ], [ %.sink8.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19 ] ; 2 uses
  %.sroa.0.0.i21 = phi ptr [ %i.cc, %bb.e ], [ %.sink9.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i21, i64 %i.cd
  store i32 %i.bw, ptr %i.ce, align 4
  %i.cf = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !938, !noundef !4
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %.sroa.01.0.i, align 8, !alias.scope !938
  %i.ch = icmp eq ptr %i.bu, %2
  br i1 %i.ch, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19.thread: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_E4pushBO_.exit, %._crit_edge, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.thread
  ret void

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit: ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 12 ; 2 uses
  %.val.i15 = load i32, ptr %.sroa.0.047, align 4, !alias.scope !939, !noalias !918, !noundef !4
  %i.cj = and i32 %.val.i15, 2147483647
  %i.ck = add nuw i32 %i.cj, 1
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sink9.i, i64 %storemerge48
  store i32 %i.ck, ptr %i.cl, align 4
  %i.cm = add i64 %storemerge48, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %.sink.i.pre-phi
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !940

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit.thread: ; preds = %.lr.ph
  store i64 %storemerge48, ptr %.sink8.i, align 8
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1o_B1m_7bindingENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit19.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB29_8adapters7flatten7FlatMapINtNtB2b_6option8IntoIterNtNtBP_6symbol14ScopedSymbolIdEINtNtB3b_3map3MapINtNtNtB2b_5slice4iter4IterNtBL_11LiveBindingENvMs3_BL_B5i_7bindingENCNvMs2_NtBP_7builderNtB65_20SemanticIndexBuilder24register_pending_capture0EEBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload45 = load ptr, ptr %1, align 8, !alias.scope !941 ; 5 uses
  %.sroa.11.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.11.0.copyload47 = load ptr, ptr %.sroa.11.0..sroa_idx46, align 8, !alias.scope !941 ; 6 uses
  %.sroa.14.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.14.0.copyload49 = load ptr, ptr %.sroa.14.0..sroa_idx48, align 8, !alias.scope !941 ; 5 uses
  %.sroa.18.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.18.0.copyload52 = load ptr, ptr %.sroa.18.0..sroa_idx51, align 8, !alias.scope !941 ; 10 uses
  %.sroa.20.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.20.0.copyload54 = load ptr, ptr %.sroa.20.0..sroa_idx53, align 8, !alias.scope !941
  %.fr.i.i16 = freeze ptr %.sroa.20.0.copyload54  ; 6 uses
  %.sroa.22.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.22.0.copyload57 = load ptr, ptr %.sroa.22.0..sroa_idx56, align 8, !alias.scope !941 ; 2 uses
  %.sroa.23.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.23.0.copyload59 = load i32, ptr %.sroa.23.0..sroa_idx58, align 8, !alias.scope !941 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload45, null
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload47) ]
  %i.a = ptrtoint ptr %.sroa.11.0.copyload47 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload45 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 12
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.7.0.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.not55.i.i = icmp eq ptr %.sroa.14.0.copyload49, null
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit65.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0.copyload52) ]
  %i.e = ptrtoint ptr %.sroa.18.0.copyload52 to i64
  %i.f = ptrtoint ptr %.sroa.14.0.copyload49 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 12
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit65.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit65.i.i: ; preds = %bb.c, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit.i.i ]
  %i.i = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !945, !noalias !950, !noundef !4 ; 4 uses
  %i.l = icmp ugt i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 2 uses
  %.val.i = load i64, ptr %i.m, align 8, !alias.scope !952
  %i.n = select i1 %i.l, i64 %.val.i, i64 %i.k    ; 3 uses
  %i.o = sub i64 %.sink.i.i13, %i.n
  %.not.i = icmp ult i64 %i.o, %i.i
  br i1 %.not.i, label %bb.d, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs2O29vuvTAEJ_14ty_python_core.exit

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingENvMs3_B1J_B1H_7bindingEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1N_.exit65.i.i
end_hunk_0
