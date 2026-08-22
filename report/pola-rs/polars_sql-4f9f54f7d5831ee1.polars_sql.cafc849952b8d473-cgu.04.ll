Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.04?download=true
inline.NumInlined: 4360
inline.NumDeleted: 1085
begin_hunk_0_@_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshquuC4dCYVj_10polars_sql:bb.a
.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 80, !dbg !15712
  %i.u = add nuw nsw i64 %.sroa.7.026, 1, !dbg !15715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15718
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15720), !dbg !15723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15729
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 23, !dbg !15729
  %i.w = load i8, ptr %i.v, align 1, !dbg !15729, !range !1208, !alias.scope !15720, !noalias !15735, !noundef !13
  %i.x = icmp eq i8 %i.w, -40, !dbg !15737
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !15737

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.014.027) #26
          to label %.noexc unwind label %.loopexit, !dbg !15738

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(80) %.sroa.014.027, i64 24, i1 false), !dbg !15739, !noalias !15735
  br label %.noexc, !dbg !15741

.noexc:                                           ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !15742, !noalias !15720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15743
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 32, !dbg !15723
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.q, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.y)
          to label %_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.g, !dbg !15723, !inline_history !15744

bb.g:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !15745
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !15745, !range !1208, !alias.scope !15752, !noundef !13
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !15761
  br i1 %i.ac, label %bb.h, label %bb.k, !dbg !15761, !prof !52

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.c)
          to label %bb.k unwind label %bb.i, !dbg !15762

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !15723, !inline_history !15744
  unreachable, !dbg !15723

_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %.sroa.7.026, !dbg !15763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ae, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !15764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15767
  %i.af = icmp eq i64 %i.r, 0, !dbg !15690
  br i1 %i.af, label %.thread, label %bb.c, !dbg !15690

bb.j:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !15768
  unreachable, !dbg !15768

bb.k:                                             ; preds = %.loopexit, %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.026, ptr %i.n, align 8, !dbg !15769
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.l unwind label %bb.j, !dbg !15710

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body, !dbg !15768
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 16 %1, i64 noundef range(i64 0, 52405522936674863) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15776 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [176 x i8], align 16              ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15778
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 16, i64 noundef 176), !dbg !15778
  %i.e = load i64, ptr %i.b, align 8, !dbg !15778, !range !17, !noundef !13
  %i.f = trunc nuw i64 %i.e to i1, !dbg !15784
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15785
  %i.h = load i64, ptr %i.g, align 8, !dbg !15785, !range !824, !noundef !13 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15785 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit, !dbg !15784, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !dbg !15786
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #24, !dbg !15787
  unreachable, !dbg !15787

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !dbg !15788, !nonnull !13, !noundef !13 ; 2 uses
  %i.l = icmp ule i64 %2, %i.h, !dbg !15789
  tail call void @llvm.assume(i1 %i.l), !dbg !15791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15793
  store i64 %i.h, ptr %i.d, align 8, !dbg !15794
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15794
  store ptr %i.k, ptr %i.m, align 8, !dbg !15794
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15794 ; 2 uses
  %i.o = getelementptr inbounds nuw [176 x i8], ptr %1, i64 %2, !dbg !15795
  %i.p = icmp eq i64 %i.h, 0, !dbg !15807
  br i1 %i.p, label %.thread, label %.lr.ph, !dbg !15807

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.c, !dbg !15807

bb.c:                                             ; preds = %.lr.ph, %_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  %.sroa.014.027 = phi ptr [ %1, %.lr.ph ], [ %i.t, %_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit ] ; 6 uses
  %.sroa.7.026 = phi i64 [ 0, %.lr.ph ], [ %i.u, %_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit ] ; 3 uses
  %.sroa.10.025 = phi i64 [ %i.h, %.lr.ph ], [ %i.r, %_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit ]
  %i.r = add i64 %.sroa.10.025, -1, !dbg !15812   ; 2 uses
  %i.s = icmp eq ptr %.sroa.014.027, %i.o, !dbg !15813
  br i1 %i.s, label %.thread, label %bb.d, !dbg !15822

.thread:                                          ; preds = %_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshquuC4dCYVj_10polars_sql.exit
  store i64 %2, ptr %i.n, align 8, !dbg !15823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !15826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15827
  ret void, !dbg !15828

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 176, !dbg !15829
  %i.u = add nuw nsw i64 %.sroa.7.026, 1, !dbg !15832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15837), !dbg !15840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15843
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 23, !dbg !15843
  %i.w = load i8, ptr %i.v, align 1, !dbg !15843, !range !1208, !alias.scope !15837, !noalias !15849, !noundef !13
  %i.x = icmp eq i8 %i.w, -40, !dbg !15851
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !15851

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(24) %.sroa.014.027) #26
          to label %.noexc unwind label %.loopexit, !dbg !15852

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %.sroa.014.027, i64 24, i1 false), !dbg !15853, !noalias !15849
  br label %.noexc, !dbg !15855

.noexc:                                           ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !15856, !noalias !15837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15857
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 32, !dbg !15840
  invoke fastcc void @_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.q, ptr noundef nonnull align 16 %i.y)
          to label %_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.g, !dbg !15840, !inline_history !15858

bb.g:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !15859
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !15859, !range !1208, !alias.scope !15866, !noundef !13
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !15875
  br i1 %i.ac, label %bb.h, label %bb.k, !dbg !15875, !prof !52

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 16 dereferenceable(176) %i.c)
          to label %bb.k unwind label %bb.i, !dbg !15876

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !15840, !inline_history !15858
  unreachable, !dbg !15840

_RNvYTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw [176 x i8], ptr %i.k, i64 %.sroa.7.026, !dbg !15877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.ae, ptr noundef nonnull align 16 dereferenceable(176) %i.c, i64 176, i1 false), !dbg !15878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15881
  %i.af = icmp eq i64 %i.r, 0, !dbg !15807
  br i1 %i.af, label %.thread, label %bb.c, !dbg !15807

bb.j:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !15882
  unreachable, !dbg !15882

bb.k:                                             ; preds = %.loopexit, %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.026, ptr %i.n, align 8, !dbg !15883
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.l unwind label %bb.j, !dbg !15827

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body, !dbg !15882
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_7FromHex8from_hexNtNtBt_6string6StringECshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15890 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15894
  %.val7 = load i64, ptr %i.b, align 8, !dbg !15894, !noundef !13 ; 2 uses
  %i.c = and i64 %.val7, 1, !dbg !15895
  %i.d = icmp eq i64 %i.c, 0, !dbg !15895
  br i1 %i.d, label %bb.c, label %bb.d, !dbg !15895

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !15897

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15894
  %.val = load ptr, ptr %i.f, align 8, !dbg !15894, !nonnull !13, !noundef !13
  store ptr %.val, ptr %i.a, align 8, !dbg !15899
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15899
  store i64 %.val7, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !dbg !15899
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15899
  store <2 x i64> <i64 2, i64 0>, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !dbg !15899
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB2c_7FromHex8from_hexNtNtB2z_6string6StringE0EhINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2c_5error12FromHexErrorENCINvXso_B3T_IB3R_B2u_B4D_EINtNtNtB4_6traits7collect12FromIteratorIB3R_hB4D_EE9from_iterBQ_E0B2u_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.b, !dbg !15905

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15911
  store i32 1, ptr %i.g, align 8, !dbg !15911
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !15911
  br label %bb.e, !dbg !15912

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !15913
  ret void, !dbg !15914

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !15915
  unreachable, !dbg !15915

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e, !dbg !15915
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBK_NtB7_4ExprEENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1R_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 !dbg !15916 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15922
  %.val = load ptr, ptr %i.a, align 8, !dbg !15922, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15922
  %.val4 = load i64, ptr %i.b, align 8, !dbg !15922, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %.val4, 24, !dbg !15923
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !15923
  %.not = icmp eq i64 %.val4, 0, !dbg !15935
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !15943

_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1M_.exit.loopexit: ; preds = %bb.b, %.lr.ph
  %.not14 = icmp eq ptr %i.d, %i.c, !dbg !15935
  br i1 %.not14, label %.loopexit, label %.lr.ph, !dbg !15943

.lr.ph:                                           ; preds = %bb.a, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1M_.exit.loopexit
  %.sroa.0.013 = phi ptr [ %i.d, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1M_.exit.loopexit ], [ %.val, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 24, !dbg !15944 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15947), !dbg !15950
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 8, !dbg !15952
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !15952, !alias.scope !15947, !noalias !15955, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 16, !dbg !15952
  %.val4.i = load i64, ptr %i.f, align 8, !dbg !15952, !alias.scope !15947, !noalias !15955, !noundef !13 ; 2 uses
  %.idx21 = mul nuw nsw i64 %.val4.i, 328, !dbg !15957
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx21, !dbg !15957
  %.not.not.not.i.not18 = icmp eq i64 %.val4.i, 0, !dbg !15968
  br i1 %.not.not.not.i.not18, label %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1M_.exit.loopexit, label %.lr.ph20, !dbg !15976

bb.b:                                             ; preds = %.lr.ph20
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i519, i64 328, !dbg !15977 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.h, %i.g, !dbg !15968
  br i1 %.not.not.not.i.not, label %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1M_.exit.loopexit, label %.lr.ph20, !dbg !15976

.lr.ph20:                                         ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i519 = phi ptr [ %i.h, %bb.b ], [ %.val.i, %.lr.ph ] ; 2 uses
  %i.i = tail call noundef zeroext i1 @_RINvXs7S_NtCsaRr8xKSRVhT_9sqlparser3astNtB7_4ExprNtNtB7_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i519, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !dbg !15980, !noalias !15947
  br i1 %i.i, label %.loopexit, label %bb.b, !dbg !15982

.loopexit:                                        ; preds = %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1M_.exit.loopexit, %.lr.ph20, %bb.a
  %i.j = phi i1 [ true, %.lr.ph20 ], [ false, %bb.a ], [ false, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1M_.exit.loopexit ]
  ret i1 %i.j, !dbg !15983
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBK_NtB7_4ExprEENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1R_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !15984 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15985
  %.val = load ptr, ptr %i.a, align 8, !dbg !15985, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15985
  %.val4 = load i64, ptr %i.b, align 8, !dbg !15985, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %.val4, 24, !dbg !15986
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !15986
  %.not = icmp eq i64 %.val4, 0, !dbg !15991
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !15995

_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1M_.exit.loopexit: ; preds = %bb.b, %.lr.ph
  %.not14 = icmp eq ptr %i.d, %i.c, !dbg !15991
  br i1 %.not14, label %.loopexit, label %.lr.ph, !dbg !15995

.lr.ph:                                           ; preds = %bb.a, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1M_.exit.loopexit
  %.sroa.0.013 = phi ptr [ %i.d, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1M_.exit.loopexit ], [ %.val, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 24, !dbg !15996 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15998), !dbg !16001
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 8, !dbg !16003
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !16003, !alias.scope !15998, !noalias !16006, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 16, !dbg !16003
  %.val4.i = load i64, ptr %i.f, align 8, !dbg !16003, !alias.scope !15998, !noalias !16006, !noundef !13 ; 2 uses
  %.idx21 = mul nuw nsw i64 %.val4.i, 328, !dbg !16008
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx21, !dbg !16008
  %.not.not.not.i.not18 = icmp eq i64 %.val4.i, 0, !dbg !16013
  br i1 %.not.not.not.i.not18, label %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1M_.exit.loopexit, label %.lr.ph20, !dbg !16017

bb.b:                                             ; preds = %.lr.ph20
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i519, i64 328, !dbg !16018 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.h, %i.g, !dbg !16013
  br i1 %.not.not.not.i.not, label %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1M_.exit.loopexit, label %.lr.ph20, !dbg !16017

.lr.ph20:                                         ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i519 = phi ptr [ %i.h, %bb.b ], [ %.val.i, %.lr.ph ] ; 2 uses
  %i.i = tail call noundef zeroext i1 @_RINvXs7S_NtCsaRr8xKSRVhT_9sqlparser3astNtB7_4ExprNtNtB7_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i519, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !16020, !noalias !15998
  br i1 %i.i, label %.loopexit, label %bb.b, !dbg !16022

.loopexit:                                        ; preds = %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1M_.exit.loopexit, %.lr.ph20, %bb.a
  %i.j = phi i1 [ true, %.lr.ph20 ], [ false, %bb.a ], [ false, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierEB1M_.exit.loopexit ]
  ret i1 %i.j, !dbg !16023
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBK_NtB7_4ExprEENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1R_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull %1) unnamed_addr #0 !dbg !16024 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16025
  %.val = load ptr, ptr %i.a, align 8, !dbg !16025, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16025
  %.val4 = load i64, ptr %i.b, align 8, !dbg !16025, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %.val4, 24, !dbg !16026
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !16026
  %.not = icmp eq i64 %.val4, 0, !dbg !16031
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !16035

_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1M_.exit.loopexit: ; preds = %bb.b, %.lr.ph
  %.not14 = icmp eq ptr %i.d, %i.c, !dbg !16031
  br i1 %.not14, label %.loopexit, label %.lr.ph, !dbg !16035

.lr.ph:                                           ; preds = %bb.a, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1M_.exit.loopexit
  %.sroa.0.013 = phi ptr [ %i.d, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1M_.exit.loopexit ], [ %.val, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 24, !dbg !16036 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16038), !dbg !16041
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 8, !dbg !16043
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !16043, !alias.scope !16038, !noalias !16046, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 16, !dbg !16043
  %.val4.i = load i64, ptr %i.f, align 8, !dbg !16043, !alias.scope !16038, !noalias !16046, !noundef !13 ; 2 uses
  %.idx21 = mul nuw nsw i64 %.val4.i, 328, !dbg !16048
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx21, !dbg !16048
  %.not.not.not.i.not18 = icmp eq i64 %.val4.i, 0, !dbg !16053
  br i1 %.not.not.not.i.not18, label %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1M_.exit.loopexit, label %.lr.ph20, !dbg !16057

bb.b:                                             ; preds = %.lr.ph20
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i519, i64 328, !dbg !16058 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.h, %i.g, !dbg !16053
  br i1 %.not.not.not.i.not, label %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1M_.exit.loopexit, label %.lr.ph20, !dbg !16057

.lr.ph20:                                         ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i519 = phi ptr [ %i.h, %bb.b ], [ %.val.i, %.lr.ph ] ; 2 uses
  %i.i = tail call noundef zeroext i1 @_RINvXs7S_NtCsaRr8xKSRVhT_9sqlparser3astNtB7_4ExprNtNtB7_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i519, ptr noalias noundef nonnull %1), !dbg !16060, !noalias !16038
  br i1 %i.i, label %.loopexit, label %bb.b, !dbg !16062

.loopexit:                                        ; preds = %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1M_.exit.loopexit, %.lr.ph20, %bb.a
  %i.j = phi i1 [ true, %.lr.ph20 ], [ false, %bb.a ], [ false, %_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderEB1M_.exit.loopexit ]
  ret i1 %i.j, !dbg !16063
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBK_NtB7_4ExprEENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !16064 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16065
  %.val = load ptr, ptr %i.b, align 8, !dbg !16065, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16065
  %.val3 = load i64, ptr %i.c, align 8, !dbg !16065, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %.val3, 24, !dbg !16066
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !16066
  %i.e = icmp eq i64 %.val3, 0, !dbg !16071
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !16075

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.013 = phi ptr [ %i.g, %bb.c ], [ %.val, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16076
  call void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1M_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.013, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !dbg !16078
  %i.f = load i64, ptr %i.a, align 8, !dbg !16079, !range !16085, !alias.scope !16086, !noalias !16089, !noundef !13 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 18, !dbg !16079
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !16091

._crit_edge:                                      ; preds = %bb.c, %bb.a, %bb.b
  %storemerge = phi i64 [ %i.f, %bb.b ], [ 18, %bb.a ], [ 18, %bb.c ], !dbg !16092
  store i64 %storemerge, ptr %0, align 8, !dbg !16092
  ret void, !dbg !16093

bb.b:                                             ; preds = %.lr.ph
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16094
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx6, i64 64, i1 false), !dbg !16094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16103
  br label %._crit_edge, !dbg !16093

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 24, !dbg !16104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16103
  %i.h = icmp eq ptr %i.g, %i.d, !dbg !16071
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !16075
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBK_NtB7_4ExprEENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorEB1R_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 !dbg !16106 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16107
  %.val = load ptr, ptr %i.a, align 8, !dbg !16107, !nonnull !13, !noundef !13 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
    i64 24, label %bb.is
    i64 25, label %bb.it
    i64 26, label %bb.iv
    i64 27, label %bb.jt
  ], !dbg !38249

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !38250

bb.c:                                             ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !38249
  store i64 -9223372036854775808, ptr %i.cw, align 16, !dbg !38249
  br label %bb.kc, !dbg !38249

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !38252
  %i.cx = load ptr, ptr %1, align 16, !dbg !38254, !nonnull !13, !noundef !13
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !dbg !38262
  %i.cz = icmp slt i64 %i.cy, 0, !dbg !38268
  br i1 %i.cz, label %bb.ke, label %bb.kd, !dbg !38268

bb.e:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !38270
  %i.db = load i8, ptr %i.da, align 1, !dbg !38270, !range !1208, !noundef !13
  %i.dc = icmp eq i8 %i.db, -40, !dbg !38282
  br i1 %i.dc, label %bb.kl, label %bb.km, !dbg !38282

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !38283
  call fastcc void @_RNvXsI_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_8SelectorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #30, !dbg !38283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i64 32, i1 false), !dbg !38285
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !38285
  store i64 -9223372036854775805, ptr %i.dd, align 16, !dbg !38285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !38286
  br label %bb.kc, !dbg !38287

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38288), !dbg !38291
  %i.de = load i8, ptr %1, align 16, !dbg !38293, !range !8121, !alias.scope !38288, !noalias !38299, !noundef !13 ; 3 uses
  %i.df = icmp ne i8 %i.de, 32, !dbg !38293
  tail call void @llvm.assume(i1 %i.df), !dbg !38293
  %i.dg = add nsw i8 %i.de, -31, !dbg !38293
  %i.dh = icmp samesign ugt i8 %i.de, 30, !dbg !38293
  %narrow.i = select i1 %i.dh, i8 %i.dg, i8 1, !dbg !38293
  switch i8 %narrow.i, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.u
    i8 2, label %bb.x
    i8 3, label %bb.y
  ], !dbg !38293

bb.h:                                             ; preds = %bb.g
  unreachable, !dbg !38293

bb.i:                                             ; preds = %bb.g
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38302), !dbg !38305
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38307), !dbg !38305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !38309, !noalias !38313
  %i.dj = load i64, ptr %i.di, align 16, !dbg !38309, !range !12793, !alias.scope !38314, !noalias !38315, !noundef !13 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !38316 ; 5 uses
  switch i64 %i.dj, label %default.unreachable1737 [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ], !dbg !38309

default.unreachable1737:                          ; preds = %bb.iv, %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshquuC4dCYVj_10polars_sql.exit, %bb.ar, %bb.m, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 47, !dbg !38317
  %i.dm = load i8, ptr %i.dl, align 1, !dbg !38317, !range !1208, !alias.scope !38314, !noalias !38315, !noundef !13
  %i.dn = icmp eq i8 %i.dm, -40, !dbg !38329
  br i1 %i.dn, label %bb.r, label %bb.s, !dbg !38329

bb.k:                                             ; preds = %bb.i
  %.sroa.7.0.copyload8.i = load i64, ptr %i.dk, align 8, !dbg !38330, !alias.scope !38332, !noalias !38299
  %.sroa.9.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !38330
  %.sroa.9.0.copyload12.i = load ptr, ptr %.sroa.9.0..sroa_idx11.i, align 16, !dbg !38330, !alias.scope !38332, !noalias !38299
  %.sroa.10.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !38330
  %.sroa.10.0.copyload16.i = load i64, ptr %.sroa.10.0..sroa_idx15.i, align 8, !dbg !38330, !alias.scope !38332, !noalias !38299
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !38333

bb.l:                                             ; preds = %bb.i
  %.sroa.7.0.copyload6.i = load i64, ptr %i.dk, align 8, !dbg !38334, !alias.scope !38332, !noalias !38299
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !38334
  %.sroa.9.0.copyload10.i = load ptr, ptr %.sroa.9.0..sroa_idx9.i, align 16, !dbg !38334, !alias.scope !38332, !noalias !38299
  %.sroa.10.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !38334
  %.sroa.10.0.copyload14.i = load i64, ptr %.sroa.10.0..sroa_idx13.i, align 8, !dbg !38334, !alias.scope !38332, !noalias !38299
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !38333

bb.m:                                             ; preds = %bb.i
  %i.do = load i64, ptr %i.dk, align 8, !dbg !38336, !range !12793, !alias.scope !38341, !noalias !38344, !noundef !13 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !38346 ; 4 uses
  switch i64 %i.do, label %default.unreachable1737 [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
  ], !dbg !38336

bb.n:                                             ; preds = %bb.m
  %i.dq = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dp), !dbg !38347, !noalias !38344
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !38349

bb.o:                                             ; preds = %bb.m
  %i.dr = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionnEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dp), !dbg !38350, !noalias !38344
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !38349

bb.p:                                             ; preds = %bb.m
  %i.ds = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dp), !dbg !38352, !noalias !38344
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !38349

bb.q:                                             ; preds = %bb.m
  %i.dt = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dp), !dbg !38354, !noalias !38344
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !38349

_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sink5.i.i.i = phi { ptr, i64 } [ %i.dt, %bb.q ], [ %i.ds, %bb.p ], [ %i.dr, %bb.o ], [ %i.dq, %bb.n ] ; 2 uses
  %i.du = extractvalue { ptr, i64 } %.sink5.i.i.i, 0, !dbg !38346
  %i.dv = extractvalue { ptr, i64 } %.sink5.i.i.i, 1, !dbg !38346
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !38333

bb.r:                                             ; preds = %bb.j
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #26, !dbg !38356, !noalias !38315
  br label %bb.t, !dbg !38356

bb.s:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !38357, !noalias !38315
  br label %bb.t, !dbg !38360

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.7.8.copyload.i = load i64, ptr %i.bw, align 8, !dbg !38361, !noalias !38362
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !38361
  %.sroa.9.8.copyload.i = load ptr, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !38361, !noalias !38362
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !38361
  %.sroa.10.8.copyload.i = load i64, ptr %.sroa.10.8..sroa_idx.i, align 8, !dbg !38361, !noalias !38362
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !38333

_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %bb.t, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %bb.l, %bb.k
  %.sroa.10.0.i = phi i64 [ %.sroa.10.8.copyload.i, %bb.t ], [ %.sroa.10.0.copyload16.i, %bb.k ], [ %.sroa.10.0.copyload14.i, %bb.l ], [ %i.dv, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !38309
  %.sroa.9.0.i = phi ptr [ %.sroa.9.8.copyload.i, %bb.t ], [ %.sroa.9.0.copyload12.i, %bb.k ], [ %.sroa.9.0.copyload10.i, %bb.l ], [ %i.du, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !38309
  %.sroa.7.0.i = phi i64 [ %.sroa.7.8.copyload.i, %bb.t ], [ %.sroa.7.0.copyload8.i, %bb.k ], [ %.sroa.7.0.copyload6.i, %bb.l ], [ %i.do, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !38309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !38363, !noalias !38313
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !38364
  store i64 %i.dj, ptr %i.dw, align 16, !dbg !38364
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !38364
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !38364
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32, !dbg !38364
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 16, !dbg !38364
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 40, !dbg !38364
  store i64 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !38364
  store i8 31, ptr %i.bx, align 16, !dbg !38364
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38365

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !38366, !noalias !38373
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bv, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) #30, !dbg !38366, !noalias !38377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !38378, !noalias !38373
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !38378
  invoke fastcc void @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bu, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dx)
          to label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i unwind label %bb.v, !dbg !38378, !noalias !38377

bb.v:                                             ; preds = %bb.u
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.bv) #27
          to label %common.resume1711 unwind label %bb.w, !dbg !38379, !noalias !38377

bb.w:                                             ; preds = %bb.v
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !38380, !noalias !38377
  unreachable, !dbg !38380

common.resume1711:                                ; preds = %bb.jy, %bb.ic, %bb.ce, %bb.v, %bb.ah, %bb.jq, %bb.jp, %bb.ny, %bb.nz, %.body1708, %bb.nx, %.body1697, %bb.mk, %.body1686, %bb.lk, %bb.ku, %bb.kv, %bb.kh, %bb.ki, %.body74, %.body68, %.body
  %common.resume1711.op = phi { ptr, i32 } [ %lpad.loopexit.i1669, %bb.ic ], [ %eh.lpad-body1709, %bb.nx ], [ %lpad.loopexit.i, %bb.ce ], [ %i.yi, %bb.jp ], [ %i.dy, %bb.v ], [ %i.fa, %bb.ah ], [ %i.yi, %bb.jq ], [ %eh.lpad-body75, %.body74 ], [ %i.ajj, %bb.ny ], [ %i.aac, %bb.kh ], [ %i.aau, %bb.ku ], [ %eh.lpad-body, %.body ], [ %.pn33, %.body1686 ], [ %.pn, %.body68 ], [ %i.ajj, %bb.nz ], [ %eh.lpad-body1698, %.body1697 ], [ %eh.lpad-body1709, %.body1708 ], [ %i.aac, %bb.ki ], [ %i.aau, %bb.kv ], [ %.pn33, %bb.lk ], [ %eh.lpad-body1698, %bb.mk ], [ %lpad.loopexit.i1676, %bb.jy ]
  resume { ptr, i32 } %common.resume1711.op, !dbg !38381

_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bx, ptr noundef nonnull align 16 dereferenceable(48) %i.bv, i64 48, i1 false), !dbg !38380
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bx, i64 48, !dbg !38380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ea, ptr noundef nonnull align 16 dereferenceable(48) %i.bu, i64 48, i1 false), !dbg !38380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !38379, !noalias !38373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !38379, !noalias !38373
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38365

bb.x:                                             ; preds = %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !38382 ; 2 uses
  %i.ec = load <2 x ptr>, ptr %i.eb, align 8, !dbg !38382, !alias.scope !38288, !noalias !38299
  %i.ed = load ptr, ptr %i.eb, align 8, !dbg !38382, !alias.scope !38288, !noalias !38299, !nonnull !13, !noundef !13
  %i.ee = atomicrmw add ptr %i.ed, i64 1 monotonic, align 8, !dbg !38397, !noalias !38313
  %i.ef = icmp slt i64 %i.ee, 0, !dbg !38402
  br i1 %i.ef, label %bb.aa, label %bb.z, !dbg !38402

bb.y:                                             ; preds = %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38404
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !38404
  %2 = load <2 x i128>, ptr %i.eh, align 16, !dbg !38404, !alias.scope !38288, !noalias !38299 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !38409
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ei, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.eg) #30, !dbg !38404
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 64, !dbg !38409
  %3 = extractelement <2 x i128> %2, i64 0, !dbg !38409
  store i128 %3, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !38409
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 80, !dbg !38409
  %4 = extractelement <2 x i128> %2, i64 1, !dbg !38409
  store i128 %4, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !38409
  store i8 34, ptr %i.bx, align 16, !dbg !38409
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38365

bb.z:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !38410
  store <2 x ptr> %i.ec, ptr %i.ej, align 8, !dbg !38410
  store i8 33, ptr %i.bx, align 16, !dbg !38410
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38365

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.trap(), !dbg !38411
  unreachable, !dbg !38411

_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %bb.y, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.bx, i64 96, i1 false), !dbg !38412
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !38412
  store i64 -9223372036854775804, ptr %i.ek, align 16, !dbg !38412
  br label %bb.kc, !dbg !38287

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9), !dbg !38413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38415), !dbg !38413
  %i.el = load i8, ptr %1, align 16, !dbg !38418, !range !9042, !alias.scope !38415, !noalias !38424, !noundef !13 ; 3 uses
  %i.em = icmp ne i8 %i.el, 40, !dbg !38418
  tail call void @llvm.assume(i1 %i.em), !dbg !38418
  %i.en = add nsw i8 %i.el, -39, !dbg !38418
  %i.eo = icmp samesign ugt i8 %i.el, 38, !dbg !38418
  %narrow.i42 = select i1 %i.eo, i8 %i.en, i8 1, !dbg !38418
  switch i8 %narrow.i42, label %bb.ac [
    i8 0, label %bb.ad
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ak
    i8 5, label %bb.al
  ], !dbg !38418

bb.ac:                                            ; preds = %bb.ab
  unreachable, !dbg !38418

bb.ad:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !38427, !noalias !38429
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bt, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ep) #30, !dbg !38427, !noalias !38424, !inline_history !38430
  %.sroa.9.16..sroa_idx124 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !38431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx124, ptr noundef nonnull align 16 dereferenceable(48) %i.bt, i64 48, i1 false), !dbg !38431, !noalias !38415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !38432, !noalias !38429
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38433

bb.ae:                                            ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !38434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !38435, !noalias !38429
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bs, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) #30, !dbg !38435, !noalias !38424, !inline_history !38430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !38437, !noalias !38429
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.br, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.eq)
          to label %bb.ai unwind label %bb.ah, !dbg !38437, !noalias !38424, !inline_history !38430

bb.af:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !38438
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38439
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.er) #30, !dbg !38440, !inline_history !38430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !38442, !noalias !38429
  call fastcc void @_RNvXsC_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_16DataTypeSelectorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es), !dbg !38442, !noalias !38424, !inline_history !38430
  %.sroa.9.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !38443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.bq, i64 16, i1 false), !dbg !38443
  %.sroa.16.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !38443
  %.sroa.16.48.copyload = load i64, ptr %.sroa.16.48..sroa_idx, align 16, !dbg !38443 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.48.copyload to i8, !dbg !38443
  %.sroa.16.sroa.7.0.extract.shift = and i64 %.sroa.16.48.copyload, -256, !dbg !38444
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24, !dbg !38443
  %.sroa.18.48.copyload = load i64, ptr %.sroa.18.48..sroa_idx, align 8, !dbg !38443
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 32, !dbg !38443
  %.sroa.19.48.copyload = load i8, ptr %.sroa.19.48..sroa_idx, align 16, !dbg !38443
  %.sroa.9.16..sroa_idx125 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !38443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.9.16..sroa_idx125, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !dbg !38443, !noalias !38415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !38445, !noalias !38429
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38433

bb.ag:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !38447, !noalias !38429
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bo, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.et) #30, !dbg !38447, !noalias !38424, !inline_history !38430
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !38449
  %i.ev = load i64, ptr %i.eu, align 16, !dbg !38449, !alias.scope !38415, !noalias !38424, !noundef !13 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !38450
  %i.ex = load i8, ptr %i.ew, align 16, !dbg !38450, !range !33279, !alias.scope !38415, !noalias !38424, !noundef !13
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !38451
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !38451, !alias.scope !38415, !noalias !38424, !noundef !13
  %.sroa.9.16..sroa_idx123 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !38452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx123, ptr noundef nonnull align 16 dereferenceable(48) %i.bo, i64 48, i1 false), !dbg !38452, !noalias !38415
  %.sroa.16.sroa.0.0.extract.trunc135 = trunc i64 %i.ev to i8, !dbg !38452
  %.sroa.16.sroa.7.0.extract.shift138 = and i64 %i.ev, -256, !dbg !38444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !38453, !noalias !38429
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38433

bb.ah:                                            ; preds = %bb.ae
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.bs) #27
          to label %common.resume1711 unwind label %bb.aj, !dbg !38454, !noalias !38424, !inline_history !38430

bb.ai:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload120 = load i8, ptr %i.bs, align 16, !dbg !38455, !noalias !38415
  %.sroa.9.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.bs, i64 1, !dbg !38455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.0..sroa_idx121, i64 47, i1 false), !dbg !38455, !noalias !38415
  %.sroa.9.48..sroa_idx126 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !38455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx126, ptr noundef nonnull align 16 dereferenceable(16) %i.br, i64 16, i1 false), !dbg !38455, !noalias !38415
  %.sroa.16.48..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.br, i64 16, !dbg !38455
  %.sroa.16.48.copyload128 = load i64, ptr %.sroa.16.48..sroa_idx127, align 16, !dbg !38455, !noalias !38415 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc134 = trunc i64 %.sroa.16.48.copyload128 to i8, !dbg !38455
  %.sroa.16.sroa.7.0.extract.shift136 = and i64 %.sroa.16.48.copyload128, -256, !dbg !38444
  %.sroa.18.48..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.br, i64 24, !dbg !38455
  %.sroa.18.48.copyload130 = load i64, ptr %.sroa.18.48..sroa_idx129, align 8, !dbg !38455, !noalias !38415
  %.sroa.19.48..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.br, i64 32, !dbg !38455
  %.sroa.19.48.copyload132 = load i8, ptr %.sroa.19.48..sroa_idx131, align 16, !dbg !38455, !noalias !38415
  %.sroa.20.48..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.br, i64 33, !dbg !38455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.cn, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.48..sroa_idx133, i64 15, i1 false), !dbg !38455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !38454, !noalias !38429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !38454, !noalias !38429
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38433

bb.aj:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !38418, !noalias !38424, !inline_history !38430
  unreachable, !dbg !38418

bb.ak:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38456
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !38457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !38458, !noalias !38429
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.fc) #30, !dbg !38458, !noalias !38424, !inline_history !38430
  %.val.i = load i8, ptr %i.fd, align 16, !dbg !38460, !range !33279, !alias.scope !38415, !noalias !38424, !noundef !13
  %.sroa.9.16..sroa_idx122 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !38461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx122, ptr noundef nonnull align 16 dereferenceable(48) %i.bn, i64 48, i1 false), !dbg !38461, !noalias !38415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !38462, !noalias !38429
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38433

bb.al:                                            ; preds = %bb.ab
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !38464, !noalias !38429
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bm, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.fe) #30, !dbg !38464, !noalias !38424, !inline_history !38430
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !38466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %i.bm, i64 48, i1 false), !dbg !38466, !noalias !38415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !38467, !noalias !38429
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !38433

_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.ad, %bb.ag, %bb.ai, %bb.af, %bb.ak, %bb.al
  %.sroa.16.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.ad ], [ %.sroa.16.sroa.7.0.extract.shift136, %bb.ai ], [ %.sroa.16.sroa.7.0.extract.shift, %bb.af ], [ %.sroa.16.sroa.7.0.extract.shift138, %bb.ag ], [ 0, %bb.ak ], [ 0, %bb.al ], !dbg !38413
  %.sroa.16.sroa.0.0 = phi i8 [ undef, %bb.ad ], [ %.sroa.16.sroa.0.0.extract.trunc134, %bb.ai ], [ %.sroa.16.sroa.0.0.extract.trunc, %bb.af ], [ %.sroa.16.sroa.0.0.extract.trunc135, %bb.ag ], [ %.val.i, %bb.ak ], [ undef, %bb.al ], !dbg !38413
  %.sroa.19.0 = phi i8 [ undef, %bb.ad ], [ %.sroa.19.48.copyload132, %bb.ai ], [ %.sroa.19.48.copyload, %bb.af ], [ %i.ex, %bb.ag ], [ undef, %bb.ak ], [ undef, %bb.al ], !dbg !38413
  %.sroa.18.0 = phi i64 [ undef, %bb.ad ], [ %.sroa.18.48.copyload130, %bb.ai ], [ %.sroa.18.48.copyload, %bb.af ], [ %i.ez, %bb.ag ], [ undef, %bb.ak ], [ undef, %bb.al ], !dbg !38413
  %.sroa.0.0 = phi i8 [ 39, %bb.ad ], [ %.sroa.0.0.copyload120, %bb.ai ], [ 41, %bb.af ], [ 42, %bb.ag ], [ 43, %bb.ak ], [ 44, %bb.al ], !dbg !38418
  store i8 %.sroa.0.0, ptr %0, align 16, !dbg !38444
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !38444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9, i64 63, i1 false), !dbg !38444
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !38444
  %.sroa.16.sroa.0.0.insert.ext = zext i8 %.sroa.16.sroa.0.0 to i64, !dbg !38444
  %.sroa.16.sroa.0.0.insert.insert = or disjoint i64 %.sroa.16.sroa.7.sroa.0.0, %.sroa.16.sroa.0.0.insert.ext, !dbg !38444
  store i64 %.sroa.16.sroa.0.0.insert.insert, ptr %.sroa.16.0..sroa_idx, align 16, !dbg !38444
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !38444
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !38444
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !38444
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !38444
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !38444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %i.cn, i64 15, i1 false), !dbg !38444
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !38444
  store i64 -9223372036854775803, ptr %i.ff, align 16, !dbg !38444
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !38468
  br label %bb.kc, !dbg !38287

bb.am:                                            ; preds = %bb.a
  %i.fg = load ptr, ptr %1, align 16, !dbg !38469, !nonnull !13, !noundef !13
  %i.fh = atomicrmw add ptr %i.fg, i64 1 monotonic, align 8, !dbg !38476
  %i.fi = icmp slt i64 %i.fh, 0, !dbg !38480
  br i1 %i.fi, label %bb.ko, label %bb.kp, !dbg !38480

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !38482
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !38484 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 16, !dbg !38484, !nonnull !13, !noundef !13
  %i.fl = atomicrmw add ptr %i.fk, i64 1 monotonic, align 8, !dbg !38489
  %i.fm = icmp slt i64 %i.fl, 0, !dbg !38493
  br i1 %i.fm, label %bb.kt, label %bb.ks, !dbg !38493

bb.ao:                                            ; preds = %bb.a
  %i.fn = load ptr, ptr %1, align 16, !dbg !38495, !nonnull !13, !noundef !13
  %i.fo = atomicrmw add ptr %i.fn, i64 1 monotonic, align 8, !dbg !38502
  %i.fp = icmp slt i64 %i.fo, 0, !dbg !38506
  br i1 %i.fp, label %bb.ky, label %bb.kx, !dbg !38506

bb.ap:                                            ; preds = %bb.a
  %i.fq = load ptr, ptr %1, align 16, !dbg !38508, !nonnull !13, !noundef !13
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !dbg !38515
  %i.fs = icmp slt i64 %i.fr, 0, !dbg !38519
  br i1 %i.fs, label %bb.la, label %bb.kz, !dbg !38519

bb.aq:                                            ; preds = %bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !38521
end_hunk_1
