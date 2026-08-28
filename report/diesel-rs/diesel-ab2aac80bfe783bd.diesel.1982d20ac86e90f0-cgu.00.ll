Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.00?download=true
inline.NumInlined: 3526
inline.NumDeleted: 1436
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesNtNtB6_6string6StringTNtNtB15_10table_data9TableNameB57_IBS_B4L_EB5F_EENCNvNtB15_5mysql28load_foreign_key_constraintss_0EE9from_iterB17_:bb.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesNtNtCs40k4W9msRzi_5alloc6string6StringTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB2L_INtNtB2c_3vec3VecB28_EB40_EENCNvNtB2P_5mysql28load_foreign_key_constraintss_0EEB2R_.exit: ; preds = %bb.t, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.t ]
  resume { ptr, i32 } %.pn10

bb.t:                                             ; preds = %bb.f, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.f ]
  invoke void @_RNvXsC_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB1w_INtNtBX_3vec3VecBT_EB2L_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1C_(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesNtNtCs40k4W9msRzi_5alloc6string6StringTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB2L_INtNtB2c_3vec3VecB28_EB40_EENCNvNtB2P_5mysql28load_foreign_key_constraintss_0EEB2R_.exit unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB33_6filter6FilterIB3T_IB3T_IB3T_IB3T_IB3T_INtNtNtB37_5slice4iter4IterB11_ENCNvNtB15_12foreign_keys38remove_unsafe_foreign_keys_for_codegens_0ENCB5c_s0_0ENCB5c_s1_0ENCB5c_s2_0ENCB5c_s3_0ENCB5c_s4_0EEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [216 x i8], align 8               ; 4 uses
  %i.c = alloca [216 x i8], align 8               ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [216 x i8], align 8               ; 4 uses
  %i.h = alloca [216 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_IB12_IB12_IB12_IB12_INtNtNtBa_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNvNtB2g_12foreign_keys38remove_unsafe_foreign_keys_for_codegens_0ENCB3H_s0_0ENCB3H_s1_0ENCB3H_s2_0ENCB3H_s3_0ENCB3H_s4_0EENtNtNtB8_6traits8iterator8Iterator4nextB2i_(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.j = load i64, ptr %i.h, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.g, ptr noundef nonnull align 8 dereferenceable(216) %i.h, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_IB12_IB12_IB12_IB12_INtNtNtBa_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNvNtB2g_12foreign_keys38remove_unsafe_foreign_keys_for_codegens_0ENCB3H_s0_0ENCB3H_s1_0ENCB3H_s2_0ENCB3H_s3_0ENCB3H_s4_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2i_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.d

bb.d:                                             ; preds = %.loopexit8, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.g) #21
          to label %bb.o unwind label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.o = call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  %.sroa.0.0.i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.o, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 216)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.p = load i64, ptr %i.d, align 8, !range !71, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !72, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h, !prof !54

bb.g:                                             ; preds = %.noexc
  %i.u = load i64, ptr %i.t, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #23
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp ule i64 %.sroa.0.0.i, %i.s
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, ptr noundef nonnull align 8 dereferenceable(216) %i.h, i64 216, i1 false)
  store i64 %i.s, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !7774)
  call void @llvm.experimental.noalias.scope.decl(metadata !7777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7780
  invoke void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_IB12_IB12_IB12_IB12_INtNtNtBa_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNvNtB2g_12foreign_keys38remove_unsafe_foreign_keys_for_codegens_0ENCB3H_s0_0ENCB3H_s1_0ENCB3H_s2_0ENCB3H_s3_0ENCB3H_s4_0EENtNtNtB8_6traits8iterator8Iterator4nextB2i_(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %bb.h
  %i.x = load i64, ptr %i.c, align 8, !range !18, !noalias !7780, !noundef !4
  %.not4.i.i = icmp eq i64 %i.x, -1
  br i1 %.not4.i.i, label %.loopexit8, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc6, %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.b, ptr noundef nonnull align 8 dereferenceable(216) %i.c, i64 216, i1 false), !noalias !7780
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7783, !noalias !7784, !noundef !4 ; 4 uses
  %i.z = icmp ult i64 %i.y, 42700796466920259
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.i, align 8, !range !20, !alias.scope !7783, !noalias !7784, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7780
  invoke void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_IB12_IB12_IB12_IB12_INtNtNtBa_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNvNtB2g_12foreign_keys38remove_unsafe_foreign_keys_for_codegens_0ENCB3H_s0_0ENCB3H_s1_0ENCB3H_s2_0ENCB3H_s3_0ENCB3H_s4_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2i_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e)
          to label %bb.k unwind label %bb.j

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7783, !noalias !7784, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [216 x i8], ptr %i.ac, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ad, ptr noundef nonnull align 8 dereferenceable(216) %i.c, i64 216, i1 false)
  %i.ae = add nuw nsw i64 %i.y, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7783, !noalias !7784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7780
  invoke void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterIB12_IB12_IB12_IB12_IB12_INtNtNtBa_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCNvNtB2g_12foreign_keys38remove_unsafe_foreign_keys_for_codegens_0ENCB3H_s0_0ENCB3H_s1_0ENCB3H_s2_0ENCB3H_s3_0ENCB3H_s4_0EENtNtNtB8_6traits8iterator8Iterator4nextB2i_(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i
  %i.af = load i64, ptr %i.c, align 8, !range !18, !noalias !7780, !noundef !4
  %.not.i.i = icmp eq i64 %i.af, -1
  br i1 %.not.i.i, label %.loopexit8, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.b) #21
          to label %.body unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !noalias !7780, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7780
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7785, !noalias !7784, !noundef !4 ; 2 uses
  %i.ak = load i64, ptr %i.i, align 8, !range !20, !alias.scope !7785, !noalias !7784, !noundef !4
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.l, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i, !prof !54

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.aj, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 8, i64 noundef 216)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i unwind label %bb.j

bb.m:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

.loopexit:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #21
          to label %bb.o unwind label %bb.n

.loopexit8:                                       ; preds = %.noexc7, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.d

bb.n:                                             ; preds = %.body, %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.o:                                             ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [216 x i8], align 8               ; 4 uses
  %i.b = alloca [216 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [216 x i8], align 8               ; 4 uses
  %i.f = alloca [216 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB19_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEENtNtNtB9_6traits8iterator8Iterator4nextB29_(ptr noalias noundef align 8 captures(address) dereferenceable(216) %i.f, ptr noalias noundef align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.e, ptr noundef nonnull align 8 dereferenceable(216) %i.f, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7796)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !7798, !noalias !7799, !noundef !4
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !7800, !noalias !7803, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !7800, !noalias !7803, !nonnull !4, !noundef !4
  %i.n = ptrtoint ptr %.val4.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 216
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7798, !noalias !7799, !noundef !4
  %.not55.i.i = icmp eq ptr %i.s, null
  br i1 %.not55.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i64.i.i = load ptr, ptr %i.t, align 8, !alias.scope !7806, !noalias !7809, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i65.i.i = load ptr, ptr %i.u, align 8, !alias.scope !7806, !noalias !7809, !nonnull !4, !noundef !4
  %i.v = ptrtoint ptr %.val4.i65.i.i to i64
  %i.w = ptrtoint ptr %.val.i64.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 216
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i: ; preds = %bb.f, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !7798, !noalias !7799, !noundef !4
  %.not56.i.i = icmp eq ptr %i.aa, null
  br i1 %.not56.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !7798, !noalias !7799, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val63.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !7798, !noalias !7799, !nonnull !4, !noundef !4
  %i.ad = icmp eq ptr %.val63.i.i, %.val.i.i
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit66.i.i
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEEEB2m_(ptr noalias noundef align 8 dereferenceable(96) %1)
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendBX_.exit, %bb.i
  ret void

bb.k:                                             ; preds = %bb.m, %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.e) #21
          to label %bb.ae unwind label %bb.ac

bb.l:                                             ; preds = %bb.g, %bb.h
  %.sink81.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.h ], [ %.sroa.5, %bb.g ]
  %.sink.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i, ptr %.sink81.i.i.sroa.phi, align 8, !alias.scope !7799, !noalias !7798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %.sroa.0.0.i = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 216)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.l
  %i.ai = load i64, ptr %i.c, align 8, !range !71, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !72, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n, !prof !54

bb.m:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #23
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %i.ah, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ao, ptr noundef nonnull align 8 dereferenceable(216) %i.f, i64 216, i1 false)
  store i64 %i.al, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7820)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7822
  invoke fastcc void @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB19_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEENtNtNtB9_6traits8iterator8Iterator4nextB29_(ptr noalias noundef align 8 captures(address) dereferenceable(216) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.y, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.ay, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEEEB2m_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d) #21
          to label %.body unwind label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.az = load i64, ptr %i.b, align 8, !range !18, !noalias !7822, !noundef !4
  %.not.i.i6 = icmp eq i64 %i.az, -1
  br i1 %.not.i.i6, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEBM_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(216) %i.b, i64 216, i1 false), !noalias !7822
  %i.ba = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7823, !noalias !7824, !noundef !4 ; 5 uses
  %i.bb = icmp ult i64 %i.ba, 42700796466920259
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i64, ptr %i.g, align 8, !range !20, !alias.scope !7823, !noalias !7824, !noundef !4
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE7reserveBK_.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7825)
  call void @llvm.experimental.noalias.scope.decl(metadata !7828)
  call void @llvm.experimental.noalias.scope.decl(metadata !7830)
  call void @llvm.experimental.noalias.scope.decl(metadata !7833)
  %i.be = load ptr, ptr %i.aq, align 8, !alias.scope !7835, !noalias !7836, !noundef !4
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1D_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !7837, !noalias !7840, !nonnull !4, !noundef !4
  %.val4.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !7837, !noalias !7840, !nonnull !4, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB3i_7flatten7FlatMapINtNtNtB3m_5slice4iter4IterNtB1r_16ColumnDefinitionEINtNtB3i_5chain5ChainINtNtB6_5boxed3BoxDNtNtNtB3k_6traits8iterator8Iteratorp4ItemTB12_INtNtB3m_6option6OptionB1n_EEEL_EINtNtNtB3k_7sources4once4OnceB6N_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0ENCB80_s_0EE9from_iterB1v_:bb.a
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7920, !noalias !7921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7917
  br label %bb.n

bb.v:                                             ; preds = %bb.y, %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !range !18, !alias.scope !7922, !noalias !7917, !noundef !4
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1m_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1m_.exit.i.i unwind label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.at = load i64, ptr %i.a, align 8, !noalias !7917, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7917
  %i.au = call i64 @llvm.uadd.sat.i64(i64 %i.at, i64 1) ; 2 uses
  %i.av = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7927, !noalias !7921, !noundef !4 ; 2 uses
  %i.aw = load i64, ptr %i.i, align 8, !range !20, !alias.scope !7927, !noalias !7921, !noundef !4
  %i.ax = sub i64 %i.aw, %i.av
  %i.ay = icmp ugt i64 %i.au, %i.ax
  br i1 %i.ay, label %bb.y, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE7reserveB18_.exit.i.i, !prof !54

bb.y:                                             ; preds = %bb.x
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.av, i64 noundef range(i64 1, 0) %i.au, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE7reserveB18_.exit.i.i unwind label %bb.v

bb.z:                                             ; preds = %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1m_.exit.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTINtNtB8_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB2L_7flatten7FlatMapINtNtNtB2P_5slice4iter4IterNtB16_16ColumnDefinitionEINtNtB2L_5chain5ChainINtNtB8_5boxed3BoxDNtNtNtB2N_6traits8iterator8Iteratorp4ItemTBH_INtNtB2P_6option6OptionB12_EEEL_EINtNtNtB2N_7sources4once4OnceB6g_EENCNvNtNtB1a_10migrations11diff_schema20collect_record_types0ENCB7s_s_0EEB1a_.exit.i: ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef align 8 dereferenceable(56) %i.ba)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB2Z_7flatten7FlatMapINtNtNtB33_5slice4iter4IterNtB1h_16ColumnDefinitionEINtNtB2Z_5chain5ChainINtNtB6_5boxed3BoxDNtNtNtB31_6traits8iterator8Iteratorp4ItemTBS_INtNtB33_6option6OptionB1d_EEEL_EINtNtNtB31_7sources4once4OnceB6u_EENCNvNtNtB1l_10migrations11diff_schema20collect_record_types0ENCB7G_s_0EE11spec_extendB1l_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTINtNtB8_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB2L_7flatten7FlatMapINtNtNtB2P_5slice4iter4IterNtB16_16ColumnDefinitionEINtNtB2L_5chain5ChainINtNtB8_5boxed3BoxDNtNtNtB2N_6traits8iterator8Iteratorp4ItemTBH_INtNtB2P_6option6OptionB12_EEEL_EINtNtNtB2N_7sources4once4OnceB6g_EENCNvNtNtB1a_10migrations11diff_schema20collect_record_types0ENCB7s_s_0EEB1a_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1m_.exit.i.i, %bb.s, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.aa ], [ %i.ak, %bb.s ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEB1m_.exit.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTINtNtBG_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEB1C_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #21
          to label %common.resume unwind label %bb.ab

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTINtNtB6_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB2Z_7flatten7FlatMapINtNtNtB33_5slice4iter4IterNtB1h_16ColumnDefinitionEINtNtB2Z_5chain5ChainINtNtB6_5boxed3BoxDNtNtNtB31_6traits8iterator8Iteratorp4ItemTBS_INtNtB33_6option6OptionB1d_EEEL_EINtNtNtB31_7sources4once4OnceB6u_EENCNvNtNtB1l_10migrations11diff_schema20collect_record_types0ENCB7G_s_0EE11spec_extendB1l_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTINtNtB8_6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB2L_7flatten7FlatMapINtNtNtB2P_5slice4iter4IterNtB16_16ColumnDefinitionEINtNtB2L_5chain5ChainINtNtB8_5boxed3BoxDNtNtNtB2N_6traits8iterator8Iteratorp4ItemTBH_INtNtB2P_6option6OptionB12_EEEL_EINtNtNtB2N_7sources4once4OnceB6g_EENCNvNtNtB1a_10migrations11diff_schema20collect_record_types0ENCB7s_s_0EEB1a_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

bb.ab:                                            ; preds = %bb.j, %bb.ac, %.body
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ac:                                            ; preds = %bb.b, %bb.j, %bb.i
  %.pn.ph = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.r, %bb.j ], [ %i.r, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtBG_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemTINtNtB3Z_6borrow3CoweEINtNtB4_6option6OptionRSNtB2d_10ColumnTypeEEEL_EINtNtNtBI_7sources4once4OnceB58_EENCNvNtNtB2h_10migrations11diff_schema20collect_record_types0ENCB6R_s_0EEB2h_(ptr noalias noundef align 8 dereferenceable(128) %1) #21
          to label %common.resume unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtB2T_3map3MapINtNtNtB2X_5slice4iter4IterNtNtB17_15data_structures20ForeignKeyConstraintENvMs1_B4s_B4q_14ordered_tablesENCNvNtB17_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call { ptr, ptr } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENvMs1_B1p_B1n_14ordered_tablesENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkTRNtNtB1r_10table_data9TableNameB4q_EQNCNvNtB1r_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0E0INtNtNtBc_3ops12control_flow11ControlFlowB4p_EEB1t_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.h = load i64, ptr %i.a, align 8, !range !71, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !72, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #23
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp ugt i64 %i.k, 3
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.g, ptr %i.p, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = invoke { ptr, ptr } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENvMs1_B1p_B1n_14ordered_tablesENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkTRNtNtB1r_10table_data9TableNameB4q_EQNCNvNtB1r_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0E0INtNtNtBc_3ops12control_flow11ControlFlowB4p_EEB1t_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not11.i.i = icmp eq ptr %i.s, null
  br i1 %.not11.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtB2z_3map3MapINtNtNtB2D_5slice4iter4IterNtNtBX_15data_structures20ForeignKeyConstraintENvMs1_B48_B46_14ordered_tablesENCNvNtBX_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0EE11spec_extendBZ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc11
  %i.t = phi ptr [ %i.ad, %.noexc11 ], [ %i.s, %.noexc ]
  %.pn.i.i = phi { ptr, ptr } [ %i.ac, %.noexc11 ], [ %i.r, %.noexc ]
  %spec.select.i.i12.i.i = extractvalue { ptr, ptr } %.pn.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i12.i.i) ]
  %i.u = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !7930, !noalias !7935, !noundef !4 ; 5 uses
  %i.v = icmp ult i64 %i.u, 576460752303423488
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.c, align 8, !range !20, !alias.scope !7930, !noalias !7935, !noundef !4
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBF_EE7reserveBM_.exit.i.i, label %.noexc10

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBF_EE7reserveBM_.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBF_EE7reserveBM_.exit.i.i, %.lr.ph.i.i
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7930, !noalias !7935, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.u ; 2 uses
  store ptr %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %spec.select.i.i12.i.i, ptr %i.aa, align 8
  %i.ab = add nuw nsw i64 %i.u, 1
  store i64 %i.ab, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !7930, !noalias !7935
  %i.ac = invoke { ptr, ptr } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENvMs1_B1p_B1n_14ordered_tablesENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3l_4find5checkTRNtNtB1r_10table_data9TableNameB4q_EQNCNvNtB1r_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0E0INtNtNtBc_3ops12control_flow11ControlFlowB4p_EEB1t_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.noexc11 unwind label %.loopexit ; 2 uses

.noexc11:                                         ; preds = %.noexc10
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtB2z_3map3MapINtNtNtB2D_5slice4iter4IterNtNtBX_15data_structures20ForeignKeyConstraintENvMs1_B48_B46_14ordered_tablesENCNvNtBX_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0EE11spec_extendBZ_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtB2z_3map3MapINtNtNtB2D_5slice4iter4IterNtNtBX_15data_structures20ForeignKeyConstraintENvMs1_B48_B46_14ordered_tablesENCNvNtBX_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0EE11spec_extendBZ_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBF_EE7reserveBM_.exit.i.i, %.noexc10
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBN_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB19_EEEB1g_.exit unwind label %bb.g

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameBS_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter6FilterINtNtB2z_3map3MapINtNtNtB2D_5slice4iter4IterNtNtBX_15data_structures20ForeignKeyConstraintENvMs1_B48_B46_14ordered_tablesENCNvNtBX_12foreign_keys38remove_unsafe_foreign_keys_for_codegen0EE11spec_extendBZ_.exit: ; preds = %.noexc11, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameB19_EEEB1g_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeRNtNtB17_10table_data9TableNameRNtB15_16ColumnDefinitionEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB3Q_7flatten7FlatMapINtNtB3Q_3zip3ZipINtNtNtB3U_5slice4iter4IterIBS_INtNtB3U_6option6OptionB13_EEEIB5u_NtB2o_9TableDataEEINtNtB3Q_3map3MapIB5d_IB5u_B5Y_EIB5u_B2R_EENCNCNvXNtB19_12print_schemaNtB7D_30CustomTypesForTablesForDisplayNtNtB3U_3fmt7Display3fmts1_00ENCB7A_s1_0ENCB7A_s2_0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %.sroa.4.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.j = alloca [160 x i8], align 8               ; 15 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7938)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7953
  store ptr %i.l, ptr %i.i, align 8, !noalias !7961
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !7964, !noalias !7965, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7961
  call void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIB1e_NtB21_16ColumnDefinitionEENCNCNvXNtB25_12print_schemaNtB3V_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5k_8find_map5checkTRB1D_RB3o_RNtNtB23_10table_data9TableNameETRB1Z_B6E_B6z_EQNCB3S_s2_0E0INtNtNtBc_3ops12control_flow11ControlFlowB7a_EEB25_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !7966
  %i.o = load ptr, ptr %i.h, align 8, !alias.scope !7967, !noalias !7970, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.g, %bb.a
  store ptr null, ptr %i.m, align 8, !alias.scope !7964, !noalias !7965
  call void @llvm.experimental.noalias.scope.decl(metadata !7972)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !7975, !noalias !7976, !noundef !4
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i12.i.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7980
  call void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIB1e_NtNtB2A_10table_data9TableDataEENCNvXNtB2C_12print_schemaNtB4x_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB6O_13FlattenCompatppE13iter_try_fold7flattenIBO_IBY_IB1e_B2a_EIB1e_NtB2y_16ColumnDefinitionEENCNCB4u_s1_00EuINtNtNtBc_3ops12control_flow11ControlFlowTRB2w_RNtB3Y_9TableNameRB8a_EENCINvNvXsi_B6O_B71_B5V_8try_fold7flattenB7N_uB8P_NCINvNvB5V_8find_map5checkTRB2a_B9R_B9A_EB9u_QNCB4u_s2_0E0E0E0B8P_EB2C_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m), !noalias !7981
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !7982, !noalias !7985, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7980
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx18.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7961
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7961
  br label %bb.c

bb.h:                                             ; preds = %bb.d
  %.sroa.7.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx4.i.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7980
  br label %bb.m

bb.i:                                             ; preds = %bb.e, %bb.c
  store ptr null, ptr %i.m, align 8, !alias.scope !7964, !noalias !7965
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7964, !noalias !7965, !noundef !4
  %.not10.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i.i, label %bb.ag, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7961
  call void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIB1e_NtB21_16ColumnDefinitionEENCNCNvXNtB25_12print_schemaNtB3V_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5k_8find_map5checkTRB1D_RB3o_RNtNtB23_10table_data9TableNameETRB1Z_B6E_B6z_EQNCB3S_s2_0E0INtNtNtBc_3ops12control_flow11ControlFlowB7a_EEB25_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !7966
  %i.t = load ptr, ptr %i.g, align 8, !alias.scope !7987, !noalias !7990, !noundef !4 ; 2 uses
  %.not.i15.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i15.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.730.0..sroa_idx31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.730.0..sroa_idx31.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7961
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7961
  br label %bb.ag

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.f
  %.sink.i.i.ph.i.i = phi ptr [ %i.t, %bb.k ], [ %i.q, %bb.h ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7953
  call void @llvm.experimental.noalias.scope.decl(metadata !7992)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7995)
  call void @llvm.experimental.noalias.scope.decl(metadata !7998)
  call void @llvm.experimental.noalias.scope.decl(metadata !8000)
  call void @llvm.experimental.noalias.scope.decl(metadata !8003)
  %i.u = load ptr, ptr %i.m, align 8, !alias.scope !8005, !noalias !8006, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !8005, !noalias !8006
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !8005, !noalias !8006
  %i.x = sub i64 %.val4.i.i.i.i, %.val.i.i.i.i
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !8005, !noalias !8006, !noundef !4
  %.not55.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i64.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !8005, !noalias !8006
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val4.i65.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !8005, !noalias !8006
  %i.ac = sub i64 %.val4.i65.i.i.i, %.val.i64.i.i.i
  %.sroa.8.0.i.i.i = select i1 %.not55.i.i.i, i64 0, i64 %i.ac
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !8005, !noalias !8006, !noundef !4
  %.not56.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not56.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !8005, !noalias !8006, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val63.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !8005, !noalias !8006, !noundef !4
  %i.ag = icmp eq i64 %.val63.i.i.i, %.val.i.i.i
  br i1 %i.ag, label %bb.o, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIB1P_NtNtB3b_10table_data9TableDataEEINtNtB7_3map3MapIB1z_IB1P_B2L_EIB1P_NtB39_16ColumnDefinitionEENCNCNvXNtB3d_12print_schemaNtB6a_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts1_00ENCB67_s1_0ENCB67_s2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = add i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i
  br label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIB1P_NtNtB3b_10table_data9TableDataEEINtNtB7_3map3MapIB1z_IB1P_B2L_EIB1P_NtB39_16ColumnDefinitionEENCNCNvXNtB3d_12print_schemaNtB6a_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts1_00ENCB67_s1_0ENCB67_s2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIB1P_NtNtB3b_10table_data9TableDataEEINtNtB7_3map3MapIB1z_IB1P_B2L_EIB1P_NtB39_16ColumnDefinitionEENCNCNvXNtB3d_12print_schemaNtB6a_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts1_00ENCB67_s1_0ENCB67_s2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit: ; preds = %bb.n, %bb.o
  %.sink81.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.o ], [ %.sroa.4.i, %bb.n ]
  %.sink.i.i.i = phi i64 [ %i.ah, %bb.o ], [ 0, %bb.n ]
  store i64 %.sink.i.i.i, ptr %.sink81.i.i.sroa.phi.i, align 8, !alias.scope !8008, !noalias !8009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.ai = load i64, ptr %i.e, align 8, !range !71, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !72, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.p, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit, !prof !54

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIB1P_NtNtB3b_10table_data9TableDataEEINtNtB7_3map3MapIB1z_IB1P_B2L_EIB1P_NtB39_16ColumnDefinitionEENCNCNvXNtB3d_12print_schemaNtB6a_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts1_00ENCB67_s1_0ENCB67_s2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit
  %i.an = load i64, ptr %i.am, align 8
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #23
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIB1P_NtNtB3b_10table_data9TableDataEEINtNtB7_3map3MapIB1z_IB1P_B2L_EIB1P_NtB39_16ColumnDefinitionEENCNCNvXNtB3d_12print_schemaNtB6a_30CustomTypesForTablesForDisplayNtNtBb_3fmt7Display3fmts1_00ENCB67_s1_0ENCB67_s2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3d_.exit
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ap = icmp ugt i64 %i.al, 3
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false)
  store ptr %.sink.i.i.ph.i.i, ptr %i.ao, align 8
  store i64 %i.al, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !8010)
  call void @llvm.experimental.noalias.scope.decl(metadata !8013)
  call void @llvm.experimental.noalias.scope.decl(metadata !8015)
  call void @llvm.experimental.noalias.scope.decl(metadata !8018)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 6 uses
  %.sroa.7.0..sroa_idx18.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 3 uses
  %.sroa.730.0..sroa_idx31.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeRNtNtBK_10table_data9TableNameRNtBI_16ColumnDefinitionEE7reserveBM_.exit.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8020)
  call void @llvm.experimental.noalias.scope.decl(metadata !8023)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8026)
  call void @llvm.experimental.noalias.scope.decl(metadata !8029)
  call void @llvm.experimental.noalias.scope.decl(metadata !8032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8035
  store ptr %i.aq, ptr %i.d, align 8, !noalias !8043
  %i.az = load ptr, ptr %i.ar, align 8, !alias.scope !8046, !noalias !8047, !noundef !4
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8043
  invoke void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIB1e_NtB21_16ColumnDefinitionEENCNCNvXNtB25_12print_schemaNtB3V_30CustomTypesForTablesForDisplayNtNtBc_3fmt7Display3fmts1_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5k_8find_map5checkTRB1D_RB3o_RNtNtB23_10table_data9TableNameETRB1Z_B6E_B6z_EQNCB3S_s2_0E0INtNtNtBc_3ops12control_flow11ControlFlowB7a_EEB25_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %bb.ai

end_hunk_1
begin_hunk_2_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1D_3str4iter5SplitcENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite18get_sqlite_version0EE9from_iterB2S_:bb.a
  store i32 %i.s, ptr %i.y, align 4, !noalias !8099
  %i.z = add nuw nsw i64 %i.t, 1
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !8094, !noalias !8099
  %i.aa = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite18get_sqlite_version0ENtNtNtB9_6traits8iterator8Iterator4nextB1v_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc8 unwind label %.loopexit ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1l_3str4iter5SplitcENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite18get_sqlite_version0EE11spec_extendB2A_.exit

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1l_3str4iter5SplitcENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite18get_sqlite_version0EE11spec_extendB2A_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs2bNgeUs5Jlc_6diesel.exit.i.i, %.noexc7
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.g

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1l_3str4iter5SplitcENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite18get_sqlite_version0EE11spec_extendB2A_.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3M_6borrow3CoweEINtNtBb_6option6OptionRSNtB20_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4V_EENCNvNtNtB24_10migrations11diff_schema20collect_record_types0ENCB6E_s_0EB4h_4nextB24_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8105)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8116
  store ptr %i.e, ptr %i.d, align 8, !noalias !8122
  %i.f = load i64, ptr %1, align 8, !range !216, !alias.scope !8125, !noalias !8126, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.f, -4
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8122
  call void @_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB5_5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB15_6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB2e_EEB1A_8try_folduQNCINvNvB1A_8find_map5checkB2e_TB2f_B2X_EQNCNvNtNtB35_10migrations11diff_schema20collect_record_typess_0E0INtNtNtBb_3ops12control_flow11ControlFlowB5E_EEB35_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !8127
  %i.g = load i64, ptr %i.c, align 8, !range !1451, !alias.scope !8128, !noalias !8131, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.g, -2
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.g unwind label %bb.f, !noalias !8127

bb.d:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx24.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx24.i.i.i.i, i64 32, i1 false), !noalias !8133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8122
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8122
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  store i64 -4, ptr %1, align 8, !alias.scope !8125, !noalias !8126
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  store i64 -4, ptr %1, align 8, !alias.scope !8125, !noalias !8126
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8134)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !8137, !noalias !8138, !noundef !4
  %.not.i18.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i18.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8142
  call void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENCNvNtNtB1t_10migrations11diff_schema20collect_record_types0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB3L_p4ItemTINtNtB62_6borrow3CoweEINtNtBc_6option6OptionRSNtB1p_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB6H_EEuINtNtNtBc_3ops12control_flow11ControlFlowTB6I_B7q_EENCINvNvXsi_B4E_B4R_B3L_8try_fold7flattenB5D_uB8p_NCINvNvB3L_8find_map5checkB6H_B94_QNCB2O_s_0E0E0E0B8p_EB1t_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(128) %1), !noalias !8143
  %i.k = load i64, ptr %i.a, align 8, !range !1451, !alias.scope !8144, !noalias !8147, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8142
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.7.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx4.i.i.i.i.i, i64 32, i1 false), !noalias !8133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8142
  br label %bb.t

bb.k:                                             ; preds = %bb.i, %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.m unwind label %bb.l, !noalias !8127

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 -4, ptr %1, align 8, !alias.scope !8125, !noalias !8126
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  store i64 -4, ptr %1, align 8, !alias.scope !8125, !noalias !8126
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !range !216, !alias.scope !8125, !noalias !8126, !noundef !4
  %.not15.i.i.i.i = icmp eq i64 %i.n, -4
  br i1 %.not15.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8122
  call void @_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB5_5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB15_6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB2e_EEB1A_8try_folduQNCINvNvB1A_8find_map5checkB2e_TB2f_B2X_EQNCNvNtNtB35_10migrations11diff_schema20collect_record_typess_0E0INtNtNtBb_3ops12control_flow11ControlFlowB5E_EEB35_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !8127
  %i.o = load i64, ptr %i.b, align 8, !range !1451, !alias.scope !8149, !noalias !8152, !noundef !4 ; 2 uses
  %.not.i21.i.i.i.i = icmp eq i64 %i.o, -2
  br i1 %.not.i21.i.i.i.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.q, %bb.m
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB14_6traits8iterator8Iteratorp4ItemTINtNtB1E_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB14_7sources4once4OnceB2O_EEEEB3n_(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEB21_.exit.i unwind label %bb.r, !noalias !8127

bb.p:                                             ; preds = %bb.n
  %.sroa.737.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.737.0..sroa_idx38.i.i.i.i, i64 32, i1 false), !noalias !8133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8122
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8122
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 -4, ptr %i.m, align 8, !alias.scope !8125, !noalias !8126
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.p, %bb.r ], [ %i.l, %bb.l ]
  resume { ptr, i32 } %.pn.i.i.i.i

bb.t:                                             ; preds = %bb.p, %bb.j, %bb.d
  %.sink.i.i.ph.i = phi i64 [ %i.o, %bb.p ], [ %i.k, %bb.j ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8116
  store i64 %.sink.i.i.ph.i, ptr %0, align 8, !alias.scope !8102, !noalias !8154
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !8154
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTINtNtB3d_6borrow3CoweEINtNtBc_6option6OptionRSNtB1r_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB4m_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0EB3I_8find_mapTB4n_B55_EQNCB65_s_0EB1v_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEB21_.exit.i: ; preds = %bb.o
  store i64 -4, ptr %i.m, align 8, !alias.scope !8125, !noalias !8126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8116
  store i64 -2, ptr %0, align 8, !alias.scope !8102, !noalias !8154
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTINtNtB3d_6borrow3CoweEINtNtBc_6option6OptionRSNtB1r_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB4m_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0EB3I_8find_mapTB4n_B55_EQNCB65_s_0EB1v_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemTINtNtB3d_6borrow3CoweEINtNtBc_6option6OptionRSNtB1r_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB4m_EENCNvNtNtB1v_10migrations11diff_schema20collect_record_types0EB3I_8find_mapTB4n_B55_EQNCB65_s_0EB1v_.exit: ; preds = %bb.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTINtNtCs40k4W9msRzi_5alloc6borrow3CoweERSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEB21_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3M_6borrow3CoweEINtNtBb_6option6OptionRSNtB20_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4V_EENCNvNtNtB24_10migrations11diff_schema20collect_record_types0ENCB6E_s_0EB4h_9size_hintB24_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8165
  %i.e = load i64, ptr %1, align 8, !range !216, !alias.scope !8166, !noalias !8167, !noundef !4 ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8168)
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8174)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !8177, !noalias !8178, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  %.not8.i.i.i.i.i = icmp eq i64 %i.e, -3         ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not8.i.i.i.i.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %.not8.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i64 %i.e, -2
  %i.i = zext i1 %i.h to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8183
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f), !noalias !8178
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !71, !noalias !8183, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !8183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8183
  %i.n = icmp ne i64 %i.e, -2
  %i.o = zext i1 %i.n to i64
  %i.p = trunc nuw i64 %i.k to i1                 ; 2 uses
  %i.q = add i64 %i.m, %i.o                       ; 2 uses
  %i.r = icmp uge i64 %i.q, %i.m
  %.sroa.46.0.i.i.i.i.i = select i1 %i.p, i64 %i.q, i64 undef
  %narrow.i.i.i.i.i = select i1 %i.p, i1 %i.r, i1 false
  %.sroa.05.0.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i

bb.g:                                             ; preds = %bb.c
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f), !noalias !8184
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre79.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !71, !noalias !8165
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !noalias !8165
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %i.s = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ], [ %.sroa.46.0.i.i.i.i.i, %bb.f ], [ %.pre81.i.i, %bb.g ], [ 0, %bb.a ] ; 2 uses
  %i.t = phi i64 [ 1, %bb.e ], [ 1, %bb.d ], [ %.sroa.05.0.i.i.i.i.i, %bb.f ], [ %.pre79.i.i, %bb.g ], [ 1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8165
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !range !216, !alias.scope !8166, !noalias !8167, !noundef !4 ; 4 uses
  %.not55.i.i = icmp eq i64 %i.v, -4
  call void @llvm.experimental.noalias.scope.decl(metadata !8185)
  br i1 %.not55.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8188)
  call void @llvm.experimental.noalias.scope.decl(metadata !8191)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !8194, !noalias !8195, !noundef !4
  %.not.i.i.i64.i.i = icmp eq ptr %i.x, null
  %.not8.i.i.i65.i.i = icmp eq i64 %i.v, -3       ; 2 uses
  br i1 %.not.i.i.i64.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i.i65.i.i, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i.i65.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = icmp ne i64 %i.v, -2
  %i.z = zext i1 %i.y to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8200
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w), !noalias !8195
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !71, !noalias !8200, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !8200 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8200
  %i.ae = icmp ne i64 %i.v, -2
  %i.af = zext i1 %i.ae to i64
  %i.ag = trunc nuw i64 %i.ab to i1               ; 2 uses
  %i.ah = add i64 %i.ad, %i.af                    ; 2 uses
  %i.ai = icmp uge i64 %i.ah, %i.ad
  %.sroa.46.0.i.i.i66.i.i = select i1 %i.ag, i64 %i.ah, i64 undef
  %narrow.i.i.i67.i.i = select i1 %i.ag, i1 %i.ai, i1 false
  %.sroa.05.0.i.i.i68.i.i = zext i1 %narrow.i.i.i67.i.i to i64
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i

bb.m:                                             ; preds = %bb.i
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_9size_hintB2D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w), !noalias !8201
  %.phi.trans.insert83.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre84.i.i = load i64, ptr %.phi.trans.insert83.i.i, align 8, !range !71, !noalias !8165
  %.phi.trans.insert85.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre86.i.i = load i64, ptr %.phi.trans.insert85.i.i, align 8, !noalias !8165
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i
  %i.aj = phi i64 [ %i.z, %bb.k ], [ 0, %bb.j ], [ %.sroa.46.0.i.i.i66.i.i, %bb.l ], [ %.pre86.i.i, %bb.m ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i ]
  %i.ak = phi i64 [ 1, %bb.k ], [ 1, %bb.j ], [ %.sroa.05.0.i.i.i68.i.i, %bb.l ], [ %.pre84.i.i, %bb.m ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit.i.i ]
  %.fr5 = freeze i64 %i.ak                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8165
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !8166, !noalias !8167, !noundef !4 ; 2 uses
  %.not56.i.i = icmp eq ptr %i.am, null
  br i1 %.not56.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val63.i.i = load ptr, ptr %i.an, align 8, !alias.scope !8166, !noalias !8167, !nonnull !4, !noundef !4
  %i.ao = icmp eq ptr %.val63.i.i, %i.am
  %i.ap = trunc nuw i64 %i.t to i1
  %i.aq = trunc i64 %.fr5 to i1
  %op.rdx = and i1 %i.ao, %i.aq
  %op.rdx4 = select i1 %op.rdx, i1 %i.ap, i1 false
  br i1 %op.rdx4, label %bb.p, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit

bb.o:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBQ_6traits8iterator8Iteratorp4ItemTINtNtB1q_6borrow3CoweEIBw_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtBQ_7sources4once4OnceB2z_EEE6map_orTjIBw_jEENvYBJ_B1V_9size_hintEB38_.exit69.i.i
  %i.ar = and i64 %.fr5, %i.t
  %or.cond57.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %or.cond57.not.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.as = add i64 %i.aj, %i.s                     ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.s
  %.58.i.i = zext i1 %i.at to i64
  store i64 %.58.i.i, ptr %.sroa.4, align 8, !alias.scope !8167, !noalias !8166
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionEINtNtB7_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB3i_6borrow3CoweEINtNtBb_6option6OptionRSNtB1w_10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB4r_EENCNvNtNtB1A_10migrations11diff_schema20collect_record_types0EB3N_9size_hintB1A_.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sink90.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.p ], [ %.sroa.4, %bb.o ], [ %.sroa.4, %bb.n ]
  %.sink.i.i = phi i64 [ %i.as, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ]
  store i64 %.sink.i.i, ptr %.sink90.i.i.sroa.phi, align 8, !alias.scope !8167, !noalias !8166
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load i64, ptr %.sroa.4, align 8, !range !71, !noundef !4
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load i64, ptr %.sroa.7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 0, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., ptr %i.av, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2c_ENtB3l_16TypedValueParser9parse_refs_00ENCB3d_s_0ENCB3d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8202)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8214
  store ptr %i.f, ptr %i.d, align 8, !noalias !8220
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !8220
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8224, !noalias !8227, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !8224, !noalias !8227 ; 2 uses
  %i.j = icmp eq ptr %.promoted.i.i.i.i, %i.i
  br i1 %i.j, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i
  %i.k = phi ptr [ %i.l, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !8224, !noalias !8227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8228
  call void @_RNvXs0_NtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCs9ZYirdRbabK_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.k), !noalias !8233
  %i.m = load i64, ptr %i.c, align 8, !range !339, !noalias !8228, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !8228
  %i.n = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !8234

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #21
          to label %common.resume unwind label %bb.e, !noalias !8234

bb.d:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.f, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread15.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread15.i.i.i.i: ; preds = %bb.d
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b), !noalias !8234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8228
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !8234
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread15.i.i.i.i, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8228
  %i.q = icmp eq ptr %i.l, %i.i
  br i1 %i.q, label %.loopexit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.79.0..sroa_idx.i.i.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8214
  store i64 %i.m, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8237)
  %.sroa.0.0.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8237, !noalias !8240, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !8237, !noalias !8240, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8242
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.3.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g, !noalias !8242

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e) #21
          to label %common.resume unwind label %bb.m, !noalias !8240

bb.h:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !range !71, !noalias !8242, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !72, !noalias !8242, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j, !prof !54

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.w, align 8, !noalias !8242
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #23
          to label %bb.l unwind label %bb.g, !noalias !8242

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.w, align 8, !noalias !8242, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = icmp ule i64 %.sroa.3.0.i, %i.v
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8242
  %.not.i = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %.not.i, label %_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false), !noalias !8242
  br label %_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !8240
  unreachable

_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.j, %bb.k
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !8240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.v, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.n

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellNtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8214
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %_RNCNCNvXso_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCs7b5kLxPRxmL_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs2bNgeUs5Jlc_6diesel.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite18get_sqlite_version0ENtNtNtB9_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8246)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7687, !alias.scope !8249, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXsX_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !8249, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !8249, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8250)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !8253, !noalias !8254, !noundef !4 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !8253, !noalias !8254 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  br i1 %i.j, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCs2bNgeUs5Jlc_6diesel.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !8253, !noalias !8254 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCs2bNgeUs5Jlc_6diesel.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  tail call void @llvm.assume(i1 %i.o)
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !8253, !noalias !8254 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i.i.i
  %i.r = phi i64 [ %.promoted.i.i.i, %.lr.ph.split.i.i.i ], [ %i.ag, %bb.h ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
end_hunk_2
