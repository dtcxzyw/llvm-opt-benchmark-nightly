Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.03?download=true
inline.NumInlined: 2478
inline.NumDeleted: 770
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtB9_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2H_5token5CommaEEEEB25_NCNvB3i_15expand_variadics0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_:bb.a
  %.not.i2.i = icmp eq i64 %i.be, -2
  br i1 %.not.i2.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtB9_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2R_5token5CommaEEEENCNvB3s_15expand_variadics0_0EEINtB5_8FuseImplBY_E4nextB3u_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB12_5token5CommaEEEB1F_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6873)
  call void @llvm.experimental.noalias.scope.decl(metadata !6874)
  call void @llvm.experimental.noalias.scope.decl(metadata !6875)
  %.not.i.i.i.i.i = icmp eq i64 %i.be, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtB9_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2R_5token5CommaEEEENCNvB3s_15expand_variadics0_0EEINtB5_8FuseImplBY_E4nextB3u_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i64, ptr %i.af, align 8, !range !6876, !alias.scope !6877, !noundef !77
  %i.bg = add i64 %i.bf, -1                       ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %i.bg, 0
  %.sroa.8.i.sroa.0.0.copyload7.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6878 ; 3 uses
  %.sroa.8.i.sroa.5.0.copyload8.i.i.i = load i64, ptr %.sroa.8.i.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx.i.i.i, align 8, !alias.scope !6878 ; 6 uses
  br i1 %.not11.i.i.i.i.i, label %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.thread14.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6879
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef range(i64 0, 34937015291116576) %.sroa.8.i.sroa.5.0.copyload8.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 264), !noalias !6880
  %i.bh = load i64, ptr %i.y, align 8, !range !107, !noalias !6879, !noundef !77
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = load i64, ptr %i.ag, align 8, !range !128, !noalias !6879, !noundef !77 ; 6 uses
  br i1 %i.bi, label %bb.j, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i, !prof !126

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %i.ah, align 8, !noalias !6879
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bj, i64 %i.bk) #19, !noalias !6880
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bl = load ptr, ptr %i.ah, align 8, !noalias !6879, !nonnull !77, !noundef !77 ; 3 uses
  %i.bm = icmp ule i64 %.sroa.8.i.sroa.5.0.copyload8.i.i.i, %i.bj
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6879
  store i64 %i.bj, ptr %i.aa, align 8, !noalias !6879
  store ptr %i.bl, ptr %i.ai, align 8, !noalias !6879
  %i.bn = getelementptr inbounds nuw [264 x i8], ptr %.sroa.8.i.sroa.0.0.copyload7.i.i.i, i64 %.sroa.8.i.sroa.5.0.copyload8.i.i.i
  %i.bo = icmp eq i64 %i.bj, 0
  br i1 %i.bo, label %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i, %bb.l
  %.sroa.012.023.i.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.l ], [ %.sroa.8.i.sroa.0.0.copyload7.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i.i.i.i.i = phi i64 [ %i.br, %bb.l ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.021.i.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.l ], [ %i.bj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i ]
  %i.bp = add i64 %.sroa.10.021.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.012.023.i.i.i.i.i.i.i, %i.bn
  br i1 %i.bq, label %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6879
  invoke void @_RNvXsL_NtCshMFl0SviwmK_3syn10punctuatedINtB5_4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBQ_(ptr noalias noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %.sroa.012.023.i.i.i.i.i.i.i)
          to label %bb.l unwind label %bb.n, !noalias !6881

bb.l:                                             ; preds = %bb.k
  %i.br = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i.i.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i.i.i.i, i64 264
  %i.bt = getelementptr inbounds nuw [264 x i8], ptr %i.bl, i64 %.sroa.7.022.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.bt, ptr noundef nonnull align 8 dereferenceable(264) %i.z, i64 264, i1 false), !noalias !6881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6879
  %i.bu = icmp eq i64 %i.bp, 0
  br i1 %i.bu, label %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18, !noalias !6881
  unreachable

bb.n:                                             ; preds = %bb.k
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.7.022.i.i.i.i.i.i.i, ptr %i.bw, align 8, !noalias !6879
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1d_5token5CommaEEEB1Q_(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #17
          to label %common.resume.i unwind label %bb.m, !noalias !6881

_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.thread14.i.i.i.i: ; preds = %bb.h
  store i64 -1, ptr %1, align 8, !alias.scope !6877
  br label %bb.o

_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6879
  store i64 %i.bg, ptr %i.af, align 8, !alias.scope !6877
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.i.i.i.i, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.thread14.i.i.i.i
  %.sroa.8.i.sroa.0.0.i.i.i = phi ptr [ %.sroa.8.i.sroa.0.0.copyload7.i.i.i, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.thread14.i.i.i.i ], [ %i.bl, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.i.i.i.i ] ; 5 uses
  %.sroa.0.017.i.i.i.i = phi i64 [ %i.be, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.thread14.i.i.i.i ], [ %i.bj, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1G_5token5CommaEEENtNtNtB9_6traits8iterator8Iterator4nextB2j_.exit.i.i.i.i ] ; 2 uses
  %i.bx = load i64, ptr %i.aj, align 8, !alias.scope !6882, !noundef !77
  %i.by = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.by, ptr %i.aj, align 8, !alias.scope !6882
  %.val.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !6878 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6883
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.i.sroa.0.0.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6884
  store i64 0, ptr %i.x, align 8, !noalias !6884
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8, !noalias !6884
  store i64 0, ptr %i.am, align 8, !noalias !6884
  %i.bz = icmp ult i64 %.sroa.8.i.sroa.5.0.copyload8.i.i.i, 34937015291116576
  call void @llvm.assume(i1 %i.bz)
  %.idx.i.i.i.i = mul nuw nsw i64 %.sroa.8.i.sroa.5.0.copyload8.i.i.i, 264
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.8.i.sroa.0.0.i.i.i, i64 %.idx.i.i.i.i
  %i.cb = icmp sgt i64 %.sroa.0.017.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6884
  store ptr %.sroa.8.i.sroa.0.0.i.i.i, ptr %i.w, align 8, !noalias !6884
  store ptr %.sroa.8.i.sroa.0.0.i.i.i, ptr %.sroa.01.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %.sroa.0.017.i.i.i.i, ptr %.sroa.01.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  store ptr %i.ca, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  %i.cc = icmp eq i64 %.sroa.8.i.sroa.5.0.copyload8.i.i.i, 0
  br i1 %i.cc, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i._crit_edge.i.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.lr.ph.i.i.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.lr.ph.i.i.i.i: ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.i.i.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.i.i.i.i: ; preds = %bb.as, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.lr.ph.i.i.i.i
  %i.cf = phi ptr [ %.sroa.8.i.sroa.0.0.i.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.lr.ph.i.i.i.i ], [ %i.fk, %bb.as ] ; 33 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  call void @llvm.experimental.noalias.scope.decl(metadata !6886)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 264
  store ptr %i.cg, ptr %.sroa.01.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6887, !noalias !6884
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !6888 ; 3 uses
  %.not.i.i2.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -2
  br i1 %.not.i.i2.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i._crit_edge.i.i.i.i, label %bb.p

.critedge.i.i.i.i:                                ; preds = %bb.bd, %bb.aq, %bb.am
  %.pn185.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn185.pn49.i.i.i.i, %bb.bd ], [ %i.ez, %bb.am ], [ %i.fe, %bb.aq ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1E_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2e_5token5CommaEEEEB2R_.exit.i.i.i.i unwind label %bb.at, !noalias !6889

bb.p:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.9.16.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.11.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.11.16.copyload.i.i.i.i = load i64, ptr %.sroa.11.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.12.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.12.16.copyload.i.i.i.i = load i64, ptr %.sroa.12.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.13.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.13.16.copyload.i.i.i.i = load i64, ptr %.sroa.13.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.14.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.14.16.copyload.i.i.i.i = load i64, ptr %.sroa.14.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.15.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %.sroa.15.16.copyload.i.i.i.i = load i64, ptr %.sroa.15.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.16.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.sroa.16.16.copyload.i.i.i.i = load i64, ptr %.sroa.16.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.17.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.sroa.17.16.copyload.i.i.i.i = load i64, ptr %.sroa.17.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.18.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %.sroa.18.16.copyload.i.i.i.i = load i64, ptr %.sroa.18.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.19.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %.sroa.19.16.copyload.i.i.i.i = load i64, ptr %.sroa.19.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.20.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %.sroa.20.16.copyload.i.i.i.i = load i64, ptr %.sroa.20.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.21.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %.sroa.21.16.copyload.i.i.i.i = load i64, ptr %.sroa.21.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.22.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %.sroa.22.16.copyload.i.i.i.i = load i64, ptr %.sroa.22.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.23.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %.sroa.23.16.copyload.i.i.i.i = load i64, ptr %.sroa.23.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.24.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %.sroa.24.16.copyload.i.i.i.i = load i64, ptr %.sroa.24.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.25.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  %.sroa.25.16.copyload.i.i.i.i = load i64, ptr %.sroa.25.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.26.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  %.sroa.26.16.copyload.i.i.i.i = load i64, ptr %.sroa.26.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.27.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  %.sroa.27.16.copyload.i.i.i.i = load i64, ptr %.sroa.27.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.28.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %.sroa.28.16.copyload.i.i.i.i = load i64, ptr %.sroa.28.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.29.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  %.sroa.29.16.copyload.i.i.i.i = load i64, ptr %.sroa.29.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.30.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 168
  %.sroa.30.16.copyload.i.i.i.i = load i64, ptr %.sroa.30.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.31.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 176
  %.sroa.31.16.copyload.i.i.i.i = load i64, ptr %.sroa.31.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.32.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 184
  %.sroa.32.16.copyload.i.i.i.i = load i64, ptr %.sroa.32.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.33.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 192
  %.sroa.33.16.copyload.i.i.i.i = load i64, ptr %.sroa.33.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.34.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 200
  %.sroa.34.16.copyload.i.i.i.i = load i64, ptr %.sroa.34.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.35.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 208
  %.sroa.35.16.copyload.i.i.i.i = load i64, ptr %.sroa.35.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.36.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 216
  %.sroa.36.16.copyload.i.i.i.i = load i64, ptr %.sroa.36.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.37.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 224
  %.sroa.37.16.copyload.i.i.i.i = load i64, ptr %.sroa.37.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.38.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 232
  %.sroa.38.16.copyload.i.i.i.i = load i64, ptr %.sroa.38.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890 ; 2 uses
  %.sroa.39.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 240 ; 2 uses
  %.sroa.40.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 248
  %.sroa.39.16.copyload.i.i.i.i = load i64, ptr %.sroa.39.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890
  %i.ch = load <2 x i64>, ptr %.sroa.39.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890
  %i.ci = load <2 x i64>, ptr %.sroa.40.16..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !6890
  %i.cj = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6885, !noalias !6884, !noundef !77 ; 10 uses
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6885, !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6884
  %i.cl = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %i.cl, label %bb.s, label %bb.r

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i._crit_edge.i.i.i.i: ; preds = %bb.as, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.i.i.i.i, %bb.o
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1E_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtB9_7sources8repeat_n7RepeatNINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2R_5token5CommaEEEENCNvB3s_15expand_variadics0_0EEINtB5_8FuseImplBY_E4nextB3u_.exit.i unwind label %bb.q, !noalias !6889

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2e_5token5CommaEEEEB2R_.exit.i.i.i.i: ; preds = %bb.q, %.critedge.i.i.i.i
  %.pn185.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cm, %bb.q ], [ %.pn185.pn.pn.i.i.i.i, %.critedge.i.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1d_5token5CommaEEEB1Q_(ptr noalias noundef align 8 dereferenceable(24) %i.x) #17
          to label %common.resume.i unwind label %bb.at, !noalias !6889

bb.q:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i._crit_edge.i.i.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2e_5token5CommaEEEEB2R_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %storemerge112.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.r ], [ %.sroa.9.16.copyload.i.i.i.i, %bb.p ]
  %storemerge111.i.i.i.i = phi i64 [ %.sroa.9.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.11.16.copyload.i.i.i.i, %bb.p ]
  %storemerge110.i.i.i.i = phi i64 [ %.sroa.11.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.12.16.copyload.i.i.i.i, %bb.p ]
  %storemerge109.i.i.i.i = phi i64 [ %.sroa.12.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.13.16.copyload.i.i.i.i, %bb.p ]
  %storemerge108.i.i.i.i = phi i64 [ %.sroa.13.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.14.16.copyload.i.i.i.i, %bb.p ]
  %storemerge107.i.i.i.i = phi i64 [ %.sroa.14.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.15.16.copyload.i.i.i.i, %bb.p ]
  %storemerge106.i.i.i.i = phi i64 [ %.sroa.15.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.16.16.copyload.i.i.i.i, %bb.p ]
  %storemerge105.i.i.i.i = phi i64 [ %.sroa.16.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.17.16.copyload.i.i.i.i, %bb.p ]
  %storemerge104.i.i.i.i = phi i64 [ %.sroa.17.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.18.16.copyload.i.i.i.i, %bb.p ]
  %storemerge103.i.i.i.i = phi i64 [ %.sroa.18.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.19.16.copyload.i.i.i.i, %bb.p ]
  %storemerge102.i.i.i.i = phi i64 [ %.sroa.19.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.20.16.copyload.i.i.i.i, %bb.p ]
  %storemerge101.i.i.i.i = phi i64 [ %.sroa.20.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.21.16.copyload.i.i.i.i, %bb.p ]
  %storemerge100.i.i.i.i = phi i64 [ %.sroa.21.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.22.16.copyload.i.i.i.i, %bb.p ]
  %storemerge99.i.i.i.i = phi i64 [ %.sroa.22.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.23.16.copyload.i.i.i.i, %bb.p ]
  %storemerge98.i.i.i.i = phi i64 [ %.sroa.23.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.24.16.copyload.i.i.i.i, %bb.p ]
  %storemerge97.i.i.i.i = phi i64 [ %.sroa.24.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.25.16.copyload.i.i.i.i, %bb.p ]
  %storemerge96.i.i.i.i = phi i64 [ %.sroa.25.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.26.16.copyload.i.i.i.i, %bb.p ]
  %storemerge95.i.i.i.i = phi i64 [ %.sroa.26.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.27.16.copyload.i.i.i.i, %bb.p ]
  %storemerge94.i.i.i.i = phi i64 [ %.sroa.27.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.28.16.copyload.i.i.i.i, %bb.p ]
  %storemerge93.i.i.i.i = phi i64 [ %.sroa.28.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.29.16.copyload.i.i.i.i, %bb.p ]
  %storemerge92.i.i.i.i = phi i64 [ %.sroa.29.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.30.16.copyload.i.i.i.i, %bb.p ]
  %storemerge91.i.i.i.i = phi i64 [ %.sroa.30.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.31.16.copyload.i.i.i.i, %bb.p ]
  %storemerge90.i.i.i.i = phi i64 [ %.sroa.31.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.32.16.copyload.i.i.i.i, %bb.p ]
  %storemerge89.i.i.i.i = phi i64 [ %.sroa.32.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.33.16.copyload.i.i.i.i, %bb.p ]
  %storemerge88.i.i.i.i = phi i64 [ %.sroa.33.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.34.16.copyload.i.i.i.i, %bb.p ]
  %storemerge87.i.i.i.i = phi i64 [ %.sroa.34.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.35.16.copyload.i.i.i.i, %bb.p ]
  %storemerge86.i.i.i.i = phi i64 [ %.sroa.35.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.36.16.copyload.i.i.i.i, %bb.p ]
  %storemerge85.i.i.i.i = phi i64 [ %.sroa.36.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.37.16.copyload.i.i.i.i, %bb.p ]
  %storemerge84.i.i.i.i = phi i64 [ %.sroa.37.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.38.16.copyload.i.i.i.i, %bb.p ]
  %storemerge83.i.i.i.i = phi i64 [ %.sroa.38.16.copyload.i.i.i.i, %bb.r ], [ %.sroa.39.16.copyload.i.i.i.i, %bb.p ]
  %i.cn = phi <2 x i64> [ %i.ch, %bb.r ], [ %i.ci, %bb.p ]
  store i64 %storemerge112.i.i.i.i, ptr %i.v, align 8, !noalias !6884
  store i64 %storemerge111.i.i.i.i, ptr %.sroa.633.0..sroa_idx34.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge110.i.i.i.i, ptr %.sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge109.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge108.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge107.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge106.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge105.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge104.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge103.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge102.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge101.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge100.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge99.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge98.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !6884
  store i64 %storemerge97.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..sroa.633.0..sroa_idx34.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_id, align 8, !noalias !6884
  store i64 %storemerge96.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.0..sroa.633.sroa.6.0..s81, align 8, !noalias !6884
  store i64 %storemerge95.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.86, align 8, !noalias !6884
  store i64 %storemerge94.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sro91, align 8, !noalias !6884
  store i64 %storemerge93.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.s96, align 8, !noalias !6884
  store i64 %storemerge92.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.101, align 8, !noalias !6884
  store i64 %storemerge91.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..106, align 8, !noalias !6884
  store i64 %storemerge90.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sro111, align 8, !noalias !6884
  store i64 %storemerge89.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.116, align 8, !noalias !6884
  store i64 %storemerge88.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.s121, align 8, !noalias !6884
  store i64 %storemerge87.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.s126, align 8, !noalias !6884
  store i64 %storemerge86.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sro131, align 8, !noalias !6884
  store i64 %storemerge85.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6136, align 8, !noalias !6884
  store i64 %storemerge84.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6141, align 8, !noalias !6884
  store i64 %storemerge83.i.i.i.i, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6146, align 8, !noalias !6884
  store <2 x i64> %i.cn, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6151, align 8, !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6884
  store ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6141, ptr %i.t, align 8, !noalias !6884
  store i64 %i.by, ptr %i.s, align 8, !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6884
  store ptr %i.s, ptr %i.r, align 8, !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6884
  store ptr %i.t, ptr %i.o, align 8, !noalias !6884
  store ptr @_RNvXs7_NtCsa66IwKi6YE3_5quote9___privateINtB5_20IdentFragmentAdapterRNtCsf5uYjtxkodL_11proc_macro25IdentENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsluMP4ekZjHw_14diesel_derives, ptr %.sroa.4162.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  store ptr %i.r, ptr %i.an, align 8, !noalias !6884
  store ptr @_RNvXs7_NtCsa66IwKi6YE3_5quote9___privateINtB5_20IdentFragmentAdapterRjENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsluMP4ekZjHw_14diesel_derives, ptr %.sroa.4166.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @0, ptr noundef nonnull %i.o)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i unwind label %.thread53.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

.thread53.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i.i.i, %bb.v, %bb.s, %bb.ba, %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6884
  %i.co = load ptr, ptr %i.ao, align 8, !noalias !6884, !nonnull !77, !noundef !77
  %i.cp = load i64, ptr %i.ap, align 8, !noalias !6884, !noundef !77
  %i.cq = invoke { i32, i32 } @_RNvXs0_NtCsa66IwKi6YE3_5quote14ident_fragmentNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_13IdentFragment4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6141)
          to label %bb.u unwind label %bb.t, !noalias !6889 ; 2 uses

bb.t:                                             ; preds = %bb.u, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread.i.i.i.i unwind label %bb.at, !noalias !6889

bb.u:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i
  %i.cs = extractvalue { i32, i32 } %i.cq, 0      ; 2 uses
  %i.ct = extractvalue { i32, i32 } %i.cq, 1
  %i.cu = trunc i32 %i.cs to i1                   ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.cu, i32 %i.ct, i32 undef
  %spec.select190.i.i.i.i = select i1 %i.cu, i32 %i.cs, i32 0
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private8mk_ident(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cp, i32 noundef %spec.select190.i.i.i.i, i32 %spec.select.i.i.i.i)
          to label %bb.v unwind label %bb.t, !noalias !6889

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit198.i.i.i.i unwind label %.thread53.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit198.i.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6884
  call void @llvm.experimental.noalias.scope.decl(metadata !6891)
  call void @llvm.experimental.noalias.scope.decl(metadata !6892)
  %i.cv = load i8, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6151, align 8, !range !76, !alias.scope !6893, !noalias !6884, !noundef !77
  %i.cw = icmp eq i8 %i.cv, 2
  br i1 %i.cw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit198.i.i.i.i
  %.val1.i.i.i.i.i3.i = load i64, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6146, align 8, !alias.scope !6893, !noalias !6884, !noundef !77 ; 2 uses
  %i.cx = icmp eq i64 %.val1.i.i.i.i.i3.i, 0
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i.i.i.i.i4.i = load ptr, ptr %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6141, align 8, !alias.scope !6893, !noalias !6884, !nonnull !77, !noundef !77
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i4.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i3.i, i64 noundef 1) #15, !noalias !6894
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit198.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.633.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6141, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6884
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.cy = load ptr, ptr %i.cd, align 8, !noalias !6889, !nonnull !77, !noundef !77 ; 2 uses
  %i.cz = load i64, ptr %i.ce, align 8, !noalias !6889, !noundef !77 ; 2 uses
  %i.da = and i64 %i.cz, 1152921504606846968      ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.da ; 2 uses
  %.not.i199.i.i.i.i42 = icmp eq i64 %i.da, 0
  br i1 %.not.i199.i.i.i.i42, label %._crit_edge, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i

bb.y:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 64
  %i.dd = add nsw i64 %.sroa.5.0.i.i.i.i.i43, -8  ; 2 uses
  %.not.i199.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i199.i.i.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i

._crit_edge:                                      ; preds = %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i
  %i.de = shl i64 %i.cz, 3
  %.idx = and i64 %i.de, 56                       ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i.i45 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i.i45, label %_RNvXsJ_NtNtCscI6d9CVNmLh_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i, label %.lr.ph.a

bb.z:                                             ; preds = %.lr.ph.a
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i.i.a = icmp eq ptr %i.df, %2
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.a, label %_RNvXsJ_NtNtCscI6d9CVNmLh_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge, %bb.z
  %3 = phi ptr [ %i.df, %bb.z ], [ %i.db, %._crit_edge ] ; 2 uses
  %.val3.i.i.i.i.i.i.a = load i64, ptr %3, align 8, !alias.scope !6895, !noalias !6896, !noundef !77
  %i.dg = icmp eq i64 %.val3.i.i.i.i.i.i.a, %i.cj
  br i1 %i.dg, label %.loopexit.i.i.i.i, label %bb.z

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i, %bb.y
  %.sroa.0.05.i.i.i.i.i44 = phi ptr [ %i.dc, %bb.y ], [ %i.cy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i ] ; 9 uses
  %.sroa.5.0.i.i.i.i.i43 = phi i64 [ %i.dd, %bb.y ], [ %i.da, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i ]
  %.val13.i.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i.i44, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.dh = icmp eq i64 %.val13.i.i.i.i.i.i, %i.cj
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 8
  %.val13.i.1.i.i.i.i.i = load i64, ptr %i.di, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.dj = icmp eq i64 %.val13.i.1.i.i.i.i.i, %i.cj
  %i.dk = or i1 %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 16
  %.val13.i.2.i.i.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.dm = icmp eq i64 %.val13.i.2.i.i.i.i.i, %i.cj
  %i.dn = or i1 %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 24
  %.val13.i.3.i.i.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.dp = icmp eq i64 %.val13.i.3.i.i.i.i.i, %i.cj
  %i.dq = or i1 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 32
  %.val13.i.4.i.i.i.i.i = load i64, ptr %i.dr, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.ds = icmp eq i64 %.val13.i.4.i.i.i.i.i, %i.cj
  %i.dt = or i1 %i.dq, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 40
  %.val13.i.5.i.i.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.dv = icmp eq i64 %.val13.i.5.i.i.i.i.i, %i.cj
  %i.dw = or i1 %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 48
  %.val13.i.6.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.dy = icmp eq i64 %.val13.i.6.i.i.i.i.i, %i.cj
  %i.dz = or i1 %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i44, i64 56
  %.val13.i.7.i.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !6895, !noalias !6897, !noundef !77
  %i.eb = icmp eq i64 %.val13.i.7.i.i.i.i.i, %i.cj
  %i.ec = or i1 %i.dz, %i.eb
  br i1 %i.ec, label %.loopexit.i.i.i.i, label %bb.y

.loopexit.i.i.i.i:                                ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i.i, %.lr.ph.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6884
  invoke void @_RNvXs2p_NtNtCshMFl0SviwmK_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.v)
          to label %bb.aa unwind label %.thread53.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

_RNvXsJ_NtNtCscI6d9CVNmLh_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i: ; preds = %bb.z, %._crit_edge, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(256) %i.v, i64 256, i1 false), !noalias !6884
  %i.ed = invoke noundef i32 @_RNvMsi_Csf5uYjtxkodL_11proc_macro2NtB5_4Span9call_site()
          to label %bb.an unwind label %bb.am, !noalias !6889

bb.aa:                                            ; preds = %.loopexit.i.i.i.i
  %i.ee = load i64, ptr %i.m, align 8, !range !106, !noalias !6884, !noundef !77 ; 2 uses
  %i.ef = icmp ne i64 %i.ee, 3
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp eq i64 %i.ee, 10
  br i1 %i.eg, label %bb.ab, label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6884
  invoke void @_RNvMs_NtCshMFl0SviwmK_3syn4pathNtB4_4Path13require_ident(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
          to label %bb.ad unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit205.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  store i64 10, ptr %i.v, align 8, !noalias !6884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.633.0..sroa_idx34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.i.i.i.i, i64 80, i1 false), !noalias !6884
  br label %.thread.i.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5error5ErrorEECsluMP4ekZjHw_14diesel_derives.exit, %bb.ab, %bb.ax, %bb.ae
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ei = load i64, ptr %i.k, align 8, !range !86, !noalias !6884, !noundef !77
  %.not183.i.i.i.i = icmp eq i64 %i.ei, -1
  br i1 %.not183.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5error5ErrorEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5error5ErrorEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.k)
          to label %bb.ax unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5error5ErrorEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6884
  %i.ej = load ptr, ptr %i.ar, align 8, !noalias !6884, !nonnull !77, !align !78, !noundef !77
  store ptr %i.ej, ptr %i.l, align 8, !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6884
  store ptr %i.l, ptr %i.i, align 8, !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6884
  %i.ek = load i64, ptr %i.s, align 8, !noalias !6884, !noundef !77
  store i64 %i.ek, ptr %i.h, align 8, !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6884
  store ptr %i.h, ptr %i.g, align 8, !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6884
  store ptr %i.i, ptr %i.d, align 8, !noalias !6884
  store ptr @_RNvXs7_NtCsa66IwKi6YE3_5quote9___privateINtB5_20IdentFragmentAdapterRRNtCsf5uYjtxkodL_11proc_macro25IdentENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsluMP4ekZjHw_14diesel_derives, ptr %.sroa.4172.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  store ptr %i.g, ptr %i.as, align 8, !noalias !6884
  store ptr @_RNvXs7_NtCsa66IwKi6YE3_5quote9___privateINtB5_20IdentFragmentAdapterRjENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsluMP4ekZjHw_14diesel_derives, ptr %.sroa.4176.0..sroa_idx.i.i.i.i, align 8, !noalias !6884
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1, ptr noundef nonnull %i.d)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit200.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit200.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5error5ErrorEECsluMP4ekZjHw_14diesel_derives.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6884
  %i.el = load ptr, ptr %i.at, align 8, !noalias !6884, !nonnull !77, !noundef !77
  %i.em = load i64, ptr %i.au, align 8, !noalias !6884, !noundef !77
  %i.en = invoke { i32, i32 } @_RNvXNtCsa66IwKi6YE3_5quote14ident_fragmentRNtCsf5uYjtxkodL_11proc_macro25IdentNtB2_13IdentFragment4spanCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.ag unwind label %bb.af, !noalias !6889 ; 2 uses

bb.af:                                            ; preds = %bb.ag, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit200.i.i.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.loopexit.split-lp.i.loopexit.split-lp.i.i.i unwind label %bb.at, !noalias !6889

bb.ag:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit200.i.i.i.i
  %i.ep = extractvalue { i32, i32 } %i.en, 0      ; 2 uses
  %i.eq = extractvalue { i32, i32 } %i.en, 1
  %i.er = trunc i32 %i.ep to i1                   ; 2 uses
  %spec.select191.i.i.i.i = select i1 %i.er, i32 %i.eq, i32 undef
  %spec.select192.i.i.i.i = select i1 %i.er, i32 %i.ep, i32 0
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private8mk_ident(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %i.em, i32 noundef %spec.select192.i.i.i.i, i32 %spec.select191.i.i.i.i)
          to label %bb.ah unwind label %bb.af, !noalias !6889

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit202.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit202.i.i.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6884
  %i.es = invoke noundef nonnull align 8 ptr @_RNvXsO_NtCshMFl0SviwmK_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutjE9index_mutCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.ai unwind label %bb.au, !noalias !6889 ; 3 uses

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit202.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6898)
  call void @llvm.experimental.noalias.scope.decl(metadata !6899)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.ev = load i8, ptr %i.eu, align 8, !range !76, !alias.scope !6900, !noalias !6889, !noundef !77
  %i.ew = icmp eq i8 %i.ev, 2
  br i1 %i.ew, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit205.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %.val1.i.i203.i.i.i.i = load i64, ptr %i.ex, align 8, !alias.scope !6900, !noalias !6889, !noundef !77 ; 2 uses
  %i.ey = icmp eq i64 %.val1.i.i203.i.i.i.i, 0
  br i1 %i.ey, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit205.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val.i.i204.i.i.i.i = load ptr, ptr %i.et, align 8, !alias.scope !6900, !noalias !6889, !nonnull !77, !noundef !77
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i204.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i203.i.i.i.i, i64 noundef 1) #15, !noalias !6901
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit205.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit205.i.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6884
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.519.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false), !noalias !6884
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.v)
          to label %bb.al unwind label %bb.ac, !noalias !6889

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit205.i.i.i.i
  store i64 10, ptr %i.v, align 8, !noalias !6884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.633.0..sroa_idx34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.i.i.i.i, i64 80, i1 false), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.519.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6884
  br label %_RNvXsJ_NtNtCscI6d9CVNmLh_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i

bb.am:                                            ; preds = %bb.an, %_RNvXsJ_NtNtCscI6d9CVNmLh_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEBF_(ptr noalias noundef align 8 dereferenceable(256) %i.b) #17
          to label %.critedge.i.i.i.i unwind label %bb.at, !noalias !6889

bb.an:                                            ; preds = %_RNvXsJ_NtNtCscI6d9CVNmLh_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i
  %i.fa = invoke noundef i32 @_RNvXs2_NtCshMFl0SviwmK_3syn4spanANtCsf5uYjtxkodL_11proc_macro24Spanj1_INtB5_9IntoSpansBu_E10into_spans(i32 noundef %i.ed)
          to label %bb.ao unwind label %bb.am, !noalias !6889

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false), !noalias !6884
  store i32 %i.fa, ptr %i.av, align 8, !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6884
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !6902, !noalias !6884, !noundef !77 ; 3 uses
  %i.fc = load i64, ptr %i.x, align 8, !range !102, !alias.scope !6902, !noalias !6884, !noundef !77
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBR_5token5CommaEE8grow_oneB1u_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.as unwind label %bb.aq, !noalias !6903

bb.aq:                                            ; preds = %bb.ap
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1j_(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.c) #17
          to label %.critedge.i.i.i.i unwind label %bb.ar, !noalias !6889

bb.ar:                                            ; preds = %bb.aq
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18, !noalias !6889
  unreachable

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.fg = load ptr, ptr %i.al, align 8, !alias.scope !6902, !noalias !6884, !nonnull !77, !noundef !77
  %i.fh = getelementptr inbounds nuw [264 x i8], ptr %i.fg, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.fh, ptr noundef nonnull align 8 dereferenceable(264) %i.c, i64 264, i1 false), !noalias !6889
  %i.fi = add i64 %i.fb, 1
  store i64 %i.fi, ptr %i.am, align 8, !alias.scope !6902, !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6884
  %i.fj = load ptr, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6904, !noalias !6884, !nonnull !77, !noundef !77
  %i.fk = load ptr, ptr %.sroa.01.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6904, !noalias !6884, !nonnull !77, !noundef !77 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fj
  br i1 %i.fl, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i._crit_edge.i.i.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB11_5token5CommaEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1E_.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.bd, %.loopexit.split-lp.i.loopexit.split-lp.i.i.i, %bb.am, %bb.af, %bb.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB2e_5token5CommaEEEEB2R_.exit.i.i.i.i, %.critedge.i.i.i.i
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18, !noalias !6889
  unreachable

bb.au:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit202.i.i.i.i
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6905)
  call void @llvm.experimental.noalias.scope.decl(metadata !6906)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fp = load i8, ptr %i.fo, align 8, !range !76, !alias.scope !6907, !noalias !6884, !noundef !77
  %i.fq = icmp eq i8 %i.fp, 2
  br i1 %i.fq, label %.loopexit.split-lp.i.loopexit.split-lp.i.i.i, label %bb.av
end_hunk_0
