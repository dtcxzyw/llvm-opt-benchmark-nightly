Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvCsgZlHlzpN0xi_7uu_tail7uu_tail:bb.a
  br label %bb.ky

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit225.i: ; preds = %bb.la, %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3195
  %i.akw = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #38, !noalias !3276 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akw, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %.sroa.4336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  store i32 1, ptr %.sroa.4336.0..sroa_idx.i, align 8
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error5ErrorECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ap) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3195
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3195
  br label %_RNvNtNtCsgZlHlzpN0xi_7uu_tail6follow5watch6follow.exit.thread553

bb.lc:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3195
  store i8 1, ptr %i.ai, align 1, !noalias !3195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3195
  store i64 0, ptr %i.ah, align 8, !noalias !3195
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.475.0..sroa_idx.i, align 8, !noalias !3195
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.576.0..sroa_idx.i, align 8, !noalias !3195
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc16RecvTimeoutErrorNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %i.ai) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3195
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8, !noalias !3195, !nonnull !9, !noundef !9 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ala = load i64, ptr %i.akz, align 8, !noalias !3195, !noundef !9 ; 2 uses
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aky, i64 noundef %i.ala) #38
  %i.alb = load i8, ptr %i.ag, align 8, !range !12, !noalias !3195, !noundef !9
  %i.alc = trunc nuw i8 %i.alb to i1
  br i1 %i.alc, label %bb.mp, label %bb.mq

bb.ld:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3195
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals24ensure_stdout_not_broken(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aj) #33
  %i.ald = load i8, ptr %i.aj, align 8, !range !12, !noalias !3195, !noundef !9 ; 2 uses
  %i.ale = trunc nuw i8 %i.ald to i1
  %i.alf = load i8, ptr %i.xt, align 1, !range !12, !noalias !3195
  %i.alg = trunc nuw i8 %i.alf to i1
  %or.cond5.i = select i1 %i.ale, i1 true, i1 %i.alg
  br i1 %or.cond5.i, label %bb.le, label %bb.li

bb.le:                                            ; preds = %bb.ld
  %.val151.i = load ptr, ptr %i.xu, align 8, !noalias !3195 ; 4 uses
  %i.alh = icmp eq i8 %i.ald, 0
  br i1 %i.alh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val151.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3277
  %i.ali = ptrtoint ptr %.val151.i to i64         ; 2 uses
  %i.alj = and i64 %i.ali, 3
  switch i64 %i.alj, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i
    i64 3, label %bb.lg
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i
    i64 1, label %bb.lh
  ], !prof !22

bb.lg:                                            ; preds = %bb.lf
  %i.alk = icmp ult ptr %.val151.i, inttoptr (i64 188978561024 to ptr)
  %i.all = and i64 %i.ali, 1095216660480
  %i.alm = icmp ne i64 %i.all, 1095216660480
  call void @llvm.assume(i1 %i.alk)
  call void @llvm.assume(i1 %i.alm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i

bb.lh:                                            ; preds = %bb.lf
  %i.aln = getelementptr i8, ptr %.val151.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aln) ]
  store ptr %i.aln, ptr %i.xv, align 8, !alias.scope !3278, !noalias !3277
  store i8 3, ptr %i.e, align 8, !alias.scope !3278, !noalias !3277
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xv) #33, !noalias !3279
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i: ; preds = %bb.lh, %bb.lg, %bb.lf, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3277
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3195
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219.i

bb.li:                                            ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3195
  br label %bb.jy

bb.lj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219._crit_edge.i
  %i.alo = phi i64 [ %.pre558.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219._crit_edge.i ], [ %.sroa.6311.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i ] ; 2 uses
  %i.alp = phi ptr [ %.pre557.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219._crit_edge.i ], [ %.sroa.5308.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i ] ; 3 uses
  %.idx476.i = mul nuw nsw i64 %i.alo, 24
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 %.idx476.i
  %i.alr = icmp eq i64 %i.alo, 0
  br i1 %i.alr, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i, label %.lr.ph474.i

bb.lk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3280)
  call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  %i.als = load ptr, ptr %i.uw, align 8, !alias.scope !3282, !nonnull !9, !noundef !9 ; 4 uses
  %.val3.i.i.i228.i = load <16 x i8>, ptr %i.als, align 16, !noalias !3283
  %i.alt = load i64, ptr %i.ux, align 8, !alias.scope !3282, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3284
  %i.alu = icmp eq i64 %i.alt, 0
  br i1 %i.alu, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.alv = icmp sgt <16 x i8> %.val3.i.i.i228.i, splat (i8 -1)
  %i.alw = bitcast <16 x i1> %i.alv to i16        ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.als, i64 16 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i16 %i.alw, 0
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ll, %.lr.ph.i.i.i.i.i.i
  %i.aly = phi ptr [ %i.amc, %.lr.ph.i.i.i.i.i.i ], [ %i.alx, %bb.ll ] ; 2 uses
  %i.alz = phi ptr [ %i.amb, %.lr.ph.i.i.i.i.i.i ], [ %i.als, %bb.ll ]
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.aly, align 16, !noalias !3285
  %i.ama = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i, splat (i8 -1)
  %i.amb = getelementptr inbounds i8, ptr %i.alz, i64 -3840 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aly, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.ama to i16 ; 2 uses
  %.not.i.i.i.i.i233.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i233.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i

._crit_edge18.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ll
  %.sroa.6315.0.i = phi ptr [ %i.alx, %bb.ll ], [ %i.amc, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.011.0.copyload.i.i = phi ptr [ %i.als, %bb.ll ], [ %i.amb, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.alw, %bb.ll ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.amd = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.ame = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.amf = zext nneg i16 %i.ame to i64
  %i.amg = and i16 %i.amd, %.lcssa.i.i.i.i.i.i
  %i.amh = sub nsw i64 0, %i.amf
  %i.ami = getelementptr inbounds [240 x i8], ptr %.sroa.011.0.copyload.i.i, i64 %i.amh ; 2 uses
  %i.amj = add nsw i64 %i.alt, -1                 ; 2 uses
  %i.amk = getelementptr i8, ptr %i.ami, i64 -232
  %.val.i.i229.i = load ptr, ptr %i.amk, align 8, !noalias !3286, !nonnull !9, !noundef !9
  %i.aml = getelementptr i8, ptr %i.ami, i64 -224
  %.val2.i.i.i174 = load i64, ptr %i.aml, align 8, !noalias !3286, !noundef !9 ; 7 uses
  %i.amm = icmp eq i64 %.val2.i.i.i174, 0
  br i1 %i.amm, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i, label %bb.lm

bb.lm:                                            ; preds = %._crit_edge18.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3287
  %i.amn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i174, i64 noundef range(i64 1, 9) 1) #33, !noalias !3287 ; 3 uses
  %i.amo = icmp eq ptr %i.amn, null
  br i1 %i.amo, label %bb.ln, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i

bb.ln:                                            ; preds = %bb.lm
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i174) #39, !noalias !3288
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i: ; preds = %bb.lm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amn, ptr nonnull readonly align 1 %.val.i.i229.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i174, i1 false), !noalias !3289
  %.not.i230.i = icmp eq i64 %.val2.i.i.i174, -1
  br i1 %.not.i230.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i, %._crit_edge18.i.i.i.i.i.i
  %.sroa.7.027.i.i = phi ptr [ %i.amn, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i ], [ inttoptr (i64 1 to ptr), %._crit_edge18.i.i.i.i.i.i ]
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.alt, i64 4) ; 3 uses
  %i.amp = mul i64 %..i.i.i, 24                   ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.alt, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.lq, label %bb.lo, !prof !20

bb.lo:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i
  %i.amq = icmp eq i64 %i.amp, 0
  br i1 %i.amq, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3290
  %i.amr = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.amp, i64 noundef range(i64 1, 9) 8) #33, !noalias !3290 ; 2 uses
  %i.ams = icmp eq ptr %i.amr, null
  br i1 %i.ams, label %bb.lq, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i

bb.lq:                                            ; preds = %bb.lp, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.lp ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.amp) #39, !noalias !3291
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.lp, %bb.lo
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.lo ], [ %i.amr, %bb.lp ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.lo ], [ %..i.i.i, %bb.lp ] ; 3 uses
  %i.amt = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.amt)
  store i64 %.val2.i.i.i174, ptr %.sroa.10.0.i.i.i, align 8, !noalias !3291
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store ptr %.sroa.7.027.i.i, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !3291
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store i64 %.val2.i.i.i174, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !3291
  store i64 %.sroa.4.0.i.i.i, ptr %i.d, align 8, !noalias !3284
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i231.i, align 8, !noalias !3284
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !3284
  call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  %i.amu = icmp eq i64 %i.amj, 0
  br i1 %i.amu, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i, label %.lr.ph.i.i.i232.i

.lr.ph.i.i.i232.i:                                ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i, %bb.lt
  %i.amv = phi ptr [ %i.anr, %bb.lt ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ]
  %i.amw = phi i64 [ %i.ant, %bb.lt ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 5 uses
  %.lcssa30.i.i.i.i = phi ptr [ %.lcssa29.i.i.i.i, %bb.lt ], [ %.sroa.6315.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %i.amx = phi i16 [ %i.ang, %bb.lt ], [ %i.amg, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.val2126.i.i.i.i = phi i64 [ %i.anj, %bb.lt ], [ %i.amj, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.lcssa202425.i.i.i.i = phi ptr [ %.lcssa2023.i.i.i.i, %bb.lt ], [ %.sroa.011.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %i.amx, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i232.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.amy = phi ptr [ %i.anc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa30.i.i.i.i, %.lr.ph.i.i.i232.i ] ; 2 uses
  %i.amz = phi ptr [ %i.anb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa202425.i.i.i.i, %.lr.ph.i.i.i232.i ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.amy, align 16, !noalias !3294
  %i.ana = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.anb = getelementptr inbounds i8, ptr %i.amz, i64 -3840 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ana to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i.i

._crit_edge18.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i232.i
  %.lcssa29.i.i.i.i = phi ptr [ %.lcssa30.i.i.i.i, %.lr.ph.i.i.i232.i ], [ %i.anc, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa2023.i.i.i.i = phi ptr [ %.lcssa202425.i.i.i.i, %.lr.ph.i.i.i232.i ], [ %i.anb, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.amx, %.lr.ph.i.i.i232.i ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.and = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ane = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.anf = zext nneg i16 %i.ane to i64
  %i.ang = and i16 %i.and, %.lcssa.i.i.i.i.i.i.i.i
  %i.anh = sub nsw i64 0, %i.anf
  %i.ani = getelementptr inbounds [240 x i8], ptr %.lcssa2023.i.i.i.i, i64 %i.anh ; 2 uses
  %i.anj = add i64 %.val2126.i.i.i.i, -1          ; 2 uses
  %i.ank = getelementptr i8, ptr %i.ani, i64 -232
  %.val.i.i.i.i.i175 = load ptr, ptr %i.ank, align 8, !noalias !3295, !nonnull !9, !noundef !9
  %i.anl = getelementptr i8, ptr %i.ani, i64 -224
  %.val2.i.i.i.i.i = load i64, ptr %i.anl, align 8, !noalias !3295, !noundef !9 ; 7 uses
  %i.anm = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.anm, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %._crit_edge18.i.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3296
  %i.ann = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #33, !noalias !3296 ; 3 uses
  %i.ano = icmp eq ptr %i.ann, null
  br i1 %i.ano, label %bb.ls, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i

bb.ls:                                            ; preds = %bb.lr
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i) #39, !noalias !3297
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i: ; preds = %bb.lr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ann, ptr nonnull readonly align 1 %.val.i.i.i.i.i175, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i1 false), !noalias !3298
  %.not.i.i2.i.i = icmp eq i64 %.val2.i.i.i.i.i, -1
  br i1 %.not.i.i2.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i
  %.sroa.7.018.i.i.i.i = phi ptr [ %i.ann, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %._crit_edge18.i.i.i.i.i.i.i.i ]
  %i.anp = load i64, ptr %i.d, align 8, !range !10, !alias.scope !3299, !noalias !3284, !noundef !9
  %i.anq = icmp eq i64 %i.amw, %i.anp
  br i1 %i.anq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i, label %bb.lt

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.amw, i64 noundef range(i64 1, 0) %.val2126.i.i.i.i, i64 noundef 8, i64 noundef 24) #33, !noalias !3300
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i231.i, align 8, !alias.scope !3299, !noalias !3284
  br label %bb.lt

bb.lt:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i
  %i.anr = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i ], [ %i.amv, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i ] ; 2 uses
  %i.ans = getelementptr inbounds nuw [24 x i8], ptr %i.anr, i64 %i.amw ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.ans, align 8, !noalias !3301
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  store ptr %.sroa.7.018.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !3301
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !3301
  %i.ant = add nuw nsw i64 %i.amw, 1              ; 2 uses
  store i64 %i.ant, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3299, !noalias !3284
  %i.anu = icmp eq i64 %i.anj, 0
  br i1 %i.anu, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i, label %.lr.ph.i.i.i232.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i: ; preds = %bb.lt, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i
  %.sroa.6311.0.copyload313555.i = phi i64 [ %i.amw, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i ], [ %i.alt, %bb.lt ]
  %.sroa.0306.0.copyload307.pre.i = load i64, ptr %i.d, align 8, !noalias !3302
  %.sroa.5308.0.copyload310.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i231.i, align 8, !noalias !3302
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i, %bb.lk
  %.sroa.6311.0.i = phi i64 [ 0, %bb.lk ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i ], [ %.sroa.6311.0.copyload313555.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.sroa.5308.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.lk ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i ], [ %.sroa.5308.0.copyload310.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.sroa.0306.0.i = phi i64 [ 0, %bb.lk ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i ], [ %.sroa.0306.0.copyload307.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i ], [ %.sroa.4.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3284
  call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  %.val.i234.i = load ptr, ptr %i.xd, align 8, !alias.scope !3303, !noalias !3195, !nonnull !9, !noundef !9 ; 2 uses
  %.val1.i235.i = load i64, ptr %i.xe, align 8, !alias.scope !3303, !noalias !3195, !noundef !9 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  %i.anv = icmp eq i64 %.val1.i235.i, 0
  br i1 %i.anv, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i, label %.lr.ph.i.i.i236.i

.lr.ph.i.i.i236.i:                                ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i
  %.sroa.0.04.i.i.i237.i = phi i64 [ %i.anx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i ] ; 2 uses
  %i.anw = getelementptr inbounds nuw [24 x i8], ptr %.val.i234.i, i64 %.sroa.0.04.i.i.i237.i ; 2 uses
  %i.anx = add nuw nsw i64 %.sroa.0.04.i.i.i237.i, 1 ; 2 uses
  %.val.i.i.i238.i = load i64, ptr %i.anw, align 8, !range !10, !alias.scope !3304, !noalias !3303, !noundef !9 ; 2 uses
  %i.any = icmp eq i64 %.val.i.i.i238.i, 0
  br i1 %i.any, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i, label %bb.lu

bb.lu:                                            ; preds = %.lr.ph.i.i.i236.i
  %i.anz = getelementptr i8, ptr %i.anw, i64 8
  %.val3.i.i.i239.i = load ptr, ptr %i.anz, align 8, !alias.scope !3304, !noalias !3303, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i239.i, i64 noundef %.val.i.i.i238.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3305
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i: ; preds = %bb.lu, %.lr.ph.i.i.i236.i
  %i.aoa = icmp eq i64 %i.anx, %.val1.i235.i
  br i1 %i.aoa, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i, label %.lr.ph.i.i.i236.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i
  %.val2.i242.i = load i64, ptr %i.az, align 8, !range !10, !alias.scope !3303, !noalias !3195, !noundef !9 ; 2 uses
  %i.aob = icmp eq i64 %.val2.i242.i, 0
  br i1 %i.aob, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i, label %bb.lv

bb.lv:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i
  %i.aoc = mul nuw i64 %.val2.i242.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i234.i, i64 noundef %i.aoc, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3303
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i: ; preds = %bb.lv, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i
  store i64 %.sroa.0306.0.i, ptr %i.az, align 8, !noalias !3195
  store ptr %.sroa.5308.0.i, ptr %i.xd, align 8, !noalias !3195
  store i64 %.sroa.6311.0.i, ptr %i.xe, align 8, !noalias !3195
  br label %bb.lj

.lr.ph474.i:                                      ; preds = %bb.lj, %bb.lz
  %.sroa.049.0472.i = phi ptr [ %i.aot, %bb.lz ], [ %i.alp, %bb.lj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3195
  %i.aod = getelementptr inbounds nuw i8, ptr %.sroa.049.0472.i, i64 8
  %i.aoe = load ptr, ptr %i.aod, align 8, !nonnull !9, !noundef !9
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.049.0472.i, i64 16
  %i.aog = load i64, ptr %i.aof, align 8, !noundef !9
  call fastcc void @_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB2_12FileHandling9tail_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(80) %i.uv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aoe, i64 noundef %i.aog, i1 noundef zeroext %i.wt) #33
  %i.aoh = load ptr, ptr %i.ac, align 8, !noalias !3195, !noundef !9 ; 2 uses
  %.not107.i = icmp eq ptr %i.aoh, null
  br i1 %.not107.i, label %bb.lz, label %bb.ly

._crit_edge475.i:                                 ; preds = %bb.lz
  %.val.i244.pre.i = load ptr, ptr %i.xd, align 8, !alias.scope !3306, !noalias !3195 ; 3 uses
  %.val1.i245.pre.i = load i64, ptr %i.xe, align 8, !alias.scope !3306, !noalias !3195 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  call void @llvm.experimental.noalias.scope.decl(metadata !3307)
  %i.aoi = icmp eq i64 %.val1.i245.pre.i, 0
  br i1 %i.aoi, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i, label %.lr.ph.i.i.i246.i

.lr.ph.i.i.i246.i:                                ; preds = %._crit_edge475.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i
  %.sroa.0.04.i.i.i247.i = phi i64 [ %i.aok, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i ], [ 0, %._crit_edge475.i ] ; 2 uses
  %i.aoj = getelementptr inbounds nuw [24 x i8], ptr %.val.i244.pre.i, i64 %.sroa.0.04.i.i.i247.i ; 2 uses
  %i.aok = add nuw nsw i64 %.sroa.0.04.i.i.i247.i, 1 ; 2 uses
  %.val.i.i.i248.i = load i64, ptr %i.aoj, align 8, !range !10, !alias.scope !3307, !noalias !3306, !noundef !9 ; 2 uses
  %i.aol = icmp eq i64 %.val.i.i.i248.i, 0
  br i1 %i.aol, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i, label %bb.lw

bb.lw:                                            ; preds = %.lr.ph.i.i.i246.i
  %i.aom = getelementptr i8, ptr %i.aoj, i64 8
  %.val3.i.i.i249.i = load ptr, ptr %i.aom, align 8, !alias.scope !3307, !noalias !3306, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i249.i, i64 noundef %.val.i.i.i248.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3308
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i: ; preds = %bb.lw, %.lr.ph.i.i.i246.i
  %i.aon = icmp eq i64 %i.aok, %.val1.i245.pre.i
  br i1 %i.aon, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i, label %.lr.ph.i.i.i246.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i, %bb.lj, %._crit_edge475.i
  %.val.i244613.i = phi ptr [ %i.alp, %bb.lj ], [ %.val.i244.pre.i, %._crit_edge475.i ], [ %.val.i244.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i ]
  %.val2.i252.i = load i64, ptr %i.az, align 8, !range !10, !alias.scope !3306, !noalias !3195, !noundef !9 ; 2 uses
  %i.aoo = icmp eq i64 %.val2.i252.i, 0
  br i1 %i.aoo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit253.i, label %bb.lx

bb.lx:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i
  %i.aop = mul nuw i64 %.val2.i252.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i244613.i, i64 noundef %i.aop, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3306
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit253.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit253.i: ; preds = %bb.lx, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3195
  %i.aoq = load i64, ptr %i.ba, align 8, !range !37, !noalias !3195, !noundef !9 ; 2 uses
  %switch126.i = icmp ugt i64 %i.aoq, -3
  br i1 %switch126.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit274.i, label %bb.mj

bb.ly:                                            ; preds = %.lr.ph474.i
  %i.aor = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8, !noalias !3195, !nonnull !9, !align !13, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3195
  br label %bb.jv

bb.lz:                                            ; preds = %.lr.ph474.i
  %i.aot = getelementptr inbounds nuw i8, ptr %.sroa.049.0472.i, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3195
  %i.aou = icmp eq ptr %i.aot, %i.alq
  br i1 %i.aou, label %._crit_edge475.i, label %.lr.ph474.i

bb.ma:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  switch i64 %i.aie, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i [
    i64 0, label %bb.mb
    i64 1, label %bb.md
  ]

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  %.val.i.i257.i = load i64, ptr %.sroa.4.0..sroa_idx.i188.i, align 8, !range !10, !alias.scope !3311, !noalias !3195, !noundef !9 ; 2 uses
  %i.aov = icmp eq i64 %.val.i.i257.i, 0
  br i1 %i.aov, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %.val1.i.i258.i = load ptr, ptr %i.xy, align 8, !alias.scope !3311, !noalias !3195, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i258.i, i64 noundef %.val.i.i257.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3311
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i

bb.md:                                            ; preds = %bb.ma
  call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  %.val.i1.i254.i = load ptr, ptr %.sroa.4.0..sroa_idx.i188.i, align 8, !alias.scope !3313, !noalias !3195, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3314
  %i.aow = ptrtoint ptr %.val.i1.i254.i to i64    ; 2 uses
  %i.aox = and i64 %i.aow, 3
  switch i64 %i.aox, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i
    i64 3, label %bb.me
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i
    i64 1, label %bb.mf
  ], !prof !22

bb.me:                                            ; preds = %bb.md
  %i.aoy = icmp ult ptr %.val.i1.i254.i, inttoptr (i64 188978561024 to ptr)
  %i.aoz = and i64 %i.aow, 1095216660480
  %i.apa = icmp ne i64 %i.aoz, 1095216660480
  call void @llvm.assume(i1 %i.aoy)
  call void @llvm.assume(i1 %i.apa)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i

bb.mf:                                            ; preds = %bb.md
  %i.apb = getelementptr i8, ptr %.val.i1.i254.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.apb) ]
  %i.apc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.apb, ptr %i.apc, align 8, !alias.scope !3315, !noalias !3314
  store i8 3, ptr %i.c, align 8, !alias.scope !3315, !noalias !3314
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.apc) #33, !noalias !3313
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i: ; preds = %bb.mf, %bb.me, %bb.md, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3314
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i, %bb.mc, %bb.mb, %bb.ma
  br i1 %.sroa.055.1.i, label %bb.mg, label %_RNvNtNtCsgZlHlzpN0xi_7uu_tail6follow5watch6follow.exit.thread553

bb.mg:                                            ; preds = %bb.mv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i
  %.sroa.13.6.i = phi ptr [ %.sroa.13.4.i, %bb.mv ], [ %.sroa.13.3.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i ] ; 2 uses
  %.sroa.0.6.i = phi ptr [ %.sroa.0.4.i, %bb.mv ], [ %.sroa.0.3.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3316)
end_hunk_0
