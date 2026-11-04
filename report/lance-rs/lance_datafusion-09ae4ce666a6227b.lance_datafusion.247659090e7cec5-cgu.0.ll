Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
  store i8 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.bo:                                            ; preds = %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.bp:                                            ; preds = %bb.as
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !range !325, !noundef !313
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ch, ptr %i.cj, align 1
  store i8 39, ptr %0, align 8
  br label %bb.au

bb.bq:                                            ; preds = %bb.as
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.at
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.at
  tail call void @llvm.trap()
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cl, ptr %i.cp, align 8
  store i8 40, ptr %0, align 8
  br label %bb.au

bb.bu:                                            ; preds = %bb.br
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCsc85D0lJ81Z_16lance_datafusion2pbNtB5_10FieldIdSetNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !100237
  %i.a = tail call noundef dereferenceable_or_null(28) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 28, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !100237 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 28) #72
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.a, ptr noundef nonnull align 1 dereferenceable(28) @1524, i64 28, i1 false)
  store i64 28, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCsc85D0lJ81Z_16lance_datafusion2pbNtB5_10FieldIdSetNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !100240
  %i.a = tail call noundef dereferenceable_or_null(27) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 27, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !100240 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 27) #72
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @1525, i64 27, i1 false)
  store i64 27, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB5_10SpillStateNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !325, !noalias !100251, !noundef !313
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i, !prof !319

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !100252
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !100252
  br label %bb.c

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !100253
  store i8 1, ptr %i.e, align 8, !noalias !100253
  br label %bb.c

bb.b:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i
  %.pre-phi11 = phi i64 [ %i.j, %.noexc ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.i, %.noexc ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i ] ; 2 uses
  %i.m = add i64 %.pre-phi, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !100252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @26, i64 32, i1 false)
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.pre-phi, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.pre-phi11, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !466, !noundef !313 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !466, !noundef !313 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775804
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 4
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %bb.r
    i64 6, label %bb.v
  ]

_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %bb.u, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i17, %bb.e ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.p ], [ %i.cz, %bb.w ], [ %i.ao, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ %i.au, %bb.k ], [ false, %bb.m ], [ %i.bw, %bb.q ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.v ], [ true, %bb.u ], [ %i.cs, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x i8>, ptr %i.l, align 8
  %i.o = load <2 x i8>, ptr %i.m, align 8
  %i.p = icmp eq <2 x i8> %i.n, %i.o              ; 2 uses
  %2 = extractelement <2 x i1> %i.p, i64 0
  %3 = extractelement <2 x i1> %i.p, i64 1
  %.sroa.0.0.i = select i1 %2, i1 %3, i1 false
  br label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load <2 x i8>, ptr %i.q, align 8
  %i.t = load <2 x i8>, ptr %i.r, align 8
  %i.u = icmp eq <2 x i8> %i.s, %i.t              ; 2 uses
  %4 = extractelement <2 x i1> %i.u, i64 0
  %5 = extractelement <2 x i1> %i.u, i64 1
  %.sroa.0.0.i17 = select i1 %5, i1 %4, i1 false
  br label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100267)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !100266, !noundef !313 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !100267, !noundef !313
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !100267, !nonnull !313, !noundef !313
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !100266, !nonnull !313, !noundef !313
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull %i.ab, i64 %i.w), !noalias !100268
  %i.ae = icmp eq i32 %bcmp.i, 0
  br i1 %i.ae, label %bb.h, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !100266, !noundef !313 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !100267, !noundef !313
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !100267, !nonnull !313, !noundef !313
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !100266, !nonnull !313, !noundef !313
  %bcmp4.i = tail call i32 @bcmp(ptr nonnull %i.an, ptr nonnull %i.al, i64 %i.ag), !noalias !100268
  %i.ao = icmp eq i32 %bcmp4.i, 0
  br label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.ap, align 8, !noundef !313 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load i64, ptr %i.aq, align 8, !noundef !313
  %i.ar = icmp eq i64 %.val10, %.val12
  br i1 %i.ar, label %bb.k, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load ptr, ptr %i.as, align 8, !nonnull !313, !noundef !313
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load ptr, ptr %i.at, align 8, !nonnull !313, !noundef !313
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val9, ptr nonnull readonly %.val11, i64 %.val10)
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100270)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !100269, !noundef !313 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !100270, !noundef !313
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.m, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !100270, !nonnull !313, !noundef !313
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !100269, !nonnull !313, !noundef !313
  %bcmp.i20 = tail call i32 @bcmp(ptr nonnull %i.bd, ptr nonnull %i.bb, i64 %i.aw), !noalias !100271, !inline_history !100260
  %i.be = icmp eq i32 %bcmp.i20, 0
  br i1 %i.be, label %bb.n, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !100269, !noundef !313 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !100270, !noundef !313
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !100270, !nonnull !313, !noundef !313
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !100269, !nonnull !313, !noundef !313
  %i.bo = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.bn, ptr noundef %i.bl, i64 noundef %i.bg), !noalias !100271, !inline_history !100260
  br i1 %i.bo, label %bb.p, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !100269, !nonnull !313, !noundef !313 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !100270, !nonnull !313, !noundef !313 ; 2 uses
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = tail call fastcc noundef zeroext i1 @_RNvXsM_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bu, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bv), !noalias !100271, !inline_history !100260
  br label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100273)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !100272, !noundef !313 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !100273, !noundef !313
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.s, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !100273, !nonnull !313, !noundef !313
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !100272, !nonnull !313, !noundef !313
  %bcmp.i22 = tail call i32 @bcmp(ptr nonnull %i.cf, ptr nonnull %i.cd, i64 %i.by), !noalias !100274, !inline_history !100264
  %i.cg = icmp eq i32 %bcmp.i22, 0
  br i1 %i.cg, label %bb.t, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !100272, !noundef !313 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !100273, !noundef !313
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %bb.u, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !100273, !nonnull !313, !noundef !313
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !100272, !nonnull !313, !noundef !313
  %.not25.not = icmp eq i64 %i.ci, 0
  br i1 %.not25.not, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %.lr.ph
  %.sroa.01.0.i26 = phi i64 [ %i.ct, %.lr.ph ], [ 0, %bb.u ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [112 x i8], ptr %i.cp, i64 %.sroa.01.0.i26
  %i.cr = getelementptr inbounds nuw [112 x i8], ptr %i.cn, i64 %.sroa.01.0.i26
  %i.cs = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cq, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cr), !noalias !100274, !inline_history !100265 ; 2 uses
  %i.ct = add nuw i64 %.sroa.01.0.i26, 1          ; 2 uses
  %exitcond.not = icmp ne i64 %i.ct, %i.ci
  %or.cond.not = select i1 %i.cs, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14 = load i64, ptr %i.cu, align 8, !noundef !313 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.cv, align 8, !noundef !313
  %i.cw = icmp eq i64 %.val14, %.val16
  br i1 %i.cw, label %bb.w, label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15 = load ptr, ptr %i.cx, align 8, !nonnull !313, !noundef !313
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load ptr, ptr %i.cy, align 8, !nonnull !313, !noundef !313
  %bcmp.i.i.i24 = tail call i32 @bcmp(ptr nonnull readonly %.val13, ptr nonnull readonly %.val15, i64 %.val14)
  %i.cz = icmp eq i32 %bcmp.i.i.i24, 0
  br label %_RNvXsI_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array18logical_null_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !noundef !313
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array3len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !313
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array5nulls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !313
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0) unnamed_addr #7 {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvXsd4_NtCs40MM8ukkVQd_9sqlparser3astNtB6_3SetNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a
  %.not4872.not = icmp eq i64 %i.bq, 0
  br i1 %.not4872.not, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.n, %.lr.ph74
  %.sroa.01.0.i2473 = phi i64 [ %i.cb, %.lr.ph74 ], [ 0, %bb.n ] ; 3 uses
  %i.by = getelementptr inbounds nuw [328 x i8], ptr %i.bx, i64 %.sroa.01.0.i2473
  %i.bz = getelementptr inbounds nuw [328 x i8], ptr %i.bv, i64 %.sroa.01.0.i2473
  %i.ca = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bz), !inline_history !256 ; 2 uses
  %i.cb = add nuw i64 %.sroa.01.0.i2473, 1        ; 2 uses
  %exitcond93.not = icmp ne i64 %i.cb, %i.bq
  %or.cond138.not = select i1 %i.ca, i1 %exitcond93.not, i1 false
  br i1 %or.cond138.not, label %.lr.ph74, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.o:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !313 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !313
  %i.cg = icmp eq i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.p, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !313, !noundef !313
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !313, !noundef !313
  %.not4559.not = icmp eq i64 %i.cd, 0
  br i1 %.not4559.not, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph61

bb.q:                                             ; preds = %_RNvYNtNtCs40MM8ukkVQd_9sqlparser3ast13SetAssignmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit
  %i.cl = add nuw i64 %.sroa.01.0.i2660, 1        ; 2 uses
  %exitcond91.not = icmp eq i64 %i.cl, %i.cd
  br i1 %exitcond91.not, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.p, %bb.q
  %.sroa.01.0.i2660 = phi i64 [ %i.cl, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [360 x i8], ptr %i.ck, i64 %.sroa.01.0.i2660 ; 4 uses
  %i.cn = getelementptr inbounds nuw [360 x i8], ptr %i.ci, i64 %.sroa.01.0.i2660 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112132)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 352
  %i.cp = load i8, ptr %i.co, align 8, !range !546, !alias.scope !112133, !noundef !313 ; 2 uses
  %.not.i.i29 = icmp eq i8 %i.cp, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 352
  %i.cr = load i8, ptr %i.cq, align 8, !range !546, !alias.scope !112134, !noundef !313 ; 2 uses
  br i1 %.not.i.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph61
  %i.cs = icmp eq i8 %i.cp, %i.cr
  br i1 %i.cs, label %bb.t, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.s:                                             ; preds = %.lr.ph61
  %i.ct = icmp eq i8 %i.cr, -1
  br i1 %i.ct, label %bb.t, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.t:                                             ; preds = %bb.r, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112138)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 344
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !112139, !noundef !313 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 344
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !112140, !noundef !313
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.u, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 336
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !112140, !nonnull !313, !noundef !313
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 336
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !112139, !nonnull !313, !noundef !313
  %.not4657.not = icmp eq i64 %i.cv, 0
  br i1 %.not4657.not, label %_RNvYNtNtCs40MM8ukkVQd_9sqlparser3ast13SetAssignmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.dd = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %i.cv
  br i1 %exitcond.not, label %_RNvYNtNtCs40MM8ukkVQd_9sqlparser3ast13SetAssignmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i58 = phi i64 [ %i.dd, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.de = getelementptr inbounds nuw [88 x i8], ptr %i.dc, i64 %.sroa.01.0.i.i58
  %i.df = getelementptr inbounds nuw [88 x i8], ptr %i.da, i64 %.sroa.01.0.i.i58
  %i.dg = tail call fastcc noundef zeroext i1 @_RNvXs51_NtCs40MM8ukkVQd_9sqlparser3astNtB6_14ObjectNamePartNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.df), !noalias !112141, !inline_history !112098
  br i1 %i.dg, label %bb.v, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

_RNvYNtNtCs40MM8ukkVQd_9sqlparser3ast13SetAssignmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.v, %bb.u
  %i.dh = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.cn), !inline_history !112099
  br i1 %i.dh, label %bb.q, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.w:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112143)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dj = load i8, ptr %i.di, align 8, !range !389, !alias.scope !112142, !noundef !313
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = load i8, ptr %i.dk, align 8, !range !389, !alias.scope !112143, !noundef !313
  %i.dm = icmp eq i8 %i.dj, %i.dl
  br i1 %i.dm, label %bb.x, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112145)
  %i.dp = load i64, ptr %i.do, align 8, !range !332, !alias.scope !112146, !noundef !313
  %i.dq = icmp ne i64 %i.dp, -1                   ; 2 uses
  %i.dr = load i64, ptr %i.dn, align 8, !range !332, !alias.scope !112147, !noundef !313
  %i.ds = icmp ne i64 %i.dr, -1                   ; 2 uses
  %i.dt = xor i1 %i.dq, %i.ds
  br i1 %i.dt, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %or.cond.i.i = and i1 %i.dq, %i.ds
  br i1 %or.cond.i.i, label %bb.z, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !112146, !noundef !313 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !112147, !noundef !313
  %i.dy = icmp eq i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.aa, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !112147, !nonnull !313, !noundef !313
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !112146, !nonnull !313, !noundef !313
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ec, ptr nonnull %i.ea, i64 %i.dv), !noalias !112148
  %i.ed = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ed, label %bb.ab, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ef = load i32, ptr %i.ee, align 8, !range !539, !alias.scope !112146, !noundef !313 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ef, -1
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !range !539, !alias.scope !112147, !noundef !313 ; 2 uses
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = icmp eq i32 %i.ef, %i.eh
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ej = icmp eq i32 %i.eh, -1
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ae:                                            ; preds = %bb.b
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112150)
  %i.em = load i64, ptr %i.ek, align 8, !range !346, !alias.scope !112149, !noundef !313 ; 2 uses
  %i.en = icmp slt i64 %i.em, 0
  %i.eo = add i64 %i.em, -9223372036854775807
  %i.ep = select i1 %i.en, i64 %i.eo, i64 0       ; 2 uses
  %i.eq = load i64, ptr %i.el, align 8, !range !346, !alias.scope !112150, !noundef !313 ; 2 uses
  %i.er = icmp slt i64 %i.eq, 0
  %i.es = add i64 %i.eq, -9223372036854775807
  %i.et = select i1 %i.er, i64 %i.es, i64 0
  %i.eu = icmp eq i64 %i.ep, %i.et
  br i1 %i.eu, label %bb.af, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.af:                                            ; preds = %bb.ae
  switch i64 %i.ep, label %bb.ag [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %bb.aj
    i64 3, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ev = tail call fastcc noundef zeroext i1 @_RNvXsBj_NtCs40MM8ukkVQd_9sqlparser3astNtB6_22SetSessionParamGenericNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.el), !inline_history !112109
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ai:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ey = tail call fastcc noundef zeroext i1 @_RNvXsBt_NtCs40MM8ukkVQd_9sqlparser3astNtB6_29SetSessionParamIdentityInsertNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ex), !inline_history !112109
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.aj:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = tail call fastcc noundef zeroext i1 @_RNvXsBD_NtCs40MM8ukkVQd_9sqlparser3astNtB6_22SetSessionParamOffsetsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fa), !inline_history !112109
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ak:                                            ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fe = load <2 x i8>, ptr %i.fc, align 8, !alias.scope !112149
  %i.ff = load <2 x i8>, ptr %i.fd, align 8, !alias.scope !112150
  %i.fg = icmp eq <2 x i8> %i.fe, %i.ff           ; 2 uses
  %2 = extractelement <2 x i1> %i.fg, i64 0
  %3 = extractelement <2 x i1> %i.fg, i64 1
  %.sroa.0.0.i31 = select i1 %3, i1 %2, i1 false
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.al:                                            ; preds = %bb.b
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fi = load i8, ptr %i.fh, align 8, !range !546, !noundef !313 ; 2 uses
  %.not14 = icmp eq i8 %i.fi, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fk = load i8, ptr %i.fj, align 8, !range !546, !noundef !313 ; 2 uses
  br i1 %.not14, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fl = icmp eq i8 %i.fi, %i.fk
  br i1 %i.fl, label %bb.ao, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.an:                                            ; preds = %bb.al
  %i.fm = icmp eq i8 %i.fk, -1
  br i1 %i.fm, label %bb.ao, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !332, !noundef !313 ; 2 uses
  %.not16 = icmp eq i64 %i.fo, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !range !332, !noundef !313 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, -1
  %brmerge = or i1 %.not16, %i.fr
  %i.fs = and i64 %i.fo, %i.fq
  %.mux = icmp eq i64 %i.fs, -1
  br i1 %brmerge, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = tail call fastcc noundef zeroext i1 @_RNvXs2_NtCs40MM8ukkVQd_9sqlparser3astNtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fp)
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.aq:                                            ; preds = %bb.b
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.fv = load i8, ptr %i.fu, align 8, !range !325, !noundef !313
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.fx = load i8, ptr %i.fw, align 8, !range !325, !noundef !313
  %i.fy = icmp eq i8 %i.fv, %i.fx
  br i1 %i.fy, label %bb.ar, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ar:                                            ; preds = %bb.aq
  %i.fz = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1)
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.as:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112152)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !112151, !noundef !313 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !112152, !noundef !313
  %i.ge = icmp eq i64 %i.gb, %i.gd
  br i1 %i.ge, label %bb.at, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.at:                                            ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !112152, !nonnull !313, !noundef !313
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !112151, !nonnull !313, !noundef !313
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.gi, ptr nonnull %i.gg, i64 %i.gb), !noalias !112153
  %i.gj = icmp eq i32 %bcmp.i, 0
  br i1 %i.gj, label %bb.au, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.au:                                            ; preds = %bb.at
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gl = load i32, ptr %i.gk, align 8, !range !539, !alias.scope !112151, !noundef !313 ; 2 uses
  %.not.i = icmp eq i32 %i.gl, -1
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gn = load i32, ptr %i.gm, align 8, !range !539, !alias.scope !112152, !noundef !313 ; 2 uses
  br i1 %.not.i, label %_RNvXs2_NtCs40MM8ukkVQd_9sqlparser3astNtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.split41

.split41:                                         ; preds = %bb.au
  %i.go = icmp eq i32 %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

_RNvXs2_NtCs40MM8ukkVQd_9sqlparser3astNtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %bb.au
  %i.gp = icmp eq i32 %i.gn, -1
  br i1 %i.gp, label %bb.av, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.av:                                            ; preds = %.split41, %_RNvXs2_NtCs40MM8ukkVQd_9sqlparser3astNtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gr = load i64, ptr %i.gq, align 8, !range !332, !noundef !313 ; 2 uses
  %.not12 = icmp eq i64 %i.gr, -1
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gt = load i64, ptr %i.gs, align 8, !range !332, !noundef !313 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, -1
  %brmerge125 = or i1 %.not12, %i.gu
  %i.gv = and i64 %i.gr, %i.gt
  %.mux126 = icmp eq i64 %i.gv, -1
  br i1 %brmerge125, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gx = load i64, ptr %i.gw, align 8, !noundef !313 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gz = load i64, ptr %i.gy, align 8, !noundef !313
  %i.ha = icmp eq i64 %i.gx, %i.gz
  br i1 %i.ha, label %bb.ax, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !313, !noundef !313
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !313, !noundef !313
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.he, ptr nonnull %i.hc, i64 %i.gx)
  %i.hf = icmp eq i32 %bcmp, 0
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ay:                                            ; preds = %bb.b
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hh = load i8, ptr %i.hg, align 8, !range !325, !noundef !313
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hj = load i8, ptr %i.hi, align 8, !range !325, !noundef !313
  %i.hk = icmp eq i8 %i.hh, %i.hj
  br i1 %i.hk, label %bb.az, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.az:                                            ; preds = %bb.ay
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !313 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ho = load i64, ptr %i.hn, align 8, !noundef !313
  %i.hp = icmp eq i64 %i.hm, %i.ho
  br i1 %i.hp, label %bb.ba, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ba:                                            ; preds = %bb.az
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !313, !noundef !313
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !313, !noundef !313
  %i.hu = icmp eq i64 %i.hm, 0
  br i1 %i.hu, label %.loopexit, label %.lr.ph.i

bb.bb:                                            ; preds = %.lr.ph.i
  %i.hv = add nuw i64 %.sroa.01.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hv, %i.hm
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ba, %bb.bb
  %.sroa.01.08.i = phi i64 [ %i.hv, %bb.bb ], [ 0, %bb.ba ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %.sroa.01.08.i ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %.sroa.01.08.i ; 2 uses
  %.val.i28 = load i8, ptr %i.hw, align 1, !range !325, !noundef !313
  %i.hy = getelementptr i8, ptr %i.hw, i64 1
  %.val5.i = load i8, ptr %i.hy, align 1
  %.val6.i = load i8, ptr %i.hx, align 1, !range !325, !noundef !313
  %i.hz = getelementptr i8, ptr %i.hx, i64 1
  %.val7.i = load i8, ptr %i.hz, align 1
  %i.ia = icmp eq i8 %.val.i28, %.val6.i
  %i.ib = icmp eq i8 %.val5.i, %.val7.i
  %spec.select.i.not.i.not.i = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %spec.select.i.not.i.not.i, label %bb.bb, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

.loopexit:                                        ; preds = %bb.bb, %bb.ba
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !range !374, !noundef !313 ; 2 uses
  %.not = icmp eq i64 %i.id, -1
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !range !374, !noundef !313 ; 2 uses
  %i.ig = icmp eq i64 %i.if, -1
  %brmerge127 = or i1 %.not, %i.ig
  %i.ih = and i64 %i.id, %i.if
  %.mux128 = icmp eq i64 %i.ih, -1
  br i1 %brmerge127, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  %i.ii = tail call noundef zeroext i1 @_RNvXNtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB2_13ValueWithSpanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ic, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ie)
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsdF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_10CreateViewNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(312) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [680 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [680 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %.sroa.585 = alloca [24 x i8], align 8          ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.481 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.582 = alloca [64 x i8], align 8          ; 4 uses
  %.sroa.683 = alloca [56 x i8], align 8          ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %.sroa.661 = alloca [96 x i8], align 8          ; 5 uses
  %.sroa.4112 = alloca [120 x i8], align 8        ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [1400 x i8], align 8              ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
end_hunk_1
