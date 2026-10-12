Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.10?download=true
inline.NumInlined: 203
inline.NumDeleted: 122
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3zip3ZipINtNtB1D_4take4TakeINtNtNtB1H_5slice4iter4IterB11_EEIB3b_INtNtB1H_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB4e_5types3any5PyAnyEEEENCNvMs5_NtNtB4e_5impl_16extract_argumentNtB5r_19FunctionDescription37missing_required_positional_arguments0EE9from_iterB4e_:bb.a
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not8.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.y = load i64, ptr %i.b, align 8, !range !10, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !11, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.z, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit, !prof !5

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit
  %i.ad = load i64, ptr %i.ac, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #25
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit
  %i.ae = extractvalue { ptr, i64 } %i.w, 1
  %i.af = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ag = icmp ugt i64 %i.ab, 3
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.x, ptr %i.af, align 8, !captures !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ae, ptr %i.ah, align 8
  store i64 %i.ab, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  store ptr %i.ai, ptr %i.a, align 8, !noalias !173
  %.promoted.i.i.i.i.i43 = load i64, ptr %i.aj, align 8, !alias.scope !174, !noalias !175 ; 2 uses
  %i.an = icmp eq i64 %.promoted.i.i.i.i.i43, 0
  br i1 %i.an, label %._crit_edge39, label %.lr.ph38.lr.ph

.lr.ph38.lr.ph:                                   ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit
  %.promoted17.i.i.i.i.i45 = load ptr, ptr %i.al, align 8, !alias.scope !176, !noalias !175
  %i.ao = load ptr, ptr %i.am, align 8, !alias.scope !176, !noalias !175, !nonnull !4
  %i.ap = load ptr, ptr %i.ak, align 8, !alias.scope !176, !noalias !175, !nonnull !4
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.lr.ph, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i
  %.promoted17.i.i.i.i.i48 = phi ptr [ %.promoted17.i.i.i.i.i45, %.lr.ph38.lr.ph ], [ %.promoted17.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i ]
  %i.aq = phi ptr [ %i.ao, %.lr.ph38.lr.ph ], [ %i.bn, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i ]
  %i.ar = phi ptr [ %i.ap, %.lr.ph38.lr.ph ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i ]
  %.promoted.i.i.i.i.i46 = phi i64 [ %.promoted.i.i.i.i.i43, %.lr.ph38.lr.ph ], [ %.promoted.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i ]
  %.promoted16.i.i.i.i.i47 = load ptr, ptr %i.d, align 8, !alias.scope !177, !noalias !175
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  br label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.as = icmp eq i64 %i.aw, 0
  br i1 %i.as, label %._crit_edge39, label %bb.h

bb.h:                                             ; preds = %.lr.ph38, %bb.g
  %i.at = phi i64 [ %.promoted.i.i.i.i.i46, %.lr.ph38 ], [ %i.aw, %bb.g ]
  %i.au = phi ptr [ %.promoted16.i.i.i.i.i47, %.lr.ph38 ], [ %i.ay, %bb.g ] ; 3 uses
  %i.av = phi ptr [ %.promoted17.i.i.i.i.i48, %.lr.ph38 ], [ %i.ba, %bb.g ] ; 3 uses
  %i.aw = add i64 %i.at, -1                       ; 3 uses
  store i64 %i.aw, ptr %i.aj, align 8, !alias.scope !180, !noalias !175
  %i.ax = icmp eq ptr %i.au, %i.ar
  br i1 %i.ax, label %._crit_edge39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.d, align 8, !alias.scope !181, !noalias !175
  %i.az = icmp eq ptr %i.av, %i.aq
  br i1 %i.az, label %._crit_edge39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.al, align 8, !alias.scope !182, !noalias !175
  %i.bb = invoke { ptr, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo35impl_16extract_argumentNtBW_19FunctionDescription37missing_required_positional_arguments0INtB7_5FnMutTTRReRINtNtBb_6option6OptionINtNtB10_8instance8BorrowedNtNtNtB10_5types3any5PyAnyEEEEE8call_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not8.i.i.i.i.i, label %bb.g, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !183
  %i.be = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !184, !noalias !185, !noundef !4 ; 5 uses
  %i.bf = icmp ult i64 %i.be, 576460752303423488
  call void @llvm.assume(i1 %i.bf)
  %i.bg = load i64, ptr %i.e, align 8, !range !7, !alias.scope !184, !noalias !185, !noundef !4
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit.i.i: ; preds = %bb.k
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.be, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i unwind label %.loopexit.split-lp

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit.i.i, %bb.k
  %i.bi = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !184, !noalias !185, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.be ; 2 uses
  store ptr %i.bc, ptr %i.bj, align 8, !captures !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bd, ptr %i.bk, align 8
  %i.bl = add nuw nsw i64 %i.be, 1
  store i64 %i.bl, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !184, !noalias !185
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !189
  store ptr %i.ai, ptr %i.a, align 8, !noalias !190
  %.promoted.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !191, !noalias !175 ; 2 uses
  %i.bm = load ptr, ptr %i.ak, align 8, !alias.scope !192, !noalias !175, !nonnull !4
  %i.bn = load ptr, ptr %i.am, align 8, !alias.scope !192, !noalias !175, !nonnull !4
  %.promoted17.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !192, !noalias !175
  %i.bo = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.bo, label %._crit_edge39, label %.lr.ph38

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !157
  store i64 0, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bq, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge39, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterReEEIB1J_INtNtBb_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB2I_5types3any5PyAnyEEEENCNvMs5_NtNtB2I_5impl_16extract_argumentNtB3V_19FunctionDescription37missing_required_positional_arguments0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsdc6yCHiM2ZJ_4pyo3.exit unwind label %bb.n

._crit_edge39:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i, %bb.g, %bb.h, %bb.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.m
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3zip3ZipINtNtNtB1H_5slice4iter4IterNtNtNtCsdc6yCHiM2ZJ_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIB2S_INtNtB1H_6option6OptionINtNtB3o_8instance8BorrowedNtNtNtB3o_5types3any5PyAnyEEEENCNvMs5_B3k_NtB3k_19FunctionDescription34missing_required_keyword_arguments0EE9from_iterB3o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !232
  store ptr %i.f, ptr %i.c, align 8, !noalias !233
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !234, !noalias !235, !noundef !4 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !234, !noalias !235 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !236, !noalias !235, !nonnull !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !236, !noalias !235, !nonnull !4
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %.promoted.i.i.i)
  %exitcond.not.i.i.i32.not = icmp ult i64 %.promoted.i.i.i, %i.i
  br i1 %exitcond.not.i.i.i32.not, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.l, %bb.b ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.l, ptr %i.g, align 8, !alias.scope !234, !noalias !235
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.k
  %i.o = call { ptr, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo35impl_16extract_argumentNtBW_19FunctionDescription34missing_required_keyword_arguments0INtB7_5FnMutTTRNtBW_31KeywordOnlyParameterDescriptionRINtNtBb_6option6OptionINtNtB10_8instance8BorrowedNtNtNtB10_5types3any5PyAnyEEEEE8call_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n), !noalias !237 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not8.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.q = load i64, ptr %i.b, align 8, !range !10, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !11, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.r, label %bb.d, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.u, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #25
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.c
  %i.w = extractvalue { ptr, i64 } %i.o, 1
  %i.x = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.y = icmp ugt i64 %i.t, 3
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.x, align 8, !captures !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.w, ptr %i.z, align 8
  store i64 %i.t, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !245
  store ptr %i.aa, ptr %i.a, align 8, !noalias !246
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !247, !noalias !248, !noundef !4 ; 2 uses
  %.promoted.i.i.i.i.i38 = load i64, ptr %i.ab, align 8, !alias.scope !247, !noalias !248 ; 2 uses
  %exitcond.not.i.i.i.i.i3342.not = icmp ult i64 %.promoted.i.i.i.i.i38, %i.ae
  br i1 %exitcond.not.i.i.i.i.i3342.not, label %.lr.ph35.lr.ph, label %._crit_edge36

.lr.ph35.lr.ph:                                   ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit
  %.val1.i.i.i.i.i.i.i40 = load ptr, ptr %i.ad, align 8, !alias.scope !249, !noalias !248, !nonnull !4
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.lr.ph, %.noexc10
  %umax.i.i.i.i.i46 = phi i64 [ %i.ae, %.lr.ph35.lr.ph ], [ %umax.i.i.i.i.i, %.noexc10 ]
  %.val1.i.i.i.i.i.i.i45 = phi ptr [ %.val1.i.i.i.i.i.i.i40, %.lr.ph35.lr.ph ], [ %.val1.i.i.i.i.i.i.i, %.noexc10 ]
  %.promoted.i.i.i.i.i43 = phi i64 [ %.promoted.i.i.i.i.i38, %.lr.ph35.lr.ph ], [ %.promoted.i.i.i.i.i, %.noexc10 ]
  %.val.i.i.i.i.i.i.i44 = load ptr, ptr %i.d, align 8, !alias.scope !250, !noalias !248, !nonnull !4
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  br label %bb.f

bb.e:                                             ; preds = %.noexc
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ag, %umax.i.i.i.i.i46
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge36, label %bb.f

bb.f:                                             ; preds = %.lr.ph35, %bb.e
  %i.af = phi i64 [ %.promoted.i.i.i.i.i43, %.lr.ph35 ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.ab, align 8, !alias.scope !253, !noalias !248
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i44, i64 %i.af
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i.i.i45, i64 %i.af
  %i.aj = invoke { ptr, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo35impl_16extract_argumentNtBW_19FunctionDescription34missing_required_keyword_arguments0INtB7_5FnMutTTRNtBW_31KeywordOnlyParameterDescriptionRINtNtBb_6option6OptionINtNtB10_8instance8BorrowedNtNtNtB10_5types3any5PyAnyEEEEE8call_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not8.i.i.i.i.i, label %bb.e, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  %i.am = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !255, !noalias !256, !noundef !4 ; 5 uses
  %i.an = icmp ult i64 %i.am, 576460752303423488
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.e, align 8, !range !7, !alias.scope !255, !noalias !256, !noundef !4
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i, label %.noexc10

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i: ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.am, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i, %bb.g
  %i.aq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !255, !noalias !256, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.am ; 2 uses
  store ptr %i.ak, ptr %i.ar, align 8, !captures !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.al, ptr %i.as, align 8
  %i.at = add nuw nsw i64 %i.am, 1
  store i64 %i.at, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !255, !noalias !256
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  store ptr %i.aa, ptr %i.a, align 8, !noalias !261
  %i.au = load i64, ptr %i.ac, align 8, !alias.scope !262, !noalias !248, !noundef !4 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !262, !noalias !248 ; 3 uses
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !263, !noalias !248, !nonnull !4
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 %.promoted.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i33.not = icmp ult i64 %.promoted.i.i.i.i.i, %i.au
  br i1 %exitcond.not.i.i.i.i.i33.not, label %.lr.ph35, label %._crit_edge36

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !232
  store i64 0, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aw, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge36, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsdc6yCHiM2ZJ_4pyo3.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsdc6yCHiM2ZJ_4pyo3.exit unwind label %bb.j

._crit_edge36:                                    ; preds = %.noexc10, %bb.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdc6yCHiM2ZJ_4pyo3.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.c
  ], !prof !264

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3vecINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtBb_10conversion12FromPyObject7extractBb_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types5bytes7PyBytesEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %1)
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types9bytearray11PyByteArrayEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %1)
          to label %bb.i unwind label %bb.f

_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.c:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6.i = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = load i64, ptr %.val6.i, align 8, !noundef !4 ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.j, ptr %.val6.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val6.i) #21
  br label %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = load i64, ptr %.val4.i, align 8, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit

bb.g:                                             ; preds = %bb.f
  %i.p = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.p, ptr %.val4.i, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val4.i) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB12_5types5bytes7PyBytesENtNtNtB12_3err10cast_error9CastErrorEEB12_.exit: ; preds = %bb.f, %bb.g, %bb.h
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !noundef !4
  %.not3.i.not = icmp eq ptr %i.r, null           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  br i1 %.not3.i.not, label %bb.c, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = and i64 %i.u, 2147483648
  %.not.i.i.i.i9.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i9.i, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.w = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.w, ptr %i.t, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.c

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #21
  br label %bb.c

_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not3.i.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit.thread, %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit
  %.sroa.4.013.i31 = phi ptr [ %i.f, %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit.thread ], [ %i.t, %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit ]
  %.sroa.0.014.i30 = phi i64 [ 0, %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit.thread ], [ 1, %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.014.i30, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.013.i31, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs2_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numNtB5_22BytesSequenceExtractorNtNtNtBb_10conversion23from_py_object_sequence20FromPyObjectSequence6to_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject18sequence_extractor.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = and i64 %i.ad, 268435456
  %.not26 = icmp eq i64 %i.ae, 0
  br i1 %.not26, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.p, %bb.m
  ret void

bb.p:                                             ; preds = %bb.n
  tail call void @_RINvNtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std3vec16extract_sequencehEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1)
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.af = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #21 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.r, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.q
  store ptr @11, ptr %i.af, align 8
end_hunk_0
