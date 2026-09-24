Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.01?download=true
inline.NumInlined: 12775
inline.NumDeleted: 7325
loop-unroll.NumRuntimeUnrolled: 149
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEE10retain_mutNCINvMs_NtBH_5innerINtB3l_4CoreB1b_B1U_E15retain_in_orderNCINvMs4_NtBH_3mapINtB4h_8IndexMapB1b_B1U_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvXNvMs1g_B1W_NtB1W_9ClassType16abstract_methodsB6B_NtB6q_11InnerTrait_17abstract_methods_s_0E0E0EB20_:bb.a

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15
  %.sroa.8.134 = phi i64 [ %.sroa.8.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15 ], [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit ] ; 4 uses
  %.sroa.15.133 = phi i64 [ %.sroa.15.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15 ], [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.8.134 ; 4 uses
  %i.x = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodE15retain_in_orderNCINvMs4_NtB9_3mapINtB32_8IndexMapBN_B1w_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvXNvMs1g_B1y_NtB1y_9ClassType16abstract_methodsB5l_NtB5a_11InnerTrait_17abstract_methods_s_0E0E0B1C_(ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  br i1 %i.x, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nuw nsw i64 %.sroa.8.134, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 39
  %i.ab = load i8, ptr %i.aa, align 1, !range !13, !alias.scope !247, !noundef !14
  %i.ac = and i8 %i.ab, -2
  %switch.i.i.i.i.i11 = icmp eq i8 %i.ac, -48
  br i1 %switch.i.i.i.i.i11, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %.pn.i.i.i.i.i.i12 = load ptr, ptr %i.z, align 8, !alias.scope !249, !nonnull !14, !noundef !14
  %.sroa.0.0.i.i.i.i.i.i13 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i12, i64 -8
  %i.ad = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i13, i64 1 release, align 8, !noalias !249
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15, !prof !16

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15 unwind label %.loopexit

bb.l:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.15.133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %i.ag = add i64 %.sroa.15.133, 1
  %i.ah = add nuw nsw i64 %.sroa.8.134, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14AbstractMethodEEB1X_.exit15: ; preds = %bb.j, %bb.i, %bb.k, %bb.l
  %.sroa.15.2 = phi i64 [ %i.ag, %bb.l ], [ %.sroa.15.133, %bb.k ], [ %.sroa.15.133, %bb.i ], [ %.sroa.15.133, %bb.j ] ; 2 uses
  %.sroa.8.2 = phi i64 [ %i.ah, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.ai = icmp samesign ult i64 %.sroa.8.2, %i.b
  br i1 %i.ai, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEE10retain_mutNCINvMs_NtBH_5innerINtB3b_4CoreB1b_B1U_E15retain_in_orderNCINvMs4_NtBH_3mapINtB47_8IndexMapB1b_B1U_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvXNvMsp_NtB1W_14static_literalNtB6m_18StaticClassLiteral12fields_innerB6I_NtB6g_11InnerTrait_13fields_inner_s1_0E0E0EB20_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 76861433640456466
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %.val.i = load ptr, ptr %1, align 8, !noalias !256, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader24, %bb.d
  %.sroa.0.0 = phi i64 [ %i.k, %bb.d ], [ 0, %.preheader24 ] ; 5 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %.sroa.0.0 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = tail call { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %.not = icmp eq i64 %i.j, 1
  %i.k = add nuw nsw i64 %.sroa.0.0, 1            ; 5 uses
  br i1 %.not, label %bb.e, label %bb.d, !prof !16

.loopexit:                                        ; preds = %.lr.ph, %bb.g
  %.sroa.8.0.ph = phi i64 [ %.sroa.8.133, %.lr.ph ], [ %i.w, %bb.g ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.15.0 = phi i64 [ %.sroa.15.132, %.loopexit ], [ %.sroa.0.0, %.loopexit.split-lp ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.ph, %.loopexit ], [ %i.k, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.l = sub i64 %i.b, %.sroa.8.0                 ; 2 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %.sroa.8.0
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %.sroa.15.0
  %i.o = mul i64 %i.l, 120
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.o, i1 false), !noalias !257
  %i.p = add i64 %i.l, %.sroa.15.0
  store i64 %i.p, ptr %i.a, align 8, !noalias !257
  resume { ptr, i32 } %lpad.phi

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.k, %i.b
  br i1 %i.q, label %.loopexit25, label %bb.b

bb.e:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB1X_(ptr noalias noundef align 8 dereferenceable(120) %i.g)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.e
  %i.r = icmp samesign ult i64 %i.k, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.loopexit25:                                      ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.sroa.15.1.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.15.2, %bb.i ]
  store i64 %.sroa.15.1.lcssa, ptr %i.a, align 8
  br label %.loopexit25

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.sroa.8.133 = phi i64 [ %.sroa.8.2, %bb.i ], [ %i.k, %.preheader ] ; 4 uses
  %.sroa.15.132 = phi i64 [ %.sroa.15.2, %bb.i ], [ %.sroa.0.0, %.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %.sroa.8.133 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %.not23 = icmp eq i64 %i.v, 1
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i64 %.sroa.8.133, 1          ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB1X_(ptr noalias noundef align 8 dereferenceable(120) %i.s)
          to label %bb.i unwind label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %.sroa.15.132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.x, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  %i.y = add i64 %.sroa.15.132, 1
  %i.z = add nuw nsw i64 %.sroa.8.133, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.15.2 = phi i64 [ %i.y, %bb.h ], [ %.sroa.15.132, %bb.g ] ; 2 uses
  %.sroa.8.2 = phi i64 [ %i.z, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.aa = icmp samesign ult i64 %.sroa.8.2, %i.b
  br i1 %i.aa, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentNtB1d_14AssignmentFuelEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal15EnumLiteralTypebEE10retain_mutNCINvMs_NtBH_5innerINtB2G_4CoreB1b_bE15retain_in_orderNCINvMs4_NtBH_3mapINtB3z_8IndexMapB1b_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtB1f_13set_theoretic7builderNtB5H_12UnionElement10try_reduces3_0E0E0EB1h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader22, %bb.d
  %.sroa.0.0 = phi i64 [ %i.i, %bb.d ], [ 0, %.preheader22 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal15EnumLiteralTypebE15retain_in_orderNCINvMs4_NtB9_3mapINtB2n_8IndexMapBN_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtBR_13set_theoretic7builderNtB4u_12UnionElement10try_reduces3_0E0E0BT_(ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.g)
  %i.i = add nuw i64 %.sroa.0.0, 1                ; 4 uses
  br i1 %i.h, label %bb.d, label %.preheader, !prof !15

.preheader:                                       ; preds = %bb.b
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = sub nuw nsw i64 %i.b, %.sroa.7.030       ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.029
  %i.n = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.q, i64 %i.n, i1 false), !noalias !262
  %i.o = add i64 %i.l, %.sroa.13.029
  store i64 %i.o, ptr %i.a, align 8, !noalias !262
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.i, %i.b
  br i1 %i.p, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.13.1, %bb.g ]
  store i64 %.sroa.13.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.sroa.7.030 = phi i64 [ %.sroa.7.0, %bb.g ], [ %i.i, %.preheader ] ; 3 uses
  %.sroa.13.029 = phi i64 [ %.sroa.13.1, %bb.g ], [ %.sroa.0.0, %.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.030 ; 3 uses
  %i.r = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal15EnumLiteralTypebE15retain_in_orderNCINvMs4_NtB9_3mapINtB2n_8IndexMapBN_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtBR_13set_theoretic7builderNtB4u_12UnionElement10try_reduces3_0E0E0BT_(ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.t = add i64 %.sroa.13.029, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.13.1 = phi i64 [ %i.t, %bb.f ], [ %.sroa.13.029, %bb.e ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.030, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal16BytesLiteralTypebEE10retain_mutNCINvMs_NtBH_5innerINtB2H_4CoreB1b_bE15retain_in_orderNCINvMs4_NtBH_3mapINtB3A_8IndexMapB1b_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtB1f_13set_theoretic7builderNtB5I_12UnionElement10try_reduces2_0E0E0EB1h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader22, %bb.d
  %.sroa.0.0 = phi i64 [ %i.i, %bb.d ], [ 0, %.preheader22 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal16BytesLiteralTypebE15retain_in_orderNCINvMs4_NtB9_3mapINtB2o_8IndexMapBN_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtBR_13set_theoretic7builderNtB4v_12UnionElement10try_reduces2_0E0E0BT_(ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.g)
  %i.i = add nuw i64 %.sroa.0.0, 1                ; 4 uses
  br i1 %i.h, label %bb.d, label %.preheader, !prof !15

.preheader:                                       ; preds = %bb.b
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = sub nuw nsw i64 %i.b, %.sroa.7.030       ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.029
  %i.n = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.q, i64 %i.n, i1 false), !noalias !267
  %i.o = add i64 %i.l, %.sroa.13.029
  store i64 %i.o, ptr %i.a, align 8, !noalias !267
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.i, %i.b
  br i1 %i.p, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.13.1, %bb.g ]
  store i64 %.sroa.13.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.sroa.7.030 = phi i64 [ %.sroa.7.0, %bb.g ], [ %i.i, %.preheader ] ; 3 uses
  %.sroa.13.029 = phi i64 [ %.sroa.13.1, %bb.g ], [ %.sroa.0.0, %.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.030 ; 3 uses
  %i.r = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal16BytesLiteralTypebE15retain_in_orderNCINvMs4_NtB9_3mapINtB2o_8IndexMapBN_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtBR_13set_theoretic7builderNtB4v_12UnionElement10try_reduces2_0E0E0BT_(ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.t = add i64 %.sroa.13.029, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.13.1 = phi i64 [ %i.t, %bb.f ], [ %.sroa.13.029, %bb.e ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.030, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebEE10retain_mutNCINvMs_NtBH_5innerINtB2I_4CoreB1b_bE15retain_in_orderNCINvMs4_NtBH_3mapINtB3B_8IndexMapB1b_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtB1f_13set_theoretic7builderNtB5J_12UnionElement10try_reduces1_0E0E0EB1h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader22, %bb.d
  %.sroa.0.0 = phi i64 [ %i.i, %bb.d ], [ 0, %.preheader22 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebE15retain_in_orderNCINvMs4_NtB9_3mapINtB2p_8IndexMapBN_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtBR_13set_theoretic7builderNtB4w_12UnionElement10try_reduces1_0E0E0BT_(ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.g)
  %i.i = add nuw i64 %.sroa.0.0, 1                ; 4 uses
  br i1 %i.h, label %bb.d, label %.preheader, !prof !15

.preheader:                                       ; preds = %bb.b
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = sub nuw nsw i64 %i.b, %.sroa.7.030       ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.029
  %i.n = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.q, i64 %i.n, i1 false), !noalias !272
  %i.o = add i64 %i.l, %.sroa.13.029
  store i64 %i.o, ptr %i.a, align 8, !noalias !272
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.i, %i.b
  br i1 %i.p, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.13.1, %bb.g ]
  store i64 %.sroa.13.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.sroa.7.030 = phi i64 [ %.sroa.7.0, %bb.g ], [ %i.i, %.preheader ] ; 3 uses
  %.sroa.13.029 = phi i64 [ %.sroa.13.1, %bb.g ], [ %.sroa.0.0, %.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.030 ; 3 uses
  %i.r = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebE15retain_in_orderNCINvMs4_NtB9_3mapINtB2p_8IndexMapBN_bINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtBR_13set_theoretic7builderNtB4w_12UnionElement10try_reduces1_0E0E0BT_(ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.t = add i64 %.sroa.13.029, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.13.1 = phi i64 [ %i.t, %bb.f ], [ %.sroa.13.029, %bb.e ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.030, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1f_11constraints23ConstraintBoundsBuilderEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 67818912035696881
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEE10retain_mutNCINvMs_NtBH_5innerINtB2L_4CoreB1b_uE15retain_in_orderNCINvMs4_NtBH_3mapINtB3E_8IndexMapB1b_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtBH_3setINtB5O_8IndexSetB1b_B48_E6retainNCNCNvMNvMs_NtB1f_8genericsNtB6F_14GenericContext29remove_callable_only_typevarsNtB6A_16TypeVarLocations8finalize00E0E0E0EB1h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 6 uses
  %i.e = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !299, !noalias !300, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !14, !align !18 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !14, !align !17 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %.sroa.0.0 = phi i64 [ %i.ak, %bb.g ], [ 0, %.preheader ] ; 5 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.0 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.t = tail call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBO_EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s), !noalias !299
  br i1 %i.t, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread, label %bb.c, !prof !308

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !309
  %i.u = load i32, ptr %i.s, align 4, !range !20, !alias.scope !300, !noalias !299, !noundef !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !300, !noalias !299, !noundef !14
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance15binding_context(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, i32 noundef %i.u, i32 noundef %i.w, ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.m), !noalias !299
  %i.x = load i32, ptr %i.b, align 4, !range !21, !noalias !309, !noundef !14
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !308

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !309
  br label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.n, align 4, !range !20, !noalias !309, !noundef !14
  %i.aa = load i32, ptr %i.o, align 4, !noalias !309, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !309
  %i.ab = load i32, ptr %i.r, align 4, !noalias !299, !noundef !14
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread, !prof !310

_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit: ; preds = %bb.e
  %i.ad = load i32, ptr %i.q, align 4, !range !20, !noalias !299, !noundef !14
  %i.ae = icmp eq i32 %i.z, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread, !prof !311

bb.f:                                             ; preds = %bb.h, %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = sub nuw nsw i64 %i.d, %.sroa.7.040      ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.13.039
  %i.ai = shl nuw nsw i64 %i.ag, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ap, i64 %i.ai, i1 false), !noalias !312
  %i.aj = add i64 %i.ag, %.sroa.13.039
  store i64 %i.aj, ptr %i.c, align 8, !noalias !312
  resume { ptr, i32 } %i.af

bb.g:                                             ; preds = %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit
  %i.ak = add nuw nsw i64 %.sroa.0.0, 1           ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.d
  br i1 %i.al, label %.loopexit, label %bb.b

_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread: ; preds = %bb.e, %bb.b, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit, %bb.d
  %.sroa.7.038 = add nuw i64 %.sroa.0.0, 1        ; 2 uses
  %i.am = icmp ult i64 %.sroa.7.038, %i.d
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

.loopexit:                                        ; preds = %bb.g, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit.thread ], [ %.sroa.13.1, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread ]
  store i64 %.sroa.13.0.lcssa, ptr %i.c, align 8
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread
  %.sroa.7.040 = phi i64 [ %.sroa.7.038, %.lr.ph ], [ %.sroa.7.0, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread ] ; 3 uses
  %.sroa.13.039 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.13.1, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.7.040 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.aq = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBO_EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.h
  br i1 %i.aq, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread, label %bb.i

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !317
  %i.ar = load i32, ptr %i.ap, align 4, !range !20, !alias.scope !318, !noalias !319, !noundef !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !318, !noalias !319, !noundef !14
  invoke void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance15binding_context(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %i.ar, i32 noundef %i.at, ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.m)
          to label %.noexc12 unwind label %bb.f

.noexc12:                                         ; preds = %bb.i
  %i.au = load i32, ptr %i.a, align 4, !range !21, !noalias !317, !noundef !14
  %i.av = trunc nuw i32 %i.au to i1
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  br label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread

bb.k:                                             ; preds = %.noexc12
  %i.aw = load i32, ptr %i.an, align 4, !range !20, !noalias !317, !noundef !14
  %i.ax = load i32, ptr %i.ao, align 4, !noalias !317, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  %i.ay = load i32, ptr %i.r, align 4, !noalias !319, !noundef !14
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread

_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13: ; preds = %bb.k
  %i.ba = load i32, ptr %i.q, align 4, !range !20, !noalias !319, !noundef !14
  %i.bb = icmp eq i32 %i.aw, %i.ba
  br i1 %i.bb, label %bb.l, label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread

bb.l:                                             ; preds = %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.13.039
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %i.bd = add i64 %.sroa.13.039, 1
  br label %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread

_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13.thread: ; preds = %bb.k, %bb.j, %.noexc, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13, %bb.l
  %.sroa.13.1 = phi i64 [ %i.bd, %bb.l ], [ %.sroa.13.039, %_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuE15retain_in_orderNCINvMs4_NtB9_3mapINtB2s_8IndexMapBN_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCINvMs4_NtB9_3setINtB4B_8IndexSetBN_B2V_E6retainNCNCNvMNvMs_NtBR_8genericsNtB5r_14GenericContext29remove_callable_only_typevarsNtB5m_16TypeVarLocations8finalize00E0E0E0BT_.exit13 ], [ %.sroa.13.039, %.noexc ], [ %.sroa.13.039, %bb.j ], [ %.sroa.13.039, %bb.k ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.040, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketxbEE10retain_mutNCINvMs_NtBH_5innerINtB1z_4CorexbE15retain_in_orderNCINvMs4_NtBH_3mapINtB2p_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB4u_12UnionElement10try_reduces0_0E0E0EB4A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %.preheader26

.preheader26:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader26, %bb.d
  %.sroa.0.0 = phi i64 [ %i.k, %bb.d ], [ 0, %.preheader26 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val10 = load i64, ptr %i.h, align 8, !noundef !14
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val11 = load i8, ptr %i.i, align 8, !range !22, !noundef !14
  %i.j = tail call fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CorexbE15retain_in_orderNCINvMs4_NtB9_3mapINtB1g_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB3l_12UnionElement10try_reduces0_0E0E0B3r_(ptr nonnull %1, i64 %.val10, i8 %.val11)
  %i.k = add nuw i64 %.sroa.0.0, 1                ; 4 uses
  br i1 %i.j, label %bb.d, label %.preheader, !prof !15

.preheader:                                       ; preds = %bb.b
  %i.l = icmp ult i64 %i.k, %i.b
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = sub nuw nsw i64 %i.b, %.sroa.7.034       ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.033
  %i.p = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.s, i64 %i.p, i1 false), !noalias !324
  %i.q = add i64 %i.n, %.sroa.13.033
  store i64 %i.q, ptr %i.a, align 8, !noalias !324
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.k, %i.b
  br i1 %i.r, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.13.1, %bb.g ]
  store i64 %.sroa.13.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.sroa.7.034 = phi i64 [ %.sroa.7.0, %bb.g ], [ %i.k, %.preheader ] ; 3 uses
  %.sroa.13.033 = phi i64 [ %.sroa.13.1, %bb.g ], [ %.sroa.0.0, %.preheader ] ; 5 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.034 ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val13 = load i64, ptr %i.t, align 8, !noundef !14
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val14 = load i8, ptr %i.u, align 8, !range !22, !noundef !14
  %i.v = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB7_4CorexbE15retain_in_orderNCINvMs4_NtB9_3mapINtB1g_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE6retainNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB3l_12UnionElement10try_reduces0_0E0E0B3r_(ptr nonnull %1, i64 %.val13, i8 %.val14)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.033
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.x = add i64 %.sroa.13.033, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.13.1 = phi i64 [ %i.x, %bb.f ], [ %.sroa.13.033, %bb.e ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.034, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2e_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB45_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB41_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0EB1a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !333, !noalias !334, !noundef !14 ; 9 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.pre.i = load i64, ptr %1, align 8, !noalias !335 ; 3 uses
  %i.e = load i64, ptr %2, align 8, !noalias !335, !noundef !14 ; 6 uses
  %i.f = add i64 %i.b, %.pre.i
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %i.b, 288230376151711740
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i.new
  %i.h = phi i64 [ %.pre.i, %.preheader.i.new ], [ %i.t, %bb.g ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ 0, %.preheader.i.new ], [ %i.v, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.3, %bb.g ]
  %i.i = add i64 %i.h, 1                          ; 2 uses
  %i.j = icmp ugt i64 %i.i, %i.e
  br i1 %i.j, label %bb.d, label %.loopexit, !prof !15

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %.loopexit
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.131.i, %.loopexit.i ], [ %.sroa.0.0.i.lcssa, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %i.ai, %.loopexit.i ], [ %i.z, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.k = sub i64 %i.b, %.sroa.8.0.i               ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.8.0.i
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.15.0.i
  %i.n = shl i64 %i.k, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.l, i64 %i.n, i1 false), !noalias !336
  %i.o = add i64 %i.k, %.sroa.15.0.i
  store i64 %i.o, ptr %i.a, align 8, !alias.scope !333, !noalias !337
  resume { ptr, i32 } %lpad.phi.i

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.h, 2                          ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.e
  br i1 %i.q, label %bb.e, label %.loopexit.split.loop.exit40, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %i.h, 3                          ; 2 uses
  %i.s = icmp ugt i64 %i.r, %i.e
  br i1 %i.s, label %bb.f, label %.loopexit.split.loop.exit37, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %i.h, 4                          ; 4 uses
  %i.u = icmp ugt i64 %i.t, %i.e
  br i1 %i.u, label %bb.g, label %.loopexit.split.loop.exit, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw nsw i64 %.sroa.0.0.i, 4          ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit.loopexit.unr-lcssa, label %bb.b

.loopexit.split.loop.exit:                        ; preds = %bb.f
  %i.w = or disjoint i64 %.sroa.0.0.i, 3
  br label %.loopexit

.loopexit.split.loop.exit37:                      ; preds = %bb.e
  %i.x = or disjoint i64 %.sroa.0.0.i, 2
  br label %.loopexit

.loopexit.split.loop.exit40:                      ; preds = %bb.d
  %i.y = or disjoint i64 %.sroa.0.0.i, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit37, %.loopexit.split.loop.exit40, %bb.b
  %.sroa.0.0.i.lcssa = phi i64 [ %.sroa.0.0.i, %bb.b ], [ %i.y, %.loopexit.split.loop.exit40 ], [ %i.x, %.loopexit.split.loop.exit37 ], [ %i.w, %.loopexit.split.loop.exit ], [ %.sroa.0.0.i.epil, %bb.j ] ; 5 uses
  %.lcssa24 = phi i64 [ %i.i, %bb.b ], [ %i.p, %.loopexit.split.loop.exit40 ], [ %i.r, %.loopexit.split.loop.exit37 ], [ %i.t, %.loopexit.split.loop.exit ], [ %i.ao, %bb.j ] ; 2 uses
  store i64 %.lcssa24, ptr %1, align 8, !noalias !335
  %i.z = add nuw nsw i64 %.sroa.0.0.i.lcssa, 1    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !333, !noalias !334, !nonnull !14, !noundef !14 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.0.0.i.lcssa
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i unwind label %.loopexit.split-lp.i, !noalias !335

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i: ; preds = %.loopexit
  %i.ad = icmp samesign ult i64 %i.z, %i.b
  br i1 %i.ad, label %.lr.ph.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit._crit_edge.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i ], [ %.sroa.15.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !333, !noalias !334
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i
  %i.ae = phi i64 [ %i.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i ], [ %.lcssa24, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i ]
  %.sroa.8.132.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i ], [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i ] ; 3 uses
  %.sroa.15.131.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i ], [ %.sroa.0.0.i.lcssa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit.preheader.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.8.132.i ; 2 uses
  %i.ag = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.ag, ptr %1, align 8, !noalias !335
  %i.ah = icmp ugt i64 %i.ag, %i.e
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw nsw i64 %.sroa.8.132.i, 1       ; 2 uses
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i unwind label %.loopexit.i, !noalias !335

bb.i:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.15.131.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !noalias !335
  %i.ak = add i64 %.sroa.15.131.i, 1
  %i.al = add nuw nsw i64 %.sroa.8.132.i, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit13.i: ; preds = %bb.i, %bb.h
  %.sroa.15.2.i = phi i64 [ %i.ak, %bb.i ], [ %.sroa.15.131.i, %bb.h ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.al, %bb.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.am = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.am, label %.lr.ph.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB1p_EEEB1t_.exit._crit_edge.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit.loopexit.unr-lcssa, %.preheader.i
  %.epil.init = phi i64 [ %.pre.i, %.preheader.i ], [ %i.t, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit.loopexit.unr-lcssa ]
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.v, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeB16_EEE10retain_mutNCINvB2_6retainNCNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB2y_10GroupInnerB16_INtCsheqz6YZvxwl_8smallvec8IntoIterAB15_j2_ENCINvMs8_NtB18_6narrowNtB4p_22PatternSuccessAnalyzer28analyze_matched_subject_armsNCNvB4l_31matched_or_pattern_subject_type0E0E13lookup_buffers0_0E0EB1a_.exit.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.epil.preheader
  %i.an = phi i64 [ %i.ao, %bb.k ], [ %.epil.init, %.epil.preheader ]
end_hunk_0
begin_hunk_1_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1p_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2E_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE11resize_withNvYBE_NtNtCs4NRVxsYgnAr_4core7default7Default7defaultEB2I_:bb.a
.prol.preheader:                                  ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i, %.prol.preheader
  %i.z = phi i64 [ %i.ab, %.prol.preheader ], [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i ] ; 2 uses
  %.sroa.0.0.i.in.i.i.i.prol = phi i64 [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ], [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i ]
  %.sroa.0.0.i.i.i.i.prol = add i64 %.sroa.0.0.i.in.i.i.i.prol, -1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !3099
  %i.ab = add i64 %i.z, 1                         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3095

.prol.loopexit:                                   ; preds = %.prol.preheader, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.unr = phi i64 [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ]
  %i.ac = sub i64 %i.b, %1
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5n_7sources11repeat_with10RepeatWithNvYBF_NtNtB5p_7default7Default7defaultEEEB2J_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new
  %i.ae = phi i64 [ %i.aj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.3, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !3099
  %i.ag = getelementptr [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ag, i64 24
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !3099
  %i.ah = getelementptr [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.2 = getelementptr i8, ptr %i.ah, i64 40
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.2, align 8, !noalias !3099
  %.sroa.0.0.i.i.i.i.3 = add i64 %.sroa.0.0.i.in.i.i.i, -4 ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.3 = getelementptr i8, ptr %i.ai, i64 56
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.3, align 8, !noalias !3099
  %i.aj = add i64 %i.ae, 4                        ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.i.i.i.i.3, 0
  br i1 %i.ak, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5n_7sources11repeat_with10RepeatWithNvYBF_NtNtB5p_7default7Default7defaultEEEB2J_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5n_7sources11repeat_with10RepeatWithNvYBF_NtNtB5p_7default7Default7defaultEEEB2J_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.aj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !3098, !noalias !3100
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE8truncateB2H_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE8truncateB2H_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEEB2F_.exit.i.i, %bb.b, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance22lazy_default_unchecked1__38lazy_default_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5n_7sources11repeat_with10RepeatWithNvYBF_NtNtB5p_7default7Default7defaultEEEB2J_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1p_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2E_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE11resize_withNvYBE_NtNtCs4NRVxsYgnAr_4core7default7Default7defaultEB2I_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 9 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3118, !nonnull !14, !noundef !14
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !3118
  %i.i = icmp eq i64 %i.b, %1
  br i1 %i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE8truncateB2H_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit.i.i: ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.e
  br i1 %i.j, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE8truncateB2H_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit.i.i
  %.sroa.0.0.i.i11 = phi i64 [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.0.i.i11
  %i.l = add nuw nsw i64 %.sroa.0.0.i.i11, 1      ; 4 uses
  invoke void @_RNvXs6_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB5_5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB27_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2b_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit.i.i unwind label %bb.c, !noalias !3118

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i: ; preds = %.lr.ph13
  %i.m = add nuw nsw i64 %.sroa.0.1.i.i12, 1      ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i._crit_edge, label %.lr.ph13

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.l, %i.e
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i
  %.sroa.0.1.i.i12 = phi i64 [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.1.i.i12
  invoke void @_RNvXs6_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB5_5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB27_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2b_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i unwind label %bb.d, !noalias !3118

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit7.i.i, %bb.c
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %.lr.ph13
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !3118
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.t = load i64, ptr %0, align 8, !range !24, !alias.scope !3119, !noundef !14
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i, !prof !16

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.thread.i: ; preds = %bb.e
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.s, i64 noundef 8, i64 noundef 16)
  %i.w = load i64, ptr %i.a, align 8, !alias.scope !3120, !noundef !14
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i: ; preds = %bb.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.thread.i
  %i.x = phi i64 [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.thread.i ], [ %i.b, %bb.e ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %.in.i, align 8, !alias.scope !3120, !nonnull !14, !noundef !14 ; 5 uses
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i, %.prol.preheader
  %i.z = phi i64 [ %i.ab, %.prol.preheader ], [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i ] ; 2 uses
  %.sroa.0.0.i.in.i.i.i.prol = phi i64 [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ], [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i ]
  %.sroa.0.0.i.i.i.i.prol = add i64 %.sroa.0.0.i.in.i.i.i.prol, -1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !3121
  %i.ab = add i64 %i.z, 1                         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3117

.prol.loopexit:                                   ; preds = %.prol.preheader, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.unr = phi i64 [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ]
  %i.ac = sub i64 %i.b, %1
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5v_7sources11repeat_with10RepeatWithNvYBF_NtNtB5x_7default7Default7defaultEEEB2J_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new
  %i.ae = phi i64 [ %i.aj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.3, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !3121
  %i.ag = getelementptr [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ag, i64 24
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !3121
  %i.ah = getelementptr [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.2 = getelementptr i8, ptr %i.ah, i64 40
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.2, align 8, !noalias !3121
  %.sroa.0.0.i.i.i.i.3 = add i64 %.sroa.0.0.i.in.i.i.i, -4 ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.3 = getelementptr i8, ptr %i.ai, i64 56
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.3, align 8, !noalias !3121
  %i.aj = add i64 %i.ae, 4                        ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.i.i.i.i.3, 0
  br i1 %i.ak, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5v_7sources11repeat_with10RepeatWithNvYBF_NtNtB5x_7default7Default7defaultEEEB2J_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5v_7sources11repeat_with10RepeatWithNvYBF_NtNtB5x_7default7Default7defaultEEEB2J_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.aj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE7reserveB2H_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !3120, !noalias !3122
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE8truncateB2H_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1o_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2D_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE8truncateB2H_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2B_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEEB2F_.exit.i.i, %bb.b, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryINtNtNtCs45bxiIjzMqg_5salsa8function6delete9SharedBoxINtNtB1q_4memo4MemoNtNvNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB2F_15TypeVarInstance26lazy_constraints_unchecked1__42lazy_constraints_unchecked__Configuration_EEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB5v_7sources11repeat_with10RepeatWithNvYBF_NtNtB5x_7default7Default7defaultEEEB2J_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexE8dedup_byNCNvMs4_B5_Bu_5dedup0ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %.sroa.5.024, %bb.e ] ; 8 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %.val = load i32, ptr %i.g, align 4, !noundef !14
  %.val11 = load i32, ptr %i.h, align 4, !noundef !14
  %i.i = icmp eq i32 %.val, %.val11
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.024, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.024
  %i.n = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %.val12.prol = load i32, ptr %i.m, align 4, !noundef !14 ; 2 uses
  %.val13.prol = load i32, ptr %i.o, align 4, !noundef !14
  %i.p = icmp eq i32 %.val12.prol, %.val13.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i32 %.val12.prol, ptr %i.n, align 4
  %i.q = add i64 %.sroa.0.023, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.023, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.023, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.unr = phi i64 [ %.sroa.5.024, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.unr = phi i64 [ %.sroa.0.023, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.024, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.026 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.t = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.025 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %.val12 = load i32, ptr %i.s, align 4, !noundef !14 ; 2 uses
  %.val13 = load i32, ptr %i.u, align 4, !noundef !14
  %i.v = icmp eq i32 %.val12, %.val13
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %.val12, ptr %i.t, align 4
  %i.w = add i64 %.sroa.11.025, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.025, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %.val12.1 = load i32, ptr %i.y, align 4, !noundef !14 ; 2 uses
  %.val13.1 = load i32, ptr %i.aa, align 4, !noundef !14
  %i.ab = icmp eq i32 %.val12.1, %.val13.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i32 %.val12.1, ptr %i.z, align 4
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.026, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE8dedup_byNCNvMs4_B5_Bu_5dedup0ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.loopexit39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread34
  %.sroa.0.042 = phi i64 [ 1, %bb.b ], [ %i.ak, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread34 ] ; 6 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.042 ; 8 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3178)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.j = load i8, ptr %i.i, align 1, !range !13, !alias.scope !3179, !noalias !3180, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3179, !noalias !3180, !noundef !14 ; 2 uses
  %i.m = and i64 %i.l, 72057594037927935
  %i.n = icmp ult i8 %i.j, -48
  %i.o = zext i8 %i.j to i64
  %i.p = add nsw i64 %i.o, -192
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.n, i64 %spec.store.select.i.i.i.i, i64 %i.m ; 2 uses
  %i.q = icmp ugt i8 %i.j, -49
  %i.r = load ptr, ptr %i.g, align 8, !alias.scope !3179, !noalias !3180 ; 2 uses
  %.sroa.01.0.i.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.g ; 2 uses
  %i.s = getelementptr i8, ptr %i.g, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !range !13, !alias.scope !3181, !noalias !3182, !noundef !14 ; 3 uses
  %i.u = getelementptr i8, ptr %i.g, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !3181, !noalias !3182, !noundef !14
  %i.w = and i64 %i.v, 72057594037927935
  %i.x = icmp ult i8 %i.t, -48
  %i.y = zext i8 %i.t to i64
  %i.z = add nsw i64 %i.y, -192
  %spec.store.select.i4.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 16)
  %.sroa.0.0.i5.i.i.i = select i1 %i.x, i64 %spec.store.select.i4.i.i.i, i64 %i.w
  %i.aa = icmp ugt i8 %i.t, -49
  %i.ab = load ptr, ptr %i.h, align 8, !alias.scope !3181, !noalias !3182
  %.sroa.01.0.i6.i.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.h ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i5.i.i.i
  br i1 %i.ac, label %bb.d, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread34

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq ptr %.sroa.01.0.i.i.i.i, %.sroa.01.0.i6.i.i.i
  br i1 %i.ad, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit

_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i, i64 %.sroa.0.0.i.i.i.i)
  %i.ae = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ae, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread34

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.12.0 = phi i64 [ %.sroa.12.143, %.loopexit ], [ %.sroa.0.042, %.loopexit.split-lp ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.bs, %.loopexit ], [ %i.al, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.af = sub i64 %i.b, %.sroa.5.0                ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.12.0
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.0
  %i.ai = shl i64 %i.af, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.ah, i64 %i.ai, i1 false), !noalias !3183
  %i.aj = add i64 %i.af, %.sroa.12.0
  store i64 %i.aj, ptr %i.a, align 8, !noalias !3183
  resume { ptr, i32 } %lpad.phi

_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread34: ; preds = %bb.c, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ak = add nuw nsw i64 %.sroa.0.042, 1         ; 2 uses
  %.not = icmp eq i64 %i.ak, %i.b
  br i1 %.not, label %.loopexit39, label %bb.c

_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.d, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit
  %i.al = add nuw nsw i64 %.sroa.0.042, 1         ; 3 uses
  %i.am = and i64 %i.l, -144115188075855872
  %switch.i.i.i.i = icmp eq i64 %i.am, -3458764513820540928
  br i1 %switch.i.i.i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit

bb.f:                                             ; preds = %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.an = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i, i64 1 release, align 8, !noalias !3184
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.g, %_RNCNvMs4_NtCscdodAO9FK5_5alloc3vecINtB7_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE5dedup0CsoTR8nlGN3X_18ty_python_semantic.exit.thread, %bb.f
  %i.ap = icmp samesign ult i64 %i.al, %i.b
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit24, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.12.1.lcssa = phi i64 [ %.sroa.0.042, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit ], [ %.sroa.12.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit24 ]
  store i64 %.sroa.12.1.lcssa, ptr %i.a, align 8
  br label %.loopexit39

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit24
  %.sroa.5.144 = phi i64 [ %.sroa.5.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit24 ], [ %i.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit ] ; 3 uses
  %.sroa.12.143 = phi i64 [ %.sroa.12.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit24 ], [ %.sroa.0.042, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.144 ; 6 uses
  %i.ar = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.12.143 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3190)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 15
  %i.au = load i8, ptr %i.at, align 1, !range !13, !alias.scope !3191, !noalias !3192, !noundef !14 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !3191, !noalias !3192, !noundef !14
  %i.ax = and i64 %i.aw, 72057594037927935
  %i.ay = icmp ult i8 %i.au, -48
  %i.az = zext i8 %i.au to i64
  %i.ba = add nsw i64 %i.az, -192
  %spec.store.select.i.i.i.i11 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 16)
  %.sroa.0.0.i.i.i.i12 = select i1 %i.ay, i64 %spec.store.select.i.i.i.i11, i64 %i.ax ; 2 uses
  %i.bb = icmp ugt i8 %i.au, -49
end_hunk_1
begin_hunk_2_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0EBM_:bb.a
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0E0EBM_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa, %.preheader23.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader23.i ], [ %i.t, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %i.ac, %bb.l ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil ; 2 uses
  %.val.i.epil = load i64, ptr %i.ab, align 8, !range !26, !noalias !3373, !noundef !14
  %.not.i.epil = icmp eq i64 %.val.i.epil, 3
  %i.ac = add nuw nsw i64 %.sroa.0.0.i.epil, 1    ; 2 uses
  br i1 %.not.i.epil, label %.loopexit, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0E0EBM_.exit, label %bb.k, !llvm.loop !3372

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0E0EBM_.exit: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding53clear_missing_argument_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0EBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3382, !noundef !14 ; 9 uses
  %i.c = icmp ult i64 %i.b, 64051194700380388
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3382, !nonnull !14, !noundef !14 ; 7 uses
  %xtraiter = and i64 %i.b, 1
  %i.g = icmp eq i64 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.preheader23.i.new

.preheader23.i.new:                               ; preds = %.preheader23.i
  %unroll_iter = and i64 %i.b, 72057594037927934
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader23.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader23.i.new ], [ %i.t, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader23.i.new ], [ %niter.next.1, %bb.e ]
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %.val.i = load i64, ptr %i.h, align 8, !range !26, !noalias !3382, !noundef !14
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val.i, i64 1)
  %i.j = add nsw i64 %i.i, -8
  %switch.i.i.i = icmp ult i64 %i.j, -6
  %i.k = or disjoint i64 %.sroa.0.0.i, 1          ; 3 uses
  br i1 %switch.i.i.i, label %bb.d, label %.loopexit, !prof !15

.loopexit.i:                                      ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i:                             ; preds = %.loopexit
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.131.i, %.loopexit.i ], [ %.sroa.0.0.i.lcssa, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %i.y, %.loopexit.i ], [ %.lcssa20, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.l = sub i64 %i.b, %.sroa.8.0.i               ; 2 uses
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.o = mul i64 %i.l, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.o, i1 false), !noalias !3383
  %i.p = add i64 %i.l, %.sroa.15.0.i
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !3382, !noalias !3384
  resume { ptr, i32 } %lpad.phi.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %i.k ; 2 uses
  %.val.i.1 = load i64, ptr %i.q, align 8, !range !26, !noalias !3382, !noundef !14
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %.val.i.1, i64 1)
  %i.s = add nsw i64 %i.r, -8
  %switch.i.i.i.1 = icmp ult i64 %i.s, -6
  %i.t = add nuw nsw i64 %.sroa.0.0.i, 2          ; 3 uses
  br i1 %switch.i.i.i.1, label %bb.e, label %.loopexit, !prof !15

bb.e:                                             ; preds = %bb.d
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.d, %.epil.preheader
  %.sroa.0.0.i.lcssa = phi i64 [ %.sroa.0.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.lcssa22 = phi ptr [ %i.ad, %.epil.preheader ], [ %i.h, %bb.b ], [ %i.q, %bb.d ]
  %.lcssa20 = phi i64 [ %i.ag, %.epil.preheader ], [ %i.k, %bb.b ], [ %i.t, %bb.d ] ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorEBJ_(ptr noalias noundef align 8 dereferenceable(144) %.lcssa22)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !noalias !3382

.preheader.i:                                     ; preds = %.loopexit
  %i.u = icmp samesign ult i64 %.lcssa20, %i.b
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.15.2.i, %bb.h ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !3382
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.sroa.8.132.i = phi i64 [ %.sroa.8.2.i, %bb.h ], [ %.lcssa20, %.preheader.i ] ; 3 uses
  %.sroa.15.131.i = phi i64 [ %.sroa.15.2.i, %bb.h ], [ %.sroa.0.0.i.lcssa, %.preheader.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.8.132.i ; 3 uses
  %.val10.i = load i64, ptr %i.v, align 8, !range !26, !noalias !3382, !noundef !14
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %.val10.i, i64 1)
  %i.x = add nsw i64 %i.w, -8
  %switch.i.i11.i = icmp ult i64 %i.x, -6
  br i1 %switch.i.i11.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = add nuw nsw i64 %.sroa.8.132.i, 1        ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorEBJ_(ptr noalias noundef align 8 dereferenceable(144) %i.v)
          to label %bb.h unwind label %.loopexit.i, !noalias !3382

bb.g:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.15.131.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(144) %i.v, i64 144, i1 false), !noalias !3382
  %i.aa = add i64 %.sroa.15.131.i, 1
  %i.ab = add nuw nsw i64 %.sroa.8.132.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.15.2.i = phi i64 [ %i.aa, %bb.g ], [ %.sroa.15.131.i, %bb.f ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ab, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %i.ac = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa, %.preheader23.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader23.i ], [ %i.t, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod25 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ad = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil.init ; 2 uses
  %.val.i.epil = load i64, ptr %i.ad, align 8, !range !26, !noalias !3382, !noundef !14
  %i.ae = tail call i64 @llvm.usub.sat.i64(i64 %.val.i.epil, i64 1)
  %i.af = add nsw i64 %i.ae, -8
  %switch.i.i.i.epil = icmp ult i64 %i.af, -6
  %i.ag = add nuw nsw i64 %.sroa.0.0.i.epil.init, 1
  br i1 %switch.i.i.i.epil, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit, label %.loopexit, !prof !15

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE10retain_mutNCINvB2_6retainNCNvMse_BG_NtBG_7Binding57clear_deferred_constructor_errors_for_partial_application0E0EBM_.exit.loopexit.unr-lcssa, %.epil.preheader, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE8dedup_byNCINvNtBJ_6frozen20sort_and_deduplicateBF_B1y_Es_0EB1C_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit
  %.sroa.0.027 = phi i64 [ 1, %bb.b ], [ %i.r, %_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.027 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3392)
  %i.i = load <2 x i32>, ptr %i.g, align 4, !alias.scope !3391, !noalias !3392
  %i.j = load <2 x i32>, ptr %i.h, align 4, !alias.scope !3392, !noalias !3391
  %i.k = icmp eq <2 x i32> %i.i, %i.j             ; 2 uses
  %i.l = extractelement <2 x i1> %i.k, i64 0
  %i.m = extractelement <2 x i1> %i.k, i64 1
  %spec.select.i.i = select i1 %i.l, i1 %i.m, i1 false
  br i1 %spec.select.i.i, label %bb.d, label %_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = getelementptr i8, ptr %i.g, i64 -16
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef 2)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %bb.d
  %.sroa.5.028 = add nuw i64 %.sroa.0.027, 1      ; 2 uses
  %i.p = icmp ult i64 %.sroa.5.028, %i.b
  br i1 %i.p, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #32
  unreachable

_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit: ; preds = %bb.c
  %i.r = add nuw nsw i64 %.sroa.0.027, 1          ; 2 uses
  %.not = icmp eq i64 %i.r, %i.b
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.027, %.preheader ], [ %.sroa.11.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.sroa.5.030 = phi i64 [ %.sroa.5.0, %bb.h ], [ %.sroa.5.028, %.preheader ] ; 2 uses
  %.sroa.11.029 = phi i64 [ %.sroa.11.1, %bb.h ], [ %.sroa.0.027, %.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.030 ; 3 uses
  %i.t = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.11.029 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3394)
  %i.v = load <2 x i32>, ptr %i.s, align 4, !alias.scope !3393, !noalias !3394
  %i.w = load <2 x i32>, ptr %i.u, align 4, !alias.scope !3394, !noalias !3393
  %i.x = icmp eq <2 x i32> %i.v, %i.w             ; 2 uses
  %i.y = extractelement <2 x i1> %i.x, i64 0
  %i.z = extractelement <2 x i1> %i.x, i64 1
  %spec.select.i.i15 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %spec.select.i.i15, label %bb.f, label %_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit16

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr i8, ptr %i.t, i64 -16
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i64 noundef 2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #32
  unreachable

.thread:                                          ; preds = %_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit, %bb.a, %._crit_edge
  ret void

_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit16: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.t, ptr noundef nonnull align 4 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ad = add i64 %.sroa.11.029, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit16
  %.sroa.11.1 = phi i64 [ %i.ad, %_RNCINvNtCs2O29vuvTAEJ_14ty_python_core6frozen20sort_and_deduplicateNtNtB6_5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEs_0B1z_.exit16 ], [ %.sroa.11.029, %bb.f ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.030, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes10QueuedFileIBv_NtBH_13ApplicableFixEEE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsoTR8nlGN3X_18ty_python_semantic(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15CallableBindingRNtBI_7BindingEE6retainNCNvNtBM_11ide_support19call_argument_formss1_0EBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3398, !noundef !14 ; 9 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15CallableBindingRNtBI_7BindingEE10retain_mutNCINvB2_6retainNCNvNtBM_11ide_support19call_argument_formss1_0E0EBO_.exit, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3398, !nonnull !14, !noundef !14 ; 11 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.preheader22.i.new

.preheader22.i.new:                               ; preds = %.preheader22.i
  %unroll_iter = and i64 %i.b, 576460752303423484
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader22.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader22.i.new ], [ %i.ao, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader22.i.new ], [ %niter.next.3, %bb.g ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !noalias !3398, !nonnull !14, !align !18, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 88
  %i.k = load i64, ptr %i.j, align 8, !noalias !3398, !noundef !14
  %i.l = icmp eq i64 %i.k, 0
  %i.m = or disjoint i64 %.sroa.0.0.i, 1          ; 3 uses
  br i1 %i.l, label %bb.d, label %.preheader.i, !prof !15

.preheader.i:                                     ; preds = %bb.k, %bb.b, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.lcssa = phi i64 [ %i.ai, %bb.f ], [ %.sroa.0.0.i, %bb.b ], [ %i.m, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.0.0.i.epil, %bb.k ] ; 5 uses
  %.lcssa = phi i64 [ %i.ao, %bb.f ], [ %i.m, %bb.b ], [ %i.ac, %bb.d ], [ %i.ai, %bb.e ], [ %i.bj, %bb.k ] ; 6 uses
  %i.n = icmp samesign ult i64 %.lcssa, %i.b
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.o = sub nuw i64 %i.b, %.lcssa
  %.neg = add i64 %.lcssa, 1
  %xtraiter12 = and i64 %i.o, 1
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.lcssa ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val10.i.prol = load ptr, ptr %i.q, align 8, !noalias !3398, !nonnull !14, !align !18, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i.prol, i64 88
  %i.s = load i64, ptr %i.r, align 8, !noalias !3398, !noundef !14
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !3398
  %i.v = add i64 %.sroa.0.0.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph.i.prol
  %.sroa.13.1.i.prol = phi i64 [ %i.v, %bb.c ], [ %.sroa.0.0.i.lcssa, %.lr.ph.i.prol ] ; 2 uses
  %.sroa.7.0.i.prol = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.13.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.7.027.i.unr = phi i64 [ %.lcssa, %.lr.ph.i.preheader ], [ %.sroa.7.0.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.13.026.i.unr = phi i64 [ %.sroa.0.0.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.w = icmp eq i64 %i.b, %.neg
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val.i.1 = load ptr, ptr %i.y, align 8, !noalias !3398, !nonnull !14, !align !18, !noundef !14
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !noalias !3398, !noundef !14
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = or disjoint i64 %.sroa.0.0.i, 2         ; 3 uses
  br i1 %i.ab, label %bb.e, label %.preheader.i, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val.i.2 = load ptr, ptr %i.ae, align 8, !noalias !3398, !nonnull !14, !align !18, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.2, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !noalias !3398, !noundef !14
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = or disjoint i64 %.sroa.0.0.i, 3         ; 3 uses
  br i1 %i.ah, label %bb.f, label %.preheader.i, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val.i.3 = load ptr, ptr %i.ak, align 8, !noalias !3398, !nonnull !14, !align !18, !noundef !14
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 88
  %i.am = load i64, ptr %i.al, align 8, !noalias !3398, !noundef !14
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = add nuw nsw i64 %.sroa.0.0.i, 4         ; 3 uses
  br i1 %i.an, label %bb.g, label %.preheader.i, !prof !15

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15CallableBindingRNtBI_7BindingEE10retain_mutNCINvB2_6retainNCNvNtBM_11ide_support19call_argument_formss1_0E0EBO_.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
end_hunk_2
