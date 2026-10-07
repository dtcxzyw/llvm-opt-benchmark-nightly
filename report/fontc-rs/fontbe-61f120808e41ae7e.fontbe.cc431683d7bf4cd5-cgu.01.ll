Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter7IterMutTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3H_15NormalizedSpaceEINtNtB2b_6copied6CopiedINtB3b_4IterNtNtB15_7bezpath6PathElEEEENCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss_0EE9from_iterB5T_:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9364)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9367
  store ptr %i.h, ptr %i.d, align 8, !noalias !9368
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9369, !noalias !9370, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !9369, !noalias !9370
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.l, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.k, %i.j
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !9369, !noalias !9370
  call void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss_0INtB7_5FnMutTQTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB24_15NormalizedSpaceEINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEEEEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !9366
  %i.m = load i64, ptr %i.f, align 8, !range !11, !alias.scope !9371, !noalias !9372, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9367
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load <2 x double>, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.q = load i64, ptr %i.c, align 8, !range !11, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !32, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.r, label %bb.e, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.u, align 8
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.d
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = icmp ugt i64 %i.t, 3
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x double> %i.p, ptr %i.w, align 8
  store i64 %i.t, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9373)
  call void @llvm.experimental.noalias.scope.decl(metadata !9374)
  call void @llvm.experimental.noalias.scope.decl(metadata !9375)
  call void @llvm.experimental.noalias.scope.decl(metadata !9376)
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc6, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9377
  call void @llvm.experimental.noalias.scope.decl(metadata !9378)
  call void @llvm.experimental.noalias.scope.decl(metadata !9379)
  call void @llvm.experimental.noalias.scope.decl(metadata !9380)
  call void @llvm.experimental.noalias.scope.decl(metadata !9381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9382
  store ptr %i.y, ptr %i.a, align 8, !noalias !9383
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !9384, !noalias !9385, !nonnull !4, !noundef !4
  %.promoted.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !9384, !noalias !9385
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.ac = phi ptr [ %i.ad, %.noexc ], [ %.promoted.i.i.i.i, %bb.f ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %i.ad, ptr %i.e, align 8, !alias.scope !9384, !noalias !9385
  invoke void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCshxhuDJfZv4T_6fontbe6glyphs20cubics_to_quadraticss_0INtB7_5FnMutTQTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB24_15NormalizedSpaceEINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEEEEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  %i.ae = load i64, ptr %i.b, align 8, !range !11, !alias.scope !9386, !noalias !9387, !noundef !4
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9382
  %i.ag = load <2 x double>, ptr %i.aa, align 8, !noalias !9377
  %i.ah = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9388, !noalias !9389, !noundef !4 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, 576460752303423488
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.g, align 8, !range !10, !alias.scope !9388, !noalias !9389, !noundef !4
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, label %.noexc6

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ah, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, %bb.i
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9388, !noalias !9389, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ah
  store <2 x double> %i.ag, ptr %i.am, align 8
  %i.an = add nuw nsw i64 %i.ah, 1
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9388, !noalias !9389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9377
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9367
  store i64 0, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2b_7flatten7FlatMapINtNtNtB2f_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB3k_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5N_s_0EE9from_iterB5T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9443)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9444, !noalias !9445
  %.promoted20.i.i.i = load ptr, ptr %1, align 8, !alias.scope !9444, !noalias !9445
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9444, !noalias !9445 ; 3 uses
  %.promoted21.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !9444, !noalias !9445
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.6.0.copyload = phi ptr [ %i.n, %bb.d ], [ %.promoted21.i.i.i, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.k, %bb.d ], [ %.promoted20.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i19.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.d ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i19.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.h = icmp eq ptr %spec.select.i19.i.i.i, %.sroa.6.0.copyload ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i.i, i64 6 ; 3 uses
  %spec.select.i.i.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !9446, !noalias !9445
  br i1 %i.h, label %select.unfold.i.i.i, label %bb.f

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9447)
  %.not.i5.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i5.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9448)
  %i.j = icmp eq ptr %i.g, %i.f
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !9449, !noalias !9445
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9450, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %.val3.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !9450, !noundef !4
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %.val.i.i.i.i.i, i64 %.val3.i.i.i.i.i ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !9444, !noalias !9445
  store ptr %i.n, ptr %i.d, align 8, !alias.scope !9444, !noalias !9445
  br label %bb.b

bb.e:                                             ; preds = %bb.c, %select.unfold.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9451, !noalias !9445, !noundef !4 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i.i.i, label %bb.m, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9452, !noalias !9445, !nonnull !4, !noundef !4
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %spec.select.i9.i.i.i = select i1 %i.s, ptr null, ptr %i.t
  store ptr %spec.select.i9.i.i.i, ptr %i.o, align 8, !alias.scope !9451, !noalias !9445
  br i1 %i.s, label %bb.m, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i

bb.f:                                             ; preds = %.sink.split.i.i.i.i
  %i.u = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.v = ptrtoint ptr %i.i to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 6
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %.sink.split.i8.i.i.i, %bb.f
  %spec.select.i19.i.i.i.pn = phi ptr [ %spec.select.i19.i.i.i, %bb.f ], [ %i.p, %.sink.split.i8.i.i.i ]
  %2 = phi ptr [ %i.i, %bb.f ], [ null, %.sink.split.i8.i.i.i ]
  %.sroa.7.0.i.i.i = phi i64 [ %i.x, %bb.f ], [ 0, %.sink.split.i8.i.i.i ]
  %3 = load <2 x i16>, ptr %spec.select.i19.i.i.i.pn, align 2, !noalias !9453
  %4 = sitofp <2 x i16> %3 to <2 x double>
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !9454, !noalias !9455, !noundef !4 ; 3 uses
  %.not53.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not53.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !9456, !noalias !9457, !nonnull !4, !noundef !4
  %i.ab = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = udiv exact i64 %i.ad, 6
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i: ; preds = %bb.g, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.ae, %bb.g ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i ]
  %i.af = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i
  %i.ag = tail call i64 @llvm.umax.i64(i64 %i.af, i64 3) ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ah, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.ai = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !32, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.h, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i
  %i.an = load i64, ptr %i.am, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #31
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %i.ag, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <2 x double> %4, ptr %i.ao, align 8
  store i64 %i.al, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.8.0.copyload to i64
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit
  %i.ar = phi i64 [ %i.ca, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %spec.select.i9.i.i.i18.i.i = phi ptr [ %spec.select.i9.i.i.i17.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.z, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %.val3.i.i.i.i9.i.i = phi ptr [ %.val3.i.i.i.i10.i5.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %i.as = phi ptr [ %i.bi, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.g, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %i.at = phi ptr [ %i.bj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i ], [ %2, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshxhuDJfZv4T_6fontbe.exit ] ; 3 uses
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.at, null
  %i.au = icmp eq ptr %i.at, %.val3.i.i.i.i9.i.i
  %or.cond.i7.i = select i1 %.not.i.i.i.i.i6.i, i1 true, i1 %i.au
  br i1 %or.cond.i7.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.i
  %.not.i5.i.i.i.i.i21 = icmp eq ptr %i.as, null
  %i.av = icmp eq ptr %i.as, %i.f
  %or.cond.i22 = select i1 %.not.i5.i.i.i.i.i21, i1 true, i1 %i.av
  br i1 %or.cond.i22, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.aw = icmp eq ptr %i.ay, %i.f
  br i1 %i.aw, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.ax = phi ptr [ %i.ay, %select.unfold.i.i.i.i.i ], [ %i.as, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 16
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !9458, !noundef !4 ; 3 uses
  %i.ba = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.ba, label %select.unfold.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.val.i.i.i.i.i.i.i.le56 = load ptr, ptr %i.bb, align 8, !noalias !9458, !nonnull !4, !noundef !4
  %.idx.i.le53 = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i, 6
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.le56, i64 %.idx.i.le53
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa = phi ptr [ %i.as, %select.unfold.i.i.i.i.i.preheader ], [ %i.ay, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.val3.i.i.i.i10.i8.i.lcssa = phi ptr [ %.val3.i.i.i.i9.i.i, %select.unfold.i.i.i.i.i.preheader ], [ %i.bc, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i18.i.i, null
  %i.bd = icmp eq ptr %spec.select.i9.i.i.i18.i.i, %.sroa.8.0.copyload
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i18.i.i, i64 6
  %or.cond36.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.bd
  br i1 %or.cond36.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtNtB1W_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB31_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5u_s_0EE11spec_extendB5A_.exit, label %.loopexit.i.i

.loopexit.loopexit.i.i.loopexit:                  ; preds = %.lr.ph
  %i.bf = getelementptr i8, ptr %i.ax, i64 8
  %.val.i.i.i.i.i.i.i.le = load ptr, ptr %i.bf, align 8, !noalias !9458, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.loopexit, %bb.i
  %.val3.i.i.i.i10.i.lcssa.i = phi ptr [ %.val3.i.i.i.i9.i.i, %bb.i ], [ %i.bg, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa2.i = phi ptr [ %i.as, %bb.i ], [ %i.ay, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.at, %bb.i ], [ %.val.i.i.i.i.i.i.i.le, %.loopexit.loopexit.i.i.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 6
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %.val3.i.i.i.i10.i5.i = phi ptr [ %.val3.i.i.i.i10.i8.i.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.val3.i.i.i.i10.i.lcssa.i, %.loopexit.loopexit.i.i ] ; 2 uses
  %i.bi = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa2.i, %.loopexit.loopexit.i.i ]
  %spec.select.i9.i.i.i17.i.i = phi ptr [ %i.be, %select.unfold.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i18.i.i, %.loopexit.loopexit.i.i ] ; 3 uses
  %i.bj = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ %i.bh, %.loopexit.loopexit.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i18.i.i, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.loopexit.i.i ]
  %i.bk = load <2 x i16>, ptr %.sroa.0.0.i.i.i.i.i, align 2, !noalias !9459
  %i.bl = sitofp <2 x i16> %i.bk to <2 x double>
  %i.bm = icmp samesign ult i64 %i.ar, 576460752303423488
  call void @llvm.assume(i1 %i.bm)
  %i.bn = load i64, ptr %i.b, align 8, !range !10, !alias.scope !9460, !noalias !9461, !noundef !4
  %i.bo = icmp eq i64 %i.ar, %i.bn
  br i1 %i.bo, label %bb.j, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i

bb.j:                                             ; preds = %.loopexit.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = ptrtoint ptr %.val3.i.i.i.i10.i5.i to i64
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = udiv exact i64 %i.br, 6
  %i.bt = add nuw nsw i64 %i.bs, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.bt, %bb.k ], [ 1, %bb.j ]
  %.not53.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i17.i.i, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %i.bu = ptrtoint ptr %spec.select.i9.i.i.i17.i.i to i64
  %i.bv = sub nuw i64 %i.aq, %i.bu
  %i.bw = udiv exact i64 %i.bv, 6
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i: ; preds = %bb.l, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.bw, %bb.l ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i ]
  %i.bx = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ar, i64 noundef %i.bx, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i, %.loopexit.i.i
  %i.by = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9460, !noalias !9461, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.ar
  store <2 x double> %i.bl, ptr %i.bz, align 8, !noalias !9461
  %i.ca = add nuw nsw i64 %i.ar, 1                ; 2 uses
  store i64 %i.ca, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9460, !noalias !9461
  br label %bb.i

bb.m:                                             ; preds = %bb.e, %.sink.split.i8.i.i.i
  store i64 0, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cc, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtNtB1W_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB31_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5u_s_0EE11spec_extendB5A_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECshxhuDJfZv4T_6fontbe.exit64.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.p

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtNtB1W_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourEIB31_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4glyf10CurvePointENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs27point_seqs_for_simple_glyph00ENCB5u_s_0EE11spec_extendB5A_.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.o
  resume { ptr, i32 } %i.cd
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
end_hunk_0
