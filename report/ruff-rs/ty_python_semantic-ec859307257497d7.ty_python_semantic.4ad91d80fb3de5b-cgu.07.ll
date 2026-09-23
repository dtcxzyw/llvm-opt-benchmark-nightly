Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB20_8adapters3map3MapINtNtNtB22_5slice4iter4IterBJ_ENCINvMs4_BL_NtBL_13CallableTypes3mapNCNvMBL_NtBN_4Type46try_upcast_to_callable_with_policy_and_contexts0_0E0EEBP_:bb.a
  %i.au = call fastcc { i32, i32 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMB1o_NtB1q_4Type46try_upcast_to_callable_with_policy_and_contexts0_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_(ptr noalias noundef align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.av = extractvalue { i32, i32 } %i.au, 0      ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %._crit_edge38, label %.lr.ph37

._crit_edge38:                                    ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %._crit_edge38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %.lr.ph
  %i.aw = extractvalue { i32, i32 } %i.af, 0      ; 2 uses
  %.not9 = icmp eq i32 %i.aw, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = extractvalue { i32, i32 } %i.af, 1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sink9.i, i64 %storemerge34 ; 2 uses
  store i32 %i.aw, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ax, ptr %i.az, align 4
  %i.ba = add nuw i64 %storemerge34, 1            ; 3 uses
  %i.bb = icmp ugt i64 %i.y, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

bb.i:                                             ; preds = %bb.g
  store i64 %storemerge34, ptr %.sink8.i, align 8
  br label %bb.f

bb.j:                                             ; preds = %.lr.ph
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge34, ptr %.sink8.i, align 8
  resume { ptr, i32 } %i.bc
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB20_8adapters3map3MapINtNtNtB22_5slice4iter4IterBJ_ENCINvMs4_BL_NtBL_13CallableTypes3mapNCNvMs_NtNtBN_5infer7builderNtB4B_20TypeInferenceBuilder37specialize_generic_class_from_contexts0_0E0EEBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !11277
  %.val16 = load ptr, ptr %i.b, align 8, !nonnull !15, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val17 = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15
  %i.d = ptrtoint ptr %.val17 to i64
  %i.e = ptrtoint ptr %.val16 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !11278, !noalias !11279, !noundef !15 ; 4 uses
  %i.j = icmp ugt i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 2 uses
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !11280
  %i.l = select i1 %i.j, i64 %.val.i, i64 %i.i    ; 3 uses
  %i.m = sub i64 %.sink.i.i, %i.l
  %.not.i = icmp ult i64 %i.m, %i.g
  br i1 %.not.i, label %bb.b, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.l, %i.g                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ult i64 %i.n, 2
  %i.q = add i64 %i.n, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = lshr i64 -1, %i.r
  %.sroa.010.0.i = select i1 %i.p, i64 0, i64 %i.s ; 2 uses
  %i.t = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.t, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit, !prof !16

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.u = add nuw i64 %.sroa.010.0.i, 1
  %i.v = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E8try_growBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0        ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 -1, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge
    i64 0, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread
  ], !prof !56

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.h, align 8, !alias.scope !11281, !noalias !11282 ; 2 uses
  %.pre41 = tail call i64 @llvm.umax.i64(i64 %.pre, i64 1)
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  %i.x = extractvalue { i64, i64 } %i.v, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.w, i64 noundef %i.x) #40
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre41, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge ], [ %.sink.i.i, %bb.a ]
  %i.y = phi i64 [ %.pre, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge ], [ %i.i, %bb.a ] ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1                     ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !11281, !noalias !11282, !nonnull !15
  %.sink9.i = select i1 %i.z, ptr %i.aa, ptr %0
  %.sink8.i = select i1 %i.z, ptr %i.k, ptr %i.h  ; 4 uses
  %i.ab = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %.sink.i.pre-phi
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
  %storemerge.lcssa = phi i64 [ %i.ab, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.ba, %bb.h ]
  store i64 %storemerge.lcssa, ptr %.sink8.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ad = call fastcc { i32, i32 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMs_NtNtB1q_5infer7builderNtB3c_20TypeInferenceBuilder37specialize_generic_class_from_contexts0_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_(ptr noalias noundef align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0      ; 2 uses
  %.not35 = icmp eq i32 %i.ae, 0
  br i1 %.not35, label %._crit_edge38, label %.lr.ph37

.lr.ph:                                           ; preds = %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.h
  %storemerge34 = phi i64 [ %i.ba, %bb.h ], [ %i.ab, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.af = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMs_NtNtB1q_5infer7builderNtB3c_20TypeInferenceBuilder37specialize_generic_class_from_contexts0_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_(ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.j       ; 2 uses

.lr.ph37:                                         ; preds = %._crit_edge, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit
  %i.ag = phi i32 [ %i.av, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit ], [ %i.ae, %._crit_edge ]
  %i.ah = phi { i32, i32 } [ %i.au, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit ], [ %i.ad, %._crit_edge ]
  %i.ai = extractvalue { i32, i32 } %i.ah, 1
  %i.aj = load i64, ptr %i.h, align 8, !alias.scope !11283, !noalias !11284, !noundef !15 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !11283, !noalias !11284, !nonnull !15
  %.sink9.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink8.i.i = select i1 %i.ak, ptr %i.k, ptr %i.h ; 2 uses
  %.sink.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.am = load i64, ptr %.sink8.i.i, align 8, !alias.scope !11285, !noundef !15 ; 2 uses
  %i.an = icmp eq i64 %i.am, %.sink.i.i18
  br i1 %i.an, label %bb.e, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit, !prof !16

bb.e:                                             ; preds = %.lr.ph37
  tail call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E21reserve_one_uncheckedBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !11285, !nonnull !15, !noundef !15
  %.pre.i = load i64, ptr %i.k, align 8, !alias.scope !11285
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit: ; preds = %.lr.ph37, %bb.e
  %i.ap = phi i64 [ %.pre.i, %bb.e ], [ %i.am, %.lr.ph37 ]
  %.sroa.01.0.i = phi ptr [ %i.k, %bb.e ], [ %.sink8.i.i, %.lr.ph37 ] ; 2 uses
  %.sroa.0.0.i19 = phi ptr [ %i.ao, %bb.e ], [ %.sink9.i.i, %.lr.ph37 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i19, i64 %i.ap ; 2 uses
  store i32 %i.ag, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.ai, ptr %i.ar, align 4
  %i.as = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !11285, !noundef !15
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %.sroa.01.0.i, align 8, !alias.scope !11285
  %i.au = call fastcc { i32, i32 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMs_NtNtB1q_5infer7builderNtB3c_20TypeInferenceBuilder37specialize_generic_class_from_contexts0_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_(ptr noalias noundef align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.av = extractvalue { i32, i32 } %i.au, 0      ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %._crit_edge38, label %.lr.ph37

._crit_edge38:                                    ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %._crit_edge38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %.lr.ph
  %i.aw = extractvalue { i32, i32 } %i.af, 0      ; 2 uses
  %.not9 = icmp eq i32 %i.aw, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = extractvalue { i32, i32 } %i.af, 1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sink9.i, i64 %storemerge34 ; 2 uses
  store i32 %i.aw, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ax, ptr %i.az, align 4
  %i.ba = add nuw i64 %storemerge34, 1            ; 3 uses
  %i.bb = icmp ugt i64 %i.y, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

bb.i:                                             ; preds = %bb.g
  store i64 %storemerge34, ptr %.sink8.i, align 8
  br label %bb.f

bb.j:                                             ; preds = %.lr.ph
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge34, ptr %.sink8.i, align 8
  resume { ptr, i32 } %i.bc
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB20_8adapters3map3MapINtNtNtB22_5slice4iter4IterBJ_ENCINvMs4_BL_NtBL_13CallableTypes3mapNCNvMsp_NtNtBN_5class14static_literalNtB4C_18StaticClassLiteral22own_synthesized_members1_0E0EEBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload34 = load ptr, ptr %1, align 8, !alias.scope !11310, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload36 = load ptr, ptr %.sroa.8.0..sroa_idx35, align 8, !alias.scope !11310, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.10.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload38 = load ptr, ptr %.sroa.10.0..sroa_idx37, align 8, !alias.scope !11310 ; 9 uses
  %i.e = ptrtoint ptr %.sroa.8.0.copyload36 to i64
  %i.f = ptrtoint ptr %.sroa.0.0.copyload34 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11311, !noalias !11312, !noundef !15 ; 4 uses
  %i.k = icmp ugt i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1) ; 2 uses
  %.val.i = load i64, ptr %i.l, align 8, !alias.scope !11313
  %i.m = select i1 %i.k, i64 %.val.i, i64 %i.j    ; 3 uses
  %i.n = sub i64 %.sink.i.i, %i.m
  %.not.i = icmp ult i64 %i.n, %i.h
  br i1 %.not.i, label %bb.b, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.m, %i.h                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.o, 2
  %i.r = add i64 %i.o, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = lshr i64 -1, %i.s
  %.sroa.010.0.i = select i1 %i.q, i64 0, i64 %i.t ; 2 uses
  %i.u = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.u, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit, !prof !16

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.v = add nuw i64 %.sroa.010.0.i, 1
  %i.w = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E8try_growBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v) ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 -1, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge
    i64 0, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread
  ], !prof !56

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !11314, !noalias !11315 ; 2 uses
  %.pre76 = tail call i64 @llvm.umax.i64(i64 %.pre, i64 1)
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  %i.y = extractvalue { i64, i64 } %i.w, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.x, i64 noundef %i.y) #40
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre76, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge ], [ %.sink.i.i, %bb.a ]
  %i.z = phi i64 [ %.pre, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge ], [ %i.j, %bb.a ] ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 1                    ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !11314, !noalias !11315, !nonnull !15
  %.sink9.i = select i1 %i.aa, ptr %i.ab, ptr %0
  %.sink8.i = select i1 %i.aa, ptr %i.l, ptr %i.i ; 4 uses
  %i.ac = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.sink.i.pre-phi
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload38, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload38, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %bb.j, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.0.copyload34, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.ao, %bb.j ] ; 2 uses
  %storemerge.lcssa = phi i64 [ %i.ac, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.bz, %bb.j ]
  store i64 %storemerge.lcssa, ptr %.sink8.i, align 8
  %i.ai = icmp eq ptr %.sroa.0.0.lcssa, %.sroa.8.0.copyload36
  br i1 %i.ai, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.lr.ph

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.lr.ph: ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload38) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload38, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload38, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %storemerge69 = phi i64 [ %i.ac, %.lr.ph ], [ %i.bz, %bb.j ] ; 4 uses
  %.sroa.0.068 = phi ptr [ %.sroa.0.0.copyload34, %.lr.ph ], [ %i.ao, %bb.j ] ; 4 uses
  %i.an = icmp eq ptr %.sroa.0.068, %.sroa.8.0.copyload36
  br i1 %i.an, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.068, i64 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload38) ]
  %.val3.i = load i32, ptr %.sroa.0.068, align 4, !range !31, !noalias !11316, !noundef !15
  %i.ap = getelementptr i8, ptr %.sroa.0.068, i64 4
  %.val4.i = load i32, ptr %i.ap, align 4, !noalias !11316, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !11317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11318
  %i.aq = load ptr, ptr %.sroa.10.0.copyload38, align 8, !alias.scope !11317, !noalias !11316, !nonnull !15, !noundef !15 ; 3 uses
  %i.ar = load ptr, ptr %i.ae, align 8, !alias.scope !11317, !noalias !11316, !nonnull !15, !align !18, !noundef !15 ; 3 uses
  %i.as = invoke noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType10signaturesDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.val3.i, i32 noundef %.val4.i, ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ar)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  %i.at = invoke { ptr, ptr } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB4_17CallableSignature4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.as)
          to label %.noexc20 unwind label %bb.k   ; 2 uses

.noexc20:                                         ; preds = %.noexc
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %i.av = extractvalue { ptr, ptr } %i.at, 1
  store ptr %i.au, ptr %i.c, align 8, !noalias !11318
  store ptr %i.av, ptr %i.ag, align 8, !noalias !11318
  store ptr %i.aq, ptr %i.ah, align 8, !noalias !11318
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !11318
  %i.aw = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !11317, !noalias !11316
  store <2 x ptr> %i.aw, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !11318
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_17CallableSignature14from_overloadsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtB5_9SignatureENCNCNvMsp_NtNtB7_5class14static_literalNtB3h_18StaticClassLiteral22own_synthesized_members1_00EEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %.noexc21 unwind label %bb.k

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11318
  %i.ax = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.d, i8 noundef 1, i8 noundef 0)
          to label %bb.i unwind label %bb.k       ; 2 uses

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.lr.ph, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit
  %.sroa.048.071 = phi ptr [ %.sroa.0.0.lcssa, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.lr.ph ], [ %i.ay, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.048.071, i64 8 ; 2 uses
  %.val3.i24 = load i32, ptr %.sroa.048.071, align 4, !range !31, !noalias !11319, !noundef !15
  %i.az = getelementptr i8, ptr %.sroa.048.071, i64 4
  %.val4.i25 = load i32, ptr %i.az, align 4, !noalias !11319, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !11320)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11321
  %2 = load <2 x ptr>, ptr %.sroa.10.0.copyload38, align 8, !alias.scope !11320, !noalias !11319
  %i.ba = load ptr, ptr %i.aj, align 8, !alias.scope !11320, !noalias !11319, !nonnull !15, !align !18, !noundef !15 ; 2 uses
  %i.bb = load ptr, ptr %.sroa.10.0.copyload38, align 8, !alias.scope !11320, !noalias !11319, !nonnull !15, !noundef !15 ; 2 uses
  %i.bc = call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType10signaturesDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.val3.i24, i32 noundef %.val4.i25, ptr noundef nonnull %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ba), !noalias !11321
  %i.bd = call { ptr, ptr } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB4_17CallableSignature4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bc), !noalias !11321 ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bd, 0
  %i.bf = extractvalue { ptr, ptr } %i.bd, 1
  %3 = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !11320, !noalias !11319
  store ptr %i.be, ptr %i.a, align 8, !noalias !11321
  store ptr %i.bf, ptr %i.al, align 8, !noalias !11321
  %4 = shufflevector <2 x ptr> %2, <2 x ptr> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %4, ptr %i.am, align 8, !noalias !11321
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_17CallableSignature14from_overloadsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtB5_9SignatureENCNCNvMsp_NtNtB7_5class14static_literalNtB3h_18StaticClassLiteral22own_synthesized_members1_00EEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !11321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11321
  %i.bg = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, i8 noundef 1, i8 noundef 0), !noalias !11321 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11321
  %i.bh = extractvalue { i32, i32 } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { i32, i32 } %i.bg, 1
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31
  %i.bj = load i64, ptr %i.i, align 8, !alias.scope !11322, !noalias !11323, !noundef !15 ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 1                   ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !alias.scope !11322, !noalias !11323, !nonnull !15
  %.sink9.i.i = select i1 %i.bk, ptr %i.bl, ptr %0
  %.sink8.i.i = select i1 %i.bk, ptr %i.l, ptr %i.i ; 2 uses
  %.sink.i.i32 = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bm = load i64, ptr %.sink8.i.i, align 8, !alias.scope !11324, !noundef !15 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %.sink.i.i32
  br i1 %i.bn, label %bb.h, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit, !prof !16

bb.h:                                             ; preds = %bb.g
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E21reserve_one_uncheckedBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bo = load ptr, ptr %0, align 8, !alias.scope !11324, !nonnull !15, !noundef !15
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !11324
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit: ; preds = %bb.g, %bb.h
  %i.bp = phi i64 [ %.pre.i, %bb.h ], [ %i.bm, %bb.g ]
  %.sroa.01.0.i = phi ptr [ %i.l, %bb.h ], [ %.sink8.i.i, %bb.g ] ; 2 uses
  %.sroa.0.0.i33 = phi ptr [ %i.bo, %bb.h ], [ %.sink9.i.i, %bb.g ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i33, i64 %i.bp ; 2 uses
  store i32 %i.bh, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bi, ptr %i.br, align 4
  %i.bs = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !11324, !noundef !15
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %.sroa.01.0.i, align 8, !alias.scope !11324
  %i.bu = icmp eq ptr %i.ay, %.sroa.8.0.copyload36
  br i1 %i.bu, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.thread: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit, %._crit_edge, %.thread
  ret void

bb.i:                                             ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11318
  %i.bv = extractvalue { i32, i32 } %i.ax, 0      ; 2 uses
  %.not9 = icmp eq i32 %i.bv, 0
  br i1 %.not9, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = extractvalue { i32, i32 } %i.ax, 1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sink9.i, i64 %storemerge69 ; 2 uses
  store i32 %i.bv, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bw, ptr %i.by, align 4
  %i.bz = add nuw i64 %storemerge69, 1            ; 3 uses
  %i.ca = icmp ugt i64 %i.z, %i.bz
  br i1 %i.ca, label %bb.e, label %._crit_edge

.thread:                                          ; preds = %bb.e, %bb.i
  store i64 %storemerge69, ptr %.sink8.i, align 8
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNvMsp_NtNtB1q_5class14static_literalNtB3d_18StaticClassLiteral22own_synthesized_members1_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit31.thread

bb.k:                                             ; preds = %bb.f, %.noexc, %.noexc20, %.noexc21
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge69, ptr %.sink8.i, align 8
  resume { ptr, i32 } %i.cb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB20_8adapters6cloned6ClonedINtNtNtB22_5slice4iter4IterBJ_EEEBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !11338, !noalias !11339, !noundef !15 ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.g, i64 1) ; 2 uses
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !11340
  %i.j = select i1 %i.h, i64 %.val.i, i64 %i.g    ; 3 uses
  %i.k = sub i64 %.sink.i.i, %i.j
  %.not.i = icmp ult i64 %i.k, %i.e
  br i1 %.not.i, label %bb.b, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.j, %i.e                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.l, 2
  %i.o = add i64 %i.l, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = lshr i64 -1, %i.p
  %.sroa.010.0.i = select i1 %i.n, i64 0, i64 %i.q ; 2 uses
  %i.r = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.r, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit, !prof !16

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.s = add nuw i64 %.sroa.010.0.i, 1
  %i.t = call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E8try_growBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 -1, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge
    i64 0, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread
  ], !prof !56

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !11341, !noalias !11342 ; 2 uses
  %.pre37 = call i64 @llvm.umax.i64(i64 %.pre, i64 1)
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  %i.v = extractvalue { i64, i64 } %i.t, 1
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.u, i64 noundef %i.v) #40
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre37, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge ], [ %.sink.i.i, %bb.a ]
  %i.w = phi i64 [ %.pre, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E11try_reserveBO_.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge ], [ %i.g, %bb.a ] ; 2 uses
  %i.x = icmp ugt i64 %i.w, 1                     ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !alias.scope !11341, !noalias !11342, !nonnull !15
  %.sink9.i = select i1 %i.x, ptr %i.y, ptr %0
  %.sink8.i = select i1 %i.x, ptr %i.i, ptr %i.f  ; 4 uses
  %i.z = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sink.i.pre-phi
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
  %storemerge.lcssa = phi i64 [ %i.z, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.az, %bb.h ]
  store i64 %storemerge.lcssa, ptr %.sink8.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.ab, ptr %i.a, align 16
  %i.ac = call { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ad = extractvalue { i32, i32 } %i.ac, 0      ; 2 uses
  %.not31 = icmp eq i32 %i.ad, 0
  br i1 %.not31, label %._crit_edge34, label %.lr.ph33

.lr.ph:                                           ; preds = %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.h
  %storemerge30 = phi i64 [ %i.az, %bb.h ], [ %i.z, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ae = invoke { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.g unwind label %bb.j       ; 2 uses

.lr.ph33:                                         ; preds = %._crit_edge, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit
  %i.af = phi i32 [ %i.au, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit ], [ %i.ad, %._crit_edge ]
  %i.ag = phi { i32, i32 } [ %i.at, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit ], [ %i.ac, %._crit_edge ]
  %i.ah = extractvalue { i32, i32 } %i.ag, 1
  %i.ai = load i64, ptr %i.f, align 8, !alias.scope !11343, !noalias !11344, !noundef !15 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 1                   ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !11343, !noalias !11344, !nonnull !15
  %.sink9.i.i = select i1 %i.aj, ptr %i.ak, ptr %0
  %.sink8.i.i = select i1 %i.aj, ptr %i.i, ptr %i.f ; 2 uses
  %.sink.i.i16 = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.al = load i64, ptr %.sink8.i.i, align 8, !alias.scope !11345, !noundef !15 ; 2 uses
  %i.am = icmp eq i64 %i.al, %.sink.i.i16
  br i1 %i.am, label %bb.e, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit, !prof !16

bb.e:                                             ; preds = %.lr.ph33
  call void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E21reserve_one_uncheckedBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.an = load ptr, ptr %0, align 8, !alias.scope !11345, !nonnull !15, !noundef !15
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !11345
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit: ; preds = %.lr.ph33, %bb.e
  %i.ao = phi i64 [ %.pre.i, %bb.e ], [ %i.al, %.lr.ph33 ]
  %.sroa.01.0.i = phi ptr [ %i.i, %bb.e ], [ %.sink8.i.i, %.lr.ph33 ] ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.an, %bb.e ], [ %.sink9.i.i, %.lr.ph33 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i17, i64 %i.ao ; 2 uses
  store i32 %i.af, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.ah, ptr %i.aq, align 4
  %i.ar = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !11345, !noundef !15
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %.sroa.01.0.i, align 8, !alias.scope !11345
  %i.at = call { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.au = extractvalue { i32, i32 } %i.at, 0      ; 2 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %._crit_edge34, label %.lr.ph33

._crit_edge34:                                    ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E4pushBO_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %._crit_edge34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

end_hunk_0
