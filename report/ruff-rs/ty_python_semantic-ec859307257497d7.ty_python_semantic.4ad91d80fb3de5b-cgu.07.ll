Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4118
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow39specialize_generic_class_from_solutions:bb.a
bb.x:                                             ; preds = %bb.w
  %i.bj = extractvalue { i32, i32 } %i.bi, 0
  %i.bk = extractvalue { i32, i32 } %i.bi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bl = invoke { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext16specialize_tuple(i32 noundef %i.q, i32 noundef %i.r, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.g, i32 noundef %i.bj, i32 noundef %i.bk)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bm = extractvalue { i32, i32 } %i.bl, 0
  %i.bn = extractvalue { i32, i32 } %i.bl, 1
  store i32 %i.bm, ptr %i.h, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.bn, ptr %i.bo, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB7_12ClassLiteral20apply_specializationNCNvNtB9_6narrow39specialize_generic_class_from_solutionss0_0EBb_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit30 unwind label %bb.q

bb.ac:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit30: ; preds = %bb.ab, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit30
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.ae

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit30
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.af:                                            ; preds = %bb.v
  %i.bt = extractvalue { i32, i32 } %i.bg, 0
  %i.bu = extractvalue { i32, i32 } %i.bg, 1
  store i32 %i.bt, ptr %i.h, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.bu, ptr %i.bv, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB7_12ClassLiteral20apply_specializationNCNvNtB9_6narrow39specialize_generic_class_from_solutionss0_0EBb_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.ag unwind label %bb.q

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit30

bb.ah:                                            ; preds = %.thread61, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit41, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit39, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit, %bb.e
  ret void

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit, %bb.h
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit39 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.ak

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit39: ; preds = %bb.ai
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc23, %bb.o, %.noexc, %bb.y, %bb.x, %bb.w, %.loopexit70
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #41
          to label %.body unwind label %bb.al

bb.al:                                            ; preds = %bb.ap, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.am:                                            ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit41 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.ap, %.body, %bb.ad, %bb.aj, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %bb.an ], [ %i.bw, %bb.aj ], [ %lpad.thr_comm.split-lp, %bb.ap ], [ %lpad.thr_comm.split-lp, %bb.b ], [ %.pn, %.body ], [ %i.br, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_.exit41: ; preds = %bb.am
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.ah

bb.ap:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionEEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %5) #41
          to label %common.resume unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18769 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = tail call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow46all_matching_tuple_elements_have_literal_types0EBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i, %.lr.ph.i
  %i.p = phi ptr [ %i.f, %.lr.ph.i ], [ %i.q, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18770
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type19tuple_instance_spec(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2), !noalias !18771
  %i.r = load i32, ptr %i.d, align 8, !range !61, !noalias !18770, !noundef !51
  %.not.i.i = icmp eq i32 %i.r, -4
  br i1 %.not.i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !18770
  call void @llvm.experimental.noalias.scope.decl(metadata !18772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18773
  %i.s = load i32, ptr %i.c, align 8, !range !77, !alias.scope !18772, !noalias !18770, !noundef !51 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.s, -3              ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !18772, !noalias !18770, !nonnull !51 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr %i.t, ptr %i.c
  invoke void @_RNvXsk_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleRINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentENtNtB9_9subscript7PyIndex8py_index(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0.i.i.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, i32 noundef %5)
          to label %_RNCNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types00B9_.exit.i.i unwind label %bb.d, !noalias !18774

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.d) #41
          to label %common.resume.i.i unwind label %bb.e, !noalias !18771

_RNCNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types00B9_.exit.i.i: ; preds = %bb.c
  %i.v = load i32, ptr %i.b, align 4, !range !57, !noalias !18773, !noundef !51 ; 3 uses
  %6 = icmp eq i32 %i.v, -1
  %.sroa.6.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.6.0..sroa_idx5.i.i, align 4, !noalias !18770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18773
  call void @llvm.experimental.noalias.scope.decl(metadata !18775)
  br i1 %.not.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !18774
  unreachable

common.resume.i.i:                                ; preds = %bb.j, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.f:                                             ; preds = %_RNCNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types00B9_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18776), !noalias !18777
  %i.x = icmp eq i32 %i.s, -2
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !18778, !noalias !18779, !noundef !51 ; 2 uses
  %i.y = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.z = shl nuw nsw i64 %.val1.i.i.i.i, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.z, i64 noundef 4) #43, !noalias !18780
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !18781), !noalias !18777
  call void @llvm.experimental.noalias.scope.decl(metadata !18782), !noalias !18777
  call void @llvm.experimental.noalias.scope.decl(metadata !18783), !noalias !18777
  %i.aa = load i64, ptr %i.k, align 8, !alias.scope !18784, !noalias !18779, !noundef !51 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.l, align 8, !alias.scope !18784, !noalias !18779, !nonnull !51, !noundef !51
  %i.ac = load i64, ptr %i.m, align 8, !alias.scope !18784, !noalias !18779, !noundef !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18785
  store i64 %i.aa, ptr %i.a, align 8, !noalias !18785
  store ptr %i.ab, ptr %i.n, align 8, !noalias !18785
  store i64 %i.ac, ptr %i.o, align 8, !noalias !18785
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i.i.i.i.i.i.i unwind label %bb.j, !noalias !18786

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.k, !noalias !18786

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !18786
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !18786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18785
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i.i.i.i.i.i.i, %bb.h, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.g, %_RNCNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types00B9_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18770
  br i1 %6, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i, label %7

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18770
  br label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i

7:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i
  %8 = icmp ne i32 %i.v, 17
  call void @llvm.assume(i1 %8)
  %9 = icmp eq i32 %i.v, 28
  br i1 %9, label %bb.m, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow46all_matching_tuple_elements_have_literal_types0EBU_.exit

bb.m:                                             ; preds = %7
  switch i8 %.sroa.6.sroa.0.0.copyload.i.i, label %bb.n [
    i8 0, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i
    i8 1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow46all_matching_tuple_elements_have_literal_types0EBU_.exit
    i8 2, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i
    i8 3, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i
    i8 4, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i
    i8 5, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow46all_matching_tuple_elements_have_literal_types0EBU_.exit
  ]

bb.n:                                             ; preds = %bb.m
  unreachable

_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i: ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit.i.i
  %i.af = icmp eq ptr %i.q, %i.h
  br i1 %i.af, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow46all_matching_tuple_elements_have_literal_types0EBU_.exit, label %bb.b

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow46all_matching_tuple_elements_have_literal_types0EBU_.exit: ; preds = %7, %bb.m, %bb.m, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ true, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow46all_matching_tuple_elements_have_literal_types0B7_.exit.i ], [ false, %7 ], [ false, %bb.m ], [ false, %bb.m ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow48all_matching_typeddict_fields_have_literal_types(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18805 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = load i32, ptr %3, align 4, !range !62, !noundef !51 ; 3 uses
  %i.i = icmp ne i32 %i.h, 17
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i32 %i.h, -4
  %i.k = icmp samesign ugt i32 %i.h, 3
  %narrow = select i1 %i.k, i32 %i.j, i32 13
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 8, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.c
    i32 11, label %bb.c
    i32 12, label %bb.c
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 15, label %bb.c
    i32 16, label %bb.c
    i32 17, label %bb.c
    i32 18, label %bb.c
    i32 19, label %bb.d
    i32 20, label %bb.e
    i32 21, label %bb.c
    i32 22, label %bb.c
    i32 23, label %bb.c
    i32 24, label %bb.c
    i32 25, label %bb.c
    i32 26, label %bb.c
    i32 27, label %bb.c
    i32 28, label %bb.c
    i32 29, label %bb.c
    i32 30, label %bb.f
    i32 31, label %bb.h
    i32 32, label %bb.c
  ], !prof !18806

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @177, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
          to label %bb.j unwind label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = load i32, ptr %i.l, align 4, !range !67, !noundef !51
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !51
  %i.p = tail call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.m, i32 noundef %i.o, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %.idx45 = shl nuw nsw i64 %i.r, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx45
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.d, %.backedge
  %.sroa.014.041 = phi ptr [ %i.u, %.backedge ], [ %i.q, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.041, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.014.041, i64 16, i1 false), !noalias !18807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.014.041, i64 16, i1 false)
  %i.v = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow24is_or_contains_typeddict(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.c), !noalias !18808, !inline_history !18792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18808
  br i1 %i.v, label %.split, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow48all_matching_typeddict_fields_have_literal_typess_0B7_.exit

.split:                                           ; preds = %.lr.ph42
  %i.w = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow48all_matching_typeddict_fields_have_literal_types(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !noalias !18808, !inline_history !18792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.w, label %.backedge, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit

.backedge:                                        ; preds = %.split, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow48all_matching_typeddict_fields_have_literal_typess_0B7_.exit
  %i.x = icmp eq ptr %i.u, %i.s
  br i1 %i.x, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit, label %.lr.ph42

_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow48all_matching_typeddict_fields_have_literal_typess_0B7_.exit: ; preds = %.lr.ph42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load i32, ptr %i.y, align 4, !range !67, !noundef !51
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !51
  %i.ac = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.z, i32 noundef %i.ab, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !51, !noundef !51 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !51 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ag, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %.not37 = icmp eq i64 %i.ag, 0
  br i1 %.not37, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18809
  br label %.backedge36

.lr.ph:                                           ; preds = %bb.e, %.backedge36
  %.sroa.020.038 = phi ptr [ %i.ai, %.backedge36 ], [ %i.ae, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.020.038, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.020.038, i64 16, i1 false), !noalias !18810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.020.038, i64 16, i1 false)
  %i.aj = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow24is_or_contains_typeddict(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.a), !noalias !18811, !inline_history !18801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18811
  br i1 %i.aj, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvNtB1e_6narrow48all_matching_typeddict_fields_have_literal_typess0_0E0B1g_.exit, label %.critedge

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvNtB1e_6narrow48all_matching_typeddict_fields_have_literal_typess0_0E0B1g_.exit: ; preds = %.lr.ph
  %i.ak = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow48all_matching_typeddict_fields_have_literal_types(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !noalias !18811, !inline_history !18801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18809
  br i1 %i.ak, label %.backedge36, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit

.backedge36:                                      ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvNtB1e_6narrow48all_matching_typeddict_fields_have_literal_typess0_0E0B1g_.exit, %.critedge
  %.not = icmp eq ptr %i.ai, %i.ah
  br i1 %.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit, label %.lr.ph

bb.f:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.am = tail call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.al, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  %i.an = tail call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !noalias !18812 ; 3 uses
  %.not.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i10, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load i32, ptr %i.an, align 4, !noalias !18812 ; 2 uses
  %i.ao = icmp ne i32 %.val.i, 17
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i32 %.val.i, 28
  br i1 %i.ap, label %switch.lookup, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit

switch.lookup:                                    ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %i.an, i64 4
  %.val3.i = load i8, ptr %i.aq, align 4, !noalias !18812
  %switch.cast = trunc i8 %.val3.i to i6
  %switch.downshift = lshr i6 29, %switch.cast
  %switch.masked = trunc i6 %switch.downshift to i1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit

bb.h:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMst_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasType10value_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ar, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  %i.as = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow48all_matching_typeddict_fields_have_literal_types(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_6narrow48all_matching_typeddict_fields_have_literal_typess_0EBU_.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvNtB1e_6narrow48all_matching_typeddict_fields_have_literal_typess0_0E0B1g_.exit, %.backedge36, %.split, %.backedge, %bb.f, %switch.lookup, %bb.g, %bb.e, %bb.d, %bb.h
  %.sroa.0.0.in = phi i1 [ %i.as, %bb.h ], [ true, %bb.e ], [ true, %.backedge ], [ true, %bb.d ], [ false, %bb.g ], [ true, %bb.f ], [ %switch.masked, %switch.lookup ], [ false, %.split ], [ false, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvNtB1e_6narrow48all_matching_typeddict_fields_have_literal_typess0_0E0B1g_.exit ], [ true, %.backedge36 ]
  ret i1 %.sroa.0.0.in

bb.i:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.f) #41
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.c
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder37split_truthiness_guarded_intersection(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18819 {
end_hunk_0
