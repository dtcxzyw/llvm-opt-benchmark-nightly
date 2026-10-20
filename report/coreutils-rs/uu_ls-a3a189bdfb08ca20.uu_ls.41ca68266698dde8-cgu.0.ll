Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtCs5EcwQX7phGK_5uu_ls7display12display_gridINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_16DisplayWithQuoteEEB4_:bb.a
_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i: ; preds = %bb.s
  %i.bo = icmp ule i64 %i.bl, %i.y
  call void @llvm.assume(i1 %i.bo)
  %i.bp = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.057.0.copyload, i64 noundef %i.y, i64 noundef 8, i64 noundef %i.bl) #37, !noalias !679 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.t, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit, !prof !23

bb.t:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bl) #39, !noalias !679
  unreachable

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit: ; preds = %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i, %bb.s, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i
  %.sroa.04.0.i.i = phi ptr [ %.sroa.057.0.copyload, %_RNvMs0_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteE32forget_allocation_drop_remainingB10_.exit.i.i ], [ %i.bp, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global19shrink_impl_runtime.exit.i.i ], [ inttoptr (i64 8 to ptr), %bb.s ] ; 2 uses
  %i.br = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i to i64
  %i.bs = ptrtoint ptr %.sroa.057.0.copyload to i64
  %i.bt = sub nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = udiv exact i64 %i.bt, 24                ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %.val.i = load i64, ptr %i.i, align 8, !range !5, !alias.scope !680, !noundef !4 ; 2 uses
  %i.bv = icmp eq i64 %.val.i, 0
  br i1 %i.bv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit
  %.val1.i = load ptr, ptr %i.w, align 8, !alias.scope !680, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !680
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENCINvB3g_12display_gridB2N_E0EE9from_iterB3i_.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bw = icmp eq i64 %5, 0
  %. = select i1 %i.bw, i64 -9223372036854775808, i64 -9223372036854775806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bx = zext i16 %1 to i64                      ; 5 uses
  %i.by = zext i1 %2 to i8
  %i.bz = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  %i.ca = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i, %.sroa.057.0.copyload ; 2 uses
  br i1 %i.ca, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !681
  %i.cb = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bz, i64 noundef range(i64 1, 9) 8) #37, !noalias !681 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.w, label %.preheader.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bz) #39, !noalias !682
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %bb.v, %.preheader.i.i.i.i.i
  %i.cd = phi i64 [ %i.cj, %.preheader.i.i.i.i.i ], [ 0, %bb.v ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i, i64 %i.cd ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !683, !nonnull !4, !noundef !4
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  %.val12.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !683, !noundef !4
  %i.ch = call noundef i64 @_RNvCs7OxSn9ncZ7G_10ansi_width10ansi_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.i.i.i.i.i.i.i, i64 noundef %.val12.i.i.i.i.i.i.i.i) #37, !noalias !684
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store i64 %i.ch, ptr %i.ci, align 8, !noalias !685
  %i.cj = add nuw i64 %i.cd, 1                    ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %i.bu
  br i1 %i.ck, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i, label %.preheader.i.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %.preheader.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cm = load i64, ptr %i.cb, align 8, !noalias !686, !noundef !4 ; 3 uses
  %i.cn = icmp eq i64 %i.bt, 24
  br i1 %i.cn, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.x

bb.x:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i
  %i.co = add nuw nsw i64 %i.bu, 2305843009213693951 ; 2 uses
  %i.cp = and i64 %i.co, 2305843009213693951      ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.cp, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.x
  %n.vec = and i64 %i.co, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi182 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ct, %vector.body ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load = load <2 x i64>, ptr %i.cq, align 8, !noalias !687
  %wide.load183 = load <2 x i64>, ptr %i.cr, align 8, !noalias !687
  %i.cs = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.ct = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi182, <2 x i64> %wide.load183) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !592

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.cs, <2 x i64> %i.ct)
  %i.cv = call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.x, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %bb.x ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ %i.cm, %bb.x ], [ %i.cv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.cx, %scalar.ph ], [ %.sroa.04.0.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %..i.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i27 = load i64, ptr %i.cw, align 8, !noalias !687, !noundef !4
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i.i.i.i, i64 %.val.i.i.i.i27) ; 2 uses
  %i.cx = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.cp
  br i1 %i.cy, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, label %scalar.ph, !llvm.loop !593

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %scalar.ph, %middle.block, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit
  %i.cz = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit ], [ %i.cb, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.cb, %middle.block ], [ %i.cb, %scalar.ph ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit ], [ %i.cm, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtB6_6string6StringENCNvMs0_Cs7snenZ3AQk_9term_gridINtB30_4GridB2w_E3new0EE9from_iterCs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.cv, %middle.block ], [ %..i.i.i.i.i.i.i, %scalar.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !687
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  store i64 %., ptr %i.da, align 8, !noalias !688
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 2, ptr %.sroa.462.0..sroa_idx, align 8, !noalias !688
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %5, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !688
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %i.bx, ptr %.sroa.664.0..sroa_idx, align 8, !noalias !688
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i8 %i.by, ptr %.sroa.765.0..sroa_idx, align 8, !noalias !688
  store i64 %i.z, ptr %i.e, align 8, !noalias !689
  %.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.04.0.i.i, ptr %.sroa.5.0..sroa_idx56, align 8, !noalias !689
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bu, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !689
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.bu, ptr %i.db, align 8, !noalias !687
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !687
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.bu, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !687
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %.sroa.0.0.i, ptr %i.dc, align 8, !noalias !687
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  store i64 0, ptr %i.dd, align 8, !noalias !687
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !687
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !687
  %i.de = icmp ult i64 %i.bt, -9223372036854775792
  call void @llvm.assume(i1 %i.de)
  br i1 %i.ca, label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE3newCs5EcwQX7phGK_5uu_ls.exit, label %bb.y

bb.y:                                             ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !687
  %i.df = icmp eq i64 %i.bt, 24
  br i1 %i.df, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = call noundef i64 @_RNvMCs7snenZ3AQk_9term_gridNtB2_7Filling5width(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #37, !noalias !690
  %i.dh = add i64 %i.dg, %.sroa.0.0.i             ; 4 uses
  %i.di = icmp ugt i64 %i.dh, %i.bx
  br i1 %i.di, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.dj = load i64, ptr %i.cz, align 8, !noalias !691, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !691
  %i.dk = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !691 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ab, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !23

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #39, !noalias !691
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.aa
  store i64 %i.dj, ptr %i.dk, align 8, !noalias !691
  br label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i

bb.ac:                                            ; preds = %bb.z
  %i.dm = call noundef i64 @_RNvMCs7snenZ3AQk_9term_gridNtB2_7Filling5width(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #37, !noalias !690
  %i.dn = icmp eq i64 %i.dh, 0
  br i1 %i.dn, label %bb.ag, label %bb.af

bb.ad:                                            ; preds = %bb.z
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !690
  %i.do = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !690 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.ae, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i, !prof !23

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #39, !noalias !690
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i: ; preds = %bb.ad
  store i64 %.sroa.0.0.i, ptr %i.do, align 8, !noalias !690
  %i.dq = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bu, i64 1
  br label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i

bb.af:                                            ; preds = %bb.ac
  %i.dr = add i64 %i.dm, %i.bx                    ; 2 uses
  %i.ds = udiv i64 %i.dr, %i.dh                   ; 2 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ds, i64 %i.bu) ; 4 uses
  %i.dt = icmp ugt i64 %i.dh, %i.dr
  br i1 %i.dt, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #38, !noalias !690
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.du = udiv i64 %i.bu, %..i.i.i
  %i.dv = urem i64 %i.bu, %..i.i.i
  %.not.i.i = icmp ne i64 %i.dv, 0
  %i.dw = zext i1 %.not.i.i to i64
  %.sroa.05.0.i.i = add nuw nsw i64 %i.du, %i.dw  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !691
  call fastcc void @_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE18compute_dimensionsCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.e, i64 noundef %.sroa.05.0.i.i, i64 noundef %..i.i.i) #37, !noalias !690
  %i.dx = icmp eq i64 %.sroa.05.0.i.i, 1
  br i1 %i.dx, label %bb.aj, label %.preheader36.i.i

.preheader36.i.i:                                 ; preds = %bb.ah
  %.not.i.not38.i.i = icmp ult i64 %i.ds, %i.bu
  br i1 %.not.i.not38.i.i, label %.lr.ph.i.i, label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread46.i

_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread46.i: ; preds = %.preheader36.i.i
  %.sroa.09.0.copyload1048.i = load i64, ptr %i.d, align 8, !noalias !692
  %.sroa.7.0..sroa_idx1249.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0.copyload1350.i = load ptr, ptr %.sroa.7.0..sroa_idx1249.i, align 8, !noalias !692
  %.sroa.9.0..sroa_idx1651.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dy = load <2 x i64>, ptr %.sroa.9.0..sroa_idx1651.i, align 8, !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !687
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader36.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #38, !noalias !690
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %.sroa.09.0.copyload11.i = load i64, ptr %i.d, align 8, !noalias !692
  %.sroa.7.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0.copyload15.i = load ptr, ptr %.sroa.7.0..sroa_idx14.i, align 8, !noalias !692
  %.sroa.9.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ec = load <2 x i64>, ptr %.sroa.9.0..sroa_idx18.i, align 8, !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !691
  br label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i.i, %.lr.ph.i.i
  %.sroa.0.0.in39.i.i.a = phi i64 [ %..i.i.i, %.lr.ph.i.i ], [ %.sroa.0.040.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i.i ] ; 2 uses
  %.sroa.0.040.i.i = add nuw nsw i64 %.sroa.0.0.in39.i.i.a, 1 ; 5 uses
  %i.ed = call noundef i64 @_RNvMCs7snenZ3AQk_9term_gridNtB2_7Filling5width(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #37, !noalias !690
  %i.ee = mul i64 %i.ed, %.sroa.0.0.in39.i.i.a    ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, %i.bx
  br i1 %i.ef, label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = sub nuw nsw i64 %i.bx, %i.ee
  %i.eh = udiv i64 %i.bu, %.sroa.0.040.i.i
  %i.ei = urem i64 %i.bu, %.sroa.0.040.i.i
  %.not21.i.i = icmp ne i64 %i.ei, 0
  %i.ej = zext i1 %.not21.i.i to i64
  %.sroa.014.0.i.i = add nuw nsw i64 %i.eh, %i.ej
  call fastcc void @_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE18compute_dimensionsCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.e, i64 noundef %.sroa.014.0.i.i, i64 noundef %.sroa.0.040.i.i) #37, !noalias !690
  %i.ek = load ptr, ptr %i.dz, align 8, !noalias !691, !nonnull !4, !noundef !4 ; 3 uses
  %i.el = load i64, ptr %i.ea, align 8, !noalias !691, !noundef !4 ; 5 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.thread.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.al
  %min.iters.check185 = icmp ult i64 %i.el, 4
  br i1 %min.iters.check185, label %.preheader.i.i.preheader202, label %vector.ph186

vector.ph186:                                     ; preds = %.preheader.i.i.preheader
  %n.vec187 = and i64 %i.el, -4                   ; 3 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %vec.phi190 = phi <2 x i64> [ zeroinitializer, %vector.ph186 ], [ %i.ep, %vector.body188 ]
  %vec.phi191 = phi <2 x i64> [ zeroinitializer, %vector.ph186 ], [ %i.eq, %vector.body188 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %index189 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load192 = load <2 x i64>, ptr %i.en, align 8, !noalias !690
  %wide.load193 = load <2 x i64>, ptr %i.eo, align 8, !noalias !690
  %i.ep = add <2 x i64> %wide.load192, %vec.phi190 ; 2 uses
  %i.eq = add <2 x i64> %wide.load193, %vec.phi191 ; 2 uses
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.er, label %middle.block195, label %vector.body188, !llvm.loop !597

middle.block195:                                  ; preds = %vector.body188
  %bin.rdx = add <2 x i64> %i.eq, %i.ep
  %i.es = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n196 = icmp eq i64 %i.el, %n.vec187
  br i1 %cmp.n196, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.i.i, label %.preheader.i.i.preheader202

.preheader.i.i.preheader202:                      ; preds = %.preheader.i.i.preheader, %middle.block195
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec187, %middle.block195 ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.es, %middle.block195 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader202, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ev, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader202 ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.eu, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader202 ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i28 = load i64, ptr %i.et, align 8, !noalias !690, !noundef !4
  %i.eu = add i64 %.val.i.i.i28, %.sroa.02.0.i.i.i ; 2 uses
  %i.ev = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.el
  br i1 %i.ew, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.i.i, label %.preheader.i.i, !llvm.loop !598

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.i.i: ; preds = %.preheader.i.i, %middle.block195
  %.lcssa176 = phi i64 [ %i.es, %middle.block195 ], [ %i.eu, %.preheader.i.i ]
  %.not22.i.i = icmp ugt i64 %.lcssa176, %i.eg
  br i1 %.not22.i.i, label %bb.am, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.thread.i.i

bb.am:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.i.i
  %.val25.i.i = load i64, ptr %i.c, align 8, !range !5, !noalias !691, !noundef !4 ; 2 uses
  %i.ex = icmp eq i64 %.val25.i.i, 0
  br i1 %i.ex, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = shl nuw i64 %.val25.i.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !690
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.thread.i.i: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.i.i, %bb.al
  %.val.i.i = load i64, ptr %i.d, align 8, !range !5, !noalias !691, !noundef !4 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i, 0
  br i1 %i.ez, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit29.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.thread.i.i
  %.val24.i.i = load ptr, ptr %i.eb, align 8, !noalias !691, !nonnull !4, !noundef !4
  %i.fa = shl nuw i64 %.val.i.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !690
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit29.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit29.i.i: ; preds = %bb.ao, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs5EcwQX7phGK_5uu_ls.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !691
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit29.i.i, %bb.an, %bb.am
  %.not.i.not.i.i = icmp samesign ult i64 %.sroa.0.040.i.i, %i.bu
  br i1 %.not.i.not.i.i, label %bb.ak, label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i

_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i: ; preds = %bb.aj, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  %.sroa.7.0.ph.i = phi ptr [ %.sroa.7.0.copyload15.i, %bb.aj ], [ %i.do, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i ], [ %i.dk, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ]
  %.sroa.09.0.ph.i = phi i64 [ %.sroa.09.0.copyload11.i, %bb.aj ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ]
  %i.fb = phi <2 x i64> [ %i.ec, %bb.aj ], [ %i.dq, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i ], [ splat (i64 1), %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !687
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i

_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i.i, %bb.ak
  %.val.pre.pre.i = load i64, ptr %i.dd, align 8, !range !5, !noalias !687 ; 2 uses
  %.sroa.09.0.copyload10.i = load i64, ptr %i.d, align 8, !noalias !692 ; 2 uses
  %.sroa.7.0.copyload13.i = load ptr, ptr %i.eb, align 8, !noalias !692 ; 2 uses
  %.sroa.9.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fc = load <2 x i64>, ptr %.sroa.9.0..sroa_idx16.i, align 8, !noalias !692 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !687
  %i.fd = icmp eq i64 %.val.pre.pre.i, 0
  br i1 %i.fd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i
  %.val8.i = load ptr, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !687, !nonnull !4, !noundef !4
  %i.fe = shl nuw i64 %.val.pre.pre.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !687
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %bb.ap, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread46.i
  %.sroa.09.045.i = phi i64 [ %.sroa.09.0.ph.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i ], [ %.sroa.09.0.copyload10.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i ], [ %.sroa.09.0.copyload10.i, %bb.ap ], [ %.sroa.09.0.copyload1048.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread46.i ]
  %.sroa.7.044.i = phi ptr [ %.sroa.7.0.ph.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i ], [ %.sroa.7.0.copyload13.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i ], [ %.sroa.7.0.copyload13.i, %bb.ap ], [ %.sroa.7.0.copyload1350.i, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread46.i ]
  %i.ff = phi <2 x i64> [ %i.fb, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread.i ], [ %i.fc, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.i ], [ %i.fc, %bb.ap ], [ %i.dy, %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE16width_dimensionsCs5EcwQX7phGK_5uu_ls.exit.thread46.i ]
  store i64 %.sroa.09.045.i, ptr %i.dd, align 8, !noalias !687
  store ptr %.sroa.7.044.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !687
  store <2 x i64> %i.ff, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !noalias !687
  br label %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE3newCs5EcwQX7phGK_5uu_ls.exit

_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE3newCs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterjEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0ECs5EcwQX7phGK_5uu_ls.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs7snenZ3AQk_9term_grid10DimensionsECs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCs5EcwQX7phGK_5uu_ls, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !694
  store ptr %3, ptr %i.b, align 8, !noalias !694
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.fg, align 8, !noalias !694
  %i.fh = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @46, ptr noundef nonnull @32, ptr noundef nonnull %i.g) #37
  %i.fi = load ptr, ptr %i.fg, align 8, !noalias !694, !noundef !4 ; 5 uses
  %.not.i6.i = icmp eq ptr %i.fi, null            ; 2 uses
  br i1 %i.fh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE3newCs5EcwQX7phGK_5uu_ls.exit
  br i1 %.not.i6.i, label %bb.av, label %bb.bh, !prof !7

bb.ar:                                            ; preds = %_RNvMs0_Cs7snenZ3AQk_9term_gridINtB5_4GridNtNtCs7tKScEop1B6_5alloc6string6StringE3newCs5EcwQX7phGK_5uu_ls.exit
  br i1 %.not.i6.i, label %bb.bi, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !695
  %i.fj = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fk = and i64 %i.fj, 3
  switch i64 %i.fk, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i
    i64 3, label %bb.at
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i
    i64 1, label %bb.au
  ], !prof !13

default.unreachable:                              ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.fl = icmp ult ptr %i.fi, inttoptr (i64 188978561024 to ptr)
  %i.fm = and i64 %i.fj, 1095216660480
  %i.fn = icmp ne i64 %i.fm, 1095216660480
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.assume(i1 %i.fn)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.fo = getelementptr i8, ptr %i.fi, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fo) ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.fo, ptr %i.fp, align 8, !alias.scope !696, !noalias !695
  store i8 3, ptr %i.a, align 8, !alias.scope !696, !noalias !695
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fp) #37, !noalias !697
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i: ; preds = %bb.au, %bb.at, %bb.as, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !695
  br label %bb.bi

bb.av:                                            ; preds = %bb.aq
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38
  unreachable

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit
  %.sroa.6.06697 = phi ptr [ %i.fq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit ], [ %i.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.6.06697, i64 32 ; 6 uses
  %.sroa.049.0.copyload50 = load i64, ptr %.sroa.6.06697, align 8, !noalias !658 ; 5 uses
  %.sroa.8.0..sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.06697, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa.6.8..sroa_idx, align 8, !noalias !658 ; 6 uses
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.6.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.06697, i64 16
  %.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.6.8..sroa_idx.sroa_idx, align 8, !noalias !658 ; 4 uses
  %.not19 = icmp eq i64 %.sroa.049.0.copyload50, -1
  br i1 %.not19, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.bb

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel, %bb.b
  %.sroa.01.0.lcssa = phi i1 [ false, %bb.b ], [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel ], [ false, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit ], [ true, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit ]
  %.sroa.6.16775 = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.peel ], [ %i.n, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.fq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit ], [ %i.fq, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit ] ; 3 uses
  %i.fr = ptrtoint ptr %.sroa.12.0.copyload to i64
  %i.fs = ptrtoint ptr %.sroa.6.16775 to i64
  %i.ft = sub nuw i64 %i.fr, %i.fs
  %i.fu = lshr exact i64 %i.ft, 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.fv = icmp eq ptr %.sroa.12.0.copyload, %.sroa.6.16775
  br i1 %i.fv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBG_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i
  %.sroa.0.04.i.i.i = phi i64 [ %i.fx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.16775, i64 %.sroa.0.04.i.i.i ; 2 uses
  %i.fx = add nuw nsw i64 %.sroa.0.04.i.i.i, 1    ; 2 uses
  %.val.i.i.i32 = load i64, ptr %i.fw, align 8, !range !5, !alias.scope !699, !noalias !700, !noundef !4 ; 2 uses
  %i.fy = icmp eq i64 %.val.i.i.i32, 0
  br i1 %i.fy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.fz = getelementptr i8, ptr %i.fw, i64 8
  %.val3.i.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !698, !noalias !700, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i32, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !701
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i: ; preds = %bb.aw, %.lr.ph.i.i.i
  %i.ga = icmp eq i64 %i.fx, %i.fu
  br i1 %i.ga, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBG_.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBG_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBF_.exit.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  %i.gb = icmp eq i64 %.sroa.10.0.copyload, 0
  br i1 %i.gb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBG_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.gc = shl nuw i64 %.sroa.10.0.copyload, 5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !700
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEBG_.exit.i.i, %bb.ax
  br i1 %.sroa.01.0.lcssa, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit46

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.gd = load i64, ptr %3, align 8, !range !5, !alias.scope !704, !noundef !4
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !704, !noundef !4 ; 4 uses
  %i.gg = icmp sgt i64 %i.gf, -1
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = sub nsw i64 %i.gd, %i.gf
  %i.gi = icmp ugt i64 %i.gh, 1
  br i1 %i.gi, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCs5EcwQX7phGK_5uu_ls.exit34.thread, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCs5EcwQX7phGK_5uu_ls.exit34, !prof !12

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCs5EcwQX7phGK_5uu_ls.exit34.thread: ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !706, !nonnull !4, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gf
  store i8 10, ptr %i.gl, align 1, !noalias !706
  %i.gm = add nuw i64 %i.gf, 1
  store i64 %i.gm, ptr %i.ge, align 8, !alias.scope !706
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit46

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCs5EcwQX7phGK_5uu_ls.exit34: ; preds = %bb.ay
  %i.gn = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef range(i64 0, -9223372036854775808) 1) #36 ; 2 uses
  %.not20 = icmp eq ptr %i.gn, null
  br i1 %.not20, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit46, label %bb.az

bb.az:                                            ; preds = %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCs5EcwQX7phGK_5uu_ls.exit34
  %i.go = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.gn) #37 ; 2 uses
  %i.gp = extractvalue { ptr, ptr } %i.go, 0
  %i.gq = extractvalue { ptr, ptr } %i.go, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs5EcwQX7phGK_5uu_ls7display16DisplayWithQuoteEEB1t_.exit46

bb.ba:                                            ; preds = %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCs5EcwQX7phGK_5uu_ls.exit36.thread, %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCs5EcwQX7phGK_5uu_ls.exit36
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.gr = load i64, ptr %3, align 8, !range !5, !alias.scope !709, !noundef !4
  %i.gs = load i64, ptr %i.l, align 8, !alias.scope !709, !noundef !4 ; 4 uses
  %i.gt = icmp sgt i64 %i.gs, -1
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = sub nsw i64 %i.gr, %i.gs
  %i.gv = icmp ult i64 %.sroa.8.sroa.6.0.copyload, %i.gu
  br i1 %i.gv, label %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.thread, label %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit, !prof !12

_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB4_.exit.thread: ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.gw = load ptr, ptr %i.m, align 8, !alias.scope !711, !nonnull !4, !noundef !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull readonly align 1 %.sroa.8.sroa.0.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.8.sroa.6.0.copyload, i1 false), !noalias !711
  %i.gy = add nuw i64 %i.gs, %.sroa.8.sroa.6.0.copyload
  store i64 %i.gy, ptr %i.l, align 8, !alias.scope !711
end_hunk_0
