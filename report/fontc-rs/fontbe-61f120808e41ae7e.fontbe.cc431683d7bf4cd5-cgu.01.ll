Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter7IterMutTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3H_15NormalizedSpaceEINtNtB2b_6copied6CopiedINtB3b_4IterNtNtB15_7bezpath6PathElEEEENCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss_0EE9from_iterB5T_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9178
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9170
  store i64 0, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp11
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2b_7flatten7FlatMapINtNtNtB2f_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB3k_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5N_s_0EE9from_iterB5T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9236)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9237
  %.promoted20.i.i.i = load ptr, ptr %1, align 8, !alias.scope !9237
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9237 ; 3 uses
  %.promoted21.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !9237
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.6.0.copyload = phi ptr [ %i.n, %bb.d ], [ %.promoted21.i.i.i, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.k, %bb.d ], [ %.promoted20.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i19.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.d ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i19.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.h = icmp eq ptr %spec.select.i19.i.i.i, %.sroa.6.0.copyload ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i.i, i64 6 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !9238
  br i1 %i.h, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9239)
  %.not.i5.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i5.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9240)
  %i.j = icmp eq ptr %i.g, %i.f
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !9241
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9242, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %.val3.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !9242, !noundef !4
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %.val.i.i.i.i.i, i64 %.val3.i.i.i.i.i ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !9237
  store ptr %i.n, ptr %i.d, align 8, !alias.scope !9237
  br label %bb.b

bb.e:                                             ; preds = %bb.c, %select.unfold.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9243, !noundef !4 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i.i.i, label %bb.m, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9244, !nonnull !4, !noundef !4
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %spec.select.i9.i.i.i = select i1 %i.s, ptr null, ptr %i.t
  store ptr %spec.select.i9.i.i.i, ptr %i.o, align 8, !alias.scope !9243
  br i1 %i.s, label %bb.m, label %.loopexit

.loopexit:                                        ; preds = %.sink.split.i.i.i.i, %.sink.split.i8.i.i.i
  %i.u = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.i, %.sink.split.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.p, %.sink.split.i8.i.i.i ], [ %spec.select.i19.i.i.i, %.sink.split.i.i.i.i ]
  %i.v = load <2 x i16>, ptr %.sroa.0.0.i.i.i, align 2, !noalias !9245
  %i.w = sitofp <2 x i16> %i.v to <2 x double>
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.x = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 6
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %bb.f, %.loopexit
  %.sroa.7.0.i.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %.loopexit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !9246, !noundef !4 ; 3 uses
  %.not53.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not53.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !9247, !nonnull !4, !noundef !4
  %i.ae = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 6
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i: ; preds = %bb.g, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.ah, %bb.g ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ]
  %i.ai = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 3) ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ak, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.al = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !32, !noundef !4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.am, label %bb.h, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i
  %i.aq = load i64, ptr %i.ap, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ao, i64 %i.aq) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i
  %i.ar = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = icmp ult i64 %i.aj, %i.ao
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <2 x double> %i.w, ptr %i.ar, align 8
  store i64 %i.ao, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.at = ptrtoint ptr %.sroa.8.0.copyload to i64
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  %i.au = phi i64 [ %i.cd, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %spec.select.i9.i.i.i18.i.i = phi ptr [ %spec.select.i9.i.i.i17.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.ac, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %.val3.i.i.i.i9.i.i = phi ptr [ %.val3.i.i.i.i10.i5.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %i.av = phi ptr [ %i.bl, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.g, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %i.aw = phi ptr [ %i.bm, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.u, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.aw, null
  %i.ax = icmp eq ptr %i.aw, %.val3.i.i.i.i9.i.i
  %or.cond.i7.i = select i1 %.not.i.i.i.i.i6.i, i1 true, i1 %i.ax
  br i1 %or.cond.i7.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.i
  %.not.i5.i.i.i.i.i21 = icmp eq ptr %i.av, null
  %i.ay = icmp eq ptr %i.av, %i.f
  %or.cond.i22 = select i1 %.not.i5.i.i.i.i.i21, i1 true, i1 %i.ay
  br i1 %or.cond.i22, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.az = icmp eq ptr %i.bb, %i.f
  br i1 %i.az, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.ba = phi ptr [ %i.bb, %select.unfold.i.i.i.i.i ], [ %i.av, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.bc, align 8, !noalias !9248, !noundef !4 ; 3 uses
  %i.bd = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %select.unfold.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.be = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i.i.i.i.i.le56 = load ptr, ptr %i.be, align 8, !noalias !9248, !nonnull !4, !noundef !4
  %.idx.i.le53 = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.le56, i64 %.idx.i.le53
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa = phi ptr [ %i.av, %select.unfold.i.i.i.i.i.preheader ], [ %i.bb, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.val3.i.i.i.i10.i8.i.lcssa = phi ptr [ %.val3.i.i.i.i9.i.i, %select.unfold.i.i.i.i.i.preheader ], [ %i.bf, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i18.i.i, null
  %i.bg = icmp eq ptr %spec.select.i9.i.i.i18.i.i, %.sroa.8.0.copyload
  %i.bh = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i18.i.i, i64 6
  %or.cond36.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.bg
  br i1 %or.cond36.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtNtB1W_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB31_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5u_s_0EE11spec_extendB5A_.exit, label %.loopexit.i.i

.loopexit.loopexit.i.i.loopexit:                  ; preds = %.lr.ph
  %i.bi = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i.i.i.i.i.le = load ptr, ptr %i.bi, align 8, !noalias !9248, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.loopexit, %bb.i
  %.val3.i.i.i.i10.i.lcssa.i = phi ptr [ %.val3.i.i.i.i9.i.i, %bb.i ], [ %i.bj, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa2.i = phi ptr [ %i.av, %bb.i ], [ %i.bb, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.aw, %bb.i ], [ %.val.i.i.i.i.i.i.i.le, %.loopexit.loopexit.i.i.loopexit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 6
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %.val3.i.i.i.i10.i5.i = phi ptr [ %.val3.i.i.i.i10.i8.i.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.val3.i.i.i.i10.i.lcssa.i, %.loopexit.loopexit.i.i ] ; 2 uses
  %i.bl = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa2.i, %.loopexit.loopexit.i.i ]
  %spec.select.i9.i.i.i17.i.i = phi ptr [ %i.bh, %select.unfold.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i18.i.i, %.loopexit.loopexit.i.i ] ; 3 uses
  %i.bm = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ %i.bk, %.loopexit.loopexit.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i18.i.i, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.loopexit.i.i ]
  %i.bn = load <2 x i16>, ptr %.sroa.0.0.i.i.i.i.i, align 2, !noalias !9249
  %i.bo = sitofp <2 x i16> %i.bn to <2 x double>
  %i.bp = icmp samesign ult i64 %i.au, 576460752303423488
  call void @llvm.assume(i1 %i.bp)
  %i.bq = load i64, ptr %i.b, align 8, !range !10, !alias.scope !9250, !noundef !4
  %i.br = icmp eq i64 %i.au, %i.bq
  br i1 %i.br, label %bb.j, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i

bb.j:                                             ; preds = %.loopexit.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = ptrtoint ptr %.val3.i.i.i.i10.i5.i to i64
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = sub nuw i64 %i.bs, %i.bt
  %i.bv = udiv exact i64 %i.bu, 6
  %i.bw = add nuw nsw i64 %i.bv, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.bw, %bb.k ], [ 1, %bb.j ]
  %.not53.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i17.i.i, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %i.bx = ptrtoint ptr %spec.select.i9.i.i.i17.i.i to i64
  %i.by = sub nuw i64 %i.at, %i.bx
  %i.bz = udiv exact i64 %i.by, 6
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i: ; preds = %bb.l, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.bz, %bb.l ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ]
  %i.ca = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.au, i64 noundef %i.ca, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i, %.loopexit.i.i
  %i.cb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9250, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.au
  store <2 x double> %i.bo, ptr %i.cc, align 8, !noalias !9251
  %i.cd = add nuw nsw i64 %i.au, 1                ; 2 uses
  store i64 %i.cd, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9250
  br label %bb.i

bb.m:                                             ; preds = %bb.e, %.sink.split.i8.i.i.i
  store i64 0, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cf, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtNtB1W_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB31_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5u_s_0EE11spec_extendB5A_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.p

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtNtB1W_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB31_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5u_s_0EE11spec_extendB5A_.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.o
  resume { ptr, i32 } %i.cg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2i_5slice4iter7IterMutTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3K_15NormalizedSpaceEINtNtB2e_6copied6CopiedINtB3e_4IterB11_EEEENCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss0_0EE9from_iterB5D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9270)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9272
  store ptr %i.j, ptr %i.e, align 8, !noalias !9273
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.m, %bb.c ], [ %1, %bb.a ]   ; 3 uses
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !9274
  call void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss0_0INtB7_5FnMutTQTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB25_15NormalizedSpaceEINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEEEEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  %i.n = load i64, ptr %i.f, align 8, !range !39, !noundef !4
  %.not.i.i = icmp eq i64 %i.n, -1
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
  %i.o = load i64, ptr %i.d, align 8, !range !11, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !32, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp ugt i64 %i.r, 3
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.x = load ptr, ptr %i.i, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9275)
  call void @llvm.experimental.noalias.scope.decl(metadata !9276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9275
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !noalias !9277
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  %.pre6.i.i = phi ptr [ %.pre.i.i, %bb.j ], [ %i.x, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 2 uses
  %.promoted.i.i.i.i = phi ptr [ %.promoted.i.i5.i.i, %bb.j ], [ %i.w, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9278)
  call void @llvm.experimental.noalias.scope.decl(metadata !9279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9280
  store ptr %i.z, ptr %i.a, align 8, !noalias !9281
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.aa = phi ptr [ %i.ac, %.noexc ], [ %.promoted.i.i.i.i, %bb.f ] ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %.pre6.i.i
  br i1 %i.ab, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  store ptr %i.ac, ptr %i.c, align 8, !alias.scope !9282, !noalias !9277
  invoke void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss0_0INtB7_5FnMutTQTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB25_15NormalizedSpaceEINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEEEEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtB6_6string6StringENCNvXNtCshxhuDJfZv4T_6fontbe4nameNtB5r_8NameWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB5t_13orchestration7ContextNtB6Z_9AnyWorkIdNtNtB5t_5error5ErrorE4exec0EE9from_iterB5t_:bb.a
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtB6_6string6StringENCNvXNtCshxhuDJfZv4T_6fontbe4nameNtB58_8NameWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB5a_13orchestration7ContextNtB6G_9AnyWorkIdNtNtB5a_5error5ErrorE4exec0EE11spec_extendB5a_.exit, label %bb.l

bb.q:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordECshxhuDJfZv4T_6fontbe(ptr %i.aj) #26
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %.val.i.i = load i64, ptr %i.ae, align 8, !alias.scope !9400, !noundef !4
  %i.ay = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.an, i64 noundef %i.ay, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.q

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, %bb.l, %bb.k
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.al, %bb.n ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #26
          to label %common.resume unwind label %bb.t

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata7NameKeyNtNtB6_6string6StringENCNvXNtCshxhuDJfZv4T_6fontbe4nameNtB58_8NameWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB5a_13orchestration7ContextNtB6G_9AnyWorkIdNtNtB5a_5error5ErrorE4exec0EE11spec_extendB5a_.exit: ; preds = %.noexc9, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.g

bb.t:                                             ; preds = %bb.h, %.body
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1K_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB3d_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxIBS_B12_EEEIB41_B12_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0EE9from_iterB5J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9440)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9441
  %.promoted20.i.i = load ptr, ptr %1, align 8, !alias.scope !9441
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9441 ; 3 uses
  %.promoted21.i.i = load ptr, ptr %i.d, align 8, !alias.scope !9441
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.6.0.copyload = phi ptr [ %i.n, %bb.d ], [ %.promoted21.i.i, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.k, %bb.d ], [ %.promoted20.i.i, %bb.a ] ; 6 uses
  %spec.select.i19.i.i = phi ptr [ %.val.i.i.i.i, %bb.d ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %spec.select.i19.i.i, null
  br i1 %.not.i.i.i, label %select.unfold.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b
  %i.h = icmp eq ptr %spec.select.i19.i.i, %.sroa.6.0.copyload ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i, i64 24 ; 3 uses
  %spec.select.i.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %spec.select.i.i.i, ptr %i.c, align 8, !alias.scope !9442
  br i1 %i.h, label %select.unfold.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.thread

select.unfold.i.i:                                ; preds = %.sink.split.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9443)
  %.not.i5.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9444)
  %i.j = icmp eq ptr %i.g, %i.f
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !9445
  %i.l = getelementptr i8, ptr %i.g, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9446, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = getelementptr i8, ptr %i.g, i64 40
  %.val3.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !9446, !noundef !4
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.val3.i.i.i.i ; 2 uses
  store ptr %.val.i.i.i.i, ptr %i.c, align 8, !alias.scope !9441
  store ptr %i.n, ptr %i.d, align 8, !alias.scope !9441
  br label %bb.b

bb.e:                                             ; preds = %bb.c, %select.unfold.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9447, !noundef !4 ; 4 uses
  %.not.i7.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i.i, label %select.unfold, label %.sink.split.i8.i.i

.sink.split.i8.i.i:                               ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9448, !nonnull !4, !noundef !4
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %spec.select.i9.i.i = select i1 %i.s, ptr null, ptr %i.t
  store ptr %spec.select.i9.i.i, ptr %i.o, align 8, !alias.scope !9447
  br i1 %i.s, label %select.unfold, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.thread: ; preds = %.sink.split.i.i.i
  %i.u = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.v = ptrtoint ptr %i.i to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 24
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %.sink.split.i8.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.thread
  %.sroa.0.0.i.i42 = phi ptr [ %spec.select.i19.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.thread ], [ %i.p, %.sink.split.i8.i.i ]
  %i.y = phi ptr [ %i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.thread ], [ null, %.sink.split.i8.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %i.x, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.thread ], [ 0, %.sink.split.i8.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9449, !noundef !4 ; 3 uses
  %.not53.i.i = icmp eq ptr %i.aa, null
  br i1 %.not53.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !9450, !nonnull !4, !noundef !4
  %i.ac = ptrtoint ptr %.val3.i63.i.i to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = udiv exact i64 %i.ae, 24
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i: ; preds = %bb.f, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.af, %bb.f ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i ]
  %i.ag = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 3) ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.aj = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !32, !noundef !4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.g, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i
  %i.ao = load i64, ptr %i.an, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aq = icmp ult i64 %i.ah, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.i.i42, ptr %i.ap, align 8, !captures !7
  store i64 %i.am, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.8.0.copyload to i64
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  %i.as = phi i64 [ %i.cg, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 7 uses
  %spec.select.i9.i.i17.i.i = phi ptr [ %spec.select.i9.i.i16.i4.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.aa, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 8 uses
  %.val3.i.i.i8.i.i = phi ptr [ %.val3.i.i.i9.i26.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %i.at = phi ptr [ %i.cc, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.g, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %i.au = phi ptr [ %i.cd, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.y, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %.not.i.i.i.i29.i = icmp eq ptr %i.au, null
  %i.av = icmp eq ptr %i.au, %.val3.i.i.i8.i.i
  %or.cond.i30.i = select i1 %.not.i.i.i.i29.i, i1 true, i1 %i.av
  br i1 %or.cond.i30.i, label %select.unfold.i.i.i.i.preheader, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.h
  %.not.i5.i.i.i.i21 = icmp eq ptr %i.at, null
  %i.aw = icmp eq ptr %i.at, %i.f
  %or.cond.i22 = select i1 %.not.i5.i.i.i.i21, i1 true, i1 %i.aw
  br i1 %or.cond.i22, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.ax = icmp eq ptr %i.az, %i.f
  br i1 %i.ax, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %i.ay = phi ptr [ %i.az, %select.unfold.i.i.i.i ], [ %i.at, %select.unfold.i.i.i.i.preheader ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 4 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 40
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !noalias !9451, !noundef !4 ; 3 uses
  %i.bb = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %i.bb, label %select.unfold.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.bc = getelementptr i8, ptr %i.ay, i64 32
  %.val.i.i.i.i.i.i.le61 = load ptr, ptr %i.bc, align 8, !noalias !9451, !nonnull !4, !noundef !4
  %.idx.i.le58 = mul nuw nsw i64 %.val3.i.i.i.i.i.i, 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.le61, i64 %.idx.i.le58
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.lcssa = phi ptr [ %i.at, %select.unfold.i.i.i.i.preheader ], [ %i.az, %select.unfold.i.i.i.i._crit_edge.loopexit ] ; 2 uses
  %.val3.i.i.i9.i31.i.lcssa = phi ptr [ %.val3.i.i.i8.i.i, %select.unfold.i.i.i.i.preheader ], [ %i.bd, %select.unfold.i.i.i.i._crit_edge.loopexit ] ; 2 uses
  %.not.i7.i.i.i.i = icmp eq ptr %spec.select.i9.i.i17.i.i, null
  %i.be = icmp eq ptr %spec.select.i9.i.i17.i.i, %.sroa.8.0.copyload
  %or.cond35.i.i = select i1 %.not.i7.i.i.i.i, i1 true, i1 %i.be
  br i1 %or.cond35.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1A_EEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2U_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxIBI_BS_EEEIB3I_BS_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0EE11spec_extendB5o_.exit, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i.loopexit: ; preds = %.lr.ph
  %i.bf = getelementptr i8, ptr %i.ay, i64 32
  %.val.i.i.i.i.i.i.le = load ptr, ptr %i.bf, align 8, !noalias !9451, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le = mul nuw nsw i64 %.val3.i.i.i.i.i.i, 24
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.le, i64 %.idx.i.le
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i.loopexit, %bb.h
  %.val3.i.i.i9.i.lcssa.i = phi ptr [ %.val3.i.i.i8.i.i, %bb.h ], [ %i.bg, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i.loopexit ] ; 4 uses
  %.lcssa23.i = phi ptr [ %i.at, %bb.h ], [ %i.az, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i.loopexit ] ; 3 uses
  %.lcssa.i = phi ptr [ %i.au, %bb.h ], [ %.val.i.i.i.i.i.i.le, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24 ; 4 uses
  %i.bi = icmp samesign ult i64 %i.as, 1152921504606846976
  call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.b, align 8, !range !10, !alias.scope !9452, !noundef !4
  %i.bk = icmp eq i64 %i.as, %i.bj
  br i1 %i.bk, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i: ; preds = %select.unfold.i.i.i.i._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i17.i.i, i64 24 ; 2 uses
  %i.bm = icmp samesign ult i64 %i.as, 1152921504606846976
  call void @llvm.assume(i1 %i.bm)
  %i.bn = load i64, ptr %i.b, align 8, !range !10, !alias.scope !9452, !noundef !4
  %i.bo = icmp eq i64 %i.as, %i.bn
  br i1 %i.bo, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i
  %i.bp = ptrtoint ptr %.val3.i.i.i9.i.lcssa.i to i64
  %i.bq = ptrtoint ptr %i.bh to i64
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = udiv exact i64 %i.br, 24                ; 2 uses
  %.not53.i.i.i.i = icmp eq ptr %spec.select.i9.i.i17.i.i, null
  br i1 %.not53.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i
  %.val3.i.i.i9.i27.i = phi ptr [ %.val3.i.i.i9.i.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %.val3.i.i.i9.i31.i.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ]
  %i.bt = phi ptr [ %.lcssa23.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ]
  %.sroa.7.0.i.i.i20.i = phi i64 [ %i.bs, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ 0, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ]
  %.sroa.0.0.i.i.i61018.i = phi ptr [ %.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %spec.select.i9.i.i17.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ]
  %i.bu = phi ptr [ %i.bh, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ null, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ]
  %spec.select.i9.i.i16.i31116.i = phi ptr [ %spec.select.i9.i.i17.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %i.bl, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ] ; 2 uses
  %i.bv = ptrtoint ptr %spec.select.i9.i.i16.i31116.i to i64
  %i.bw = sub nuw i64 %i.ar, %i.bv
  %i.bx = udiv exact i64 %i.bw, 24
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  %.val3.i.i.i9.i28.i = phi ptr [ %.val3.i.i.i9.i27.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i ], [ %.val3.i.i.i9.i.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %i.by = phi ptr [ %i.bt, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i ], [ %.lcssa23.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %.sroa.7.0.i.i.i21.i = phi i64 [ %.sroa.7.0.i.i.i20.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i ], [ %i.bs, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i61019.i = phi ptr [ %.sroa.0.0.i.i.i61018.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i ], [ %.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %i.bz = phi ptr [ %i.bu, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i ], [ %i.bh, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %spec.select.i9.i.i16.i31117.i = phi ptr [ %spec.select.i9.i.i16.i31116.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i ], [ null, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.bx, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.thread.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %i.ca = add nuw nsw i64 %.sroa.7.0.i.i.i21.i, 1
  %i.cb = add nuw nsw i64 %i.ca, %.sroa.8.0.i.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.as, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.j

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_EE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i
  %.val3.i.i.i9.i26.i = phi ptr [ %.val3.i.i.i9.i31.i.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ], [ %.val3.i.i.i9.i.lcssa.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i ], [ %.val3.i.i.i9.i28.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i ]
  %i.cc = phi ptr [ %.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ], [ %.lcssa23.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i ], [ %i.by, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i ]
  %.sroa.0.0.i.i.i5.i = phi ptr [ %spec.select.i9.i.i17.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ], [ %.lcssa.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i ], [ %.sroa.0.0.i.i.i61019.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i ]
  %i.cd = phi ptr [ null, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ], [ %i.bh, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i ], [ %i.bz, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i ]
  %spec.select.i9.i.i16.i4.i = phi ptr [ %i.bl, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.thread.i ], [ %spec.select.i9.i.i17.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtNtB2o_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3z_EEEEIB15_B2Q_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0ENtNtNtB9_6traits8iterator8Iterator4nextB4J_.exit.i.i ], [ %spec.select.i9.i.i16.i31117.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i ]
  %i.ce = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9452, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.as
  store ptr %.sroa.0.0.i.i.i5.i, ptr %i.cf, align 8, !noalias !9453, !captures !7
  %i.cg = add nuw nsw i64 %i.as, 1                ; 2 uses
  store i64 %i.cg, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9452
  br label %bb.h

select.unfold:                                    ; preds = %.sink.split.i8.i.i, %bb.e
  store i64 0, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ci, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1A_EEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2U_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxIBI_BS_EEEIB3I_BS_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0EE11spec_extendB5o_.exit, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1v_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1R_EEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.k

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecRINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1A_EEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2U_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxIBI_BS_EEEIB3I_BS_ENCNvNtNtCshxhuDJfZv4T_6fontbe8features18feature_variations25make_substitution_lookups0EE11spec_extendB5o_.exit: ; preds = %select.unfold.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1R_EEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.j
  resume { ptr, i32 } %i.cj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3Z_15NormalizedSpaceEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustments0EE9from_iterB5e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9474
  store ptr %i.f, ptr %i.c, align 8, !noalias !9475
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = call noundef align 8 ptr @_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB16_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef align 8 ptr @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustments0INtB7_5FnMutTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2k_15NormalizedSpaceEEE8call_mutBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.i = load i64, ptr %i.b, align 8, !range !11, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !32, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.m, align 8
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = icmp ugt i64 %i.l, 3
  call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.o, align 8, !captures !7
  store i64 %i.l, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9476)
  call void @llvm.experimental.noalias.scope.decl(metadata !9477)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9478
  store ptr %i.q, ptr %i.a, align 8, !noalias !9479
  br label %bb.g

bb.g:                                             ; preds = %.noexc7, %bb.f
  %i.r = invoke noundef align 8 ptr @_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB16_15NormalizedSpaceEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.s = invoke noundef align 8 ptr @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustments0INtB7_5FnMutTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2k_15NormalizedSpaceEEE8call_mutBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc7:                                          ; preds = %bb.h
  %.not6.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not6.i.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9478
  %i.t = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9480, !noundef !4 ; 5 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.e, align 8, !range !10, !alias.scope !9480, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
end_hunk_1
begin_hunk_2_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3set4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3Z_15NormalizedSpaceEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustments0EE9from_iterB5e_:bb.a
.noexc8:                                          ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, %bb.i
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9480, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.t
  store ptr %i.s, ptr %i.y, align 8, !captures !7
  %i.z = add nuw nsw i64 %i.t, 1
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9480
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9474
  store i64 0, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ab, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECshxhuDJfZv4T_6fontbe.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp21
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2t_5slice4iter4IterTNtB14_9AnyWorkIdINtNtB6_4sync3ArcNtB14_12KernFragmentEEEIB3h_B12_ENCNvXs3_NtNtB16_8features4kernNtB4U_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB14_7ContextB3I_NtNtB16_5error5ErrorE4exec0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9520)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9521
  %.promoted20.i.i = load ptr, ptr %1, align 8, !alias.scope !9521
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9521 ; 3 uses
  %.promoted21.i.i = load ptr, ptr %i.d, align 8, !alias.scope !9521
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.6.0.copyload = phi ptr [ %i.q, %bb.d ], [ %.promoted21.i.i, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.k, %bb.d ], [ %.promoted20.i.i, %bb.a ] ; 5 uses
  %spec.select.i19.i.i = phi ptr [ %i.n, %bb.d ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %spec.select.i19.i.i, null
  br i1 %.not.i.i.i, label %select.unfold.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b
  %i.h = icmp eq ptr %spec.select.i19.i.i, %.sroa.6.0.copyload ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i, i64 304 ; 3 uses
  %spec.select.i.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %spec.select.i.i.i, ptr %i.c, align 8, !alias.scope !9522
  br i1 %i.h, label %select.unfold.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread

select.unfold.i.i:                                ; preds = %.sink.split.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9523)
  %.not.i5.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i5.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9524)
  %i.j = icmp eq ptr %i.g, %i.f
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !9525
  %i.l = getelementptr i8, ptr %i.g, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9526, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !9526, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noalias !9526, !noundef !4
  %i.q = getelementptr inbounds nuw [304 x i8], ptr %i.n, i64 %i.p ; 2 uses
  store ptr %i.n, ptr %i.c, align 8, !alias.scope !9521
  store ptr %i.q, ptr %i.d, align 8, !alias.scope !9521
  br label %bb.b

bb.e:                                             ; preds = %bb.c, %select.unfold.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !9527, !noundef !4 ; 4 uses
  %.not.i7.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i7.i.i, label %select.unfold, label %.sink.split.i8.i.i

.sink.split.i8.i.i:                               ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !9528, !nonnull !4, !noundef !4
  %i.v = icmp eq ptr %i.s, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 304
  %spec.select.i9.i.i = select i1 %i.v, ptr null, ptr %i.w
  store ptr %spec.select.i9.i.i, ptr %i.r, align 8, !alias.scope !9527
  br i1 %i.v, label %select.unfold, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread: ; preds = %.sink.split.i.i.i
  %i.x = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 304
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i: ; preds = %.sink.split.i8.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread
  %.sroa.0.0.i.i44 = phi ptr [ %spec.select.i19.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread ], [ %i.s, %.sink.split.i8.i.i ]
  %i.ab = phi ptr [ %i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread ], [ null, %.sink.split.i8.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %i.aa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread ], [ 0, %.sink.split.i8.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !9529, !noundef !4 ; 3 uses
  %.not53.i.i = icmp eq ptr %i.ad, null
  br i1 %.not53.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !9530, !nonnull !4, !noundef !4
  %i.af = ptrtoint ptr %.val3.i63.i.i to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  %i.ai = udiv exact i64 %i.ah, 304
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i: ; preds = %bb.f, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.ai, %bb.f ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i ]
  %i.aj = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  %i.ak = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 3) ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.al, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.am = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !32, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.an, label %bb.g, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i
  %i.ar = load i64, ptr %i.aq, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = icmp ult i64 %i.ak, %i.ap
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.i.i44, ptr %i.as, align 8
  store i64 %i.ap, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.au = ptrtoint ptr %.sroa.8.0.copyload to i64
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  %i.av = phi i64 [ %i.cn, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 7 uses
  %spec.select.i9.i.i17.i.i = phi ptr [ %spec.select.i9.i.i16.i4.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i ], [ %i.ad, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 8 uses
  %.val3.i.i.i8.i.i = phi ptr [ %.val3.i.i.i9.i26.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %i.aw = phi ptr [ %i.cj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i ], [ %i.g, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %i.ax = phi ptr [ %i.ck, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i ], [ %i.ab, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %.not.i.i.i.i29.i = icmp eq ptr %i.ax, null
  %i.ay = icmp eq ptr %i.ax, %.val3.i.i.i8.i.i
  %or.cond.i30.i = select i1 %.not.i.i.i.i29.i, i1 true, i1 %i.ay
  br i1 %or.cond.i30.i, label %select.unfold.i.i.i.i.preheader, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.h
  %.not.i5.i.i.i.i22 = icmp eq ptr %i.aw, null
  %i.az = icmp eq ptr %i.aw, %i.f
  %or.cond.i23 = select i1 %.not.i5.i.i.i.i22, i1 true, i1 %i.az
  br i1 %or.cond.i23, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.ba = icmp eq ptr %i.bc, %i.f
  br i1 %i.ba, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %i.bb = phi ptr [ %i.bc, %select.unfold.i.i.i.i ], [ %i.aw, %select.unfold.i.i.i.i.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !noalias !9531, !nonnull !4, !noundef !4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !noalias !9531, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %select.unfold.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !9531, !nonnull !4, !noundef !4
  %.idx.i.le62 = mul nuw nsw i64 %i.bf, 304
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.le62
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.lcssa = phi ptr [ %i.aw, %select.unfold.i.i.i.i.preheader ], [ %i.bc, %select.unfold.i.i.i.i._crit_edge.loopexit ] ; 2 uses
  %.val3.i.i.i9.i31.i.lcssa = phi ptr [ %.val3.i.i.i8.i.i, %select.unfold.i.i.i.i.preheader ], [ %i.bj, %select.unfold.i.i.i.i._crit_edge.loopexit ] ; 2 uses
  %.not.i7.i.i.i.i = icmp eq ptr %spec.select.i9.i.i17.i.i, null
  %i.bk = icmp eq ptr %spec.select.i9.i.i17.i.i, %.sroa.8.0.copyload
  %or.cond35.i.i = select i1 %.not.i7.i.i.i.i, i1 true, i1 %i.bk
  br i1 %or.cond35.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2a_5slice4iter4IterTNtBU_9AnyWorkIdINtNtB6_4sync3ArcNtBU_12KernFragmentEEEIB2Y_BS_ENCNvXs3_NtNtBW_8features4kernNtB4y_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtBU_7ContextB3p_NtNtBW_5error5ErrorE4exec0EE11spec_extendBW_.exit, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i.loopexit: ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !9531, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le = mul nuw nsw i64 %i.bf, 304
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i.le
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i.loopexit, %bb.h
  %.val3.i.i.i9.i.lcssa.i = phi ptr [ %.val3.i.i.i8.i.i, %bb.h ], [ %i.bn, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i.loopexit ] ; 4 uses
  %.lcssa23.i = phi ptr [ %i.aw, %bb.h ], [ %i.bc, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i.loopexit ] ; 3 uses
  %.lcssa.i = phi ptr [ %i.ax, %bb.h ], [ %i.bm, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i.loopexit ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 304 ; 4 uses
  %i.bp = icmp samesign ult i64 %i.av, 1152921504606846976
  call void @llvm.assume(i1 %i.bp)
  %i.bq = load i64, ptr %i.b, align 8, !range !10, !alias.scope !9532, !noundef !4
  %i.br = icmp eq i64 %i.av, %i.bq
  br i1 %i.br, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i: ; preds = %select.unfold.i.i.i.i._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i17.i.i, i64 304 ; 2 uses
  %i.bt = icmp samesign ult i64 %i.av, 1152921504606846976
  call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %i.b, align 8, !range !10, !alias.scope !9532, !noundef !4
  %i.bv = icmp eq i64 %i.av, %i.bu
  br i1 %i.bv, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i
  %i.bw = ptrtoint ptr %.val3.i.i.i9.i.lcssa.i to i64
  %i.bx = ptrtoint ptr %i.bo to i64
  %i.by = sub nuw i64 %i.bw, %i.bx
  %i.bz = udiv exact i64 %i.by, 304               ; 2 uses
  %.not53.i.i.i.i = icmp eq ptr %spec.select.i9.i.i17.i.i, null
  br i1 %.not53.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i
  %.val3.i.i.i9.i27.i = phi ptr [ %.val3.i.i.i9.i.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ], [ %.val3.i.i.i9.i31.i.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ]
  %i.ca = phi ptr [ %.lcssa23.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ], [ %.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ]
  %.sroa.7.0.i.i.i20.i = phi i64 [ %i.bz, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ], [ 0, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ]
  %.sroa.0.0.i.i.i61018.i = phi ptr [ %.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ], [ %spec.select.i9.i.i17.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ]
  %i.cb = phi ptr [ %i.bo, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ], [ null, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ]
  %spec.select.i9.i.i16.i31116.i = phi ptr [ %spec.select.i9.i.i17.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ], [ %i.bs, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ] ; 2 uses
  %i.cc = ptrtoint ptr %spec.select.i9.i.i16.i31116.i to i64
  %i.cd = sub nuw i64 %i.au, %i.cc
  %i.ce = udiv exact i64 %i.cd, 304
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i
  %.val3.i.i.i9.i28.i = phi ptr [ %.val3.i.i.i9.i27.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i ], [ %.val3.i.i.i9.i.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %i.cf = phi ptr [ %i.ca, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i ], [ %.lcssa23.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %.sroa.7.0.i.i.i21.i = phi i64 [ %.sroa.7.0.i.i.i20.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i ], [ %i.bz, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i61019.i = phi ptr [ %.sroa.0.0.i.i.i61018.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i ], [ %.lcssa.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %i.cg = phi ptr [ %i.cb, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i ], [ %i.bo, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %spec.select.i9.i.i16.i31117.i = phi ptr [ %spec.select.i9.i.i16.i31116.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i ], [ null, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ce, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.thread.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %i.ch = add nuw nsw i64 %.sroa.7.0.i.i.i21.i, 1
  %i.ci = add nuw nsw i64 %i.ch, %.sroa.8.0.i.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.av, i64 noundef range(i64 1, 0) %i.ci, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i unwind label %bb.j

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairE7reserveBJ_.exit.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i
  %.val3.i.i.i9.i26.i = phi ptr [ %.val3.i.i.i9.i31.i.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ], [ %.val3.i.i.i9.i.lcssa.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i ], [ %.val3.i.i.i9.i28.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i ]
  %i.cj = phi ptr [ %.lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ], [ %.lcssa23.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i ], [ %i.cf, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i ]
  %.sroa.0.0.i.i.i5.i = phi ptr [ %spec.select.i9.i.i17.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ], [ %.lcssa.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i ], [ %.sroa.0.0.i.i.i61019.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i ]
  %i.ck = phi ptr [ null, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ], [ %i.bo, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i ], [ %i.cg, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i ]
  %spec.select.i9.i.i16.i4.i = phi ptr [ %i.bs, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.thread.i ], [ %spec.select.i9.i.i17.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB1x_12KernFragmentEEEIB15_NtB1x_8KernPairENCNvXs3_NtNtB1z_8features4kernNtB3H_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtB1x_7ContextB1v_NtNtB1z_5error5ErrorE4exec0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.i.i ], [ %spec.select.i9.i.i16.i31117.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i ]
  %i.cl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9532, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.av
  store ptr %.sroa.0.0.i.i.i5.i, ptr %i.cm, align 8, !noalias !9533
  %i.cn = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.cn, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9532
  br label %bb.h

select.unfold:                                    ; preds = %.sink.split.i8.i.i, %bb.e
  store i64 0, ptr %0, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cp, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2a_5slice4iter4IterTNtBU_9AnyWorkIdINtNtB6_4sync3ArcNtBU_12KernFragmentEEEIB2Y_BS_ENCNvXs3_NtNtBW_8features4kernNtB4y_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtBU_7ContextB3p_NtNtBW_5error5ErrorE4exec0EE11spec_extendBW_.exit, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit64.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEEB1d_.exit unwind label %bb.k

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB2a_5slice4iter4IterTNtBU_9AnyWorkIdINtNtB6_4sync3ArcNtBU_12KernFragmentEEEIB2Y_BS_ENCNvXs3_NtNtBW_8features4kernNtB4y_17KerningGatherWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtBU_7ContextB3p_NtNtBW_5error5ErrorE4exec0EE11spec_extendBW_.exit: ; preds = %select.unfold.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEEB1d_.exit: ; preds = %bb.j
  resume { ptr, i32 } %i.cq
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCNvNtCshxhuDJfZv4T_6fontbe8features23write_debug_glyph_order0EE9from_iterB3V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9552)
  %i.h = icmp eq ptr %1, %2
  br i1 %i.h, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !9553
  %i.j = load i8, ptr %1, align 8, !range !12, !alias.scope !9554, !noalias !9552, !noundef !4 ; 2 uses
  %i.k = icmp samesign ugt i8 %i.j, 23
  %i.l = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.m = add nsw i64 %i.l, -23
  %i.n = select i1 %i.k, i64 %i.m, i64 0
  switch i64 %i.n, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !9554, !noalias !9552, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !9554, !noalias !9552, !noundef !4
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !9554, !noalias !9552, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !9554, !noalias !9552, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.3.0.i.ph = phi i64 [ %i.w, %bb.f ], [ %i.s, %bb.e ], [ %i.l, %bb.d ]
  %.sroa.0.0.i.ph = phi ptr [ %i.x, %bb.f ], [ %i.q, %bb.e ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsbeZck1VjBmm_8indexmap3set4iterINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.y = load i64, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 1)
  %i.aa = call i64 @llvm.umax.i64(i64 %i.z, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.ab = load i64, ptr %i.c, align 8, !range !11, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !32, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.h, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.af, align 8
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.g
  %i.ah = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ai = icmp ule i64 %i.aa, %i.ae
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.i.ph, ptr %i.ah, align 8, !captures !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.3.0.i.ph, ptr %i.aj, align 8
  store i64 %i.ae, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_2
