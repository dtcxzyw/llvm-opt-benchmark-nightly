Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-fd56e804c0c3423a.dsl_auto_type.677851e787f19548-cgu.06?download=true
inline.NumInlined: 638
inline.NumDeleted: 207
begin_hunk_0_@_RNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics:bb.a
  %i.ab = icmp ult i64 %i.z, 21
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !1197

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortTRNtCsiD8eKn5yFCp_11proc_macro25IdentbENvYBT_NtNtB8_3cmp10PartialOrd2ltECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 %i.x, i64 noundef %i.z, ptr noalias noundef nonnull %i.a)
          to label %bb.n unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  invoke void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtCsiD8eKn5yFCp_11proc_macro25IdentbENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 %i.x, i64 noundef %i.z, i64 noundef 1, ptr noalias noundef nonnull %i.a)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  invoke void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = invoke { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.p unwind label %bb.i       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  store ptr %i.ad, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.n, ptr %i.ah, align 8
  invoke void @_RINvXs4_NtCs91tTATF2stA_3syn10punctuatedINtB6_10PunctuatedNtNtB8_8generics12GenericParamNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1P_8adapters10filter_map9FilterMapINtB6_4IterBU_ENCNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss0_0EEB3Z_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.q unwind label %bb.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !12 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 19541042450963509
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.aj, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !align !11
  %.not = icmp eq ptr %i.an, null
  %or.cond = select i1 %i.al, i1 %.not, i1 false
  br i1 %or.cond, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = invoke noundef i32 @_RNvXsfw_NtCs91tTATF2stA_3syn5tokenNtB6_2LtNtNtCscI6d9CVNmLh_4core7default7Default7default()
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.c) #15
          to label %bb.h unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.aq = invoke noundef i32 @_RNvXsf9_NtCs91tTATF2stA_3syn5tokenNtB6_2GtNtNtCscI6d9CVNmLh_4core7default7Default7default()
          to label %.thread unwind label %bb.s

.thread:                                          ; preds = %bb.q, %bb.t
  %.sroa.0.020 = phi i32 [ 1, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %.sroa.5.019 = phi i32 [ %i.ao, %bb.t ], [ undef, %bb.q ]
  %.sroa.52.0 = phi i32 [ %i.aq, %bb.t ], [ undef, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.0.020, ptr %i.ar, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.sroa.5.019, ptr %.sroa.5.0..sroa_idx, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.0.020, ptr %i.as, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.52.0, ptr %.sroa.52.0..sroa_idx, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.u:                                             ; preds = %bb.s, %bb.h, %bb.b
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.v:                                             ; preds = %bb.h, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @4, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_RNvXss_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5IdentINtNtCscI6d9CVNmLh_4core3cmp9PartialEqRReE2eqCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @6, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_RNvXss_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5IdentINtNtCscI6d9CVNmLh_4core3cmp9PartialEqRReE2eqCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.g, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCs91tTATF2stA_3syn8lifetime8LifetimebE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1H_7VisitorNtNtNtBB_3gen5visit5Visit14visit_lifetime0EB1N_.exit.thread, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !align !11, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error11new_spannedRNtNtB5_8lifetime8LifetimeReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #13, !noalias !1211
  %i.l = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #13, !noalias !1211 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #16
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #15
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.t, %bb.i ], [ %i.t, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8, !noalias !1212
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1212, !noundef !12 ; 3 uses
  %i.r = load i64, ptr %i.i, align 8, !range !23, !alias.scope !1212, !noundef !12
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.g, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8grow_oneCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i64, ptr %i.l, align 8, !noalias !1213, !noundef !12
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.l, align 8, !noalias !1213
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE9drop_slowCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1212, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  store ptr %i.l, ptr %i.aa, align 8
  %i.ab = add i64 %i.q, 1
  store i64 %i.ab, ptr %i.p, align 8, !alias.scope !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCs91tTATF2stA_3syn8lifetime8LifetimebE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1H_7VisitorNtNtNtBB_3gen5visit5Visit14visit_lifetime0EB1N_.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !12 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  switch i64 %i.af, label %.lr.ph.i.i [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCs91tTATF2stA_3syn8lifetime8LifetimebE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1H_7VisitorNtNtNtBB_3gen5visit5Visit14visit_lifetime0EB1N_.exit.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.k
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.k ], [ %i.ap, %.lr.ph.i.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.05.0.lcssa.i.i ; 2 uses
  %.val14.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !1216, !nonnull !12, !align !11, !noundef !12
  %i.ah = call noundef range(i8 -1, 2) i8 @_RNvXs4_NtCs91tTATF2stA_3syn8lifetimeNtB5_8LifetimeNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val14.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !1217 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %i.af, %bb.k ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.aj = lshr i64 %.sroa.01.019.i.i, 1           ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, %.sroa.05.018.i.i ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.af
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ak
  %.val16.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1216, !nonnull !12, !align !11, !noundef !12
  %i.an = call noundef range(i8 -1, 2) i8 @_RNvXs4_NtCs91tTATF2stA_3syn8lifetimeNtB5_8LifetimeNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val16.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !1217
  %i.ao = icmp eq i8 %i.an, 1
  %i.ap = select i1 %i.ao, i64 %.sroa.05.018.i.i, i64 %i.ak, !unpredictable !12 ; 2 uses
  %i.aq = sub nuw nsw i64 %.sroa.01.019.i.i, %i.aj ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1
  br i1 %i.ar, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.as = icmp eq i8 %i.ah, -1
  %i.at = zext i1 %i.as to i64
  %i.au = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.at
  %i.av = icmp ule i64 %i.au, %i.af
  call void @llvm.assume(i1 %i.av)
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCs91tTATF2stA_3syn8lifetime8LifetimebE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1H_7VisitorNtNtNtBB_3gen5visit5Visit14visit_lifetime0EB1N_.exit.thread

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.aw = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.af
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 1, ptr %i.ax, align 8
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCs91tTATF2stA_3syn8lifetime8LifetimebE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1H_7VisitorNtNtNtBB_3gen5visit5Visit14visit_lifetime0EB1N_.exit.thread

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtNtCs91tTATF2stA_3syn8lifetime8LifetimebE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1H_7VisitorNtNtNtBB_3gen5visit5Visit14visit_lifetime0EB1N_.exit.thread: ; preds = %bb.b, %bb.l, %bb.k, %bb.n, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_path(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvMs_NtCs91tTATF2stA_3syn4pathNtB4_4Path9get_ident(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtCsiD8eKn5yFCp_11proc_macro25IdentbE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1C_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_path0EB1I_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  switch i64 %i.e, label %.lr.ph.i.i [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtCsiD8eKn5yFCp_11proc_macro25IdentbE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1C_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_path0EB1I_.exit.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %.lr.ph.i.i ] ; 4 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.05.0.lcssa.i.i ; 2 uses
  %.val14.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1225, !nonnull !12, !align !11, !noundef !12
  %i.g = tail call noundef range(i8 -1, 2) i8 @_RNvXsC_CsiD8eKn5yFCp_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val14.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !1226 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.019.i.i, 1            ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %.sroa.05.018.i.i  ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.e
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.j
  %.val16.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1225, !nonnull !12, !align !11, !noundef !12
  %i.m = tail call noundef range(i8 -1, 2) i8 @_RNvXsC_CsiD8eKn5yFCp_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val16.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !1226
  %i.n = icmp eq i8 %i.m, 1
  %i.o = select i1 %i.n, i64 %.sroa.05.018.i.i, i64 %i.j, !unpredictable !12 ; 2 uses
  %i.p = sub nuw nsw i64 %.sroa.01.019.i.i, %i.i  ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = icmp eq i8 %i.g, -1
  %i.s = zext i1 %i.r to i64
  %i.t = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.s
  %i.u = icmp ule i64 %i.t, %i.e
  tail call void @llvm.assume(i1 %i.u)
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtCsiD8eKn5yFCp_11proc_macro25IdentbE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1C_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_path0EB1I_.exit.thread

_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtCsiD8eKn5yFCp_11proc_macro25IdentbE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1C_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_path0EB1I_.exit.thread: ; preds = %bb.c, %bb.b, %bb.e, %bb.a
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_type_pathNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.v = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.e
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.w, align 8
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTRNtCsiD8eKn5yFCp_11proc_macro25IdentbE20binary_search_by_keyBw_NCNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB1C_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_path0EB1I_.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_type_reference(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !17, !noundef !12
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.a
  call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_type_referenceNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !align !11, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error11new_spannedRNtNtB5_2ty13TypeReferenceReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #13, !noalias !1235
  %i.j = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #13, !noalias !1235 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #16
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #15
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !noalias !1236
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1236, !noundef !12 ; 3 uses
  %i.p = load i64, ptr %i.g, align 8, !range !23, !alias.scope !1236, !noundef !12
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit

bb.g:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8grow_oneCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load i64, ptr %i.j, align 8, !noalias !1237, !noundef !12
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !noalias !1237
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE9drop_slowCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8push_mutCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEE3newCs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1236, !nonnull !12, !noundef !12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.o
  store ptr %i.j, ptr %i.y, align 8
  %i.z = add i64 %i.o, 1
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss0_0INtB7_5FnMutTRNtNtCs91tTATF2stA_3syn8generics12GenericParamEE8call_mutBW_(ptr dead_on_unwind noalias noundef writable sret([464 x i8]) align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !12, !align !11, !noundef !12 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val1 = load ptr, ptr %i.f, align 8            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.g = load i64, ptr %2, align 8, !range !19, !alias.scope !1248, !noundef !12 ; 2 uses
  %i.h = add nsw i64 %i.g, -17
  %i.i = icmp samesign ugt i64 %i.g, 16
  %i.j = select i1 %i.i, i64 %i.h, i64 2
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1249, !nonnull !12, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1249, !noundef !12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  switch i64 %i.n, label %.lr.ph.i.i [
    i64 0, label %.sink.split.i
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.ae, %.lr.ph.i.i ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.05.0.lcssa.i.i ; 2 uses
  %.val14.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1250, !noalias !1247, !nonnull !12, !align !11, !noundef !12
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val15.i.i = load i8, ptr %i.q, align 8, !alias.scope !1250, !noalias !1247
  %i.r = tail call noundef range(i8 -1, 2) i8 @_RNvXs4_NtCs91tTATF2stA_3syn8lifetimeNtB5_8LifetimeNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val14.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !1251
  %i.s = icmp eq i8 %i.r, 0
  %i.t = icmp eq i8 %.val15.i.i, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.e, label %.sink.split.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.01.023.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.05.022.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.v = lshr i64 %.sroa.01.023.i.i, 1            ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %.sroa.05.022.i.i  ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.n
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.w ; 2 uses
  %.val17.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1250, !noalias !1247, !nonnull !12, !align !11, !noundef !12
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val18.i.i = load i8, ptr %i.z, align 8, !alias.scope !1250, !noalias !1247
  %i.aa = tail call noundef range(i8 -1, 2) i8 @_RNvXs4_NtCs91tTATF2stA_3syn8lifetimeNtB5_8LifetimeNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val17.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !1251 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  %i.ac = add nsw i8 %.val18.i.i, -1
  %spec.select.i.i21.i.i = select i1 %i.ab, i8 %i.ac, i8 %i.aa
  %i.ad = icmp eq i8 %spec.select.i.i21.i.i, 1
  %i.ae = select i1 %i.ad, i64 %.sroa.05.022.i.i, i64 %i.w, !unpredictable !12 ; 2 uses
  %i.af = sub nuw nsw i64 %.sroa.01.023.i.i, %i.v ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1249, !nonnull !12, !noundef !12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1249, !noundef !12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  switch i64 %i.ak, label %.lr.ph.i7.i [
    i64 0, label %.sink.split.i
    i64 1, label %._crit_edge.i13.i
  ]

._crit_edge.i13.i:                                ; preds = %.lr.ph.i7.i, %bb.d
  %.sroa.05.0.lcssa.i14.i = phi i64 [ 0, %bb.d ], [ %i.bb, %.lr.ph.i7.i ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.05.0.lcssa.i14.i ; 2 uses
  %.val14.i15.i = load ptr, ptr %i.am, align 8, !alias.scope !1252, !noalias !1247, !nonnull !12, !align !11, !noundef !12
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val15.i16.i = load i8, ptr %i.an, align 8, !alias.scope !1252, !noalias !1247
  %i.ao = tail call noundef range(i8 -1, 2) i8 @_RNvXsC_CsiD8eKn5yFCp_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val14.i15.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al), !noalias !1253
  %i.ap = icmp eq i8 %i.ao, 0
  %i.aq = icmp eq i8 %.val15.i16.i, 1
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.j, label %.sink.split.i

.lr.ph.i7.i:                                      ; preds = %bb.d, %.lr.ph.i7.i
  %.sroa.01.023.i8.i = phi i64 [ %i.bc, %.lr.ph.i7.i ], [ %i.ak, %bb.d ] ; 2 uses
  %.sroa.05.022.i9.i = phi i64 [ %i.bb, %.lr.ph.i7.i ], [ 0, %bb.d ] ; 2 uses
  %i.as = lshr i64 %.sroa.01.023.i8.i, 1          ; 2 uses
  %i.at = add nuw nsw i64 %i.as, %.sroa.05.022.i9.i ; 3 uses
  %i.au = icmp ult i64 %i.at, %i.ak
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.at ; 2 uses
  %.val17.i10.i = load ptr, ptr %i.av, align 8, !alias.scope !1252, !noalias !1247, !nonnull !12, !align !11, !noundef !12
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val18.i11.i = load i8, ptr %i.aw, align 8, !alias.scope !1252, !noalias !1247
  %i.ax = tail call noundef range(i8 -1, 2) i8 @_RNvXsC_CsiD8eKn5yFCp_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val17.i10.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al), !noalias !1253 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = add nsw i8 %.val18.i11.i, -1
  %spec.select.i.i21.i12.i = select i1 %i.ay, i8 %i.az, i8 %i.ax
  %i.ba = icmp eq i8 %spec.select.i.i21.i12.i, 1
  %i.bb = select i1 %i.ba, i64 %.sroa.05.022.i9.i, i64 %i.at, !unpredictable !12 ; 2 uses
  %i.bc = sub nuw nsw i64 %.sroa.01.023.i8.i, %i.as ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph.i7.i, label %._crit_edge.i13.i

.sink.split.i:                                    ; preds = %._crit_edge.i.i, %._crit_edge.i13.i, %bb.d, %bb.c, %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !1247
  br label %_RNCNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss0_0B7_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1249
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c), !noalias !1247
  invoke void @_RNvXNtNtCs91tTATF2stA_3syn8lifetime8printingNtB4_8LifetimeNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.g unwind label %bb.f, !noalias !1247

bb.f:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.c) #15
          to label %bb.i unwind label %bb.h, !noalias !1247

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1249
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_8generics12GenericParamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([464 x i8]) align 8 captures(none) dereferenceable(464) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1249
  br label %_RNCNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss0_0B7_.exit

bb.h:                                             ; preds = %bb.k, %bb.f
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14, !noalias !1247
  unreachable

bb.i:                                             ; preds = %bb.k, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.f ], [ %i.bg, %bb.k ]
  resume { ptr, i32 } %.pn.i

bb.j:                                             ; preds = %._crit_edge.i13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1249
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a), !noalias !1247
  invoke void @_RNvXsq_NtCs8GWn3DbEjso_5quote9to_tokensNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.l unwind label %bb.k, !noalias !1247

bb.k:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.a) #15
          to label %bb.i unwind label %bb.h, !noalias !1247

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1249
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_8generics12GenericParamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([464 x i8]) align 8 captures(none) dereferenceable(464) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1249
  br label %_RNCNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss0_0B7_.exit

_RNCNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericss0_0B7_.exit: ; preds = %.sink.split.i, %bb.g, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_exprNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_itemBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_itemNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_pathNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_stmtBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_stmtNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_blockNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_fieldBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_fieldNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_indexBa_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_localBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_localNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macroBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fieldsBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_fieldsNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fn_argBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_fn_argNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_memberBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_memberNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_pat_orBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_pat_orNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit13visit_expr_ifBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_expr_ifNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBV_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit13visit_item_fnBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_item_fnNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBV_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit13visit_variantBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_variantNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBV_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_expr_letBa_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
end_hunk_0
