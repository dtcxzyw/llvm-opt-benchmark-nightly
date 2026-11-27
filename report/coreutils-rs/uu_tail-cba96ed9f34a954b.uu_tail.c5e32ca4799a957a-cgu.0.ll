Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvCsgZlHlzpN0xi_7uu_tail7uu_tail:bb.a
  br i1 %i.akh, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3214
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajj, i64 noundef 7) #36
  %i.aki = load i8, ptr %i.as, align 8, !range !12, !noalias !3214, !noundef !9
  %i.akj = trunc nuw i8 %i.aki to i1
  br i1 %i.akj, label %bb.kt, label %bb.ku

bb.ks:                                            ; preds = %bb.kq
  %i.akk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.akl = load i64, ptr %i.akk, align 8, !noalias !3214, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 7, i64 noundef %i.akl) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3214
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit222.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit222.i: ; preds = %bb.ku, %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !3214
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aq) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3214
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajj, i64 noundef 7, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3292
  br label %bb.kv

bb.kt:                                            ; preds = %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3214
  store i64 7, ptr %i.ar, align 8, !noalias !3214
  %.sroa.5304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ajj, ptr %.sroa.5304.0..sroa_idx.i, align 8, !noalias !3214
  %.sroa.8305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 7, ptr %.sroa.8305.0..sroa_idx.i, align 8, !noalias !3214
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !3214
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aq) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3214
  br label %bb.kv

bb.ku:                                            ; preds = %bb.kr
  %i.akm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.akn = load double, ptr %i.akm, align 8, !noalias !3214, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 7, double noundef %i.akn) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3214
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit222.i

bb.kv:                                            ; preds = %bb.kt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit222.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3214
  %i.ako = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #38, !noalias !3293 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ako, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %.sroa.4333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ako, i64 24
  store i32 1, ptr %.sroa.4333.0..sroa_idx.i, align 8
  br label %bb.jy

bb.kw:                                            ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3214
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aio, i64 noundef %i.aiq) #36
  %i.akp = load i8, ptr %i.am, align 8, !range !12, !noalias !3214, !noundef !9
  %i.akq = trunc nuw i8 %i.akp to i1
  br i1 %i.akq, label %bb.la, label %bb.lb

bb.kx:                                            ; preds = %bb.kb
  %i.akr = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aks = load i64, ptr %i.akr, align 8, !noalias !3214, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5, i64 noundef %i.aks) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3214
  br label %bb.ky

bb.ky:                                            ; preds = %bb.lb, %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !3214
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @229, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3214
  %.val.i223.i = load i64, ptr %i.al, align 8, !range !10, !noalias !3214, !noundef !9 ; 2 uses
  %i.akt = icmp eq i64 %.val.i223.i, 0
  br i1 %i.akt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit225.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aio, i64 noundef %.val.i223.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3294
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit225.i

bb.la:                                            ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3214
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !3214
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @229, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3214
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit225.i

bb.lb:                                            ; preds = %bb.kw
  %i.aku = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.akv = load double, ptr %i.aku, align 8, !noalias !3214, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5, double noundef %i.akv) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3214
  br label %bb.ky

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit225.i: ; preds = %bb.la, %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3214
  %i.akw = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #38, !noalias !3295 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akw, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %.sroa.4336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  store i32 1, ptr %.sroa.4336.0..sroa_idx.i, align 8
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error5ErrorECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ap) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3214
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3214
  br label %_RNvNtNtCsgZlHlzpN0xi_7uu_tail6follow5watch6follow.exit.thread553

bb.lc:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3214
  store i8 1, ptr %i.ai, align 1, !noalias !3214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3214
  store i64 0, ptr %i.ah, align 8, !noalias !3214
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.475.0..sroa_idx.i, align 8, !noalias !3214
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.576.0..sroa_idx.i, align 8, !noalias !3214
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc16RecvTimeoutErrorNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %i.ai) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3214
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8, !noalias !3214, !nonnull !9, !noundef !9 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ala = load i64, ptr %i.akz, align 8, !noalias !3214, !noundef !9 ; 2 uses
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aky, i64 noundef %i.ala) #38
  %i.alb = load i8, ptr %i.ag, align 8, !range !12, !noalias !3214, !noundef !9
  %i.alc = trunc nuw i8 %i.alb to i1
  br i1 %i.alc, label %bb.mp, label %bb.mq

bb.ld:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3214
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals24ensure_stdout_not_broken(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aj) #33
  %i.ald = load i8, ptr %i.aj, align 8, !range !12, !noalias !3214, !noundef !9 ; 2 uses
  %i.ale = trunc nuw i8 %i.ald to i1
  %i.alf = load i8, ptr %i.xt, align 1, !range !12, !noalias !3214
  %i.alg = trunc nuw i8 %i.alf to i1
  %or.cond5.i = select i1 %i.ale, i1 true, i1 %i.alg
  br i1 %or.cond5.i, label %bb.le, label %bb.li

bb.le:                                            ; preds = %bb.ld
  %.val151.i = load ptr, ptr %i.xu, align 8, !noalias !3214 ; 4 uses
  %i.alh = icmp eq i8 %i.ald, 0
  br i1 %i.alh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val151.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3296
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
  store ptr %i.aln, ptr %i.xv, align 8, !alias.scope !3297, !noalias !3296
  store i8 3, ptr %i.e, align 8, !alias.scope !3297, !noalias !3296
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xv) #33, !noalias !3298
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i: ; preds = %bb.lh, %bb.lg, %bb.lf, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3296
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i226.i, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3214
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219.i

bb.li:                                            ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3214
  br label %bb.jy

bb.lj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219._crit_edge.i
  %i.alo = phi i64 [ %.pre558.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219._crit_edge.i ], [ %.sroa.6311.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i ] ; 2 uses
  %i.alp = phi ptr [ %.pre557.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219._crit_edge.i ], [ %.sroa.5308.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i ] ; 3 uses
  %.idx476.i = mul nuw nsw i64 %i.alo, 24
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 %.idx476.i
  %i.alr = icmp eq i64 %i.alo, 0
  br i1 %i.alr, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i, label %.lr.ph474.i

bb.lk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit219.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  %i.als = load ptr, ptr %i.uw, align 8, !alias.scope !3301, !nonnull !9, !noundef !9 ; 4 uses
  %.val3.i.i.i228.i = load <16 x i8>, ptr %i.als, align 16, !noalias !3302
  %i.alt = load i64, ptr %i.ux, align 8, !alias.scope !3301, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3303
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
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.aly, align 16, !noalias !3304
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
  %.val.i.i229.i = load ptr, ptr %i.amk, align 8, !noalias !3305, !nonnull !9, !noundef !9
  %i.aml = getelementptr i8, ptr %i.ami, i64 -224
  %.val2.i.i.i174 = load i64, ptr %i.aml, align 8, !noalias !3305, !noundef !9 ; 7 uses
  %i.amm = icmp eq i64 %.val2.i.i.i174, 0
  br i1 %i.amm, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i, label %bb.lm

bb.lm:                                            ; preds = %._crit_edge18.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3306
  %i.amn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i174, i64 noundef range(i64 1, 9) 1) #33, !noalias !3306 ; 3 uses
  %i.amo = icmp eq ptr %i.amn, null
  br i1 %i.amo, label %bb.ln, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i

bb.ln:                                            ; preds = %bb.lm
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i174) #39, !noalias !3307
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i: ; preds = %bb.lm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amn, ptr nonnull readonly align 1 %.val.i.i229.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i174, i1 false), !noalias !3308
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
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3309
  %i.amr = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.amp, i64 noundef range(i64 1, 9) 8) #33, !noalias !3309 ; 2 uses
  %i.ams = icmp eq ptr %i.amr, null
  br i1 %i.ams, label %bb.lq, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i

bb.lq:                                            ; preds = %bb.lp, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.lp ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread21.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.amp) #39, !noalias !3310
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.lp, %bb.lo
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.lo ], [ %i.amr, %bb.lp ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.lo ], [ %..i.i.i, %bb.lp ] ; 3 uses
  %i.amt = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.amt)
  store i64 %.val2.i.i.i174, ptr %.sroa.10.0.i.i.i, align 8, !noalias !3310
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store ptr %.sroa.7.027.i.i, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !3310
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store i64 %.val2.i.i.i174, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !3310
  store i64 %.sroa.4.0.i.i.i, ptr %i.d, align 8, !noalias !3303
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i231.i, align 8, !noalias !3303
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !3303
  call void @llvm.experimental.noalias.scope.decl(metadata !3311)
  call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  %i.amu = icmp eq i64 %i.amj, 0
  br i1 %i.amu, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i, label %.lr.ph.i.i.i232.i

.lr.ph.i.i.i232.i:                                ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i, %bb.lt
  %i.amv = phi ptr [ %i.ans, %bb.lt ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ]
  %i.amw = phi i64 [ %i.anu, %bb.lt ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 6 uses
  %.lcssa30.i.i.i.i = phi ptr [ %.lcssa29.i.i.i.i, %bb.lt ], [ %.sroa.6315.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %i.amx = phi i16 [ %i.ang, %bb.lt ], [ %i.amg, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.val2126.i.i.i.i = phi i64 [ %i.anj, %bb.lt ], [ %i.amj, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.lcssa202425.i.i.i.i = phi ptr [ %.lcssa2023.i.i.i.i, %bb.lt ], [ %.sroa.011.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %i.amx, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i232.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.amy = phi ptr [ %i.anc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa30.i.i.i.i, %.lr.ph.i.i.i232.i ] ; 2 uses
  %i.amz = phi ptr [ %i.anb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa202425.i.i.i.i, %.lr.ph.i.i.i232.i ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.amy, align 16, !noalias !3313
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
  %.val.i.i.i.i.i175 = load ptr, ptr %i.ank, align 8, !noalias !3314, !nonnull !9, !noundef !9
  %i.anl = getelementptr i8, ptr %i.ani, i64 -224
  %.val2.i.i.i.i.i = load i64, ptr %i.anl, align 8, !noalias !3314, !noundef !9 ; 7 uses
  %i.anm = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.anm, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %._crit_edge18.i.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3315
  %i.ann = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #33, !noalias !3315 ; 3 uses
  %i.ano = icmp eq ptr %i.ann, null
  br i1 %i.ano, label %bb.ls, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i

bb.ls:                                            ; preds = %bb.lr
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i) #39, !noalias !3316
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i: ; preds = %bb.lr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ann, ptr nonnull readonly align 1 %.val.i.i.i.i.i175, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i1 false), !noalias !3317
  %.not.i.i2.i.i = icmp eq i64 %.val2.i.i.i.i.i, -1
  br i1 %.not.i.i2.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i
  %.sroa.7.018.i.i.i.i = phi ptr [ %i.ann, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %._crit_edge18.i.i.i.i.i.i.i.i ]
  %i.anp = icmp samesign ult i64 %i.amw, 384307168202282326
  call void @llvm.assume(i1 %i.anp)
  %i.anq = load i64, ptr %i.d, align 8, !range !10, !alias.scope !3318, !noalias !3303, !noundef !9
  %i.anr = icmp eq i64 %i.amw, %i.anq
  br i1 %i.anr, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i, label %bb.lt

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.amw, i64 noundef range(i64 1, 0) %.val2126.i.i.i.i, i64 noundef 8, i64 noundef 24) #33, !noalias !3319
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i231.i, align 8, !alias.scope !3318, !noalias !3303
  br label %bb.lt

bb.lt:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i
  %i.ans = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i ], [ %i.amv, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.thread12.i.i.i.i ] ; 2 uses
  %i.ant = getelementptr inbounds nuw [24 x i8], ptr %i.ans, i64 %i.amw ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.ant, align 8, !noalias !3320
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  store ptr %.sroa.7.018.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !3320
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ant, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !3320
  %i.anu = add nuw nsw i64 %i.amw, 1              ; 2 uses
  store i64 %i.anu, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3318, !noalias !3303
  %i.anv = icmp eq i64 %i.anj, 0
  br i1 %i.anv, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i, label %.lr.ph.i.i.i232.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i: ; preds = %bb.lt, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i
  %.sroa.6311.0.copyload313555.i = phi i64 [ %i.amw, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i.i.i ], [ %i.alt, %bb.lt ]
  %.sroa.0306.0.copyload307.pre.i = load i64, ptr %i.d, align 8, !noalias !3321
  %.sroa.5308.0.copyload310.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i231.i, align 8, !noalias !3321
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i, %bb.lk
  %.sroa.6311.0.i = phi i64 [ 0, %bb.lk ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i ], [ %.sroa.6311.0.copyload313555.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.sroa.5308.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.lk ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i ], [ %.sroa.5308.0.copyload310.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %.sroa.0306.0.i = phi i64 [ 0, %bb.lk ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map4KeysNtNtB1a_4path7PathBufNtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEENtNtNtB8_6traits8iterator8Iterator4nextB2k_.exit.i.i ], [ %.sroa.0306.0.copyload307.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtBV_11collections4hash3map4KeysBR_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE11spec_extendB3s_.exit.i.loopexit.i ], [ %.sroa.4.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3303
  call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  %.val.i234.i = load ptr, ptr %i.xd, align 8, !alias.scope !3322, !noalias !3214, !nonnull !9, !noundef !9 ; 2 uses
  %.val1.i235.i = load i64, ptr %i.xe, align 8, !alias.scope !3322, !noalias !3214, !noundef !9 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  %i.anw = icmp eq i64 %.val1.i235.i, 0
  br i1 %i.anw, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i, label %.lr.ph.i.i.i236.i

.lr.ph.i.i.i236.i:                                ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i
  %.sroa.0.04.i.i.i237.i = phi i64 [ %i.any, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i ] ; 2 uses
  %i.anx = getelementptr inbounds nuw [24 x i8], ptr %.val.i234.i, i64 %.sroa.0.04.i.i.i237.i ; 2 uses
  %i.any = add nuw nsw i64 %.sroa.0.04.i.i.i237.i, 1 ; 2 uses
  %.val.i.i.i238.i = load i64, ptr %i.anx, align 8, !range !10, !alias.scope !3323, !noalias !3322, !noundef !9 ; 2 uses
  %i.anz = icmp eq i64 %.val.i.i.i238.i, 0
  br i1 %i.anz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i, label %bb.lu

bb.lu:                                            ; preds = %.lr.ph.i.i.i236.i
  %i.aoa = getelementptr i8, ptr %i.anx, i64 8
  %.val3.i.i.i239.i = load ptr, ptr %i.aoa, align 8, !alias.scope !3323, !noalias !3322, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i239.i, i64 noundef %.val.i.i.i238.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3324
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i: ; preds = %bb.lu, %.lr.ph.i.i.i236.i
  %i.aob = icmp eq i64 %i.any, %.val1.i235.i
  br i1 %i.aob, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i, label %.lr.ph.i.i.i236.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i240.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtB15_11collections4hash3map4KeysB11_NtNtNtCsgZlHlzpN0xi_7uu_tail6follow5files8PathDataEEE9from_iterB3N_.exit.i
  %.val2.i242.i = load i64, ptr %i.az, align 8, !range !10, !alias.scope !3322, !noalias !3214, !noundef !9 ; 2 uses
  %i.aoc = icmp eq i64 %.val2.i242.i, 0
  br i1 %i.aoc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i, label %bb.lv

bb.lv:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i
  %i.aod = mul nuw i64 %.val2.i242.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i234.i, i64 noundef %i.aod, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3322
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit243.i: ; preds = %bb.lv, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i241.i
  store i64 %.sroa.0306.0.i, ptr %i.az, align 8, !noalias !3214
  store ptr %.sroa.5308.0.i, ptr %i.xd, align 8, !noalias !3214
  store i64 %.sroa.6311.0.i, ptr %i.xe, align 8, !noalias !3214
  br label %bb.lj

.lr.ph474.i:                                      ; preds = %bb.lj, %bb.lz
  %.sroa.049.0472.i = phi ptr [ %i.aou, %bb.lz ], [ %i.alp, %bb.lj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3214
  %i.aoe = getelementptr inbounds nuw i8, ptr %.sroa.049.0472.i, i64 8
  %i.aof = load ptr, ptr %i.aoe, align 8, !nonnull !9, !noundef !9
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.049.0472.i, i64 16
  %i.aoh = load i64, ptr %i.aog, align 8, !noundef !9
  call fastcc void @_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB2_12FileHandling9tail_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(80) %i.uv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aof, i64 noundef %i.aoh, i1 noundef zeroext %i.wt) #33
  %i.aoi = load ptr, ptr %i.ac, align 8, !noalias !3214, !noundef !9 ; 2 uses
  %.not107.i = icmp eq ptr %i.aoi, null
  br i1 %.not107.i, label %bb.lz, label %bb.ly

._crit_edge475.i:                                 ; preds = %bb.lz
  %.val.i244.pre.i = load ptr, ptr %i.xd, align 8, !alias.scope !3325, !noalias !3214 ; 3 uses
  %.val1.i245.pre.i = load i64, ptr %i.xe, align 8, !alias.scope !3325, !noalias !3214 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3325)
  call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  %i.aoj = icmp eq i64 %.val1.i245.pre.i, 0
  br i1 %i.aoj, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i, label %.lr.ph.i.i.i246.i

.lr.ph.i.i.i246.i:                                ; preds = %._crit_edge475.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i
  %.sroa.0.04.i.i.i247.i = phi i64 [ %i.aol, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i ], [ 0, %._crit_edge475.i ] ; 2 uses
  %i.aok = getelementptr inbounds nuw [24 x i8], ptr %.val.i244.pre.i, i64 %.sroa.0.04.i.i.i247.i ; 2 uses
  %i.aol = add nuw nsw i64 %.sroa.0.04.i.i.i247.i, 1 ; 2 uses
  %.val.i.i.i248.i = load i64, ptr %i.aok, align 8, !range !10, !alias.scope !3326, !noalias !3325, !noundef !9 ; 2 uses
  %i.aom = icmp eq i64 %.val.i.i.i248.i, 0
  br i1 %i.aom, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i, label %bb.lw

bb.lw:                                            ; preds = %.lr.ph.i.i.i246.i
  %i.aon = getelementptr i8, ptr %i.aok, i64 8
  %.val3.i.i.i249.i = load ptr, ptr %i.aon, align 8, !alias.scope !3326, !noalias !3325, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i249.i, i64 noundef %.val.i.i.i248.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3327
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i: ; preds = %bb.lw, %.lr.ph.i.i.i246.i
  %i.aoo = icmp eq i64 %i.aol, %.val1.i245.pre.i
  br i1 %i.aoo, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i, label %.lr.ph.i.i.i246.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i, %bb.lj, %._crit_edge475.i
  %.val.i244613.i = phi ptr [ %i.alp, %bb.lj ], [ %.val.i244.pre.i, %._crit_edge475.i ], [ %.val.i244.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i.i250.i ]
  %.val2.i252.i = load i64, ptr %i.az, align 8, !range !10, !alias.scope !3325, !noalias !3214, !noundef !9 ; 2 uses
  %i.aop = icmp eq i64 %.val2.i252.i, 0
  br i1 %i.aop, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit253.i, label %bb.lx

bb.lx:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i
  %i.aoq = mul nuw i64 %.val2.i252.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i244613.i, i64 noundef %i.aoq, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !3325
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit253.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit253.i: ; preds = %bb.lx, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgZlHlzpN0xi_7uu_tail.exit.i251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3214
  %i.aor = load i64, ptr %i.ba, align 8, !range !37, !noalias !3214, !noundef !9 ; 2 uses
  %switch126.i = icmp ugt i64 %i.aor, -3
  br i1 %switch126.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit274.i, label %bb.mj

bb.ly:                                            ; preds = %.lr.ph474.i
  %i.aos = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aot = load ptr, ptr %i.aos, align 8, !noalias !3214, !nonnull !9, !align !13, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3214
  br label %bb.jv

bb.lz:                                            ; preds = %.lr.ph474.i
  %i.aou = getelementptr inbounds nuw i8, ptr %.sroa.049.0472.i, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3214
  %i.aov = icmp eq ptr %i.aou, %i.alq
  br i1 %i.aov, label %._crit_edge475.i, label %.lr.ph474.i

bb.ma:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  switch i64 %i.aie, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i [
    i64 0, label %bb.mb
    i64 1, label %bb.md
  ]

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  %.val.i.i257.i = load i64, ptr %.sroa.4.0..sroa_idx.i188.i, align 8, !range !10, !alias.scope !3330, !noalias !3214, !noundef !9 ; 2 uses
  %i.aow = icmp eq i64 %.val.i.i257.i, 0
  br i1 %i.aow, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %.val1.i.i258.i = load ptr, ptr %i.xy, align 8, !alias.scope !3330, !noalias !3214, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i258.i, i64 noundef %.val.i.i257.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3330
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error9ErrorKindECsgZlHlzpN0xi_7uu_tail.exit.i

bb.md:                                            ; preds = %bb.ma
  call void @llvm.experimental.noalias.scope.decl(metadata !3331)
  %.val.i1.i254.i = load ptr, ptr %.sroa.4.0..sroa_idx.i188.i, align 8, !alias.scope !3332, !noalias !3214, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3333
  %i.aox = ptrtoint ptr %.val.i1.i254.i to i64    ; 2 uses
  %i.aoy = and i64 %i.aox, 3
  switch i64 %i.aoy, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i
    i64 3, label %bb.me
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i255.i
    i64 1, label %bb.mf
  ], !prof !22

bb.me:                                            ; preds = %bb.md
  %i.aoz = icmp ult ptr %.val.i1.i254.i, inttoptr (i64 188978561024 to ptr)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB5_8Settings4from:bb.a
  %i.aar = zext i8 %i.aaq to i32
  %i.aas = add nsw i32 %i.aar, -48                ; 2 uses
  %i.aat = icmp ult i32 %i.aas, 10
  br i1 %i.aat, label %bb.ge, label %.loopexit518

bb.ge:                                            ; preds = %.lr.ph141.i212
  %i.aau = mul i64 %.sroa.084.2138.i215, 10
  %i.aav = add nsw i64 %.sroa.26.2139.i214, -1    ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i213, i64 1
  %i.aax = zext nneg i32 %i.aas to i64
  %i.aay = sub i64 %i.aau, %i.aax                 ; 2 uses
  %.not103.i216 = icmp eq i64 %i.aav, 0
  br i1 %.not103.i216, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit234, label %.lr.ph141.i212

bb.gf:                                            ; preds = %bb.fz, %bb.fy
  %.sroa.26.0.i217 = phi i64 [ %i.zz, %bb.fz ], [ %.sroa.8339.0.copyload341, %bb.fy ] ; 4 uses
  %.sroa.0.0.i218 = phi ptr [ %i.zy, %bb.fz ], [ %.sroa.5335.0.copyload337, %bb.fy ] ; 2 uses
  %i.aaz = icmp samesign ult i64 %.sroa.26.0.i217, 16
  br i1 %i.aaz, label %.preheader.i225, label %.preheader111.i219

.preheader.i225:                                  ; preds = %bb.gf
  %.not105146.i226 = icmp eq i64 %.sroa.26.0.i217, 0
  br i1 %.not105146.i226, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit234, label %.lr.ph150.i227

.preheader111.i219:                               ; preds = %bb.gf, %bb.gi
  %.sroa.0.3145.i220 = phi ptr [ %i.aba, %bb.gi ], [ %.sroa.0.0.i218, %bb.gf ] ; 2 uses
  %.sroa.26.3144.i221 = phi i64 [ %i.abb, %bb.gi ], [ %.sroa.26.0.i217, %bb.gf ]
  %.sroa.084.3143.i222 = phi i64 [ %i.abm, %bb.gi ], [ 0, %bb.gf ]
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i220, i64 1
  %i.abb = add nsw i64 %.sroa.26.3144.i221, -1    ; 2 uses
  %i.abc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i222, i64 10) ; 2 uses
  %i.abd = extractvalue { i64, i1 } %i.abc, 0
  %i.abe = extractvalue { i64, i1 } %i.abc, 1
  br i1 %i.abe, label %.loopexit518, label %bb.gg, !prof !17

bb.gg:                                            ; preds = %.preheader111.i219
  %i.abf = load i8, ptr %.sroa.0.3145.i220, align 1, !alias.scope !4910, !noundef !9
  %i.abg = zext i8 %i.abf to i32
  %i.abh = add nsw i32 %i.abg, -48                ; 2 uses
  %i.abi = icmp ult i32 %i.abh, 10
  br i1 %i.abi, label %bb.gh, label %.loopexit518

bb.gh:                                            ; preds = %bb.gg
  %i.abj = zext nneg i32 %i.abh to i64
  %i.abk = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.abd, i64 %i.abj) ; 2 uses
  %i.abl = extractvalue { i64, i1 } %i.abk, 1
  br i1 %i.abl, label %.loopexit518, label %bb.gi, !prof !17

bb.gi:                                            ; preds = %bb.gh
  %i.abm = extractvalue { i64, i1 } %i.abk, 0     ; 2 uses
  %.not104.i224 = icmp eq i64 %i.abb, 0
  br i1 %.not104.i224, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit234, label %.preheader111.i219

.lr.ph150.i227:                                   ; preds = %.preheader.i225, %bb.gj
  %.sroa.0.4149.i228 = phi ptr [ %i.abt, %bb.gj ], [ %.sroa.0.0.i218, %.preheader.i225 ] ; 2 uses
  %.sroa.26.4148.i229 = phi i64 [ %i.abs, %bb.gj ], [ %.sroa.26.0.i217, %.preheader.i225 ]
  %.sroa.084.4147.i230 = phi i64 [ %i.abv, %bb.gj ], [ 0, %.preheader.i225 ]
  %i.abn = load i8, ptr %.sroa.0.4149.i228, align 1, !alias.scope !4910, !noundef !9
  %i.abo = zext i8 %i.abn to i32
  %i.abp = add nsw i32 %i.abo, -48                ; 2 uses
  %i.abq = icmp ult i32 %i.abp, 10
  br i1 %i.abq, label %bb.gj, label %.loopexit518

bb.gj:                                            ; preds = %.lr.ph150.i227
  %i.abr = mul i64 %.sroa.084.4147.i230, 10
  %i.abs = add nsw i64 %.sroa.26.4148.i229, -1    ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i228, i64 1
  %i.abu = zext nneg i32 %i.abp to i64
  %i.abv = add i64 %i.abr, %i.abu                 ; 2 uses
  %.not105.i231 = icmp eq i64 %i.abs, 0
  br i1 %.not105.i231, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit234, label %.lr.ph150.i227

bb.gk:                                            ; preds = %bb.fu, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit151
  %.sroa.22.0 = phi i32 [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit151 ], [ %.sroa.675.0.extract.trunc, %bb.fu ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4913)
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !alias.scope !4914, !nonnull !9, !noundef !9 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abz = load i64, ptr %i.aby, align 8, !alias.scope !4914, !noundef !9 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.abz, 4
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.idx.i.i.i
  %i.acb = icmp eq i64 %i.abz, 0
  br i1 %i.acb, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.gk, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.acc, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.abx, %bb.gk ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.acd, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.gk ] ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.acd = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.ace = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.ace, align 8, !noalias !4915, !noundef !9
  %i.acf = icmp eq i64 %.val7.i.i.i, 5
  br i1 %i.acf, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !4915, !nonnull !9, !noundef !9 ; 2 uses
  %i.acg = load i32, ptr %.val.i.i.i, align 1
  %i.ach = xor i32 %i.acg, 1701603686
  %i.aci = getelementptr i8, ptr %.val.i.i.i, i64 4
  %i.acj = load i8, ptr %i.aci, align 1
  %i.ack = zext i8 %i.acj to i32
  %i.acl = xor i32 %i.ack, 115
  %i.acm = or i32 %i.ach, %i.acl
  %i.acn = icmp ne i32 %i.acm, 0
  %i.aco = zext i1 %i.acn to i32
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %bb.gl, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.acq = icmp eq ptr %i.acc, %i.aca
  br i1 %i.acq, label %.loopexit, label %.lr.ph.i.i.i

bb.gl:                                            ; preds = %.split.i.i.i
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.acs = load i64, ptr %i.acr, align 8, !alias.scope !4914, !noundef !9 ; 2 uses
  %i.act = icmp ult i64 %.sroa.8.016.i.i.i, %i.acs
  br i1 %i.act, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.acs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37, !noalias !4915
  unreachable

bb.gn:                                            ; preds = %bb.gl
  %i.acu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acv = load ptr, ptr %i.acu, align 8, !alias.scope !4914, !nonnull !9, !noundef !9
  %i.acw = getelementptr inbounds nuw [104 x i8], ptr %i.acv, i64 %.sroa.8.016.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4916
  store i128 -49237559333878691962261109163680243548, ptr %i.k, align 16, !noalias !4916
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.acw, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.k) #33, !noalias !4916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4916
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.l, align 16, !noalias !4916 ; 3 uses
  %i.acx = icmp eq i128 %.sroa.013.0.copyload.i.i, -49237559333878691962261109163680243548
  br i1 %i.acx, label %select.unfold.i.i.i.i.i.preheader.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.acy = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.acz = trunc nuw i128 %i.acy to i64
  %i.ada = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.adb = inttoptr i64 %i.ada to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @155, ptr %i.j, align 8, !noalias !4917
  %i.adc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 5, ptr %i.adc, align 8, !noalias !4917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4917
  store i64 0, ptr %i.i, align 8, !noalias !4918
  %.sroa.10419.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.adb, ptr %.sroa.10419.8..sroa_idx, align 8, !noalias !4918
  %.sroa.13420.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.acz, ptr %.sroa.13420.8..sroa_idx, align 8, !noalias !4918
  %.sroa.16421.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 -5815876261132279644, ptr %.sroa.16421.8..sroa_idx, align 8, !noalias !4918
  %.sroa.16421.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 -2669173439883760220, ptr %.sroa.16421.8..sroa_idx.sroa_idx, align 8, !noalias !4918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4917
  store ptr %i.j, ptr %i.h, align 8, !noalias !4917
  %.sroa.42.0..sroa_idx.i238 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.42.0..sroa_idx.i238, align 8, !noalias !4917
  %i.add = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.add, align 8, !noalias !4917
  %.sroa.46.0..sroa_idx.i239 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i239, align 8, !noalias !4917
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !4917
  unreachable

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4916
  %i.ade = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.acw) #33, !noalias !4919
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acw, i64 56
  %i.adg = load ptr, ptr %i.adf, align 8, !noalias !4919, !nonnull !9, !noundef !9 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acw, i64 64
  %i.adi = load i64, ptr %i.adh, align 8, !noalias !4919, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %i.adi, 24
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4921
  %i.adk = icmp eq i64 %i.adi, 0
  br i1 %i.adk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit, label %.lr.ph.i250

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i250
  %i.adl = icmp eq ptr %i.adm, %i.adj
  br i1 %i.adl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %.sroa.44.0.copyload.i17.i12.i = phi ptr [ %i.adm, %select.unfold.i.i.i.i.i.i ], [ %i.adg, %select.unfold.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i17.i12.i, i64 24 ; 3 uses
  %i.adn = getelementptr i8, ptr %.sroa.44.0.copyload.i17.i12.i, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.adn, align 8, !noalias !4922, !noundef !9 ; 2 uses
  %i.ado = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.ado, label %select.unfold.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i: ; preds = %.lr.ph.i250
  %i.adp = getelementptr i8, ptr %.sroa.44.0.copyload.i17.i12.i, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.adp, align 8, !noalias !4922, !nonnull !9, !noundef !9 ; 3 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.adq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  %i.adr = call fastcc noundef nonnull align 8 ptr @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i.i.i.i.le.i) #33, !noalias !4923, !inline_history !4807
  %i.ads = add i64 %i.ade, -1                     ; 2 uses
  call fastcc void @_RINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5Input4fromRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEB7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adr) #33, !noalias !4921
  %.pr.i.i.i = load i64, ptr %i.f, align 8, !noalias !4921
  %.not.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit, label %bb.gp

bb.gp:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i
  %i.adt = call i64 @llvm.uadd.sat.i64(i64 %i.ads, i64 1) ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.adt, i64 4) ; 3 uses
  %i.adu = mul i64 %..i.i.i.i, 48                 ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.adt, 192153584101141162
  br i1 %or.cond.i.i.i.i.i, label %bb.gs, label %bb.gq, !prof !20

bb.gq:                                            ; preds = %bb.gp
  %i.adv = icmp eq i64 %i.adu, 0
  br i1 %i.adv, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4924
  %i.adw = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.adu, i64 noundef range(i64 1, 9) 8) #33, !noalias !4924 ; 2 uses
  %i.adx = icmp eq ptr %i.adw, null
  br i1 %i.adx, label %bb.gs, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i

bb.gs:                                            ; preds = %bb.gr, %bb.gp
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.gr ], [ 0, %bb.gp ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.adu) #39, !noalias !4921
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i: ; preds = %bb.gr, %bb.gq
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.gq ], [ %i.adw, %bb.gr ] ; 3 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.gq ], [ %..i.i.i.i, %bb.gr ] ; 2 uses
  %i.ady = icmp ule i64 %..i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.ady)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !4921
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.g, align 8, !noalias !4921
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4921
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4921
  call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4927
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gv, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i
  %.sroa.6376.0.copyload = phi ptr [ %i.aer, %bb.gv ], [ %.sroa.10.0.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i ] ; 2 uses
  %.sroa.9377.0.copyload = phi i64 [ %i.aet, %bb.gv ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i ] ; 6 uses
  %i.adz = phi i64 [ %i.aem, %bb.gv ], [ %i.ads, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i ]
  %i.aea = phi ptr [ %.lcssa3.i.i.i.i, %bb.gv ], [ %i.adq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i ] ; 2 uses
  %i.aeb = phi ptr [ %.lcssa.i.i.i.i, %bb.gv ], [ %i.adm, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i ] ; 3 uses
  %.val.i.i.i5.i.lcssa.i.i.i.i.pn = phi ptr [ %.val.i.i.i5.i.lcssa.i.i.i.i, %bb.gv ], [ %.val.i.i.i.i.i.le.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.i.i.i ]
  %.val.i.i.i6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i5.i.lcssa.i.i.i.i.pn, i64 32 ; 2 uses
  %i.aec = icmp eq ptr %.val.i.i.i6.i.i.i.i.i, %i.aea
  br i1 %i.aec, label %select.unfold.i.i.i.i.i.preheader.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i.i.i:          ; preds = %bb.gt
  %i.aed = icmp eq ptr %i.aeb, %i.adj
  br i1 %i.aed, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i, label %.lr.ph.i.i.i249

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i249
  %i.aee = icmp eq ptr %i.aeg, %i.adj
  br i1 %i.aee, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i, label %.lr.ph.i.i.i249

.lr.ph.i.i.i249:                                  ; preds = %select.unfold.i.i.i.i.i.preheader.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  %i.aef = phi ptr [ %i.aeg, %select.unfold.i.i.i.i.i.i.i.i ], [ %i.aeb, %select.unfold.i.i.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 24 ; 3 uses
  %i.aeh = getelementptr i8, ptr %i.aef, i64 16
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.aeh, align 8, !noalias !4928, !noundef !9 ; 2 uses
  %i.aei = icmp eq i64 %.val4.i.i.i.i.i.i.i.i, 0
  br i1 %i.aei, label %select.unfold.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.loopexit.i.i.loopexit.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.loopexit.i.i.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i249
  %i.aej = getelementptr i8, ptr %i.aef, i64 8
  %.val.i.i.i.i.i.le.i.i.i = load ptr, ptr %i.aej, align 8, !noalias !4928, !nonnull !9, !noundef !9 ; 2 uses
  %.idx.i.le.i.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i.i, 5
  %i.aek = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i.i.i, i64 %.idx.i.le.i.i.i
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i.i.i: ; preds = %bb.gt, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.loopexit.i.i.loopexit.i.i.i
  %.lcssa3.i.i.i.i = phi ptr [ %i.aea, %bb.gt ], [ %i.aek, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.loopexit.i.i.loopexit.i.i.i ]
  %.lcssa.i.i.i.i = phi ptr [ %i.aeb, %bb.gt ], [ %i.aeg, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.loopexit.i.i.loopexit.i.i.i ]
  %.val.i.i.i5.i.lcssa.i.i.i.i = phi ptr [ %.val.i.i.i6.i.i.i.i.i, %bb.gt ], [ %.val.i.i.i.i.i.le.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.loopexit.i.i.loopexit.i.i.i ] ; 2 uses
  %i.ael = call fastcc noundef nonnull align 8 ptr @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i.i5.i.lcssa.i.i.i.i) #33, !noalias !4929, !inline_history !4823
  %i.aem = add i64 %i.adz, -1                     ; 2 uses
  call fastcc void @_RINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5Input4fromRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEB7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ael) #33, !noalias !4930
  %.pr.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !4930
  %.not.i.i2.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -1
  br i1 %.not.i.i2.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i.i.i
  %i.aen = icmp samesign ult i64 %.sroa.9377.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.aen)
  %i.aeo = load i64, ptr %i.g, align 8, !range !10, !alias.scope !4931, !noalias !4921, !noundef !9
  %i.aep = icmp eq i64 %.sroa.9377.0.copyload, %i.aeo
  br i1 %i.aep, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputE7reserveBI_.exit.i.i.i.i.i, label %bb.gv

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputE7reserveBI_.exit.i.i.i.i.i: ; preds = %bb.gu
  %i.aeq = call i64 @llvm.uadd.sat.i64(i64 %i.aem, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.sroa.9377.0.copyload, i64 noundef range(i64 1, 0) %i.aeq, i64 noundef 8, i64 noundef 48) #33, !noalias !4932
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !4931, !noalias !4921
  br label %bb.gv

bb.gv:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputE7reserveBI_.exit.i.i.i.i.i, %bb.gu
  %i.aer = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputE7reserveBI_.exit.i.i.i.i.i ], [ %.sroa.6376.0.copyload, %bb.gu ] ; 2 uses
  %i.aes = getelementptr inbounds nuw [48 x i8], ptr %i.aer, i64 %.sroa.9377.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aes, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !4930
  %i.aet = add nuw nsw i64 %.sroa.9377.0.copyload, 1 ; 2 uses
  store i64 %i.aet, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !4931, !noalias !4921
  br label %bb.gt

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i.preheader.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4927
  %.sroa.0375.0.copyload = load i64, ptr %i.g, align 8, !noalias !4933
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit

.loopexit:                                        ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.gk
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4934
  %i.aeu = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4934 ; 4 uses
  %i.aev = icmp eq ptr %i.aeu, null
  br i1 %i.aev, label %bb.gw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread, !prof !17

bb.gw:                                            ; preds = %.loopexit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #39, !noalias !4934
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit: ; preds = %select.unfold.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i, %select.unfold.i.i.i.i.i.preheader.i
  %.sroa.9377.0 = phi i64 [ %.sroa.9377.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i.i.preheader.i ], [ 0, %select.unfold.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6376.0 = phi ptr [ %.sroa.6376.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i.i.preheader.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0375.0 = phi i64 [ %.sroa.0375.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_BT_BR_4fromRB3Q_EEE11spec_extendBV_.exit.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvMs_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB2Y_5Input4fromRB29_EENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i.i.preheader.i ], [ 0, %select.unfold.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4920
  %i.aew = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 7) #33
  br i1 %i.aew, label %bb.ia, label %bb.hz

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread: ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4934
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 17) #33, !noalias !4934
  %i.aex = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -1, ptr %i.aex, align 8, !alias.scope !4935, !noalias !4934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aeu, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !4934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4934
  %i.aey = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 7) #33
  br i1 %i.aey, label %bb.ia, label %.thread490

.loopexit518:                                     ; preds = %.lr.ph.i202, %bb.gc, %bb.gb, %.lr.ph141.i212, %.preheader111.i219, %bb.gg, %bb.gh, %.lr.ph150.i227, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit200, %bb.fx, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5335.0.copyload337, i64 noundef %.sroa.8339.0.copyload341) #36
  %i.aez = load i8, ptr %i.cb, align 8, !range !12, !noundef !9
  %i.afa = trunc nuw i8 %i.aez to i1
  br i1 %i.afa, label %bb.gz, label %bb.ha

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit234: ; preds = %bb.gd, %bb.ge, %bb.gi, %bb.gj, %.preheader.i225, %.preheader114.i210
  %.sroa.15346.0 = phi i64 [ %i.abv, %bb.gj ], [ %i.aay, %bb.ge ], [ %i.abm, %bb.gi ], [ 0, %.preheader.i225 ], [ 0, %.preheader114.i210 ], [ %i.aap, %bb.gd ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 3, i64 noundef %.sroa.15346.0) #33
  br label %bb.gx

bb.gx:                                            ; preds = %bb.ha, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %i.afb = icmp eq i64 %.sroa.0333.0.copyload334, 0
  br i1 %i.afb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit258, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5335.0.copyload337, i64 noundef %.sroa.0333.0.copyload334, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4936
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit258

bb.gz:                                            ; preds = %.loopexit518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store i64 %.sroa.0333.0.copyload334, ptr %i.ca, align 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %.sroa.5335.0.copyload337, ptr %.sroa.5335.0..sroa_idx, align 8
  %.sroa.8339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %.sroa.8339.0.copyload341, ptr %.sroa.8339.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ca) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit258

bb.ha:                                            ; preds = %.loopexit518
  %i.afc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.afd = load double, ptr %i.afc, align 8, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 3, double noundef %i.afd) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %bb.gx

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit258: ; preds = %bb.gy, %bb.gx, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4937
  %i.afe = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4937 ; 4 uses
  %i.aff = icmp eq ptr %i.afe, null
  br i1 %i.aff, label %bb.hb, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit259, !prof !17

bb.hb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit258
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39, !noalias !4937
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit259: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afe, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %.sroa.4412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afe, i64 24
  store i32 1, ptr %.sroa.4412.0..sroa_idx, align 8
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.afe, ptr %i.afg, align 8
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @112, ptr %i.afh, align 8
  store i64 -2, ptr %0, align 8
end_hunk_1
