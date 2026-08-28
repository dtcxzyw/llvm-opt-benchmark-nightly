Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.00?download=true
inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesB12_B1n_ENCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema6schemaNtB1p_10StructTypeNtB4y_13StructTypeExt21get_generated_columns0EE9from_iterB4E_:bb.a
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 1) ; 2 uses
  %i.am = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31160, !noundef !8 ; 2 uses
  %i.an = load i64, ptr %i.i, align 8, !range !83, !alias.scope !31160, !noundef !8
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema6schemaNtB2k_10StructTypeNtB3h_13StructTypeExt21get_generated_columns0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3n_.exit.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.am, i64 noundef %i.al, i64 noundef 8, i64 noundef 120)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #29
          to label %bb.n unwind label %bb.m

.loopexit9:                                       ; preds = %.noexc8, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.d

bb.m:                                             ; preds = %.body, %bb.e
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtB15_8RowsIterEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31166)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !31169, !noalias !31170, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !31169, !noalias !31170, !noundef !8 ; 3 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !alias.scope !31169, !noalias !31170, !nonnull !8, !align !1754, !noundef !8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !31173, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !31173, !noundef !8
  %i.m = add nuw i64 %i.f, 1                      ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.l
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !31173, !nonnull !8, !noundef !8
  %i.s = load i64, ptr %i.p, align 8, !noalias !31173, !noundef !8 ; 2 uses
  %i.t = load i64, ptr %i.o, align 8, !noalias !31173, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !31163, !noalias !31174, !noundef !8 ; 2 uses
  %i.w = sub i64 %i.d, %i.m
  %i.x = tail call i64 @llvm.uadd.sat.i64(i64 %i.w, i64 1)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.x, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.y = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !107, !noundef !8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.ac, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.ag = sub nuw i64 %i.t, %i.s
  %i.ah = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i, %i.ab
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.ah, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.af, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.ag, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ae, ptr %.sroa.618.0..sroa_idx, align 8
  store i64 %i.ab, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aj = icmp eq i64 %i.d, %i.m
  br i1 %i.aj, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtBV_8RowsIterEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, %.noexc
  %i.ak = phi i64 [ %i.be, %.noexc ], [ 1, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ] ; 5 uses
  %.in = phi i64 [ %i.al, %.noexc ], [ %i.v, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ]
  %.val1920.i.i = phi i64 [ %i.ao, %.noexc ], [ %i.m, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.al = add i64 %.in, 1                         ; 2 uses
  %i.am = load ptr, ptr %i.i, align 8, !noalias !31175, !nonnull !8, !noundef !8 ; 2 uses
  %i.an = load i64, ptr %i.k, align 8, !noalias !31175, !noundef !8
  %i.ao = add nuw i64 %.val1920.i.i, 1            ; 5 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.val1920.i.i
  %i.as = load ptr, ptr %i.q, align 8, !noalias !31175, !nonnull !8, !noundef !8
  %i.at = load i64, ptr %i.ar, align 8, !noalias !31175, !noundef !8 ; 2 uses
  %i.au = load i64, ptr %i.aq, align 8, !noalias !31175, !noundef !8
  %i.av = sub nuw i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.ax = icmp samesign ult i64 %i.ak, 288230376151711744
  call void @llvm.assume(i1 %i.ax)
  %i.ay = load i64, ptr %i.b, align 8, !range !83, !alias.scope !31186, !noalias !31189, !noundef !8
  %i.az = icmp eq i64 %i.ak, %i.ay
  br i1 %i.az, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.noexc

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ba = sub i64 %i.d, %i.ao
  %i.bb = call i64 @llvm.uadd.sat.i64(i64 %i.ba, i64 1)
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %i.bb, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i
  %i.bc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31186, !noalias !31189, !nonnull !8, !noundef !8
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.ak ; 4 uses
  store i64 %i.al, ptr %i.bd, align 8, !noalias !31189
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.aw, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !31189
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.av, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !31189
  %.sroa.613.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.ae, ptr %.sroa.613.0..sroa_idx.i.i, align 8, !noalias !31189
  %i.be = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.be, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31186, !noalias !31189
  %i.bf = icmp eq i64 %i.d, %i.ao
  br i1 %i.bf, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtBV_8RowsIterEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bh, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtBV_8RowsIterEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTjNtCslnB3YlOUCfj_9arrow_row3RowEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtBV_8RowsIterEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.bi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterhENtNtB1D_5ascii13EscapeDefaultNvB2V_14escape_defaultEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 20 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre.i.i = load i32, ptr %i.d, align 8, !range !19245, !alias.scope !31190
  %i.h = trunc nuw i32 %.pre.i.i to i1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.j = extractvalue { i1, i8 } %i.i, 0
  br i1 %i.j, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i32 0, ptr %i.d, align 8, !alias.scope !31190
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = load ptr, ptr %1, align 8, !alias.scope !31197, !noalias !31200, !noundef !8 ; 2 uses
  %.not.i.i.peel.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.peel.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !alias.scope !31202, !noalias !31207, !nonnull !8, !noundef !8
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !31202, !noalias !31207, !nonnull !8, !noundef !8 ; 2 uses
  %.not.i.i.i.peel.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i.i.peel.i, label %.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.e, %bb.g
  %.sink6.i = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 1
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !31209, !noalias !31207
  %i.o = load i8, ptr %.sink6.i, align 1, !noalias !31207, !noundef !8
  %i.p = invoke i64 @_RNvNtCsbvkFyIu7lgC_4core5ascii14escape_default(i8 noundef %i.o)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.peel.next.i
  store i32 1, ptr %i.d, align 8, !alias.scope !31213
  store i64 %i.p, ptr %i.e, align 4, !alias.scope !31213
  %i.q = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc8 unwind label %.loopexit ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.r = extractvalue { i1, i8 } %i.q, 0
  br i1 %i.r, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc8
  store i32 0, ptr %i.d, align 8, !alias.scope !31190
  %i.s = load ptr, ptr %1, align 8, !alias.scope !31214, !noalias !31200, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.f, align 8, !alias.scope !31215, !noalias !31207, !nonnull !8, !noundef !8
  %i.u = load ptr, ptr %i.g, align 8, !alias.scope !31215, !noalias !31207, !nonnull !8, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.peel.next.i, !llvm.loop !31216

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.v = phi ptr [ null, %bb.d ], [ %i.k, %bb.e ], [ %i.s, %bb.g ], [ null, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !range !19245, !alias.scope !31217, !noundef !8
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.loopexit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.z)
          to label %.noexc9 unwind label %.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %bb.h
  %i.ab = extractvalue { i1, i8 } %i.aa, 0
  br i1 %i.ab, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc9
  store i32 0, ptr %i.w, align 4, !alias.scope !31217
  %.pre = load ptr, ptr %1, align 8, !alias.scope !31220
  br label %bb.l

.loopexit:                                        ; preds = %.peel.next.i, %.noexc7
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.b, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc8, %.noexc, %.noexc9
  %.pn = phi { i1, i8 } [ %i.aa, %.noexc9 ], [ %i.i, %.noexc ], [ %i.q, %.noexc8 ]
  %.sroa.3.0.i7.pn.i.i.ph = extractvalue { i1, i8 } %.pn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31237)
  %i.ac = load i32, ptr %i.d, align 8, !range !19245, !alias.scope !31239, !noalias !31240, !noundef !8
  %i.ad = trunc nuw i32 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load i8, ptr %i.ae, align 8, !alias.scope !31239, !noalias !31240
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val4.i.i.i = load i8, ptr %i.af, align 1, !alias.scope !31239, !noalias !31240
  %i.ag = sub i8 %.val4.i.i.i, %.val.i.i.i
  %i.ah = zext i8 %i.ag to i64
  %.sroa.7.0.i.i = select i1 %i.ad, i64 %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !range !19245, !alias.scope !31239, !noalias !31240, !noundef !8
  %i.ak = trunc nuw i32 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val.i61.i.i = load i8, ptr %i.al, align 4, !alias.scope !31239, !noalias !31240
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 53
  %.val4.i62.i.i = load i8, ptr %i.am, align 1, !alias.scope !31239, !noalias !31240
  %i.an = sub i8 %.val4.i62.i.i, %.val.i61.i.i
  %i.ao = zext i8 %i.an to i64
  %.sroa.8.0.i.i = select i1 %i.ak, i64 %i.ao, i64 0
  %i.ap = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !alias.scope !31239, !noalias !31240, !noundef !8
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !31239, !noalias !31240, !nonnull !8, !noundef !8
  %.val59.i.i = load ptr, ptr %i.f, align 8, !alias.scope !31239, !noalias !31240, !nonnull !8, !noundef !8
  %i.ar = icmp eq ptr %.val59.i.i, %.val.i.i
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i
  br label %bb.o

bb.l:                                             ; preds = %.loopexit.i, %bb.i
  %i.as = phi ptr [ %i.v, %.loopexit.i ], [ %.pre, %bb.i ]
  store i64 0, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterhENtNtB4_5ascii13EscapeDefaultNvB2e_14escape_defaultEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterhENtNtB4_5ascii13EscapeDefaultNvB2e_14escape_defaultEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterhENtNtB4_5ascii13EscapeDefaultNvB2e_14escape_defaultEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m, %bb.l, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterhENtNtB1l_5ascii13EscapeDefaultNvB2D_14escape_defaultEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.n:                                             ; preds = %bb.p, %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.o:                                             ; preds = %bb.j, %bb.k
  %.sink78.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.k ], [ %.sroa.5, %bb.j ]
  %.sink.i.i = phi i64 [ %i.ap, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i, ptr %.sink78.i.i.sroa.phi, align 8, !alias.scope !31240, !noalias !31239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 7) ; 2 uses
  %.sroa.0.0.i = add nuw nsw i64 %i.ax, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc11 unwind label %bb.n

.noexc11:                                         ; preds = %bb.o
  %i.ay = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !107, !noundef !8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q, !prof !84

bb.p:                                             ; preds = %.noexc11
  %i.bd = load i64, ptr %i.bc, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bd) #27
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.noexc11
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bf = icmp ult i64 %i.ax, %i.bb
  tail call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %.sroa.3.0.i7.pn.i.i.ph, ptr %i.be, align 1
  store i64 %i.bb, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata17PageEncodingStatsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41346
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !41346
  %i.f = load i64, ptr %i.a, align 8, !range !79, !noalias !41346, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noalias !41346, !noundef !8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !41346
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !41346
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !41346, !nonnull !8, !noundef !8 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41346
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.p = and i64 %i.e, 2305843009213693951
  %i.q = add i64 %i.i, -1
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = and i64 %i.s, 3                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 4, i64 %i.t
  %n.vec = sub nsw i64 %i.s, %i.v                 ; 4 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.d, i64 %i.w
  %i.y = sub i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !alias.scope !41343, !noalias !41348
  %wide.load2 = load <2 x i64>, ptr %i.aa, align 4, !alias.scope !41343, !noalias !41348
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x i64> %wide.load, ptr %i.ab, align 4, !noalias !41346
  store <2 x i64> %wide.load2, ptr %i.ac, align 4, !noalias !41346
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %.lr.ph.i.preheader5, label %vector.body, !llvm.loop !41349

.lr.ph.i.preheader5:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.020.029.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.x, %vector.body ]
  %.sroa.7.028.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.027.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %i.y, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %bb.c
  %.sroa.020.029.i = phi ptr [ %i.ah, %bb.c ], [ %.sroa.020.029.i.ph, %.lr.ph.i.preheader5 ] ; 3 uses
  %.sroa.7.028.i = phi i64 [ %i.ag, %bb.c ], [ %.sroa.7.028.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %.sroa.10.027.i = phi i64 [ %i.af, %bb.c ], [ %.sroa.10.027.i.ph, %.lr.ph.i.preheader5 ]
  %i.ae = icmp eq ptr %.sroa.020.029.i, %i.n
  br i1 %i.ae, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = add i64 %.sroa.10.027.i, -1             ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.028.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  %.val19.i = load i64, ptr %.sroa.020.029.i, align 4, !alias.scope !41343, !noalias !41348
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.7.028.i
  store i64 %.val19.i, ptr %i.ai, align 4, !noalias !41346
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i, !llvm.loop !41350

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !41343
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !41343
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !41343
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.4.i22.i.sroa.8.i.i = alloca [12 x i8], align 4 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.4.i.i.sroa.8.i.i = alloca [12 x i8], align 4 ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.91.i.i = alloca [12 x i8], align 4       ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [128 x i8], align 8               ; 23 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.15103.i = alloca [128 x i8], align 8     ; 4 uses
  %.sroa.16104.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.17105.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.21109.i = alloca [24 x i8], align 8      ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !41351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !41351
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef range(i64 0, 22171567396285519) %i.v, i1 noundef zeroext false, i64 noundef 8, i64 noundef 416), !noalias !41351
  %i.w = load i64, ptr %i.q, align 8, !range !79, !noalias !41351, !noundef !8
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !107, !noalias !41351, !noundef !8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.x, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !41351
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #27, !noalias !41351
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.ac = load ptr, ptr %i.aa, align 8, !noalias !41351, !nonnull !8, !noundef !8 ; 2 uses
  %i.ad = icmp ule i64 %i.v, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !41351
  store i64 %i.z, ptr %i.r, align 8, !noalias !41351
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !41351
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %i.af, align 8, !noalias !41351
  %i.ag = getelementptr inbounds nuw [416 x i8], ptr %i.u, i64 %i.v
  %i.ah = icmp eq i64 %i.z, 0
  br i1 %i.ah, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i33.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.4.i22.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.i22.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.31.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.37.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.46.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.31.8..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.37.8..sroa_idx77.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.46.8..sroa_idx79.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.61.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.91.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %.sroa.9190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %.sroa.93.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.95.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %.sroa.99.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.cz, %.lr.ph.i
  %.sroa.013.0211.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.ay, %bb.cz ] ; 129 uses
  %.sroa.7.0210.i = phi i64 [ 0, %.lr.ph.i ], [ %i.az, %bb.cz ] ; 3 uses
  %.sroa.10.0209.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.aw, %bb.cz ]
  %i.aw = add i64 %.sroa.10.0209.i, -1            ; 2 uses
  %i.ax = icmp eq ptr %.sroa.013.0211.i, %i.ag
  br i1 %i.ax, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 416
  %i.az = add nuw nsw i64 %.sroa.7.0210.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !41354
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 352 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !41354, !nonnull !8, !noundef !8
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !noalias !41354
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.l, %.body.i.i, %bb.g
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %.pn.pn.pn.pn.i.i, %bb.l ], [ %.pn.pn.pn.pn.i.i, %.body.i.i ]
  %i.be = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !41357
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.db

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #30
          to label %bb.db unwind label %bb.cy, !noalias !41354

bb.g:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.ba, align 8, !noalias !41354, !nonnull !8, !noundef !8 ; 3 uses
  store ptr %i.bh, ptr %i.p, align 8, !noalias !41354
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 408
  %.val.i.i = load i32, ptr %i.bi, align 8, !noalias !41354, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !41354
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 224 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !107, !noalias !41354, !noundef !8
  %.not.i.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !41354
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %bb.k unwind label %bb.g, !noalias !41354

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !41354
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !41354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41354
  br label %bb.n

.body.i.i:                                        ; preds = %.body47.i.i, %bb.ba, %bb.az, %bb.ay, %bb.al, %bb.ak, %bb.aj, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body47.i.i ], [ %i.bn, %bb.m ], [ %i.ih, %bb.aj ], [ %i.ih, %bb.al ], [ %i.ih, %bb.ak ], [ %i.jz, %bb.ba ], [ %i.jz, %bb.az ], [ %i.jz, %bb.ay ] ; 2 uses
  %i.bl = load i64, ptr %i.o, align 8, !range !107, !alias.scope !41362, !noalias !41354, !noundef !8
  %i.bm = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.cy, !noalias !41354

bb.m:                                             ; preds = %bb.at, %bb.ae
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 360
  %i.bp = load <2 x i64>, ptr %i.bo, align 8, !noalias !41354
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 344
  %i.br = load <2 x i32>, ptr %i.bq, align 8, !noalias !41354
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 376
  %i.bt = load <2 x i64>, ptr %i.bs, align 8, !noalias !41354
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 392
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !41354, !noundef !8
  %i.bw = load i64, ptr %.sroa.013.0211.i, align 8, !range !79, !noalias !41354, !noundef !8
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !41354, !noundef !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i = phi i64 [ %i.bz, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !79, !noalias !41354, !noundef !8
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !41354, !noundef !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.52.0.i.i = phi i64 [ %i.ce, %bb.q ], [ undef, %bb.p ]
  %.sroa.01.0.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41354
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !range !506, !noalias !41354, !noundef !8 ; 3 uses
  %.not23.i.i = icmp eq i64 %i.cg, 8
  br i1 %.not23.i.i, label %bb.bg, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.91.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 104 ; 8 uses
  switch i64 %i.cg, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.aa
    i64 5, label %bb.ab
    i64 6, label %bb.ac
    i64 7, label %bb.ar
  ]

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 140
  %2 = load i8, ptr %i.ci, align 4, !range !13412, !alias.scope !41365, !noalias !41368, !noundef !8
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 141
  %4 = load i8, ptr %3, align 1, !range !13412, !alias.scope !41365, !noalias !41368, !noundef !8
  %i.cj = load i64, ptr %i.ch, align 8, !range !79, !alias.scope !41365, !noalias !41368, !noundef !8 ; 2 uses
  %i.ck = trunc nuw i64 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !41365, !noalias !41368
  %.sroa.5.0.i.i.i.i = select i1 %i.ck, i64 %i.cm, i64 undef
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.co = load i64, ptr %i.cn, align 8, !range !79, !alias.scope !41365, !noalias !41368, !noundef !8 ; 2 uses
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !41365, !noalias !41368
  %.sroa.54.0.i.i.i.i = select i1 %i.cp, i64 %i.cr, i64 undef
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136
  %i.ct = load i8, ptr %i.cs, align 8, !range !5531, !alias.scope !41365, !noalias !41368, !noundef !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 137
  %i.cv = load i8, ptr %i.cu, align 1, !range !5531, !alias.scope !41365, !noalias !41368, !noundef !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 138
  %i.cx = load i8, ptr %i.cw, align 2, !range !5531, !alias.scope !41365, !noalias !41368, !noundef !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 139
  %i.cz = load i8, ptr %i.cy, align 1, !range !5531, !alias.scope !41365, !noalias !41368, !noundef !8
  %i.da = zext nneg i8 %i.cz to i32
  br label %bb.bi

bb.u:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136
  %i.dc = load i32, ptr %i.db, align 8, !range !19245, !alias.scope !41372, !noalias !41375, !noundef !8 ; 2 uses
  %i.dd = trunc nuw i32 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 140
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !41372, !noalias !41375
  %.sroa.5.0.i1.i.i.i = select i1 %i.dd, i32 %i.df, i32 undef ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 144
  %i.dh = load i32, ptr %i.dg, align 8, !range !19245, !alias.scope !41372, !noalias !41375, !noundef !8 ; 2 uses
  %i.di = trunc nuw i32 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 148
  %i.dk = load i32, ptr %i.dj, align 4, !alias.scope !41372, !noalias !41375
  %.sroa.52.0.i.i.i.i = select i1 %i.di, i32 %i.dk, i32 undef
  %i.dl = load i64, ptr %i.ch, align 8, !range !79, !alias.scope !41372, !noalias !41375, !noundef !8 ; 2 uses
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !41372, !noalias !41375
  %.sroa.54.0.i2.i.i.i = select i1 %i.dm, i64 %i.do, i64 undef
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.dq = load i64, ptr %i.dp, align 8, !range !79, !alias.scope !41372, !noalias !41375, !noundef !8 ; 2 uses
  %i.dr = trunc nuw i64 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !41372, !noalias !41375
  %.sroa.56.0.i.i.i.i = select i1 %i.dr, i64 %i.dt, i64 undef
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 152
  %5 = load i8, ptr %i.du, align 8, !range !5531, !alias.scope !41372, !noalias !41375, !noundef !8
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 153
  %7 = load i8, ptr %6, align 1, !range !5531, !alias.scope !41372, !noalias !41375, !noundef !8
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 154
  %9 = load i8, ptr %8, align 2, !range !5531, !alias.scope !41372, !noalias !41375, !noundef !8
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 155
  %11 = load i8, ptr %10, align 1, !range !5531, !alias.scope !41372, !noalias !41375, !noundef !8
  %.sroa.37.sroa.0.0.extract.trunc180.i.i = trunc nuw nsw i32 %i.dc to i8
  %.sroa.46.sroa.0.0.extract.trunc149.i.i = trunc i32 %.sroa.5.0.i1.i.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift159.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc160.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift159.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift171.i.i = and i32 %.sroa.5.0.i1.i.i.i, -65536
  br label %bb.bi

bb.v:                                             ; preds = %bb.s
  %i.dv = load i64, ptr %i.ch, align 8, !range !79, !alias.scope !41377, !noalias !41380, !noundef !8 ; 2 uses
  %i.dw = trunc nuw i64 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !41377, !noalias !41380
  %.sroa.5.0.i3.i.i.i = select i1 %i.dw, i64 %i.dy, i64 undef
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.ea = load i64, ptr %i.dz, align 8, !range !79, !alias.scope !41377, !noalias !41380, !noundef !8 ; 2 uses
  %i.eb = trunc nuw i64 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !41377, !noalias !41380
  %.sroa.52.0.i4.i.i.i = select i1 %i.eb, i64 %i.ed, i64 undef
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !noalias !41354 ; 4 uses
  %.sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 140
  %i.eg = load i32, ptr %.sroa_idx68.i.i, align 4, !noalias !41354 ; 3 uses
  %i.eh = load i64, ptr %i.ee, align 8, !range !79, !alias.scope !41377, !noalias !41380, !noundef !8
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 144
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !41377, !noalias !41380
  %.sroa.54.0.i5.i.i.i = select i1 %i.ei, i64 %i.ek, i64 undef ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 152
  %i.em = load i64, ptr %i.el, align 8, !range !79, !alias.scope !41377, !noalias !41380, !noundef !8 ; 2 uses
  %i.en = trunc nuw i64 %i.em to i1
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 160
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !41377, !noalias !41380
  %.sroa.56.0.i6.i.i.i = select i1 %i.en, i64 %i.ep, i64 undef
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 168
  %i.er = load <4 x i8>, ptr %i.eq, align 8, !alias.scope !41377, !noalias !41380
  %.sroa.37.sroa.0.0.extract.trunc177.i.i = trunc i32 %i.ef to i8
  %.sroa.37.sroa.11.0.extract.shift185.i.i = lshr i32 %i.ef, 8
  %.sroa.37.sroa.11.0.extract.trunc186.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift185.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift197.i.i = lshr i32 %i.ef, 16
  %.sroa.37.sroa.12.0.extract.trunc198.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift197.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift209.i.i = lshr i32 %i.ef, 24
  %.sroa.46.sroa.0.0.extract.trunc148.i.i = trunc i32 %i.eg to i8
  %.sroa.46.sroa.11.0.extract.shift157.i.i = lshr i32 %i.eg, 8
  %.sroa.46.sroa.11.0.extract.trunc158.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift157.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift169.i.i = and i32 %i.eg, -65536
  %.sroa.53.sroa.0.0.extract.trunc138.i.i = trunc i64 %.sroa.54.0.i5.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift143.i.i = lshr i64 %.sroa.54.0.i5.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc144.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift143.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc106.i.i = trunc nuw nsw i64 %i.em to i8
  br label %bb.bi

bb.w:                                             ; preds = %bb.s
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136
  %i.et = load i32, ptr %i.es, align 8, !range !19245, !alias.scope !41382, !noalias !41385, !noundef !8
  %i.eu = trunc nuw i32 %i.et to i1
  br i1 %i.eu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 140
  %.sroa.5.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.ev, align 4, !noalias !41387
  %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 144
  %.sroa.5.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41387
  %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 148
  %.sroa.5.i.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !41387
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.i.i.sroa.5.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.4.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.4.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.0.0.copyload.i.i, %bb.x ], [ undef, %bb.w ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 152
  %i.ex = load i32, ptr %i.ew, align 8, !range !19245, !alias.scope !41382, !noalias !41385, !noundef !8
  %i.ey = trunc nuw i32 %i.ex to i1
  br i1 %i.ey, label %bb.z, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 156
  %.sroa.52.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.ez, align 4, !noalias !41387
  %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 160
  %.sroa.52.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41387
  %i.fa = zext i32 %.sroa.52.i.i.sroa.0.0.copyload.i.i to i64
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.52.i.i.sroa.4.0.i.i = phi i64 [ %.sroa.52.i.i.sroa.4.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.52.i.i.sroa.0.0.i.i = phi i64 [ %i.fa, %bb.z ], [ 0, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi i8 [ 1, %bb.z ], [ 0, %bb.y ]
  %i.fb = load i64, ptr %i.ch, align 8, !range !79, !alias.scope !41382, !noalias !41385, !noundef !8 ; 2 uses
  %i.fc = trunc nuw i64 %i.fb to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !41382, !noalias !41385
  %.sroa.54.0.i7.i.i.i = select i1 %i.fc, i64 %i.fe, i64 undef
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.fg = load i64, ptr %i.ff, align 8, !range !79, !alias.scope !41382, !noalias !41385, !noundef !8 ; 2 uses
  %i.fh = trunc nuw i64 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !41382, !noalias !41385
  %.sroa.56.0.i8.i.i.i = select i1 %i.fh, i64 %i.fj, i64 undef
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 168
  %i.fl = load <4 x i8>, ptr %i.fk, align 8, !alias.scope !41382, !noalias !41385
  %.sroa.46.sroa.0.0.extract.trunc150.i.i = trunc i32 %.sroa.5.i.i.sroa.0.0.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift161.i.i = lshr i32 %.sroa.5.i.i.sroa.0.0.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc162.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift161.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift173.i.i = and i32 %.sroa.5.i.i.sroa.0.0.i.i, -65536
  br label %bb.bi

bb.aa:                                            ; preds = %bb.s
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136
  %i.fn = load i32, ptr %i.fm, align 8, !range !19245, !alias.scope !41388, !noalias !41391, !noundef !8 ; 2 uses
  %i.fo = trunc nuw i32 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 140
  %i.fq = load i32, ptr %i.fp, align 4, !alias.scope !41388, !noalias !41391
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 144
  %i.fs = load i32, ptr %i.fr, align 8, !range !19245, !alias.scope !41388, !noalias !41391, !noundef !8 ; 2 uses
  %i.ft = trunc nuw i32 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 148
  %i.fv = load i32, ptr %i.fu, align 4, !alias.scope !41388, !noalias !41391
  %i.fw = load i64, ptr %i.ch, align 8, !range !79, !alias.scope !41388, !noalias !41391, !noundef !8 ; 2 uses
  %i.fx = trunc nuw i64 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !41388, !noalias !41391
  %.sroa.54.0.i11.i.i.i = select i1 %i.fx, i64 %i.fz, i64 undef
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.gb = load i64, ptr %i.ga, align 8, !range !79, !alias.scope !41388, !noalias !41391, !noundef !8 ; 2 uses
  %i.gc = trunc nuw i64 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !41388, !noalias !41391
  %.sroa.56.0.i12.i.i.i = select i1 %i.gc, i64 %i.ge, i64 undef
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 152
  %12 = load i8, ptr %i.gf, align 8, !range !5531, !alias.scope !41388, !noalias !41391, !noundef !8
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 153
  %14 = load i8, ptr %13, align 1, !range !5531, !alias.scope !41388, !noalias !41391, !noundef !8
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 154
  %16 = load i8, ptr %15, align 2, !range !5531, !alias.scope !41388, !noalias !41391, !noundef !8
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 155
  %18 = load i8, ptr %17, align 1, !range !5531, !alias.scope !41388, !noalias !41391, !noundef !8
  %.sroa.37.sroa.0.0.extract.trunc178.i.i = trunc nuw nsw i32 %i.fn to i8
  %i.gg = select i1 %i.fo, i32 %i.fq, i32 undef   ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc146.i.i = trunc i32 %i.gg to i8
  %.sroa.46.sroa.11.0.extract.shift153.i.i = lshr i32 %i.gg, 8
  %.sroa.46.sroa.11.0.extract.trunc154.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift153.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift165.i.i = and i32 %i.gg, -65536
  %i.gh = select i1 %i.ft, i32 %i.fv, i32 undef
  br label %bb.bi

bb.ab:                                            ; preds = %bb.s
  %i.gi = load i64, ptr %i.ch, align 8, !range !79, !alias.scope !41393, !noalias !41396, !noundef !8 ; 2 uses
  %i.gj = trunc nuw i64 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !41393, !noalias !41396
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.gn = load i64, ptr %i.gm, align 8, !range !79, !alias.scope !41393, !noalias !41396, !noundef !8 ; 2 uses
  %i.go = trunc nuw i64 %i.gn to i1
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !41393, !noalias !41396
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !noalias !41354 ; 4 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 140
  %i.gt = load i32, ptr %.sroa_idx.i.i, align 4, !noalias !41354 ; 3 uses
  %i.gu = load i64, ptr %i.gr, align 8, !range !79, !alias.scope !41393, !noalias !41396, !noundef !8
  %i.gv = trunc nuw i64 %i.gu to i1
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 144
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !41393, !noalias !41396
  %.sroa.54.0.i15.i.i.i = select i1 %i.gv, i64 %i.gx, i64 undef ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 152
  %i.gz = load i64, ptr %i.gy, align 8, !range !79, !alias.scope !41393, !noalias !41396, !noundef !8 ; 2 uses
  %i.ha = trunc nuw i64 %i.gz to i1
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 160
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !41393, !noalias !41396
  %.sroa.56.0.i16.i.i.i = select i1 %i.ha, i64 %i.hc, i64 undef
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 168
  %i.he = load <4 x i8>, ptr %i.hd, align 8, !alias.scope !41393, !noalias !41396
  %i.hf = select i1 %i.gj, i64 %i.gl, i64 undef
  %i.hg = select i1 %i.go, i64 %i.gq, i64 undef
  %.sroa.37.sroa.0.0.extract.trunc176.i.i = trunc i32 %i.gs to i8
  %.sroa.37.sroa.11.0.extract.shift183.i.i = lshr i32 %i.gs, 8
  %.sroa.37.sroa.11.0.extract.trunc184.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift183.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift195.i.i = lshr i32 %i.gs, 16
  %.sroa.37.sroa.12.0.extract.trunc196.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift195.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift207.i.i = lshr i32 %i.gs, 24
  %.sroa.46.sroa.0.0.extract.trunc147.i.i = trunc i32 %i.gt to i8
  %.sroa.46.sroa.11.0.extract.shift155.i.i = lshr i32 %i.gt, 8
  %.sroa.46.sroa.11.0.extract.trunc156.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift155.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift167.i.i = and i32 %i.gt, -65536
  %.sroa.53.sroa.0.0.extract.trunc137.i.i = trunc i64 %.sroa.54.0.i15.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift141.i.i = lshr i64 %.sroa.54.0.i15.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc142.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift141.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc105.i.i = trunc nuw nsw i64 %i.gz to i8
  br label %bb.bi

bb.ac:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41398
  %i.hh = load i64, ptr %i.ch, align 8, !range !79, !noalias !41398, !noundef !8
  %i.hi = trunc nuw i64 %i.hh to i1               ; 2 uses
  br i1 %i.hi, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !41401, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !41404, !nonnull !8, !noundef !8
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !41401, !noundef !8
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !41401, !noundef !8
  invoke void %i.hl(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.hm, ptr noundef %i.ho, i64 noundef %i.hq)
          to label %.noexc42.i.i unwind label %bb.m, !noalias !41354, !inline_history !41405

.noexc42.i.i:                                     ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !41398
  br label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc42.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc42.i.i ], [ null, %bb.ad ]
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.am, align 8, !noalias !41398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !41398
  br label %bb.af

bb.af:                                            ; preds = %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ac
  %.sroa.11.8.copyload70.i.i = phi i64 [ 1, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  store i64 %.sroa.11.8.copyload70.i.i, ptr %i.j, align 8, !noalias !41398
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 144
  %i.hs = load i64, ptr %i.hr, align 8, !range !79, !noalias !41398, !noundef !8
  %i.ht = trunc nuw i64 %i.hs to i1
  br i1 %i.ht, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41398
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !41406, !noundef !8 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i6.i.i.i.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !41409, !nonnull !8, !noundef !8
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 176
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 160
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !41406, !noundef !8
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 168
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !41406, !noundef !8
  invoke void %i.hw(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.hx, ptr noundef %i.hz, i64 noundef %i.ib)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !41410, !inline_history !41411

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  %.sroa.0.0.copyload.i7.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !41406
  %i.ic = ptrtoint ptr %.sroa.0.0.copyload.i7.i.i.i.i to i64
  br label %bb.am

bb.ai:                                            ; preds = %bb.am, %bb.af
  %.sroa.5.sroa.4.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i, %bb.am ], [ undef, %bb.af ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.am ], [ undef, %bb.af ] ; 5 uses
  %.sroa.0.0.i17.i.i.i = phi i32 [ 1, %bb.am ], [ 0, %bb.af ]
  %i.id = phi <4 x i8> [ %i.io, %bb.am ], [ undef, %bb.af ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 184
  %i.if = load i64, ptr %i.ie, align 8, !range !79, !noalias !41398, !noundef !8
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41412)
  br i1 %i.hi, label %bb.ak, label %.body.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !41415)
  call void @llvm.experimental.noalias.scope.decl(metadata !41418)
  %i.ii = load ptr, ptr %i.am, align 8, !alias.scope !41421, !noalias !41398, !noundef !8 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %.body.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !41422)
  call void @llvm.experimental.noalias.scope.decl(metadata !41425)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !41428, !nonnull !8, !noundef !8
  %i.im = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41429, !noalias !41398, !noundef !8
  %i.in = load i64, ptr %.sroa.31.8..sroa_idx75.i.i, align 8, !alias.scope !41429, !noalias !41398, !noundef !8
  invoke void %i.il(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.37.8..sroa_idx77.i.i, ptr noundef %i.im, i64 noundef %i.in)
          to label %.body.i.i unwind label %bb.aq, !noalias !41410, !inline_history !589

bb.am:                                            ; preds = %.noexc.i.i.i.i, %bb.ag
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.ic, %.noexc.i.i.i.i ], [ 0, %bb.ag ]
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !noalias !41387
  %i.io = load <4 x i8>, ptr %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !41387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41398
  br label %bb.ai

bb.an:                                            ; preds = %bb.ai
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 192
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !41398, !noundef !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.sroa.52.0.i18.i.i.i = phi i64 [ %i.iq, %bb.an ], [ undef, %bb.ai ]
  %.sroa.01.0.i19.i.i.i = phi i64 [ 1, %bb.an ], [ 0, %bb.ai ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 200
  %i.is = load i64, ptr %i.ir, align 8, !range !79, !noalias !41398, !noundef !8
  %i.it = trunc nuw i64 %i.is to i1
  br i1 %i.it, label %bb.ap, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 208
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !41398, !noundef !8
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.al
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41410
  unreachable

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.54.0.i20.i.i.i = phi i64 [ %i.iv, %bb.ap ], [ undef, %bb.ao ]
  %.sroa.03.0.i.i.i.i = phi i64 [ 1, %bb.ap ], [ 0, %bb.ao ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 216
  %i.iy = load <4 x i8>, ptr %i.ix, align 8, !noalias !41398
  %.sroa.19.8.copyload72.i.i = load i64, ptr %i.am, align 8, !noalias !41354
  %.sroa.25.8.copyload74.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !41354
  %.sroa.31.8.copyload76.i.i = load i64, ptr %.sroa.31.8..sroa_idx75.i.i, align 8, !noalias !41354
  %.sroa.37.8.copyload78.i.i = load i32, ptr %.sroa.37.8..sroa_idx77.i.i, align 8, !noalias !41354 ; 4 uses
  %.sroa.37.sroa.0.0.extract.trunc175.i.i = trunc i32 %.sroa.37.8.copyload78.i.i to i8
  %.sroa.37.sroa.11.0.extract.shift181.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 8
  %.sroa.37.sroa.11.0.extract.trunc182.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift181.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift193.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 16
  %.sroa.37.sroa.12.0.extract.trunc194.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift193.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift205.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 24
  %.sroa.46.8.copyload80.i.i = load i32, ptr %.sroa.46.8..sroa_idx79.i.i, align 4, !noalias !41354 ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc145.i.i = trunc i32 %.sroa.46.8.copyload80.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift151.i.i = lshr i32 %.sroa.46.8.copyload80.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc152.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift151.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift163.i.i = and i32 %.sroa.46.8.copyload80.i.i, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41387
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc104.i.i = trunc i64 %.sroa.5.sroa.0.0.i.i.i.i to i8
  %.sroa.61.sroa.0.sroa.10.0.extract.shift109232.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.extract.trunc110.i.i = trunc i64 %.sroa.61.sroa.0.sroa.10.0.extract.shift109232.i.i to i8
  %.sroa.61.sroa.0.sroa.12.0.extract.shift117233.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.extract.trunc118.i.i = trunc i64 %.sroa.61.sroa.0.sroa.12.0.extract.shift117233.i.i to i8
  %.sroa.61.sroa.0.sroa.14.0.extract.shift125234.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 24
  %.sroa.61.sroa.0.sroa.14.0.extract.trunc126.i.i = trunc i64 %.sroa.61.sroa.0.sroa.14.0.extract.shift125234.i.i to i8
  %.sroa.61.sroa.16.0.extract.shift97.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, i64 12, i1 false), !noalias !41354
  br label %bb.bi

bb.ar:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41430
  %i.iz = load i64, ptr %i.ch, align 8, !range !79, !noalias !41430, !noundef !8
  %i.ja = trunc nuw i64 %i.iz to i1               ; 2 uses
  br i1 %i.ja, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 112
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !41433, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !41438, !nonnull !8, !noundef !8
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 136
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 120
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !41433, !noundef !8
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 128
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !41433, !noundef !8
  invoke void %i.jd(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.je, ptr noundef %i.jg, i64 noundef %i.ji)
          to label %.noexc43.i.i unwind label %bb.m, !noalias !41354, !inline_history !41405

.noexc43.i.i:                                     ; preds = %bb.at
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !41430
  br label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc43.i.i, %bb.as
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.noexc43.i.i ], [ null, %bb.as ]
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.aj, align 8, !noalias !41430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i33.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !41430
  br label %bb.au

bb.au:                                            ; preds = %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ar
  %.sroa.11.8.copyload.i.i = phi i64 [ 1, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  store i64 %.sroa.11.8.copyload.i.i, ptr %i.g, align 8, !noalias !41430
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 144
  %i.jk = load i64, ptr %i.jj, align 8, !range !79, !noalias !41430, !noundef !8
  %i.jl = trunc nuw i64 %i.jk to i1
  br i1 %i.jl, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41430
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !41439, !noundef !8 ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i6.i.i.i.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !41444, !nonnull !8, !noundef !8
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 176
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 160
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !41439, !noundef !8
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 168
  %i.jt = load i64, ptr %i.js, align 8, !noalias !41439, !noundef !8
  invoke void %i.jo(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.jp, ptr noundef %i.jr, i64 noundef %i.jt)
          to label %.noexc.i32.i.i.i unwind label %bb.ay, !noalias !41445, !inline_history !41446

.noexc.i32.i.i.i:                                 ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i7.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !41447
  %i.ju = ptrtoint ptr %.sroa.0.0.copyload.i.i7.i.i.i.i to i64
  br label %bb.bb

bb.ax:                                            ; preds = %bb.bb, %bb.au
  %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i, %bb.bb ], [ undef, %bb.au ]
  %.sroa.5.sroa.0.0.i24.i.i.i = phi i64 [ %.sroa.0.0.i.i8.i.i.i.i, %bb.bb ], [ undef, %bb.au ] ; 5 uses
  %.sroa.0.0.i25.i.i.i = phi i32 [ 1, %bb.bb ], [ 0, %bb.au ]
  %i.jv = phi <4 x i8> [ %i.kg, %bb.bb ], [ undef, %bb.au ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 184
  %i.jx = load i64, ptr %i.jw, align 8, !range !79, !noalias !41430, !noundef !8
  %i.jy = trunc nuw i64 %i.jx to i1
  br i1 %i.jy, label %bb.bc, label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41448)
  br i1 %i.ja, label %bb.az, label %.body.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !41451)
  call void @llvm.experimental.noalias.scope.decl(metadata !41454)
  call void @llvm.experimental.noalias.scope.decl(metadata !41457)
  %i.ka = load ptr, ptr %i.aj, align 8, !alias.scope !41460, !noalias !41430, !noundef !8 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %.body.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !41461)
  call void @llvm.experimental.noalias.scope.decl(metadata !41464)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !41467, !nonnull !8, !noundef !8
  %i.ke = load ptr, ptr %.sroa.4.0..sroa_idx.i33.i.i.i, align 8, !alias.scope !41468, !noalias !41430, !noundef !8
  %i.kf = load i64, ptr %.sroa.31.8..sroa_idx.i.i, align 8, !alias.scope !41468, !noalias !41430, !noundef !8
  invoke void %i.kd(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.37.8..sroa_idx.i.i, ptr noundef %i.ke, i64 noundef %i.kf)
          to label %.body.i.i unwind label %bb.bf, !noalias !41445, !inline_history !534

bb.bb:                                            ; preds = %.noexc.i32.i.i.i, %bb.av
  %.sroa.0.0.i.i8.i.i.i.i = phi i64 [ %i.ju, %.noexc.i32.i.i.i ], [ 0, %bb.av ]
  %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i = load i64, ptr %i.ak, align 8, !noalias !41387
  %i.kg = load <4 x i8>, ptr %.sroa.5.sroa.4.i22.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !41387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41430
  br label %bb.ax

bb.bc:                                            ; preds = %bb.ax
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 192
  %i.ki = load i64, ptr %i.kh, align 8, !noalias !41430, !noundef !8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %.sroa.52.0.i26.i.i.i = phi i64 [ %i.ki, %bb.bc ], [ undef, %bb.ax ]
  %.sroa.01.0.i27.i.i.i = phi i64 [ 1, %bb.bc ], [ 0, %bb.ax ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 200
  %i.kk = load i64, ptr %i.kj, align 8, !range !79, !noalias !41430, !noundef !8
  %i.kl = trunc nuw i64 %i.kk to i1
  br i1 %i.kl, label %bb.be, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 208
  %i.kn = load i64, ptr %i.km, align 8, !noalias !41430, !noundef !8
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.bf:                                            ; preds = %bb.ba
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41445
  unreachable

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %.sroa.54.0.i28.i.i.i = phi i64 [ %i.kn, %bb.be ], [ undef, %bb.bd ]
  %.sroa.03.0.i29.i.i.i = phi i64 [ 1, %bb.be ], [ 0, %bb.bd ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 216
  %i.kq = load <4 x i8>, ptr %i.kp, align 8, !noalias !41430
  %.sroa.19.8.copyload.i.i = load i64, ptr %i.aj, align 8, !noalias !41354
  %.sroa.25.8.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i33.i.i.i, align 8, !noalias !41354
  %.sroa.31.8.copyload.i.i = load i64, ptr %.sroa.31.8..sroa_idx.i.i, align 8, !noalias !41354
  %.sroa.37.8.copyload.i.i = load i32, ptr %.sroa.37.8..sroa_idx.i.i, align 8, !noalias !41354 ; 4 uses
  %.sroa.37.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.37.8.copyload.i.i to i8
  %.sroa.37.sroa.11.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 8
  %.sroa.37.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 16
  %.sroa.37.sroa.12.0.extract.trunc.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 24
  %.sroa.46.8.copyload.i.i = load i32, ptr %.sroa.46.8..sroa_idx.i.i, align 4, !noalias !41354 ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.46.8.copyload.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift.i.i = lshr i32 %.sroa.46.8.copyload.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift.i.i = and i32 %.sroa.46.8.copyload.i.i, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41387
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc103.i.i = trunc i64 %.sroa.5.sroa.0.0.i24.i.i.i to i8
  %.sroa.61.sroa.0.sroa.10.0.extract.shift107229.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.extract.trunc108.i.i = trunc i64 %.sroa.61.sroa.0.sroa.10.0.extract.shift107229.i.i to i8
  %.sroa.61.sroa.0.sroa.12.0.extract.shift115230.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.extract.trunc116.i.i = trunc i64 %.sroa.61.sroa.0.sroa.12.0.extract.shift115230.i.i to i8
  %.sroa.61.sroa.0.sroa.14.0.extract.shift123231.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 24
  %.sroa.61.sroa.0.sroa.14.0.extract.trunc124.i.i = trunc i64 %.sroa.61.sroa.0.sroa.14.0.extract.shift123231.i.i to i8
  %.sroa.61.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, i64 12, i1 false), !noalias !41354
  br label %bb.bi

bb.bg:                                            ; preds = %bb.r
  store i64 8, ptr %i.n, align 8, !noalias !41354
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 400
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !41354, !align !1754, !noundef !8 ; 10 uses
  %.not24.i.i = icmp eq ptr %i.ks, null
  br i1 %.not24.i.i, label %bb.bq, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ab, %bb.aa, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.v, %bb.u, %bb.t
  %.sroa.37.sroa.13.0.i.i = phi i32 [ %i.da, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.13.0.extract.shift209.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.13.0.extract.shift207.i.i, %bb.ab ], [ %.sroa.37.sroa.13.0.extract.shift205.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.13.0.extract.shift.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.37.sroa.12.0.i.i = phi i8 [ %i.cx, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.12.0.extract.trunc198.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.12.0.extract.trunc196.i.i, %bb.ab ], [ %.sroa.37.sroa.12.0.extract.trunc194.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.12.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.37.sroa.11.0.i.i = phi i8 [ %i.cv, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.11.0.extract.trunc186.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.11.0.extract.trunc184.i.i, %bb.ab ], [ %.sroa.37.sroa.11.0.extract.trunc182.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.11.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.37.sroa.0.0.i.i = phi i8 [ %i.ct, %bb.t ], [ %.sroa.37.sroa.0.0.extract.trunc180.i.i, %bb.u ], [ %.sroa.37.sroa.0.0.extract.trunc177.i.i, %bb.v ], [ %.sroa.0.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.0.0.extract.trunc178.i.i, %bb.aa ], [ %.sroa.37.sroa.0.0.extract.trunc176.i.i, %bb.ab ], [ %.sroa.37.sroa.0.0.extract.trunc175.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.46.sroa.12.0.i.i = phi i32 [ 0, %bb.t ], [ %.sroa.46.sroa.12.0.extract.shift171.i.i, %bb.u ], [ %.sroa.46.sroa.12.0.extract.shift169.i.i, %bb.v ], [ %.sroa.46.sroa.12.0.extract.shift173.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.12.0.extract.shift165.i.i, %bb.aa ], [ %.sroa.46.sroa.12.0.extract.shift167.i.i, %bb.ab ], [ %.sroa.46.sroa.12.0.extract.shift163.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.12.0.extract.shift.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.46.sroa.11.0.i.i = phi i8 [ %4, %bb.t ], [ %.sroa.46.sroa.11.0.extract.trunc160.i.i, %bb.u ], [ %.sroa.46.sroa.11.0.extract.trunc158.i.i, %bb.v ], [ %.sroa.46.sroa.11.0.extract.trunc162.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.11.0.extract.trunc154.i.i, %bb.aa ], [ %.sroa.46.sroa.11.0.extract.trunc156.i.i, %bb.ab ], [ %.sroa.46.sroa.11.0.extract.trunc152.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.11.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.46.sroa.0.0.i.i = phi i8 [ %2, %bb.t ], [ %.sroa.46.sroa.0.0.extract.trunc149.i.i, %bb.u ], [ %.sroa.46.sroa.0.0.extract.trunc148.i.i, %bb.v ], [ %.sroa.46.sroa.0.0.extract.trunc150.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.0.0.extract.trunc146.i.i, %bb.aa ], [ %.sroa.46.sroa.0.0.extract.trunc147.i.i, %bb.ab ], [ %.sroa.46.sroa.0.0.extract.trunc145.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.53.sroa.10.0.i.i = phi i32 [ undef, %bb.t ], [ %.sroa.52.0.i.i.i.i, %bb.u ], [ %.sroa.53.sroa.10.0.extract.trunc144.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.5.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gh, %bb.aa ], [ %.sroa.53.sroa.10.0.extract.trunc142.i.i, %bb.ab ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.53.sroa.0.0.i.i = phi i32 [ undef, %bb.t ], [ %i.dh, %bb.u ], [ %.sroa.53.sroa.0.0.extract.trunc138.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.4.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.fs, %bb.aa ], [ %.sroa.53.sroa.0.0.extract.trunc137.i.i, %bb.ab ], [ %.sroa.0.0.i17.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.0.0.i25.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.14.0.i.i = phi i8 [ undef, %bb.t ], [ %11, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %18, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.14.0.extract.trunc126.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.14.0.extract.trunc124.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.12.0.i.i = phi i8 [ undef, %bb.t ], [ %9, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %16, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.12.0.extract.trunc118.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.12.0.extract.trunc116.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.10.0.i.i = phi i8 [ undef, %bb.t ], [ %7, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %14, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.10.0.extract.trunc110.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.10.0.extract.trunc108.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.0.0.i.i = phi i8 [ undef, %bb.t ], [ %5, %bb.u ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc106.i.i, %bb.v ], [ %.sroa.01.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %12, %bb.aa ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc105.i.i, %bb.ab ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc104.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc103.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.16.0.i.i = phi i64 [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ %.sroa.52.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.16.0.extract.shift97.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.16.0.extract.shift.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.97.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.54.0.i20.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.54.0.i28.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.95.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.03.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.03.0.i29.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.93.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.52.0.i18.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.52.0.i26.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.9190.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.01.0.i19.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.01.0.i27.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.75.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ %.sroa.56.0.i6.i.i.i, %bb.v ], [ %.sroa.52.i.i.sroa.4.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ %.sroa.56.0.i16.i.i.i, %bb.ab ], [ %.sroa.5.sroa.4.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.31.0.i.i = phi i64 [ %.sroa.54.0.i.i.i.i, %bb.t ], [ %.sroa.56.0.i.i.i.i, %bb.u ], [ %.sroa.52.0.i4.i.i.i, %bb.v ], [ %.sroa.56.0.i8.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.56.0.i12.i.i.i, %bb.aa ], [ %i.hg, %bb.ab ], [ %.sroa.31.8.copyload76.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.31.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.25.0.i.i = phi i64 [ %i.co, %bb.t ], [ %i.dq, %bb.u ], [ %i.ea, %bb.v ], [ %i.fg, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gb, %bb.aa ], [ %i.gn, %bb.ab ], [ %.sroa.25.8.copyload74.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.25.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.19.0.i.i = phi i64 [ %.sroa.5.0.i.i.i.i, %bb.t ], [ %.sroa.54.0.i2.i.i.i, %bb.u ], [ %.sroa.5.0.i3.i.i.i, %bb.v ], [ %.sroa.54.0.i7.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.54.0.i11.i.i.i, %bb.aa ], [ %i.hf, %bb.ab ], [ %.sroa.19.8.copyload72.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.19.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.11.0.i.i = phi i64 [ %i.cj, %bb.t ], [ %i.dl, %bb.u ], [ %i.dv, %bb.v ], [ %i.fb, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.fw, %bb.aa ], [ %i.gi, %bb.ab ], [ %.sroa.11.8.copyload70.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.11.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %i.kt = phi <4 x i8> [ undef, %bb.t ], [ undef, %bb.u ], [ %i.er, %bb.v ], [ %i.fl, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ %i.he, %bb.ab ], [ %i.id, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.jv, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %i.ku = phi <4 x i8> [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.iy, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.kq, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  store i64 %i.cg, ptr %i.n, align 8, !noalias !41354
  store i64 %.sroa.11.0.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !41354
  store i64 %.sroa.19.0.i.i, ptr %.sroa.19.0..sroa_idx.i.i, align 8, !noalias !41354
  store i64 %.sroa.25.0.i.i, ptr %.sroa.25.0..sroa_idx.i.i, align 8, !noalias !41354
  store i64 %.sroa.31.0.i.i, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !noalias !41354
  %.sroa.37.sroa.13.0.insert.shift.i.i = shl nuw i32 %.sroa.37.sroa.13.0.i.i, 24
  %.sroa.37.sroa.12.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.12.0.i.i to i32
  %.sroa.37.sroa.12.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.37.sroa.12.0.insert.ext.i.i, 16
  %.sroa.37.sroa.12.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.12.0.insert.shift.i.i, %.sroa.37.sroa.13.0.insert.shift.i.i
  %.sroa.37.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.11.0.i.i to i32
  %.sroa.37.sroa.11.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.37.sroa.11.0.insert.ext.i.i, 8
  %.sroa.37.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.12.0.insert.insert.i.i, %.sroa.37.sroa.11.0.insert.shift.i.i
  %.sroa.37.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.0.0.i.i to i32
  %.sroa.37.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.11.0.insert.insert.i.i, %.sroa.37.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.37.sroa.0.0.insert.insert.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !noalias !41354
  %.sroa.46.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.46.sroa.11.0.i.i to i32
  %.sroa.46.sroa.11.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.46.sroa.11.0.insert.ext.i.i, 8
  %.sroa.46.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.46.sroa.11.0.insert.shift.i.i, %.sroa.46.sroa.12.0.i.i
  %.sroa.46.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.46.sroa.0.0.i.i to i32
  %.sroa.46.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.46.sroa.11.0.insert.insert.i.i, %.sroa.46.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.46.sroa.0.0.insert.insert.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !noalias !41354
  store i32 %.sroa.53.sroa.0.0.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !41354
  store i32 %.sroa.53.sroa.10.0.i.i, ptr %.sroa.53.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !41354
  %.sroa.61.sroa.0.sroa.14.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.14.0.i.i to i64
  %.sroa.61.sroa.0.sroa.14.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.14.0.insert.ext.i.i, 24
  %.sroa.61.sroa.0.sroa.12.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.12.0.i.i to i64
  %.sroa.61.sroa.0.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.12.0.insert.ext.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.12.0.insert.shift.i.i, %.sroa.61.sroa.0.sroa.14.0.insert.shift.i.i
  %.sroa.61.sroa.0.sroa.10.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.10.0.i.i to i64
  %.sroa.61.sroa.0.sroa.10.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.10.0.insert.ext.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.12.0.insert.insert.i.i, %.sroa.61.sroa.0.sroa.10.0.insert.shift.i.i
  %.sroa.61.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.0.0.i.i to i64
  %.sroa.61.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.10.0.insert.insert.i.i, %.sroa.61.sroa.0.sroa.0.0.insert.ext.i.i
  %.sroa.61.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.61.sroa.16.0.i.i, 32
  %.sroa.61.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.0.0.insert.insert.i.i, %.sroa.61.sroa.16.0.insert.shift.i.i
  store i64 %.sroa.61.sroa.0.0.insert.insert.i.i, ptr %.sroa.61.0..sroa_idx.i.i, align 8, !noalias !41354
  store i64 %.sroa.75.0.i.i, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !41354
  store <4 x i8> %i.kt, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !noalias !41354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, i64 12, i1 false), !noalias !41354
  store i64 %.sroa.9190.0.i.i, ptr %.sroa.9190.0..sroa_idx.i.i, align 8, !noalias !41354
  store i64 %.sroa.93.0.i.i, ptr %.sroa.93.0..sroa_idx.i.i, align 8, !noalias !41354
  store i64 %.sroa.95.0.i.i, ptr %.sroa.95.0..sroa_idx.i.i, align 8, !noalias !41354
  store i64 %.sroa.97.0.i.i, ptr %.sroa.97.0..sroa_idx.i.i, align 8, !noalias !41354
  store <4 x i8> %i.ku, ptr %.sroa.99.0..sroa_idx.i.i, align 8, !noalias !41354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.91.i.i)
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  %i.kv = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsE13new_uninit_inCs14kWLkQVSKO_14deltalake_core()
          to label %.noexc46.i.i unwind label %bb.br, !noalias !41354 ; 11 uses

.noexc46.i.i:                                     ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !41469)
  call void @llvm.experimental.noalias.scope.decl(metadata !41472)
  %i.kw = load i64, ptr %i.ks, align 8, !range !242, !alias.scope !41475, !noalias !41476, !noundef !8 ; 3 uses
  %.not.i.i.i44.i.i = icmp eq i64 %i.kw, 2
  br i1 %.not.i.i.i44.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc46.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.ky = load <2 x double>, ptr %i.kx, align 8, !alias.scope !41475, !noalias !41476
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 64
  %i.la = load <2 x double>, ptr %i.kz, align 8, !alias.scope !41475, !noalias !41476
  %i.lb = trunc i64 %i.kw to i1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ld = load <2 x double>, ptr %i.lc, align 8, !alias.scope !41475, !noalias !41476
  %i.le = insertelement <2 x i1> poison, i1 %i.lb, i64 0
  %i.lf = shufflevector <2 x i1> %i.le, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lg = select <2 x i1> %i.lf, <2 x double> %i.ld, <2 x double> undef
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.li = load i64, ptr %i.lh, align 8, !range !79, !alias.scope !41475, !noalias !41476, !noundef !8 ; 2 uses
  %i.lj = trunc nuw i64 %i.li to i1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ll = load <2 x double>, ptr %i.lk, align 8, !alias.scope !41475, !noalias !41476
  %i.lm = insertelement <2 x i1> poison, i1 %i.lj, i64 0
  %i.ln = shufflevector <2 x i1> %i.lm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lo = select <2 x i1> %i.ln, <2 x double> %i.ll, <2 x double> undef
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.noexc46.i.i
  %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.li, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.lp = phi <2 x double> [ %i.lg, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.lq = phi <2 x double> [ %i.lo, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.lr = phi <2 x double> [ %i.ky, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.ls = phi <2 x double> [ %i.la, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ks, i64 80
  %i.lu = load i64, ptr %i.lt, align 8, !range !107, !alias.scope !41475, !noalias !41476, !noundef !8
  %.not16.i.i.i.i.i = icmp eq i64 %i.lu, -9223372036854775808
  br i1 %.not16.i.i.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !41478)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ks, i64 96
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ks, i64 88
  %i.lx = load ptr, ptr %i.lw, align 8, !alias.scope !41481, !noalias !41482, !nonnull !8, !noundef !8
  %i.ly = load i64, ptr %i.lv, align 8, !alias.scope !41481, !noalias !41482, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41484
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 2305843009213693952) %i.ly, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit.i, !noalias !41354

.noexc.i.i.i:                                     ; preds = %bb.bm
  %i.lz = load i64, ptr %i.d, align 8, !range !79, !noalias !41484, !noundef !8
  %i.ma = trunc nuw i64 %i.lz to i1
  %i.mb = load i64, ptr %i.ao, align 8, !range !107, !noalias !41484, !noundef !8 ; 4 uses
  br i1 %i.ma, label %bb.bn, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, !prof !84

bb.bn:                                            ; preds = %.noexc.i.i.i
  %i.mc = load i64, ptr %i.ap, align 8, !noalias !41484
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.mb, i64 %i.mc) #27
          to label %.noexc1.i.i.i unwind label %.loopexit.split-lp.i, !noalias !41354

.noexc1.i.i.i:                                    ; preds = %bb.bn
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.md = load ptr, ptr %i.ap, align 8, !noalias !41484, !nonnull !8, !noundef !8 ; 3 uses
  %i.me = icmp ule i64 %i.ly, %i.mb
  call void @llvm.assume(i1 %i.me)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41484
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  %i.mf = shl nuw nsw i64 %i.ly, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.md, ptr nonnull readonly align 4 %i.lx, i64 %i.mf, i1 false), !noalias !41488
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i

.loopexit.i:                                      ; preds = %bb.bm
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp.i:                             ; preds = %bb.bn
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef 104, i64 noundef 8) #31, !noalias !41354
  br label %.body47.i.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bo, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %bb.bl
  %.sroa.55.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %bb.bl ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.ly, %bb.bo ]
  %.sroa.55.sroa.0.0.i.i.i.i.i = phi ptr [ undef, %bb.bl ], [ %i.md, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.md, %bb.bo ]
  %.sroa.03.0.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.bl ], [ %i.mb, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.mb, %bb.bo ]
  store i64 %i.kw, ptr %i.kv, align 8, !noalias !41489
  %.sroa.4.0..sroa_idx.i.i45.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store <2 x double> %i.lp, ptr %.sroa.4.0..sroa_idx.i.i45.i.i, align 8, !noalias !41489
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  store i64 %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !41489
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  store <2 x double> %i.lq, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !41489
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  store <2 x double> %i.lr, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !41489
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  store <2 x double> %i.ls, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !41489
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 80
  store i64 %.sroa.03.0.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !41489
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 88
  store ptr %.sroa.55.sroa.0.0.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !41489
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 96
  store i64 %.sroa.55.sroa.4.0.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !41489
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.bh
  %storemerge.i.i = phi ptr [ null, %bb.bh ], [ %i.kv, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !41354
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 296
  %i.mh = load i64, ptr %i.mg, align 8, !range !271, !noalias !41354, !noundef !8 ; 2 uses
  %.not25.i.i = icmp eq i64 %i.mh, -9223372036854775807
  br i1 %.not25.i.i, label %bb.bx, label %bb.bs

.body47.i.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata24ParquetPageEncodingStatsEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.br, %bb.bp
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata24ParquetPageEncodingStatsEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.mi, %bb.br ], [ %lpad.phi.i, %bb.bp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10statistics10StatisticsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(128) %i.n) #29
          to label %.body.i.i unwind label %bb.cy, !noalias !41354

bb.br:                                            ; preds = %bb.bj
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i.i

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !41490)
  call void @llvm.experimental.noalias.scope.decl(metadata !41493)
  %i.mj = icmp eq i64 %i.mh, -9223372036854775808
  br i1 %i.mj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %.sroa.5.0..sroa_idx219.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 304
  %.sroa.5.0.copyload220.i.i = load ptr, ptr %.sroa.5.0..sroa_idx219.i.i, align 8, !alias.scope !41495, !noalias !41354
  %.sroa.6.0..sroa_idx221.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 312
  %.sroa.6.0.copyload222.i.i = load i64, ptr %.sroa.6.0..sroa_idx221.i.i, align 8, !alias.scope !41495, !noalias !41354
  br label %_RNvXsA_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_24ParquetPageEncodingStatsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !41496)
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 312
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.013.0211.i, i64 304
  %i.mm = load ptr, ptr %i.ml, align 8, !alias.scope !41499, !noalias !41500, !nonnull !8, !noundef !8 ; 4 uses
  %i.mn = load i64, ptr %i.mk, align 8, !alias.scope !41499, !noalias !41500, !noundef !8 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41502)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41505
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %i.mn, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc51.i.i unwind label %.loopexit139.i, !noalias !41354

.noexc51.i.i:                                     ; preds = %bb.bu
  %i.mo = load i64, ptr %i.c, align 8, !range !79, !noalias !41505, !noundef !8
  %i.mp = trunc nuw i64 %i.mo to i1
  %i.mq = load i64, ptr %i.aq, align 8, !range !107, !noalias !41505, !noundef !8 ; 8 uses
  br i1 %i.mp, label %bb.bv, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !prof !84

bb.bv:                                            ; preds = %.noexc51.i.i
  %i.mr = load i64, ptr %i.ar, align 8, !noalias !41505
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.mq, i64 %i.mr) #27
          to label %.noexc52.i.i unwind label %.loopexit.split-lp140.i, !noalias !41354

.noexc52.i.i:                                     ; preds = %bb.bv
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %.noexc51.i.i
  %i.ms = load ptr, ptr %i.ar, align 8, !noalias !41505, !nonnull !8, !noundef !8 ; 5 uses
  %i.mt = icmp ule i64 %i.mn, %i.mq
  call void @llvm.assume(i1 %i.mt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41505
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mn
  %i.mv = icmp eq i64 %i.mq, 0
  br i1 %i.mv, label %_RNvXsA_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_24ParquetPageEncodingStatsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.mw = and i64 %i.mn, 2305843009213693951
  %i.mx = add i64 %i.mq, -1
  %i.my = call i64 @llvm.umin.i64(i64 %i.mw, i64 %i.mx) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.my, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader252, label %vector.ph
end_hunk_1
