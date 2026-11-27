Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder16make_encode_task:bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.am) #66
          to label %.noexc unwind label %bb.c, !noalias !40577

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.e
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.ap, %bb.e ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.05.016.sink17.i.i.i.i, %bb.e ] ; 3 uses
  %i.ar = icmp samesign ule i64 %.sroa.05.016.sink17.i.i.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ar)
  store i64 %.sroa.4.0.i.i, ptr %i.n, align 8, !noalias !40577
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %i.as, align 8, !noalias !40577
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.at, align 8, !noalias !40577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40580)
  br i1 %i.ai, label %.loopexit, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.g
  %.not = icmp samesign ult i64 %i.ak, %.sroa.4.0.i.i
  br i1 %.not, label %bb.j, label %bb.h, !prof !40581

bb.h:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0, i64 noundef %i.al, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.l, !noalias !40582

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !40583, !noalias !40577
  %.pre.i = load ptr, ptr %i.as, align 8, !alias.scope !40583, !noalias !40577
  br label %bb.j

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i.i.i.i.i.i) ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.ph109, i64 %.ph ; 2 uses
  store ptr %.val9.i.i.i.i.i.i.i, ptr %i.au, align 8, !noalias !40584
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.val10.i.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !40584
  %i.aw = add i64 %.ph, 1                         ; 2 uses
  %i.ax = add nsw i64 %.idx, -33
  %.not.i.i.i.not14.i.i.i.i.i.i.i.i = icmp ult i64 %i.ax, -17
  br i1 %.not.i.i.i.not14.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3T_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  %i.ay = phi i64 [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3T_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.az = phi ptr [ %i.ba, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3T_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i ], [ %i.ad, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %.val10.i.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !40585, !nonnull !102, !noundef !102 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 40
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !noalias !40585 ; 2 uses
  %i.bc = atomicrmw add ptr %.val10.i.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !40586
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3T_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3T_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %storemerge.i.i.i16.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.i.i.i.i.i) ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.ph109, i64 %i.ay ; 2 uses
  store ptr %.val10.i.i.i.i.i.i.i.i, ptr %i.be, align 8, !noalias !40587
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.val11.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !noalias !40587
  %i.bg = add i64 %i.ay, 1                        ; 2 uses
  %i.bh = ptrtoint ptr %storemerge.i.i.i16.i.i.i.i.i.i.i.i to i64
  %i.bi = sub nuw i64 %i.ah, %i.bh
  %.not.i.i.i.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bi, 16
  br i1 %.not.i.i.i.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit

bb.j:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %.noexc.i
  %.ph = phi i64 [ %.pre.i.i.i, %.noexc.i ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  %.ph109 = phi ptr [ %.pre.i, %.noexc.i ], [ %.sroa.10.0.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !40588, !nonnull !102, !noundef !102 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ad, i64 8
  %.val10.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !noalias !40588 ; 2 uses
  %i.bk = atomicrmw add ptr %.val9.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !40589
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %._crit_edge.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.n) #67
          to label %bb.cv unwind label %bb.m, !noalias !40577

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !40577
  unreachable

.body:                                            ; preds = %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread75

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3T_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, %bb.g, %._crit_edge.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB3T_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_7step_by6StepByINtNtNtBa_5slice4iter4IterBV_EEEE0E0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.at, align 8, !alias.scope !40583, !noalias !40590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bo = load i64, ptr %1, align 8, !range !103, !noundef !102
  %i.bp = icmp ult i64 %i.af, 576460752303423488
  tail call void @llvm.assume(i1 %i.bp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40591)
  store ptr %i.ad, ptr %i.q, align 8, !alias.scope !40592
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.443.0..sroa_idx, align 8, !alias.scope !40592
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.bo, ptr %.sroa.544.0..sroa_idx, align 8, !alias.scope !40592
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.ag, ptr %.sroa.645.0..sroa_idx, align 8, !alias.scope !40592
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !40592
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  store i64 1, ptr %i.bq, align 8, !alias.scope !40593
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store i8 1, ptr %i.br, align 8, !alias.scope !40593
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !40595
  %i.bs = invoke fastcc { ptr, ptr } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %bb.o unwind label %bb.n, !noalias !40596 ; 2 uses

bb.n:                                             ; preds = %.loopexit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.o:                                             ; preds = %.loopexit
  %i.bu = extractvalue { ptr, ptr } %i.bs, 0      ; 4 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = extractvalue { ptr, ptr } %i.bs, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !40595
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  store ptr %i.bu, ptr %i.l, align 8, !noalias !40595
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !noalias !40595
  %.val.i.i.i.i10 = load ptr, ptr %.sroa.443.0..sroa_idx, align 8, !alias.scope !40597, !nonnull !102, !noundef !102
  %.val5.i.i.i.i = load ptr, ptr %.sroa.645.0..sroa_idx, align 8, !alias.scope !40597, !nonnull !102, !noundef !102
  %i.bx = ptrtoint ptr %.val5.i.i.i.i to i64
  %i.by = ptrtoint ptr %.val.i.i.i.i10 to i64
  %i.bz = sub nuw i64 %i.bx, %i.by
  %i.ca = lshr exact i64 %i.bz, 4                 ; 2 uses
  %i.cb = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !40597, !noundef !102 ; 2 uses
  %i.cc = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %i.cb) ; 2 uses
  %i.cd = load i8, ptr %i.br, align 8, !range !116, !alias.scope !40598, !noundef !102
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i15 = icmp ugt i64 %i.ca, %i.cb
  br i1 %.not.i.i.i15, label %bb.s, label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.cf = load i64, ptr %i.bq, align 8, !alias.scope !40598, !noundef !102 ; 2 uses
  %i.cg = add nuw i64 %i.cf, 1
  %i.ch = icmp ne i64 %i.cf, -1
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = udiv i64 %i.cc, %i.cg
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.cj = load i64, ptr %i.bq, align 8, !alias.scope !40598, !noundef !102 ; 2 uses
  %i.ck = add nuw i64 %i.cj, 1
  %i.cl = add nsw i64 %i.cc, -1
  %i.cm = icmp ne i64 %i.cj, -1
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = udiv i64 %i.cl, %i.ck
  %i.co = add nuw nsw i64 %i.cn, 1
  br label %bb.w

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !40595
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.q)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2E_4skip4SkipINtNtB4_9into_iter8IntoIterB11_EEEE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit unwind label %.body, !noalias !40596

bb.u:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !40599
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.v, label %bb.an

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.an unwind label %bb.am, !noalias !40595

bb.w:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.05.015.sink16.i.i.i = phi i64 [ %i.ci, %bb.r ], [ %i.co, %bb.s ], [ 0, %bb.q ]
  %i.cs = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.015.sink16.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.cs, i64 4) ; 2 uses
  %i.ct = shl i64 %.sroa.0.0.i.i, 4               ; 3 uses
  %i.cu = icmp ugt i64 %i.cs, 1152921504606846975
  %.not.i.i9.i = icmp ugt i64 %i.ct, 9223372036854775800
  %or.cond.i.i.i11 = or i1 %i.cu, %.not.i.i9.i
  br i1 %or.cond.i.i.i11, label %bb.y, label %bb.x, !prof !107

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !40600
  %i.cv = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, 17) 8) #63, !noalias !40600 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.ph.i.i14 = phi i64 [ 8, %bb.x ], [ 0, %bb.w ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i14, i64 %i.ct) #66
          to label %.noexc10.i unwind label %bb.u, !noalias !40595

.noexc10.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  store ptr %i.bu, ptr %i.cv, align 8, !noalias !40595
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.bv, ptr %i.cx, align 8, !noalias !40595
  store i64 %.sroa.0.0.i.i, ptr %i.m, align 8, !noalias !40595
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !40595
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !40595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !40595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !40595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !noalias !40596
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40604)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i12, %bb.z
  %i.de = phi ptr [ %i.ee, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i12 ], [ %i.cv, %bb.z ]
  %.sroa.639.0.copyload41 = phi i64 [ %i.eh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i12 ], [ 1, %bb.z ] ; 6 uses
  %i.df = invoke fastcc { ptr, ptr } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.ac unwind label %bb.ab, !noalias !40605 ; 2 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ab
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dg, %bb.ab ], [ %i.ei, %bb.aj ], [ %i.ei, %bb.ai ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.k)
          to label %.body.i unwind label %bb.ak, !noalias !40605

bb.ab:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dh = extractvalue { ptr, ptr } %i.df, 0      ; 4 uses
  %.not.i.i11.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i11.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB27_4skip4SkipINtNtB6_9into_iter8IntoIterBG_EEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = extractvalue { ptr, ptr } %i.df, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !40606
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  store ptr %i.dh, ptr %i.j, align 8, !noalias !40606
  store ptr %i.di, ptr %i.cy, align 8, !noalias !40606
  %i.dj = icmp samesign ult i64 %.sroa.639.0.copyload41, 576460752303423488
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = load i64, ptr %i.m, align 8, !range !103, !alias.scope !40607, !noalias !40595, !noundef !102
  %i.dl = icmp eq i64 %.sroa.639.0.copyload41, %i.dk
  br i1 %i.dl, label %bb.ae, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i12

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !40608, !noalias !40595, !nonnull !102, !noundef !102
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.da, align 8, !alias.scope !40608, !noalias !40595, !nonnull !102, !noundef !102
  %i.dm = ptrtoint ptr %.val5.i.i.i.i.i.i to i64
  %i.dn = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 4                 ; 2 uses
  %i.dq = load i64, ptr %i.db, align 8, !alias.scope !40608, !noalias !40595, !noundef !102 ; 2 uses
  %i.dr = tail call i64 @llvm.usub.sat.i64(i64 %i.dp, i64 %i.dq) ; 2 uses
  %i.ds = load i8, ptr %i.dc, align 8, !range !116, !alias.scope !40609, !noalias !40595, !noundef !102
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i.i.i = icmp ugt i64 %i.dp, %i.dq
  br i1 %.not.i.i.i.i.i, label %bb.ah, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.du = load i64, ptr %i.dd, align 8, !alias.scope !40609, !noalias !40595, !noundef !102 ; 2 uses
  %i.dv = add nuw i64 %i.du, 1
  %i.dw = icmp ne i64 %i.du, -1
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = udiv i64 %i.dr, %i.dv
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dy = load i64, ptr %i.dd, align 8, !alias.scope !40609, !noalias !40595, !noundef !102 ; 2 uses
  %i.dz = add nuw i64 %i.dy, 1
  %i.ea = add nsw i64 %i.dr, -1
  %i.eb = icmp ne i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = udiv i64 %i.ea, %i.dz
  %i.ed = add nuw nsw i64 %i.ec, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i12: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i, %bb.ad
  %i.ee = phi ptr [ %.pre.i13, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i ], [ %i.de, %bb.ad ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.sroa.639.0.copyload41 ; 2 uses
  store ptr %i.dh, ptr %i.ef, align 8, !noalias !40606
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.di, ptr %i.eg, align 8, !noalias !40606
  %i.eh = add nuw nsw i64 %.sroa.639.0.copyload41, 1 ; 2 uses
  store i64 %i.eh, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !40607, !noalias !40595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !40606
  br label %bb.aa

bb.ai:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = atomicrmw add ptr %i.dh, i64 -1 release, align 8, !noalias !40610
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i unwind label %bb.ak, !noalias !40606

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.05.015.sink16.i.i.i.i.i = phi i64 [ %i.dx, %bb.ag ], [ %i.ed, %bb.ah ], [ 0, %bb.af ]
  %i.el = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.015.sink16.i.i.i.i.i, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.639.0.copyload41, i64 noundef %i.el, i64 noundef 8, i64 noundef 16)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i unwind label %bb.ai, !noalias !40611

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_byINtB4_6StepByINtNtB6_4skip4SkipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB1r_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.pre.i13 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !40607, !noalias !40595
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i12

bb.ak:                                            ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !40606
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB27_4skip4SkipINtNtB6_9into_iter8IntoIterBG_EEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.k)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2l_4skip4SkipINtNtB4_9into_iter8IntoIterBR_EEEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.al, !noalias !40605

bb.al:                                            ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB27_4skip4SkipINtNtB6_9into_iter8IntoIterBG_EEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.en, %bb.al ], [ %.pn.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.m) #67
          to label %.body.thread75 unwind label %bb.am, !noalias !40595

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2l_4skip4SkipINtNtB4_9into_iter8IntoIterBR_EEEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB27_4skip4SkipINtNtB6_9into_iter8IntoIterBG_EEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !40595
  %.sroa.034.0.copyload35 = load i64, ptr %i.m, align 8, !noalias !40594
  %.sroa.536.0.copyload38 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !40594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !40595
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2E_4skip4SkipINtNtB4_9into_iter8IntoIterB11_EEEE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit

bb.am:                                            ; preds = %bb.an, %.body.i, %bb.v
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !40595
  unreachable

bb.an:                                            ; preds = %bb.v, %bb.u, %bb.n
  %.pn.ph.i = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.cp, %bb.v ], [ %i.cp, %bb.u ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.q)
          to label %.body.thread75 unwind label %bb.am, !noalias !40596

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2E_4skip4SkipINtNtB4_9into_iter8IntoIterB11_EEEE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2l_4skip4SkipINtNtB4_9into_iter8IntoIterBR_EEEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.t
  %.sroa.639.0 = phi i64 [ %.sroa.639.0.copyload41, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2l_4skip4SkipINtNtB4_9into_iter8IntoIterBR_EEEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ 0, %bb.t ] ; 3 uses
  %.sroa.536.0 = phi ptr [ %.sroa.536.0.copyload38, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2l_4skip4SkipINtNtB4_9into_iter8IntoIterBR_EEEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ inttoptr (i64 8 to ptr), %bb.t ] ; 3 uses
  %.sroa.034.0 = phi i64 [ %.sroa.034.0.copyload35, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2l_4skip4SkipINtNtB4_9into_iter8IntoIterBR_EEEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ 0, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !40612
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7step_by6StepByINtNtB2E_4skip4SkipINtNtB4_9into_iter8IntoIterB11_EEEE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit
  %i.ep = atomicrmw add ptr @_RNvNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !40612 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i, label %bb.ao, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.ep, ptr %i.i, align 8, !noalias !40612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40612
  store ptr %i.i, ptr %i.g, align 8, !noalias !40612
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.a, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !40612
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %.sroa.647.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.034.0, ptr %.sroa.647.0..sroa.6.0..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.750.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.sroa.536.0, ptr %.sroa.750.0..sroa.6.0..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.853.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.639.0, ptr %.sroa.853.0..sroa.6.0..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.956.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.t, ptr %.sroa.956.0..sroa.6.0..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.1059.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr %i.v, ptr %.sroa.1059.0..sroa.6.0..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.11.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i32 %i.ab, ptr %.sroa.11.0..sroa.6.0..sroa_idx.i.i.sroa_idx, align 8
  %.sroa.12.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  store i8 0, ptr %.sroa.12.0..sroa.6.0..sroa_idx.i.i.sroa_idx, align 4
  %i.eq = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 12 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 2 uses
  %i.es = load i8, ptr %i.er, align 8, !range !118, !noalias !40613, !noundef !102
  switch i8 %i.es, label %default.unreachable [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerNCNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB37_18ListOffsetsEncoder16make_encode_task0E0INtNtNtBY_4task4join10JoinHandleINtNtCscI6d9CVNmLh_4core6result6ResultNtNtB3d_7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE0INtNtB5w_6option6OptionB4V_EEB3d_.exit.thread.i.i
  ], !prof !119

default.unreachable:                              ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.eq, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsjjpCCFGI3ul_14lance_encoding)
          to label %.noexc.i.i.i unwind label %bb.cm, !noalias !40613

.noexc.i.i.i:                                     ; preds = %bb.aq
  store i8 1, ptr %i.er, align 8, !noalias !40613
  br label %bb.ar

_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerNCNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB37_18ListOffsetsEncoder16make_encode_task0E0INtNtNtBY_4task4join10JoinHandleINtNtCscI6d9CVNmLh_4core6result6ResultNtNtB3d_7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE0INtNtB5w_6option6OptionB4V_EEB3d_.exit.thread.i.i: ; preds = %bb.ap
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtBJ_18ListOffsetsEncoder16make_encode_task0EBP_(ptr noundef nonnull readonly align 8 %.sroa.6.0..sroa_idx.i.i), !noalias !40612
  br label %.noexc21

bb.ar:                                            ; preds = %.noexc.i.i.i, %bb.ap
  %i.et = load i64, ptr %i.eq, align 8, !noalias !40614, !noundef !102 ; 2 uses
  %i.eu = icmp ult i64 %i.et, 9223372036854775807
  br i1 %i.eu, label %bb.at, label %bb.as, !prof !105
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB5_4FlatNtNtCskAO0uQb8M5a_5prost4name4Name8type_url:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB5_4FlatNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !73979 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !73980
  %i.a = tail call noundef dereferenceable_or_null(20) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !73980 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) @3402, i64 20, i1 false)
  store i64 20, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB5_15SparseListLayerNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !73983 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !73984
  %i.a = tail call noundef dereferenceable_or_null(34) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 34, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !73984 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 34) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.a, ptr noundef nonnull align 1 dereferenceable(34) @3403, i64 34, i1 false)
  store i64 34, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 34, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB5_15SparseListLayerNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !73987 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !73988
  %i.a = tail call noundef dereferenceable_or_null(33) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 33, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !73988 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 33) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.a, ptr noundef nonnull align 1 dereferenceable(33) @3404, i64 33, i1 false)
  store i64 33, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 33, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !73989 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3406, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3405)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB5_16BlobFieldDecoderNtNtBb_7decoder18LogicalPageDecoder11rows_loaded(ptr noalias noundef readonly align 8 captures(none) dereferenceable(320) %0) unnamed_addr #28 !guid !73990 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i64, ptr %i.a, align 8, !noundef !102
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB5_16BlobFieldDecoderNtNtBb_7decoder18LogicalPageDecoder12rows_drained(ptr noalias noundef readonly align 8 captures(none) dereferenceable(320) %0) unnamed_addr #28 !guid !73991 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i64, ptr %i.a, align 8, !noundef !102
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB5_16BlobFieldDecoderNtNtBb_7decoder18LogicalPageDecoder15wait_for_loaded(ptr noalias noundef align 8 dereferenceable(320) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !73994 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  store i64 %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 0, ptr %i.c, align 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !73995
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !73995 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtBM_16BlobFieldDecoderNtNtBS_7decoder18LogicalPageDecoder15wait_for_loaded0E3newBS_.exit, !prof !104

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #66
          to label %.noexc unwind label %bb.c, !noalias !73995

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtBJ_16BlobFieldDecoderNtNtBP_7decoder18LogicalPageDecoder15wait_for_loaded0EBP_(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #67
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtBM_16BlobFieldDecoderNtNtBS_7decoder18LogicalPageDecoder15wait_for_loaded0E3newBS_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @3407, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blobNtB5_16BlobFieldDecoderNtNtBb_7decoder18LogicalPageDecoder5drain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(320) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !74079 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 17 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.11 = alloca [40 x i8], align 8           ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !102 ; 3 uses
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %.split, label %_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.q, align 8
  %i.t = sub nuw i64 %i.r, %2
  store ptr %1, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store i64 %2, ptr %i.x, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !74082
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74083)
  %i.y = icmp eq i64 %2, 0                        ; 3 uses
  br i1 %i.y, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !74084, !noundef !102 ; 2 uses
  %i.ab = load i64, ptr %1, align 8, !range !103, !noalias !74084, !noundef !102 ; 2 uses
  %.not.i.i = icmp ult i64 %i.aa, %i.ab
  %i.ac = select i1 %.not.i.i, i64 0, i64 %i.ab
  %.sroa.02.0.i.i = sub nuw i64 %i.aa, %i.ac
  store i64 1, ptr %i.v, align 8, !alias.scope !74085
  %i.ad = add i64 %2, -1
  store i64 %i.ad, ptr %i.x, align 8, !alias.scope !74085
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !74084, !nonnull !102, !noundef !102
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.02.0.i.i ; 4 uses
  %.sroa.0.0.copyload7.i = load ptr, ptr %i.ag, align 8, !noalias !74086 ; 3 uses
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.7.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx8.i, align 8, !noalias !74086 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.7.sroa.5.0.copyload.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx8.sroa_idx.i, align 8, !noalias !74086 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.7.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx8.sroa_idx.i, align 8, !noalias !74086 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload7.i, null
  br i1 %.not.i, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %bb.c

_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit
  store i64 0, ptr %i.m, align 8, !alias.scope !74080
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !alias.scope !74080
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.ai, align 8, !alias.scope !74080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !74082
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l), !noalias !74080
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload7.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !74087, !nonnull !102, !noundef !102
  invoke void %i.al(ptr noundef %.sroa.7.sroa.6.0.copyload.i, ptr noundef %.sroa.7.sroa.0.0.copyload.i, i64 noundef %.sroa.7.sroa.5.0.copyload.i)
          to label %bb.m unwind label %bb.l, !noalias !74087, !inline_history !2

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 4) ; 2 uses
  %i.am = shl i64 %.sroa.0.0.i.i, 5               ; 3 uses
  %i.an = icmp ugt i64 %2, 576460752303423487
  %.not.i.i.i = icmp ugt i64 %i.am, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.an, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.d, !prof !107

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !74088
  %i.ao = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, 17) 8) #63, !noalias !74088 ; 7 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.c ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.am) #66
          to label %.noexc.i unwind label %bb.b, !noalias !74082

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr %.sroa.0.0.copyload7.i, ptr %i.ao, align 8, !noalias !74082
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !74082
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !74082
  %.sroa.6.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx16.i, align 8, !noalias !74082
  store i64 %.sroa.0.0.i.i, ptr %i.j, align 8, !noalias !74082
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !74082
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !74082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !74082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !74080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74092)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !74093, !noalias !74082 ; 2 uses
  %i.ar = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.ar, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i

_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i: ; preds = %bb.f
  %i.as = load ptr, ptr %i.i, align 8, !alias.scope !74094, !noalias !74082, !nonnull !102, !noundef !102 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.promoted20.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !74094, !noalias !74082
  br label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i) #67
          to label %.body.i unwind label %bb.j, !noalias !74095

_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i
  %i.aw = phi ptr [ %i.ao, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.bk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %i.ax = phi i64 [ 1, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.bm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 5 uses
  %i.ay = phi i64 [ %.promoted20.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.bd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  %.val1819.i.i.i = phi i64 [ %.promoted.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph.i.i.i ], [ %i.be, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74096)
  %i.az = load i64, ptr %i.au, align 8, !noalias !74097, !noundef !102
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  %i.bb = load i64, ptr %i.as, align 8, !range !103, !noalias !74097, !noundef !102 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.ba, %i.bb
  %i.bc = select i1 %.not.i.i.i.i, i64 0, i64 %i.bb
  %.sroa.02.0.i.i.i.i = sub nuw i64 %i.ba, %i.bc
  %i.bd = add i64 %i.ay, 1                        ; 3 uses
  %i.be = add i64 %.val1819.i.i.i, -1             ; 4 uses
  %i.bf = load ptr, ptr %i.av, align 8, !noalias !74097, !nonnull !102, !noundef !102
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %.sroa.02.0.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload4.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !74098 ; 3 uses
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx5.i.i.i, align 8, !noalias !74098 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i, align 8, !noalias !74098 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i, align 8, !noalias !74098 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %.sroa.0.0.copyload4.i.i.i, null
  br i1 %.not.i.i5.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.bh = icmp samesign ult i64 %i.ax, 288230376151711744
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i64, ptr %i.j, align 8, !range !103, !alias.scope !74099, !noalias !74082, !noundef !102
  %i.bj = icmp eq i64 %i.ax, %i.bi
  br i1 %i.bj, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i, %bb.g
  %i.bk = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i ], [ %i.aw, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.ax ; 4 uses
  store ptr %.sroa.0.0.copyload4.i.i.i, ptr %i.bl, align 8, !noalias !74100
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !74100
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !74100
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %.sroa.7.sroa.6.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !74100
  %i.bm = add nuw nsw i64 %i.ax, 1                ; 2 uses
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !74099, !noalias !74082
  %i.bn = icmp eq i64 %i.be, 0
  br i1 %i.bn, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bd, ptr %i.at, align 8, !alias.scope !74094, !noalias !74082
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !74094, !noalias !74082
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload4.i.i.i, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !74101, !nonnull !102, !noundef !102
  invoke void %i.bq(ptr noundef %.sroa.7.sroa.6.0.copyload.i.i.i, ptr noundef %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.7.sroa.5.0.copyload.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i unwind label %bb.j, !noalias !74101, !inline_history !2

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ax, i64 noundef %.val1819.i.i.i, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i unwind label %bb.h, !noalias !74102

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i: ; preds = %bb.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !74099, !noalias !74082
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.j:                                             ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !74100
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.lcssa.i = phi i64 [ %i.be, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  store i64 %i.bd, ptr %i.at, align 8, !alias.scope !74094, !noalias !74082
  store i64 %.lcssa.i, ptr %i.aq, align 8, !alias.scope !74094, !noalias !74082
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.loopexit.i, %bb.f
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.k, !noalias !74095

bb.k:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bs, %bb.k ], [ %i.bo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.j) #67
          to label %common.resume unwind label %bb.l, !noalias !74082

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !74082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !74081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !74082
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit

bb.l:                                             ; preds = %bb.m, %.body.i, %bb.b
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !74082
  unreachable

common.resume:                                    ; preds = %bb.ax, %bb.at, %.body.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aj, %bb.m ], [ %eh.lpad-body.ph, %bb.ax ], [ %i.ep, %bb.at ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l) #67
          to label %common.resume unwind label %bb.l, !noalias !74080

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !74104
  %i.bu = lshr i64 %2, 3
  %i.bv = and i64 %2, 7
  %.not.i36 = icmp ne i64 %i.bv, 0
  %i.bw = zext i1 %.not.i36 to i64
  %.sroa.010.0.i = add nuw nsw i64 %i.bu, %i.bw   ; 4 uses
  %i.bx = and i64 %.sroa.010.0.i, 63
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.split.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit
  %reass.sub.i.i = and i64 %.sroa.010.0.i, 4611686018427387840
  %i.bz = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, %.sroa.010.0.i
  br i1 %i.ca, label %bb.o, label %.split.thread.i.i, !prof !108

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc unwind label %bb.aq, !noalias !74105

.noexc:                                           ; preds = %bb.o
  unreachable

.split.i.i:                                       ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterCsjjpCCFGI3ul_14lance_encoding.exit
  br i1 %i.y, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i, label %.split.thread.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.thread.i: ; preds = %.split.i.i
  %.sroa.4.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx45.i, align 8, !noalias !74104
  %.sroa.5.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical6structNtB5_25StructuralStructSchedulerNtNtBb_7decoder24StructuralFieldScheduler15schedule_ranges:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ex, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @3625, ptr %i.fc, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.av

bb.av:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical6struct25RepDefStructSchedulingJobE3newBM_.exit, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB5_19OutOfLineBitpackingNtNtBb_11compression17BlockDecompressor10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !82103 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [56 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [56 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 16               ; 9 uses
  %i.q = alloca [48 x i8], align 8                ; 11 uses
  %i.r = alloca [48 x i8], align 8                ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 11 uses
  %i.t = alloca [48 x i8], align 16               ; 13 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !102 ; 9 uses
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.w)
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %.split, label %bb.b, !prof !193

.split:                                           ; preds = %bb.a
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.w, i1 true) ; 2 uses
  %switch.tableidx = add nsw i64 %i.z, -3         ; 2 uses
  %i.aa = icmp ult i64 %switch.tableidx, 4
  br i1 %i.aa, label %switch.lookup, label %bb.b, !prof !194

bb.b:                                             ; preds = %.split, %bb.a
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @3551, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3626) #66
          to label %bb.c unwind label %bb.fn

switch.lookup:                                    ; preds = %.split
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ad = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %.split1 unwind label %bb.d    ; 4 uses

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %switch.lookup
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82107)
  %i.af = load ptr, ptr %i.u, align 8, !alias.scope !82108, !nonnull !102, !noundef !102
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !82108
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.fm

.split1:                                          ; preds = %switch.lookup
  %i.ai = lshr i64 %i.ac, %switch.tableidx        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.w, i1 true) ; 4 uses
  %i.ak = add i64 %i.w, -1                        ; 4 uses
  switch i64 %i.z, label %default.unreachable [
    i64 3, label %bb.f
    i64 4, label %bb.av
    i64 5, label %bb.cj
    i64 6, label %bb.dx
  ], !prof !197

default.unreachable:                              ; preds = %.split1
  unreachable

bb.f:                                             ; preds = %.split1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 9 uses
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %i.w, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %i.ai, ptr %.sroa.9.0..sroa_idx, align 8
  %i.al = load i64, ptr %1, align 8, !noundef !102 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82109)
  %i.am = shl i64 %i.al, 10                       ; 2 uses
  %i.an = lshr i64 %i.am, %i.aj
  %i.ao = and i64 %i.am, %i.ak
  %.not.i = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw i64 %i.an, %i.ap         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !82110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82112)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ar = load i64, ptr %i.aq, align 16, !alias.scope !82113, !noundef !102 ; 5 uses
  %i.as = load <2 x ptr>, ptr %i.t, align 16, !alias.scope !82113
  %i.at = load ptr, ptr %i.t, align 16, !alias.scope !82113, !nonnull !102, !noundef !102
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !82114
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.q, %.thread.i, %bb.m
  %.pn30.i = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn28.i, %bb.q ], [ %.pn28.i, %.thread.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82115)
  call void @llvm.experimental.noalias.scope.decl(metadata !82116)
  call void @llvm.experimental.noalias.scope.decl(metadata !82117)
  call void @llvm.experimental.noalias.scope.decl(metadata !82118)
  call void @llvm.experimental.noalias.scope.decl(metadata !82119)
  %i.aw = load ptr, ptr %i.t, align 16, !alias.scope !82120, !nonnull !102, !noundef !102
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !82121
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i unwind label %bb.i, !noalias !82122

bb.i:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82123)
  call void @llvm.experimental.noalias.scope.decl(metadata !82124)
  call void @llvm.experimental.noalias.scope.decl(metadata !82125)
  %i.ba = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !82126, !nonnull !102, !noundef !102
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !82127
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %.body.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx)
          to label %.body.i unwind label %bb.l, !noalias !82122

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82128)
  call void @llvm.experimental.noalias.scope.decl(metadata !82129)
  call void @llvm.experimental.noalias.scope.decl(metadata !82130)
  %i.bd = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !82131, !nonnull !102, !noundef !102
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !82132
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.ao, !noalias !82122

bb.l:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82122
  unreachable

bb.m:                                             ; preds = %bb.ai
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.n:                                             ; preds = %bb.s
  unreachable

bb.o:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store <2 x ptr> %i.as, ptr %i.p, align 16, !alias.scope !82133, !noalias !82110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  store i64 %i.ar, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !82133, !noalias !82110
  %i.bi = lshr i64 %3, 10                         ; 3 uses
  %i.bj = and i64 %3, 1023                        ; 7 uses
  %i.bk = mul i64 %.sroa.0.0.i, %i.bi             ; 8 uses
  %i.bl = add i64 %i.bk, %i.bj
  %.not23.i = icmp eq i64 %i.bj, 0
  %i.bm = icmp eq i64 %i.ar, %i.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !82110
  %i.bn = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 1024) ; 12 uses
  %.not.i.i = icmp slt i64 %i.bn, 0
  br i1 %.not.i.i, label %bb.s, label %bb.p, !prof !107

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82134
  %i.bo = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !82134 ; 8 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.s, label %bb.t

.thread.i:                                        ; preds = %bb.au, %bb.at, %bb.ag, %bb.af, %bb.w, %bb.r
  %.pn28.i = phi { ptr, i32 } [ %i.bt, %bb.r ], [ %i.dg, %bb.ag ], [ %i.ci, %bb.w ], [ %i.dg, %bb.af ], [ %lpad.loopexit.split-lp.i, %bb.at ], [ %lpad.phi117.i, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82135)
  call void @llvm.experimental.noalias.scope.decl(metadata !82136)
  call void @llvm.experimental.noalias.scope.decl(metadata !82137)
  call void @llvm.experimental.noalias.scope.decl(metadata !82138)
  %i.bq = load ptr, ptr %i.p, align 16, !alias.scope !82139, !noalias !82110, !nonnull !102, !noundef !102
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !82140
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.q:                                             ; preds = %.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.ao, !noalias !82110

bb.r:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.s:                                             ; preds = %bb.p, %bb.o
  %.sroa.445.0.ph.i = phi i64 [ 1, %bb.p ], [ 0, %bb.o ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.445.0.ph.i, i64 %i.bn) #66
          to label %bb.n unwind label %bb.r, !noalias !82110

bb.t:                                             ; preds = %bb.p
  store i64 %i.bn, ptr %i.o, align 8, !noalias !82110
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.bo, ptr %i.bu, align 8, !noalias !82110
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.not78.i = icmp eq i64 %i.bi, 0
  br i1 %.not78.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.bw = lshr i64 %i.bn, 10
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.as, %bb.t
  %storemerge.lcssa71.i = phi i64 [ 0, %bb.t ], [ %i.ef, %bb.as ] ; 10 uses
  store i64 %storemerge.lcssa71.i, ptr %i.bv, align 8, !noalias !82110
  br i1 %.not23.i, label %bb.u, label %bb.y

.lr.ph.i:                                         ; preds = %bb.as, %.lr.ph.preheader.i
  %.sroa.08.076.i = phi i64 [ %i.bx, %bb.as ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %storemerge75.i = phi i64 [ %i.ef, %bb.as ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.bx = add nuw nsw i64 %.sroa.08.076.i, 1      ; 2 uses
  %i.by = mul i64 %.sroa.08.076.i, %.sroa.0.0.i   ; 4 uses
  %i.bz = add i64 %i.by, %.sroa.0.0.i             ; 3 uses
  %i.ca = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !82110, !noundef !102
  %i.cb = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !82110, !noundef !102 ; 2 uses
  %i.cc = icmp ult i64 %i.bz, %i.by
  %.not26.i = icmp ugt i64 %i.bz, %i.cb
  %or.cond33.i = or i1 %i.cc, %.not26.i
  br i1 %or.cond33.i, label %.invoke.i, label %bb.ap, !prof !127

bb.u:                                             ; preds = %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.i
  %.sroa.5.0.copyload.i = phi i64 [ %i.de, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.cu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %storemerge.lcssa71.i, %._crit_edge.i ] ; 3 uses
  %.sroa.4.0.copyload.i = phi ptr [ %i.db, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.bo, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.pre.i, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.bn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.bn, %._crit_edge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !82110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82141)
  %i.cd = icmp sgt i64 %.sroa.5.0.copyload.i, -1
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !82142
  store i64 1, ptr %i.m, align 8, !noalias !82142
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ce, align 8, !noalias !82142
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.4.0.copyload.i, ptr %i.cf, align 8, !noalias !82142
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !82142
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !82142
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 1, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !82142
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !82142
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82143
  %i.cg = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !82143 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.v, label %bb.ae, !prof !104

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i unwind label %bb.w, !noalias !82143

.noexc.i.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m) #67
          to label %.thread.i unwind label %bb.x, !noalias !82142

bb.x:                                             ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82142
  unreachable

bb.y:                                             ; preds = %._crit_edge.i
  br i1 %i.bm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %4 = icmp sgt i64 %storemerge.lcssa71.i, -1
  tail call void @llvm.assume(i1 %4)
  %i.ck = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !82110, !noundef !102
  %i.cl = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !82110, !noundef !102 ; 2 uses
  %i.cm = add i64 %i.bk, %.sroa.0.0.i             ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.bk
  %.not24.i = icmp ugt i64 %i.cm, %i.cl
  %or.cond.i = or i1 %i.cn, %.not24.i
  br i1 %or.cond.i, label %.invoke.i, label %bb.ab, !prof !127

bb.aa:                                            ; preds = %bb.y
  %i.co = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !82110, !noundef !102 ; 2 uses
  %i.cp = icmp ult i64 %i.ar, %i.bk
  %.not25.i = icmp ugt i64 %i.ar, %i.co
  %or.cond32.i = or i1 %i.cp, %.not25.i
  br i1 %or.cond32.i, label %.invoke.i, label %bb.ad, !prof !127

bb.ab:                                            ; preds = %bb.z
  %i.cq = sub nsw i64 %i.bn, %storemerge.lcssa71.i ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 1023
  br i1 %i.cr, label %bb.ac, label %.invoke.i, !prof !105

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %storemerge.lcssa71.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.bk
  invoke void @_RNvXs2_Cs76EB6vxIZIJ_16lance_bitpackinghNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.al, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull %i.cs, i64 noundef 1024)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.at, !noalias !82110

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.ac
  %i.cu = or disjoint i64 %storemerge.lcssa71.i, %i.bj
  br label %bb.u

bb.ad:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !82110, !nonnull !102, !noundef !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.bk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82145)
  %i.cx = sub i64 %i.bn, %storemerge.lcssa71.i
  %i.cy = icmp ugt i64 %i.bj, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !108

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i: ; preds = %bb.ad
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %storemerge.lcssa71.i, i64 noundef %i.bj, i64 noundef 1, i64 noundef 1)
          to label %.noexc37.i unwind label %bb.at, !noalias !82110

.noexc37.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i
  %i.cz = load i64, ptr %i.bv, align 8, !alias.scope !82146, !noalias !82110, !noundef !102 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, -1
  tail call void @llvm.assume(i1 %i.da)
  %.pre.i = load ptr, ptr %i.bu, align 8, !alias.scope !82146, !noalias !82110
  %.sroa.0.0.copyload.pre.pre.i = load i64, ptr %i.o, align 8, !noalias !82110
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.ad
  %5 = icmp sgt i64 %storemerge.lcssa71.i, -1
  tail call void @llvm.assume(i1 %5)
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %.noexc37.i
  %.sroa.0.0.copyload.pre.i = phi i64 [ %.sroa.0.0.copyload.pre.pre.i, %.noexc37.i ], [ %i.bn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %i.db = phi ptr [ %.pre.i, %.noexc37.i ], [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  %i.dc = phi i64 [ %i.cz, %.noexc37.i ], [ %storemerge.lcssa71.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull readonly align 1 %i.cw, i64 %i.bj, i1 false), !noalias !82147
  %i.de = add nuw i64 %i.dc, %i.bj
  br label %bb.u

bb.ae:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !82142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !82142
  store ptr %i.cg, ptr %i.n, align 8, !alias.scope !82141, !noalias !82110
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !82141, !noalias !82110
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !82141, !noalias !82110
  %i.df = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.ah unwind label %bb.af, !noalias !82110

bb.af:                                            ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = atomicrmw add ptr %i.cg, i64 -1 release, align 8, !noalias !82148
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread.i unwind label %bb.ao, !noalias !82110

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !82109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !82110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !82110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82152)
  %i.dj = load ptr, ptr %i.p, align 16, !alias.scope !82153, !noalias !82110, !nonnull !102, !noundef !102
  %i.dk = atomicrmw add ptr %i.dj, i64 -1 release, align 8, !noalias !82154
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit40.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit40.i unwind label %bb.m, !noalias !82110

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit40.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !82110
  call void @llvm.experimental.noalias.scope.decl(metadata !82155)
  call void @llvm.experimental.noalias.scope.decl(metadata !82156)
  call void @llvm.experimental.noalias.scope.decl(metadata !82157)
  call void @llvm.experimental.noalias.scope.decl(metadata !82158)
  call void @llvm.experimental.noalias.scope.decl(metadata !82159)
  %i.dm = load ptr, ptr %i.t, align 16, !alias.scope !82160, !nonnull !102, !noundef !102
  %i.dn = atomicrmw add ptr %i.dm, i64 -1 release, align 8, !noalias !82161
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit40.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i unwind label %bb.ak, !noalias !82122

bb.ak:                                            ; preds = %bb.aj
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82162)
  call void @llvm.experimental.noalias.scope.decl(metadata !82163)
  call void @llvm.experimental.noalias.scope.decl(metadata !82164)
  %i.dq = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !82165, !nonnull !102, !noundef !102
  %i.dr = atomicrmw add ptr %i.dq, i64 -1 release, align 8, !noalias !82166
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.an, !noalias !82122

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i: ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit40.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82167)
  call void @llvm.experimental.noalias.scope.decl(metadata !82168)
  call void @llvm.experimental.noalias.scope.decl(metadata !82169)
  %i.dt = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !82170, !nonnull !102, !noundef !102
  %i.du = atomicrmw add ptr %i.dt, i64 -1 release, align 8, !noalias !82171
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.am, label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linehEB8_.exit

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx), !noalias !82122
  br label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linehEB8_.exit

bb.an:                                            ; preds = %bb.al
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82122
  unreachable

bb.ao:                                            ; preds = %bb.ag, %bb.q, %bb.k
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ao, %bb.j, %bb.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82122
  unreachable

bb.ap:                                            ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %.sroa.08.076.i, %i.bw
  br i1 %exitcond.not.i, label %bb.aq, label %bb.ar, !prof !108

bb.aq:                                            ; preds = %bb.ap
  %i.dy = sub nuw nsw i64 %i.bn, %storemerge75.i
  br label %.invoke.i

.invoke.i:                                        ; preds = %.lr.ph.i, %bb.aq, %bb.ab, %bb.aa, %bb.z
  %i.dz = phi i64 [ 0, %bb.aq ], [ %i.bk, %bb.aa ], [ 0, %bb.ab ], [ %i.bk, %bb.z ], [ %i.by, %.lr.ph.i ]
  %i.ea = phi i64 [ 1024, %bb.aq ], [ %i.ar, %bb.aa ], [ 1024, %bb.ab ], [ %i.cm, %bb.z ], [ %i.bz, %.lr.ph.i ]
  %i.eb = phi i64 [ %i.dy, %bb.aq ], [ %i.co, %bb.aa ], [ %i.cq, %bb.ab ], [ %i.cl, %bb.z ], [ %i.cb, %.lr.ph.i ]
  %i.ec = phi ptr [ @382, %bb.aq ], [ @381, %bb.aa ], [ @379, %bb.ab ], [ @380, %bb.z ], [ @383, %.lr.ph.i ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.dz, i64 noundef %i.ea, i64 noundef %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec) #66
          to label %.cont.i unwind label %bb.at, !noalias !82110

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bo, i64 %storemerge75.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  invoke void @_RNvXs2_Cs76EB6vxIZIJ_16lance_bitpackinghNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.al, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull %i.ed, i64 noundef 1024)
          to label %bb.as unwind label %.thread113.i, !noalias !82110

bb.as:                                            ; preds = %bb.ar
  %i.ef = add nuw i64 %storemerge75.i, 1024       ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.bx, %i.bi
  br i1 %exitcond97.not.i, label %._crit_edge.i, label %.lr.ph.i

.thread113.i:                                     ; preds = %bb.ar
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %.invoke.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, %bb.ac
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.pre.i = load i64, ptr %i.o, align 8, !alias.scope !82172, !noalias !82110 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82172)
  %i.eg = icmp eq i64 %.val.i.pre.i, 0
  br i1 %i.eg, label %.thread.i, label %._crit_edge321

._crit_edge321:                                   ; preds = %bb.at
  %.val1.i.i.pre = load ptr, ptr %i.bu, align 8, !alias.scope !82172, !noalias !82110
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge321, %.thread113.i
  %.val1.i.i = phi ptr [ %i.bo, %.thread113.i ], [ %.val1.i.i.pre, %._crit_edge321 ]
  %lpad.phi117.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.thread113.i ], [ %lpad.loopexit.split-lp.i, %._crit_edge321 ]
  %.val.i116.i = phi i64 [ %i.bn, %.thread113.i ], [ %.val.i.pre.i, %._crit_edge321 ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i116.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !82173
  br label %.thread.i

bb.av:                                            ; preds = %.split1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.7.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 9 uses
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx298, align 8
  %.sroa.8.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store i64 %i.w, ptr %.sroa.8.0..sroa_idx304, align 8
  %.sroa.9.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.ai, ptr %.sroa.9.0..sroa_idx310, align 8
  %i.eh = load i64, ptr %1, align 8, !noundef !102 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82174)
  %i.ei = shl i64 %i.eh, 10                       ; 2 uses
  %i.ej = lshr i64 %i.ei, %i.aj
  %i.ek = and i64 %i.ei, %i.ak
  %.not.i9 = icmp ne i64 %i.ek, 0
  %i.el = zext i1 %.not.i9 to i64
  %.sroa.0.0.i10 = add nuw i64 %i.ej, %i.el       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !82175
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicetEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
          to label %bb.bd unwind label %bb.bb, !noalias !82176

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.bf, %.thread.i23, %bb.bb
  %.pn30.i11 = phi { ptr, i32 } [ %i.ex, %bb.bb ], [ %.pn28.i24, %bb.bf ], [ %.pn28.i24, %.thread.i23 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82177)
  call void @llvm.experimental.noalias.scope.decl(metadata !82178)
  call void @llvm.experimental.noalias.scope.decl(metadata !82179)
  call void @llvm.experimental.noalias.scope.decl(metadata !82180)
  call void @llvm.experimental.noalias.scope.decl(metadata !82181)
  %i.em = load ptr, ptr %i.s, align 8, !alias.scope !82182, !nonnull !102, !noundef !102
  %i.en = atomicrmw add ptr %i.em, i64 -1 release, align 8, !noalias !82183
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i12

bb.aw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i12 unwind label %bb.ax, !noalias !82176

bb.ax:                                            ; preds = %bb.aw
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82184)
  call void @llvm.experimental.noalias.scope.decl(metadata !82185)
  call void @llvm.experimental.noalias.scope.decl(metadata !82186)
  %i.eq = load ptr, ptr %.sroa.7.0..sroa_idx298, align 8, !alias.scope !82187, !nonnull !102, !noundef !102
  %i.er = atomicrmw add ptr %i.eq, i64 -1 release, align 8, !noalias !82188
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.ay, label %.body.i15

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx298)
          to label %.body.i15 unwind label %bb.ba, !noalias !82176

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i12: ; preds = %bb.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82189)
  call void @llvm.experimental.noalias.scope.decl(metadata !82190)
  call void @llvm.experimental.noalias.scope.decl(metadata !82191)
  %i.et = load ptr, ptr %.sroa.7.0..sroa_idx298, align 8, !alias.scope !82192, !nonnull !102, !noundef !102
  %i.eu = atomicrmw add ptr %i.et, i64 -1 release, align 8, !noalias !82193
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.az:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i12
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx298)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.cd, !noalias !82176

bb.ba:                                            ; preds = %bb.ay
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82176
  unreachable

bb.bb:                                            ; preds = %bb.bx, %bb.av
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.bc:                                            ; preds = %bb.bh
  unreachable

bb.bd:                                            ; preds = %bb.av
  %i.ey = lshr i64 %3, 10                         ; 3 uses
  %i.ez = and i64 %3, 1023                        ; 7 uses
  %i.fa = mul i64 %.sroa.0.0.i10, %i.ey           ; 8 uses
  %i.fb = add i64 %i.fa, %i.ez                    ; 4 uses
  %.not23.i16 = icmp eq i64 %i.ez, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !82175
  %i.fe = lshr i64 %i.fd, 1
  %i.ff = icmp eq i64 %i.fe, %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !82175
  %i.fg = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 1024) ; 7 uses
  %i.fh = shl i64 %i.fg, 1                        ; 7 uses
  %6 = icmp slt i64 %i.fg, 0
  %.not.i.i17 = icmp ugt i64 %i.fh, 9223372036854775806
  %or.cond.i.i = or i1 %6, %.not.i.i17
  br i1 %or.cond.i.i, label %bb.bh, label %bb.be, !prof !107

bb.be:                                            ; preds = %bb.bd
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82194
  %i.fi = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !82194 ; 8 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.bh, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

.thread.i23:                                      ; preds = %bb.ci, %bb.ch, %bb.bv, %bb.bu, %bb.bl, %bb.bg
  %.pn28.i24 = phi { ptr, i32 } [ %i.fn, %bb.bg ], [ %i.hl, %bb.bv ], [ %i.gg, %bb.bl ], [ %i.hl, %bb.bu ], [ %lpad.loopexit.split-lp.i29, %bb.ch ], [ %lpad.phi122.i, %bb.ci ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82195)
  call void @llvm.experimental.noalias.scope.decl(metadata !82196)
  call void @llvm.experimental.noalias.scope.decl(metadata !82197)
  call void @llvm.experimental.noalias.scope.decl(metadata !82198)
  %i.fk = load ptr, ptr %i.l, align 8, !alias.scope !82199, !noalias !82175, !nonnull !102, !noundef !102
  %i.fl = atomicrmw add ptr %i.fk, i64 -1 release, align 8, !noalias !82200
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.bf:                                            ; preds = %.thread.i23
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.cd, !noalias !82175

bb.bg:                                            ; preds = %bb.bh
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i23

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %.sroa.446.0.ph.i = phi i64 [ 2, %bb.be ], [ 0, %bb.bd ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.446.0.ph.i, i64 %i.fh) #66
          to label %bb.bc unwind label %bb.bg, !noalias !82175

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.be
  store i64 %i.fg, ptr %i.k, align 8, !noalias !82175
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.fi, ptr %i.fo, align 8, !noalias !82175
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.not80.i = icmp eq i64 %i.ey, 0
  br i1 %.not80.i, label %._crit_edge.i25, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fr = lshr i64 %i.fg, 10
  br label %bb.bi

._crit_edge.i25:                                  ; preds = %bb.cg, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %storemerge.lcssa73.i = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.if, %bb.cg ] ; 10 uses
  store i64 %storemerge.lcssa73.i, ptr %i.fp, align 8, !noalias !82175
  br i1 %.not23.i16, label %bb.bj, label %bb.bn

bb.bi:                                            ; preds = %bb.cg, %.lr.ph.i18
  %.sroa.08.078.i = phi i64 [ 0, %.lr.ph.i18 ], [ %i.fs, %bb.cg ] ; 3 uses
  %storemerge77.i = phi i64 [ 0, %.lr.ph.i18 ], [ %i.if, %bb.cg ] ; 4 uses
  %i.fs = add nuw nsw i64 %.sroa.08.078.i, 1      ; 2 uses
  %i.ft = mul i64 %.sroa.08.078.i, %.sroa.0.0.i10 ; 4 uses
  %i.fu = add i64 %i.ft, %.sroa.0.0.i10           ; 3 uses
  %i.fv = icmp samesign ult i64 %storemerge77.i, 4611686018427387904
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = load ptr, ptr %i.fq, align 8, !noalias !82175, !noundef !102
  %i.fx = load i64, ptr %i.fc, align 8, !noalias !82175, !noundef !102
  %i.fy = lshr i64 %i.fx, 1                       ; 2 uses
  %i.fz = icmp ult i64 %i.fu, %i.ft
  %.not26.i19 = icmp ugt i64 %i.fu, %i.fy
  %or.cond33.i20 = or i1 %i.fz, %.not26.i19
  br i1 %or.cond33.i20, label %.invoke.i28, label %bb.ce, !prof !127

bb.bj:                                            ; preds = %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendRtINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItertEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.i25
  %.pre-phi.i = phi i64 [ %.pre105.pre-phi.i, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendRtINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItertEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.fh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.fh, %._crit_edge.i25 ]
  %.sroa.5.0.copyload.i31 = phi i64 [ %i.hi, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendRtINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItertEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.gw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %storemerge.lcssa73.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.4.0.copyload.i32 = phi ptr [ %i.hf, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendRtINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItertEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.fi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.fi, %._crit_edge.i25 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !82175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82201)
  %i.ga = icmp ult i64 %.sroa.5.0.copyload.i31, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = shl nuw nsw i64 %.sroa.5.0.copyload.i31, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !82202
  store i64 1, ptr %i.i, align 8, !noalias !82202
  %i.gc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.gc, align 8, !noalias !82202
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.4.0.copyload.i32, ptr %i.gd, align 8, !noalias !82202
  %.sroa.42.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.gb, ptr %.sroa.42.0..sroa_idx.i.i34, align 8, !noalias !82202
  %.sroa.53.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i35, align 8, !noalias !82202
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 2, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i36, align 8, !noalias !82202
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.pre-phi.i, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i37, align 8, !noalias !82202
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82203
  %i.ge = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !82203 ; 4 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.bk, label %bb.bt, !prof !104

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i40 unwind label %bb.bl, !noalias !82203

.noexc.i.i40:                                     ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #67
          to label %.thread.i23 unwind label %bb.bm, !noalias !82202

bb.bm:                                            ; preds = %bb.bl
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82202
  unreachable

bb.bn:                                            ; preds = %._crit_edge.i25
  br i1 %i.ff, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gi = icmp samesign ult i64 %storemerge.lcssa73.i, 4611686018427387904
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !82175, !noundef !102
  %i.gl = load i64, ptr %i.fc, align 8, !noalias !82175, !noundef !102
  %i.gm = lshr i64 %i.gl, 1                       ; 2 uses
  %i.gn = add i64 %i.fa, %.sroa.0.0.i10           ; 3 uses
  %i.go = icmp ult i64 %i.gn, %i.fa
  %.not24.i26 = icmp ugt i64 %i.gn, %i.gm
  %or.cond.i27 = or i1 %i.go, %.not24.i26
  br i1 %or.cond.i27, label %.invoke.i28, label %bb.bq, !prof !127

bb.bp:                                            ; preds = %bb.bn
  %i.gp = load i64, ptr %i.fc, align 8, !noalias !82175, !noundef !102
  %i.gq = lshr i64 %i.gp, 1                       ; 2 uses
  %i.gr = icmp ult i64 %i.fb, %i.fa
  %.not25.i41 = icmp samesign ugt i64 %i.fb, %i.gq
  %or.cond32.i42 = or i1 %i.gr, %.not25.i41
  br i1 %or.cond32.i42, label %.invoke.i28, label %bb.bs, !prof !127

bb.bq:                                            ; preds = %bb.bo
  %i.gs = sub nsw i64 %i.fg, %storemerge.lcssa73.i ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 1023
  br i1 %i.gt, label %bb.br, label %.invoke.i28, !prof !105

bb.br:                                            ; preds = %bb.bq
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %storemerge.lcssa73.i
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.fa
  invoke void @_RNvXs3_Cs76EB6vxIZIJ_16lance_bitpackingtNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.eh, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.gv, i64 noundef %.sroa.0.0.i10, ptr noalias noundef nonnull align 2 %i.gu, i64 noundef 1024)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.ch, !noalias !82175

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.br
  %i.gw = or disjoint i64 %storemerge.lcssa73.i, %i.ez
  br label %bb.bj

bb.bs:                                            ; preds = %bb.bp
  %i.gx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !82175, !nonnull !102, !noundef !102
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.fa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82204)
  %.idx.i = shl nuw nsw i64 %i.ez, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82205)
  %i.ha = sub nsw i64 %i.fg, %storemerge.lcssa73.i
  %i.hb = icmp ugt i64 %i.ez, %i.ha
  br i1 %i.hb, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !108

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i: ; preds = %bb.bs
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %storemerge.lcssa73.i, i64 noundef range(i64 0, -9223372036854775808) %i.ez, i64 noundef 2, i64 noundef 2)
          to label %.noexc38.i unwind label %bb.ch, !noalias !82175

.noexc38.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i
  %i.hc = load i64, ptr %i.fp, align 8, !alias.scope !82206, !noalias !82175, !noundef !102 ; 2 uses
  %i.hd = icmp ult i64 %i.hc, 4611686018427387904
  tail call void @llvm.assume(i1 %i.hd)
  %.pre.i44 = load ptr, ptr %i.fo, align 8, !alias.scope !82206, !noalias !82175
  %.sroa.0.0.copyload.pre.pre.i45 = load i64, ptr %i.k, align 8, !noalias !82175
  %.pre106.i = shl nuw nsw i64 %.sroa.0.0.copyload.pre.pre.i45, 1
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendRtINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItertEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.bs
  %i.he = icmp samesign ult i64 %storemerge.lcssa73.i, 4611686018427387904
  tail call void @llvm.assume(i1 %i.he)
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendRtINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItertEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendRtINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItertEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %.noexc38.i
  %.pre105.pre-phi.i = phi i64 [ %i.fh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %.pre106.i, %.noexc38.i ]
  %i.hf = phi ptr [ %i.fi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %.pre.i44, %.noexc38.i ] ; 2 uses
  %i.hg = phi i64 [ %storemerge.lcssa73.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %i.hc, %.noexc38.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %i.hg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.hh, ptr nonnull readonly align 2 %i.gz, i64 %.idx.i, i1 false), !noalias !82207
  %i.hi = add nuw nsw i64 %i.hg, %i.ez
  br label %bb.bj

bb.bt:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ge, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !82202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !82202
  store ptr %i.ge, ptr %i.j, align 8, !alias.scope !82201, !noalias !82175
  %.sroa.4.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.4.0.copyload.i32, ptr %.sroa.4.0..sroa_idx.i.i38, align 8, !alias.scope !82201, !noalias !82175
  %.sroa.5.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.gb, ptr %.sroa.5.0..sroa_idx.i.i39, align 8, !alias.scope !82201, !noalias !82175
  %i.hj = load i64, ptr %.sroa.8.0..sroa_idx304, align 8, !alias.scope !82174, !noundef !102
  %i.hk = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.bw unwind label %bb.bu, !noalias !82175

bb.bu:                                            ; preds = %bb.bt
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = atomicrmw add ptr %i.ge, i64 -1 release, align 8, !noalias !82208
  %i.hn = icmp eq i64 %i.hm, 1
  br i1 %i.hn, label %bb.bv, label %.thread.i23

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread.i23 unwind label %bb.cd, !noalias !82175

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !82174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !82175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !82175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82212)
  %i.ho = load ptr, ptr %i.l, align 8, !alias.scope !82213, !noalias !82175, !nonnull !102, !noundef !102
  %i.hp = atomicrmw add ptr %i.ho, i64 -1 release, align 8, !noalias !82214
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.bx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit41.i

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit41.i unwind label %bb.bb, !noalias !82175

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit41.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !82175
  call void @llvm.experimental.noalias.scope.decl(metadata !82215)
  call void @llvm.experimental.noalias.scope.decl(metadata !82216)
  call void @llvm.experimental.noalias.scope.decl(metadata !82217)
  call void @llvm.experimental.noalias.scope.decl(metadata !82218)
  call void @llvm.experimental.noalias.scope.decl(metadata !82219)
  %i.hr = load ptr, ptr %i.s, align 8, !alias.scope !82220, !nonnull !102, !noundef !102
  %i.hs = atomicrmw add ptr %i.hr, i64 -1 release, align 8, !noalias !82221
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %bb.by, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i

bb.by:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit41.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i unwind label %bb.bz, !noalias !82176

bb.bz:                                            ; preds = %bb.by
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82222)
  call void @llvm.experimental.noalias.scope.decl(metadata !82223)
  call void @llvm.experimental.noalias.scope.decl(metadata !82224)
  %i.hv = load ptr, ptr %.sroa.7.0..sroa_idx298, align 8, !alias.scope !82225, !nonnull !102, !noundef !102
  %i.hw = atomicrmw add ptr %i.hv, i64 -1 release, align 8, !noalias !82226
  %i.hx = icmp eq i64 %i.hw, 1
  br i1 %i.hx, label %bb.ca, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.ca:                                            ; preds = %bb.bz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx298)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.cc, !noalias !82176

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i: ; preds = %bb.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit41.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82227)
  call void @llvm.experimental.noalias.scope.decl(metadata !82228)
  call void @llvm.experimental.noalias.scope.decl(metadata !82229)
  %i.hy = load ptr, ptr %.sroa.7.0..sroa_idx298, align 8, !alias.scope !82230, !nonnull !102, !noundef !102
  %i.hz = atomicrmw add ptr %i.hy, i64 -1 release, align 8, !noalias !82231
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.cb, label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linetEB8_.exit

bb.cb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx298), !noalias !82176
  br label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linetEB8_.exit

bb.cc:                                            ; preds = %bb.ca
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82176
  unreachable

bb.cd:                                            ; preds = %bb.bv, %bb.bf, %bb.az
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i15

.body.i15:                                        ; preds = %bb.cd, %bb.ay, %bb.ax
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82176
  unreachable

bb.ce:                                            ; preds = %bb.bi
  %exitcond.not.i21 = icmp eq i64 %.sroa.08.078.i, %i.fr
  br i1 %exitcond.not.i21, label %7, label %bb.cf, !prof !108

7:                                                ; preds = %bb.ce
  %8 = sub nuw nsw i64 %i.fg, %storemerge77.i
  br label %.invoke.i28

.invoke.i28:                                      ; preds = %bb.bi, %7, %bb.bq, %bb.bp, %bb.bo
  %9 = phi i64 [ 0, %7 ], [ %i.fa, %bb.bp ], [ 0, %bb.bq ], [ %i.fa, %bb.bo ], [ %i.ft, %bb.bi ]
  %10 = phi i64 [ 1024, %7 ], [ %i.fb, %bb.bp ], [ 1024, %bb.bq ], [ %i.gn, %bb.bo ], [ %i.fu, %bb.bi ]
  %11 = phi i64 [ %8, %7 ], [ %i.gq, %bb.bp ], [ %i.gs, %bb.bq ], [ %i.gm, %bb.bo ], [ %i.fy, %bb.bi ]
  %12 = phi ptr [ @382, %7 ], [ @381, %bb.bp ], [ @379, %bb.bq ], [ @380, %bb.bo ], [ @383, %bb.bi ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #66
          to label %.cont.i30 unwind label %bb.ch, !noalias !82175

.cont.i30:                                        ; preds = %.invoke.i28
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %storemerge77.i
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.ft
  invoke void @_RNvXs3_Cs76EB6vxIZIJ_16lance_bitpackingtNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.eh, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.ie, i64 noundef %.sroa.0.0.i10, ptr noalias noundef nonnull align 2 %i.id, i64 noundef 1024)
          to label %bb.cg unwind label %.thread118.i, !noalias !82175

bb.cg:                                            ; preds = %bb.cf
  %i.if = add nuw nsw i64 %storemerge77.i, 1024   ; 2 uses
  %exitcond99.not.i = icmp eq i64 %i.fs, %i.ey
  br i1 %exitcond99.not.i, label %._crit_edge.i25, label %bb.bi

.thread118.i:                                     ; preds = %bb.cf
  %lpad.loopexit.i22 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %.invoke.i28, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, %bb.br
  %lpad.loopexit.split-lp.i29 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i = load i64, ptr %i.k, align 8, !noalias !82175 ; 2 uses
  %13 = icmp eq i64 %.val.pre.i, 0
  br i1 %13, label %.thread.i23, label %._crit_edge319

._crit_edge319:                                   ; preds = %bb.ch
  %.val34.i.pre = load ptr, ptr %i.fo, align 8, !noalias !82175
  %.pre = shl nuw i64 %.val.pre.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge319, %.thread118.i
  %.pre-phi = phi i64 [ %.pre, %._crit_edge319 ], [ %i.fh, %.thread118.i ]
  %.val34.i = phi ptr [ %.val34.i.pre, %._crit_edge319 ], [ %i.fi, %.thread118.i ]
  %lpad.phi122.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i29, %._crit_edge319 ], [ %lpad.loopexit.i22, %.thread118.i ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %.pre-phi, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !82175
  br label %.thread.i23

bb.cj:                                            ; preds = %.split1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.7.0..sroa_idx300 = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 9 uses
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx300, align 8
  %.sroa.8.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store i64 %i.w, ptr %.sroa.8.0..sroa_idx306, align 8
  %.sroa.9.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %i.ai, ptr %.sroa.9.0..sroa_idx312, align 8
  %i.ig = load i64, ptr %1, align 8, !noundef !102 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82232)
  %i.ih = shl i64 %i.ig, 10                       ; 2 uses
  %i.ii = lshr i64 %i.ih, %i.aj
  %i.ij = and i64 %i.ih, %i.ak
  %.not.i50 = icmp ne i64 %i.ij, 0
  %i.ik = zext i1 %.not.i50 to i64
  %.sroa.0.0.i51 = add nuw i64 %i.ii, %i.ik       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !82233
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicemEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.cr unwind label %bb.cp, !noalias !82234

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.ct, %.thread.i73, %bb.cp
  %.pn30.i52 = phi { ptr, i32 } [ %i.iw, %bb.cp ], [ %.pn28.i74, %bb.ct ], [ %.pn28.i74, %.thread.i73 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82235)
  call void @llvm.experimental.noalias.scope.decl(metadata !82236)
  call void @llvm.experimental.noalias.scope.decl(metadata !82237)
  call void @llvm.experimental.noalias.scope.decl(metadata !82238)
  call void @llvm.experimental.noalias.scope.decl(metadata !82239)
  %i.il = load ptr, ptr %i.r, align 8, !alias.scope !82240, !nonnull !102, !noundef !102
  %i.im = atomicrmw add ptr %i.il, i64 -1 release, align 8, !noalias !82241
  %i.in = icmp eq i64 %i.im, 1
  br i1 %i.in, label %bb.ck, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i53

bb.ck:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i53 unwind label %bb.cl, !noalias !82234

bb.cl:                                            ; preds = %bb.ck
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82242)
  call void @llvm.experimental.noalias.scope.decl(metadata !82243)
  call void @llvm.experimental.noalias.scope.decl(metadata !82244)
  %i.ip = load ptr, ptr %.sroa.7.0..sroa_idx300, align 8, !alias.scope !82245, !nonnull !102, !noundef !102
  %i.iq = atomicrmw add ptr %i.ip, i64 -1 release, align 8, !noalias !82246
  %i.ir = icmp eq i64 %i.iq, 1
  br i1 %i.ir, label %bb.cm, label %.body.i56

bb.cm:                                            ; preds = %bb.cl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx300)
          to label %.body.i56 unwind label %bb.co, !noalias !82234

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i53: ; preds = %bb.ck, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82247)
  call void @llvm.experimental.noalias.scope.decl(metadata !82248)
  call void @llvm.experimental.noalias.scope.decl(metadata !82249)
  %i.is = load ptr, ptr %.sroa.7.0..sroa_idx300, align 8, !alias.scope !82250, !nonnull !102, !noundef !102
  %i.it = atomicrmw add ptr %i.is, i64 -1 release, align 8, !noalias !82251
  %i.iu = icmp eq i64 %i.it, 1
  br i1 %i.iu, label %bb.cn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.cn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i53
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx300)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.dr, !noalias !82234

bb.co:                                            ; preds = %bb.cm
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82234
  unreachable

bb.cp:                                            ; preds = %bb.dl, %bb.cj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.cq:                                            ; preds = %bb.cv
  unreachable

bb.cr:                                            ; preds = %bb.cj
  %i.ix = lshr i64 %3, 10                         ; 3 uses
  %i.iy = and i64 %3, 1023                        ; 7 uses
  %i.iz = mul i64 %.sroa.0.0.i51, %i.ix           ; 8 uses
  %i.ja = add i64 %i.iz, %i.iy                    ; 4 uses
  %.not23.i57 = icmp eq i64 %i.iy, 0
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !82233
  %i.jd = lshr i64 %i.jc, 2
  %i.je = icmp eq i64 %i.jd, %i.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !82233
  %i.jf = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 1024) ; 7 uses
  %i.jg = shl i64 %i.jf, 2                        ; 7 uses
  %i.jh = icmp ugt i64 %i.jf, 4611686018427387903
  %.not.i.i58 = icmp ugt i64 %i.jg, 9223372036854775804
  %or.cond.i.i59 = or i1 %i.jh, %.not.i.i58
  br i1 %or.cond.i.i59, label %bb.cv, label %bb.cs, !prof !107

bb.cs:                                            ; preds = %bb.cr
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82252
  %i.ji = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.jg, i64 noundef range(i64 1, -9223372036854775807) 4) #63, !noalias !82252 ; 8 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.cv, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i60

.thread.i73:                                      ; preds = %bb.dw, %bb.dv, %bb.dj, %bb.di, %bb.cz, %bb.cu
  %.pn28.i74 = phi { ptr, i32 } [ %i.jn, %bb.cu ], [ %i.ll, %bb.dj ], [ %i.kg, %bb.cz ], [ %i.ll, %bb.di ], [ %lpad.loopexit.split-lp.i81, %bb.dv ], [ %lpad.phi122.i70, %bb.dw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82253)
  call void @llvm.experimental.noalias.scope.decl(metadata !82254)
  call void @llvm.experimental.noalias.scope.decl(metadata !82255)
  call void @llvm.experimental.noalias.scope.decl(metadata !82256)
  %i.jk = load ptr, ptr %i.h, align 8, !alias.scope !82257, !noalias !82233, !nonnull !102, !noundef !102
  %i.jl = atomicrmw add ptr %i.jk, i64 -1 release, align 8, !noalias !82258
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.ct:                                            ; preds = %.thread.i73
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.dr, !noalias !82233

bb.cu:                                            ; preds = %bb.cv
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i73

bb.cv:                                            ; preds = %bb.cs, %bb.cr
  %.sroa.446.0.ph.i105 = phi i64 [ 4, %bb.cs ], [ 0, %bb.cr ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.446.0.ph.i105, i64 %i.jg) #66
          to label %bb.cq unwind label %bb.cu, !noalias !82233

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i60: ; preds = %bb.cs
  store i64 %i.jf, ptr %i.g, align 8, !noalias !82233
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.ji, ptr %i.jo, align 8, !noalias !82233
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.not80.i61 = icmp eq i64 %i.ix, 0
  br i1 %.not80.i61, label %._crit_edge.i76, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i60
  %i.jq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jr = lshr i64 %i.jf, 10
  br label %bb.cw

._crit_edge.i76:                                  ; preds = %bb.du, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i60
  %storemerge.lcssa73.i77 = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i60 ], [ %i.mf, %bb.du ] ; 10 uses
  store i64 %storemerge.lcssa73.i77, ptr %i.jp, align 8, !noalias !82233
  br i1 %.not23.i57, label %bb.cx, label %bb.db

bb.cw:                                            ; preds = %bb.du, %.lr.ph.i62
  %.sroa.08.078.i63 = phi i64 [ 0, %.lr.ph.i62 ], [ %i.js, %bb.du ] ; 3 uses
  %storemerge77.i64 = phi i64 [ 0, %.lr.ph.i62 ], [ %i.mf, %bb.du ] ; 4 uses
  %i.js = add nuw nsw i64 %.sroa.08.078.i63, 1    ; 2 uses
  %i.jt = mul i64 %.sroa.08.078.i63, %.sroa.0.0.i51 ; 4 uses
  %i.ju = add i64 %i.jt, %.sroa.0.0.i51           ; 3 uses
  %i.jv = icmp samesign ult i64 %storemerge77.i64, 2305843009213693952
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = load ptr, ptr %i.jq, align 8, !noalias !82233, !noundef !102
  %i.jx = load i64, ptr %i.jb, align 8, !noalias !82233, !noundef !102
  %i.jy = lshr i64 %i.jx, 2                       ; 2 uses
  %i.jz = icmp ult i64 %i.ju, %i.jt
  %.not26.i65 = icmp ugt i64 %i.ju, %i.jy
  %or.cond33.i66 = or i1 %i.jz, %.not26.i65
  br i1 %or.cond33.i66, label %.invoke.i80, label %bb.ds, !prof !127

bb.cx:                                            ; preds = %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.i76
  %.pre-phi.i84 = phi i64 [ %.pre105.pre-phi.i99, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.jg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.jg, %._crit_edge.i76 ]
  %.sroa.5.0.copyload.i85 = phi i64 [ %i.li, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.kw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %storemerge.lcssa73.i77, %._crit_edge.i76 ] ; 2 uses
  %.sroa.4.0.copyload.i86 = phi ptr [ %i.lf, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.ji, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.ji, %._crit_edge.i76 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !82233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82259)
  %i.ka = icmp ult i64 %.sroa.5.0.copyload.i85, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = shl nuw nsw i64 %.sroa.5.0.copyload.i85, 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82260
  store i64 1, ptr %i.e, align 8, !noalias !82260
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.kc, align 8, !noalias !82260
  %i.kd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload.i86, ptr %i.kd, align 8, !noalias !82260
  %.sroa.42.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.kb, ptr %.sroa.42.0..sroa_idx.i.i88, align 8, !noalias !82260
  %.sroa.53.0..sroa_idx.i.i89 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i89, align 8, !noalias !82260
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i90 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i90, align 8, !noalias !82260
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %.pre-phi.i84, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i91, align 8, !noalias !82260
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82261
  %i.ke = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !82261 ; 4 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.cy, label %bb.dh, !prof !104

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i95 unwind label %bb.cz, !noalias !82261

.noexc.i.i95:                                     ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #67
          to label %.thread.i73 unwind label %bb.da, !noalias !82260

bb.da:                                            ; preds = %bb.cz
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82260
  unreachable

bb.db:                                            ; preds = %._crit_edge.i76
  br i1 %i.je, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ki = icmp samesign ult i64 %storemerge.lcssa73.i77, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ki)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !82233, !noundef !102
  %i.kl = load i64, ptr %i.jb, align 8, !noalias !82233, !noundef !102
  %i.km = lshr i64 %i.kl, 2                       ; 2 uses
  %i.kn = add i64 %i.iz, %.sroa.0.0.i51           ; 3 uses
  %i.ko = icmp ult i64 %i.kn, %i.iz
  %.not24.i78 = icmp ugt i64 %i.kn, %i.km
  %or.cond.i79 = or i1 %i.ko, %.not24.i78
  br i1 %or.cond.i79, label %.invoke.i80, label %bb.de, !prof !127

bb.dd:                                            ; preds = %bb.db
  %i.kp = load i64, ptr %i.jb, align 8, !noalias !82233, !noundef !102
  %i.kq = lshr i64 %i.kp, 2                       ; 2 uses
  %i.kr = icmp ult i64 %i.ja, %i.iz
  %.not25.i96 = icmp samesign ugt i64 %i.ja, %i.kq
  %or.cond32.i97 = or i1 %i.kr, %.not25.i96
  br i1 %or.cond32.i97, label %.invoke.i80, label %bb.dg, !prof !127

bb.de:                                            ; preds = %bb.dc
  %i.ks = sub nsw i64 %i.jf, %storemerge.lcssa73.i77 ; 2 uses
  %i.kt = icmp ugt i64 %i.ks, 1023
  br i1 %i.kt, label %bb.df, label %.invoke.i80, !prof !105

bb.df:                                            ; preds = %bb.de
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %storemerge.lcssa73.i77
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.iz
  invoke void @_RNvXs4_Cs76EB6vxIZIJ_16lance_bitpackingmNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.ig, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.kv, i64 noundef %.sroa.0.0.i51, ptr noalias noundef nonnull align 4 %i.ku, i64 noundef 1024)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.dv, !noalias !82233

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.df
  %i.kw = or disjoint i64 %storemerge.lcssa73.i77, %i.iy
  br label %bb.cx

bb.dg:                                            ; preds = %bb.dd
  %i.kx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !82233, !nonnull !102, !noundef !102
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.iz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82262)
  %.idx.i98 = shl nuw nsw i64 %i.iy, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82263)
  %i.la = sub nsw i64 %i.jf, %storemerge.lcssa73.i77
  %i.lb = icmp ugt i64 %i.iy, %i.la
  br i1 %i.lb, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !108

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i: ; preds = %bb.dg
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %storemerge.lcssa73.i77, i64 noundef range(i64 0, 4611686018427387904) %i.iy, i64 noundef 4, i64 noundef 4)
          to label %.noexc38.i101 unwind label %bb.dv, !noalias !82233

.noexc38.i101:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i
  %i.lc = load i64, ptr %i.jp, align 8, !alias.scope !82264, !noalias !82233, !noundef !102 ; 2 uses
  %i.ld = icmp ult i64 %i.lc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ld)
  %.pre.i102 = load ptr, ptr %i.jo, align 8, !alias.scope !82264, !noalias !82233
  %.sroa.0.0.copyload.pre.pre.i103 = load i64, ptr %i.g, align 8, !noalias !82233
  %.pre106.i104 = shl nuw nsw i64 %.sroa.0.0.copyload.pre.pre.i103, 2
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.dg
  %i.le = icmp samesign ult i64 %storemerge.lcssa73.i77, 2305843009213693952
  tail call void @llvm.assume(i1 %i.le)
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %.noexc38.i101
  %.pre105.pre-phi.i99 = phi i64 [ %i.jg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %.pre106.i104, %.noexc38.i101 ]
  %i.lf = phi ptr [ %i.ji, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %.pre.i102, %.noexc38.i101 ] ; 2 uses
  %i.lg = phi i64 [ %storemerge.lcssa73.i77, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %i.lc, %.noexc38.i101 ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.lg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lh, ptr nonnull readonly align 4 %i.kz, i64 %.idx.i98, i1 false), !noalias !82265
  %i.li = add nuw nsw i64 %i.lg, %i.iy
  br label %bb.cx

bb.dh:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ke, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !82260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !82260
  store ptr %i.ke, ptr %i.f, align 8, !alias.scope !82259, !noalias !82233
  %.sroa.4.0..sroa_idx.i.i92 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.4.0.copyload.i86, ptr %.sroa.4.0..sroa_idx.i.i92, align 8, !alias.scope !82259, !noalias !82233
  %.sroa.5.0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.kb, ptr %.sroa.5.0..sroa_idx.i.i93, align 8, !alias.scope !82259, !noalias !82233
  %i.lj = load i64, ptr %.sroa.8.0..sroa_idx306, align 8, !alias.scope !82232, !noundef !102
  %i.lk = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.dk unwind label %bb.di, !noalias !82233

bb.di:                                            ; preds = %bb.dh
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = atomicrmw add ptr %i.ke, i64 -1 release, align 8, !noalias !82266
  %i.ln = icmp eq i64 %i.lm, 1
  br i1 %i.ln, label %bb.dj, label %.thread.i73

bb.dj:                                            ; preds = %bb.di
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread.i73 unwind label %bb.dr, !noalias !82233

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !82232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !82233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !82233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82270)
  %i.lo = load ptr, ptr %i.h, align 8, !alias.scope !82271, !noalias !82233, !nonnull !102, !noundef !102
  %i.lp = atomicrmw add ptr %i.lo, i64 -1 release, align 8, !noalias !82272
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit41.i

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit41.i unwind label %bb.cp, !noalias !82233

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit41.i: ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !82233
  call void @llvm.experimental.noalias.scope.decl(metadata !82273)
  call void @llvm.experimental.noalias.scope.decl(metadata !82274)
  call void @llvm.experimental.noalias.scope.decl(metadata !82275)
  call void @llvm.experimental.noalias.scope.decl(metadata !82276)
  call void @llvm.experimental.noalias.scope.decl(metadata !82277)
  %i.lr = load ptr, ptr %i.r, align 8, !alias.scope !82278, !nonnull !102, !noundef !102
  %i.ls = atomicrmw add ptr %i.lr, i64 -1 release, align 8, !noalias !82279
  %i.lt = icmp eq i64 %i.ls, 1
  br i1 %i.lt, label %bb.dm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i94

bb.dm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit41.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i94 unwind label %bb.dn, !noalias !82234

bb.dn:                                            ; preds = %bb.dm
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82280)
  call void @llvm.experimental.noalias.scope.decl(metadata !82281)
  call void @llvm.experimental.noalias.scope.decl(metadata !82282)
  %i.lv = load ptr, ptr %.sroa.7.0..sroa_idx300, align 8, !alias.scope !82283, !nonnull !102, !noundef !102
  %i.lw = atomicrmw add ptr %i.lv, i64 -1 release, align 8, !noalias !82284
  %i.lx = icmp eq i64 %i.lw, 1
  br i1 %i.lx, label %bb.do, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.do:                                            ; preds = %bb.dn
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx300)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.dq, !noalias !82234

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i94: ; preds = %bb.dm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit41.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82285)
  call void @llvm.experimental.noalias.scope.decl(metadata !82286)
  call void @llvm.experimental.noalias.scope.decl(metadata !82287)
  %i.ly = load ptr, ptr %.sroa.7.0..sroa_idx300, align 8, !alias.scope !82288, !nonnull !102, !noundef !102
  %i.lz = atomicrmw add ptr %i.ly, i64 -1 release, align 8, !noalias !82289
  %i.ma = icmp eq i64 %i.lz, 1
  br i1 %i.ma, label %bb.dp, label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linemEB8_.exit

bb.dp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i94
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx300), !noalias !82234
  br label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linemEB8_.exit

bb.dq:                                            ; preds = %bb.do
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82234
  unreachable

bb.dr:                                            ; preds = %bb.dj, %bb.ct, %bb.cn
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i56

.body.i56:                                        ; preds = %bb.dr, %bb.cm, %bb.cl
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82234
  unreachable

bb.ds:                                            ; preds = %bb.cw
  %exitcond.not.i67 = icmp eq i64 %.sroa.08.078.i63, %i.jr
  br i1 %exitcond.not.i67, label %14, label %bb.dt, !prof !108

14:                                               ; preds = %bb.ds
  %15 = sub nuw nsw i64 %i.jf, %storemerge77.i64
  br label %.invoke.i80

.invoke.i80:                                      ; preds = %bb.cw, %14, %bb.de, %bb.dd, %bb.dc
  %16 = phi i64 [ 0, %14 ], [ %i.iz, %bb.dd ], [ 0, %bb.de ], [ %i.iz, %bb.dc ], [ %i.jt, %bb.cw ]
  %17 = phi i64 [ 1024, %14 ], [ %i.ja, %bb.dd ], [ 1024, %bb.de ], [ %i.kn, %bb.dc ], [ %i.ju, %bb.cw ]
  %18 = phi i64 [ %15, %14 ], [ %i.kq, %bb.dd ], [ %i.ks, %bb.de ], [ %i.km, %bb.dc ], [ %i.jy, %bb.cw ]
  %19 = phi ptr [ @382, %14 ], [ @381, %bb.dd ], [ @379, %bb.de ], [ @380, %bb.dc ], [ @383, %bb.cw ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %16, i64 noundef %17, i64 noundef %18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %19) #66
          to label %.cont.i83 unwind label %bb.dv, !noalias !82233

.cont.i83:                                        ; preds = %.invoke.i80
  unreachable

bb.dt:                                            ; preds = %bb.ds
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %storemerge77.i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jt
  invoke void @_RNvXs4_Cs76EB6vxIZIJ_16lance_bitpackingmNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.ig, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.me, i64 noundef %.sroa.0.0.i51, ptr noalias noundef nonnull align 4 %i.md, i64 noundef 1024)
          to label %bb.du unwind label %.thread118.i68, !noalias !82233

bb.du:                                            ; preds = %bb.dt
  %i.mf = add nuw nsw i64 %storemerge77.i64, 1024 ; 2 uses
  %exitcond99.not.i75 = icmp eq i64 %i.js, %i.ix
  br i1 %exitcond99.not.i75, label %._crit_edge.i76, label %bb.cw

.thread118.i68:                                   ; preds = %bb.dt
  %lpad.loopexit.i69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dv:                                            ; preds = %.invoke.i80, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, %bb.df
  %lpad.loopexit.split-lp.i81 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i82 = load i64, ptr %i.g, align 8, !noalias !82233 ; 2 uses
  %20 = icmp eq i64 %.val.pre.i82, 0
  br i1 %20, label %.thread.i73, label %._crit_edge317

._crit_edge317:                                   ; preds = %bb.dv
  %.val34.i72.pre = load ptr, ptr %i.jo, align 8, !noalias !82233
  %.pre323 = shl nuw i64 %.val.pre.i82, 2
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge317, %.thread118.i68
  %.pre-phi324 = phi i64 [ %.pre323, %._crit_edge317 ], [ %i.jg, %.thread118.i68 ]
  %.val34.i72 = phi ptr [ %.val34.i72.pre, %._crit_edge317 ], [ %i.ji, %.thread118.i68 ]
  %lpad.phi122.i70 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i81, %._crit_edge317 ], [ %lpad.loopexit.i69, %.thread118.i68 ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i72, i64 noundef %.pre-phi324, i64 noundef range(i64 1, -9223372036854775807) 4) #63, !noalias !82233
  br label %.thread.i73

bb.dx:                                            ; preds = %.split1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.7.0..sroa_idx302 = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 9 uses
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx302, align 8
  %.sroa.8.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store i64 %i.w, ptr %.sroa.8.0..sroa_idx308, align 8
  %.sroa.9.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ai, ptr %.sroa.9.0..sroa_idx314, align 8
  %i.mg = load i64, ptr %1, align 8, !noundef !102 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82290)
  %i.mh = shl i64 %i.mg, 10                       ; 2 uses
  %i.mi = lshr i64 %i.mh, %i.aj
  %i.mj = and i64 %i.mh, %i.ak
  %.not.i110 = icmp ne i64 %i.mj, 0
  %i.mk = zext i1 %.not.i110 to i64
  %.sroa.0.0.i111 = add nuw i64 %i.mi, %i.mk      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82291
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_sliceyEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q)
          to label %bb.ef unwind label %bb.ed, !noalias !82292

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.eh, %.thread.i127, %bb.ed
  %.pn30.i112 = phi { ptr, i32 } [ %i.mw, %bb.ed ], [ %.pn28.i128, %bb.eh ], [ %.pn28.i128, %.thread.i127 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82293)
  call void @llvm.experimental.noalias.scope.decl(metadata !82294)
  call void @llvm.experimental.noalias.scope.decl(metadata !82295)
  call void @llvm.experimental.noalias.scope.decl(metadata !82296)
  call void @llvm.experimental.noalias.scope.decl(metadata !82297)
  %i.ml = load ptr, ptr %i.q, align 8, !alias.scope !82298, !nonnull !102, !noundef !102
  %i.mm = atomicrmw add ptr %i.ml, i64 -1 release, align 8, !noalias !82299
  %i.mn = icmp eq i64 %i.mm, 1
  br i1 %i.mn, label %bb.dy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i113

bb.dy:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i113 unwind label %bb.dz, !noalias !82292

bb.dz:                                            ; preds = %bb.dy
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82300)
  call void @llvm.experimental.noalias.scope.decl(metadata !82301)
  call void @llvm.experimental.noalias.scope.decl(metadata !82302)
  %i.mp = load ptr, ptr %.sroa.7.0..sroa_idx302, align 8, !alias.scope !82303, !nonnull !102, !noundef !102
  %i.mq = atomicrmw add ptr %i.mp, i64 -1 release, align 8, !noalias !82304
  %i.mr = icmp eq i64 %i.mq, 1
  br i1 %i.mr, label %bb.ea, label %.body.i116

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx302)
          to label %.body.i116 unwind label %bb.ec, !noalias !82292

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i113: ; preds = %bb.dy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82305)
  call void @llvm.experimental.noalias.scope.decl(metadata !82306)
  call void @llvm.experimental.noalias.scope.decl(metadata !82307)
  %i.ms = load ptr, ptr %.sroa.7.0..sroa_idx302, align 8, !alias.scope !82308, !nonnull !102, !noundef !102
  %i.mt = atomicrmw add ptr %i.ms, i64 -1 release, align 8, !noalias !82309
  %i.mu = icmp eq i64 %i.mt, 1
  br i1 %i.mu, label %bb.eb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.eb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i113
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx302)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.ff, !noalias !82292

bb.ec:                                            ; preds = %bb.ea
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82292
  unreachable

bb.ed:                                            ; preds = %bb.ez, %bb.dx
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.ee:                                            ; preds = %bb.ej
  unreachable

bb.ef:                                            ; preds = %bb.dx
  %i.mx = lshr i64 %3, 10                         ; 3 uses
  %i.my = and i64 %3, 1023                        ; 7 uses
  %i.mz = mul i64 %.sroa.0.0.i111, %i.mx          ; 8 uses
  %i.na = add i64 %i.mz, %i.my                    ; 4 uses
  %.not23.i117 = icmp eq i64 %i.my, 0
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !82291
  %i.nd = lshr i64 %i.nc, 3
  %i.ne = icmp eq i64 %i.nd, %i.na
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82291
  %i.nf = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 1024) ; 7 uses
  %i.ng = shl i64 %i.nf, 3                        ; 7 uses
  %i.nh = icmp ugt i64 %i.nf, 2305843009213693951
  %.not.i.i118 = icmp ugt i64 %i.ng, 9223372036854775800
  %or.cond.i.i119 = or i1 %i.nh, %.not.i.i118
  br i1 %or.cond.i.i119, label %bb.ej, label %bb.eg, !prof !107

bb.eg:                                            ; preds = %bb.ef
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82310
  %i.ni = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ng, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !82310 ; 8 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %bb.ej, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i120

.thread.i127:                                     ; preds = %bb.fk, %bb.fj, %bb.ex, %bb.ew, %bb.en, %bb.ei
  %.pn28.i128 = phi { ptr, i32 } [ %i.nn, %bb.ei ], [ %i.pl, %bb.ex ], [ %i.og, %bb.en ], [ %i.pl, %bb.ew ], [ %lpad.loopexit.split-lp.i133, %bb.fj ], [ %lpad.phi121.i, %bb.fk ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82311)
  call void @llvm.experimental.noalias.scope.decl(metadata !82312)
  call void @llvm.experimental.noalias.scope.decl(metadata !82313)
  call void @llvm.experimental.noalias.scope.decl(metadata !82314)
  %i.nk = load ptr, ptr %i.d, align 8, !alias.scope !82315, !noalias !82291, !nonnull !102, !noundef !102
  %i.nl = atomicrmw add ptr %i.nk, i64 -1 release, align 8, !noalias !82316
  %i.nm = icmp eq i64 %i.nl, 1
  br i1 %i.nm, label %bb.eh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.eh:                                            ; preds = %.thread.i127
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.ff, !noalias !82291

bb.ei:                                            ; preds = %bb.ej
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i127

bb.ej:                                            ; preds = %bb.eg, %bb.ef
  %.sroa.445.0.ph.i155 = phi i64 [ 8, %bb.eg ], [ 0, %bb.ef ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.445.0.ph.i155, i64 %i.ng) #66
          to label %bb.ee unwind label %bb.ei, !noalias !82291

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i120: ; preds = %bb.eg
  store i64 %i.nf, ptr %i.c, align 8, !noalias !82291
  %i.no = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.ni, ptr %i.no, align 8, !noalias !82291
  %i.np = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not79.i = icmp eq i64 %i.mx, 0
  br i1 %.not79.i, label %._crit_edge.i129, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i120
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nr = lshr i64 %i.nf, 10
  br label %bb.ek

._crit_edge.i129:                                 ; preds = %bb.fi, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i120
  %storemerge.lcssa72.i = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i120 ], [ %i.qf, %bb.fi ] ; 10 uses
  store i64 %storemerge.lcssa72.i, ptr %i.np, align 8, !noalias !82291
  br i1 %.not23.i117, label %bb.el, label %bb.ep

bb.ek:                                            ; preds = %bb.fi, %.lr.ph.i121
  %.sroa.08.077.i = phi i64 [ 0, %.lr.ph.i121 ], [ %i.ns, %bb.fi ] ; 3 uses
  %storemerge76.i = phi i64 [ 0, %.lr.ph.i121 ], [ %i.qf, %bb.fi ] ; 4 uses
  %i.ns = add nuw nsw i64 %.sroa.08.077.i, 1      ; 2 uses
  %i.nt = mul i64 %.sroa.08.077.i, %.sroa.0.0.i111 ; 4 uses
  %i.nu = add i64 %i.nt, %.sroa.0.0.i111          ; 3 uses
  %i.nv = icmp samesign ult i64 %storemerge76.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.nv)
  %i.nw = load ptr, ptr %i.nq, align 8, !noalias !82291, !noundef !102
  %i.nx = load i64, ptr %i.nb, align 8, !noalias !82291, !noundef !102
  %i.ny = lshr i64 %i.nx, 3                       ; 2 uses
  %i.nz = icmp ult i64 %i.nu, %i.nt
  %.not26.i122 = icmp ugt i64 %i.nu, %i.ny
  %or.cond33.i123 = or i1 %i.nz, %.not26.i122
  br i1 %or.cond33.i123, label %.invoke.i132, label %bb.fg, !prof !127

bb.el:                                            ; preds = %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.i129
  %.pre-phi.i136 = phi i64 [ %.pre104.pre-phi.i, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.ng, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.ng, %._crit_edge.i129 ]
  %.sroa.5.0.copyload.i137 = phi i64 [ %i.pi, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.ow, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %storemerge.lcssa72.i, %._crit_edge.i129 ] ; 2 uses
  %.sroa.4.0.copyload.i138 = phi ptr [ %i.pf, %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.ni, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.ni, %._crit_edge.i129 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82317)
  %i.oa = icmp ult i64 %.sroa.5.0.copyload.i137, 1152921504606846976
  tail call void @llvm.assume(i1 %i.oa)
  %i.ob = shl nuw nsw i64 %.sroa.5.0.copyload.i137, 3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82318
  store i64 1, ptr %i.a, align 8, !noalias !82318
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.oc, align 8, !noalias !82318
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.4.0.copyload.i138, ptr %i.od, align 8, !noalias !82318
  %.sroa.42.0..sroa_idx.i.i140 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ob, ptr %.sroa.42.0..sroa_idx.i.i140, align 8, !noalias !82318
  %.sroa.53.0..sroa_idx.i.i141 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i141, align 8, !noalias !82318
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 8, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i142, align 8, !noalias !82318
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.pre-phi.i136, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i143, align 8, !noalias !82318
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !82319
  %i.oe = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !82319 ; 4 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.em, label %bb.ev, !prof !104

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i147 unwind label %bb.en, !noalias !82319

.noexc.i.i147:                                    ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.em
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #67
          to label %.thread.i127 unwind label %bb.eo, !noalias !82318

bb.eo:                                            ; preds = %bb.en
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82318
  unreachable

bb.ep:                                            ; preds = %._crit_edge.i129
  br i1 %i.ne, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.oi = icmp samesign ult i64 %storemerge.lcssa72.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.oi)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !82291, !noundef !102
  %i.ol = load i64, ptr %i.nb, align 8, !noalias !82291, !noundef !102
  %i.om = lshr i64 %i.ol, 3                       ; 2 uses
  %i.on = add i64 %i.mz, %.sroa.0.0.i111          ; 3 uses
  %i.oo = icmp ult i64 %i.on, %i.mz
  %.not24.i130 = icmp ugt i64 %i.on, %i.om
  %or.cond.i131 = or i1 %i.oo, %.not24.i130
  br i1 %or.cond.i131, label %.invoke.i132, label %bb.es, !prof !127

bb.er:                                            ; preds = %bb.ep
  %i.op = load i64, ptr %i.nb, align 8, !noalias !82291, !noundef !102
  %i.oq = lshr i64 %i.op, 3                       ; 2 uses
  %i.or = icmp ult i64 %i.na, %i.mz
  %.not25.i148 = icmp samesign ugt i64 %i.na, %i.oq
  %or.cond32.i149 = or i1 %i.or, %.not25.i148
  br i1 %or.cond32.i149, label %.invoke.i132, label %bb.eu, !prof !127

bb.es:                                            ; preds = %bb.eq
  %i.os = sub nsw i64 %i.nf, %storemerge.lcssa72.i ; 2 uses
  %i.ot = icmp ugt i64 %i.os, 1023
  br i1 %i.ot, label %bb.et, label %.invoke.i132, !prof !105

bb.et:                                            ; preds = %bb.es
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %storemerge.lcssa72.i
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.mz
  invoke void @_RNvXs5_Cs76EB6vxIZIJ_16lance_bitpackingyNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.mg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ov, i64 noundef %.sroa.0.0.i111, ptr noalias noundef nonnull align 8 %i.ou, i64 noundef 1024)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.fj, !noalias !82291

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE8truncateCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.et
  %i.ow = or disjoint i64 %storemerge.lcssa72.i, %i.my
  br label %bb.el

bb.eu:                                            ; preds = %bb.er
  %i.ox = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !82291, !nonnull !102, !noundef !102
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.mz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82320)
  %.idx.i150 = shl nuw nsw i64 %i.my, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82321)
  %i.pa = sub nsw i64 %i.nf, %storemerge.lcssa72.i
  %i.pb = icmp ugt i64 %i.my, %i.pa
  br i1 %i.pb, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !108

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i: ; preds = %bb.eu
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %storemerge.lcssa72.i, i64 noundef %i.my, i64 noundef 8, i64 noundef 8)
          to label %.noexc37.i152 unwind label %bb.fj, !noalias !82291

.noexc37.i152:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i
  %i.pc = load i64, ptr %i.np, align 8, !alias.scope !82322, !noalias !82291, !noundef !102 ; 2 uses
  %i.pd = icmp ult i64 %i.pc, 1152921504606846976
  tail call void @llvm.assume(i1 %i.pd)
  %.pre.i153 = load ptr, ptr %i.no, align 8, !alias.scope !82322, !noalias !82291
  %.sroa.0.0.copyload.pre.pre.i154 = load i64, ptr %i.c, align 8, !noalias !82291
  %.pre105.i = shl nuw nsw i64 %.sroa.0.0.copyload.pre.pre.i154, 3
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.eu
  %i.pe = icmp samesign ult i64 %storemerge.lcssa72.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.pe)
  br label %_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvXs2_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryEE11spec_extendCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %.noexc37.i152
  %.pre104.pre-phi.i = phi i64 [ %i.ng, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %.pre105.i, %.noexc37.i152 ]
  %i.pf = phi ptr [ %i.ni, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %.pre.i153, %.noexc37.i152 ] ; 2 uses
  %i.pg = phi i64 [ %storemerge.lcssa72.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %i.pc, %.noexc37.i152 ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ph, ptr nonnull readonly align 8 %i.oz, i64 %.idx.i150, i1 false), !noalias !82323
  %i.pi = add nuw nsw i64 %i.pg, %i.my
  br label %bb.el

bb.ev:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.oe, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !82318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82318
  store ptr %i.oe, ptr %i.b, align 8, !alias.scope !82317, !noalias !82291
  %.sroa.4.0..sroa_idx.i.i144 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4.0.copyload.i138, ptr %.sroa.4.0..sroa_idx.i.i144, align 8, !alias.scope !82317, !noalias !82291
  %.sroa.5.0..sroa_idx.i.i145 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ob, ptr %.sroa.5.0..sroa_idx.i.i145, align 8, !alias.scope !82317, !noalias !82291
  %i.pj = load i64, ptr %.sroa.8.0..sroa_idx308, align 8, !alias.scope !82290, !noundef !102
  %i.pk = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.ey unwind label %bb.ew, !noalias !82291

bb.ew:                                            ; preds = %bb.ev
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = atomicrmw add ptr %i.oe, i64 -1 release, align 8, !noalias !82324
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.ex, label %.thread.i127

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread.i127 unwind label %bb.ff, !noalias !82291

bb.ey:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !82290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82328)
  %i.po = load ptr, ptr %i.d, align 8, !alias.scope !82329, !noalias !82291, !nonnull !102, !noundef !102
  %i.pp = atomicrmw add ptr %i.po, i64 -1 release, align 8, !noalias !82330
  %i.pq = icmp eq i64 %i.pp, 1
  br i1 %i.pq, label %bb.ez, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit40.i

bb.ez:                                            ; preds = %bb.ey
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit40.i unwind label %bb.ed, !noalias !82291

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit40.i: ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82291
  call void @llvm.experimental.noalias.scope.decl(metadata !82331)
  call void @llvm.experimental.noalias.scope.decl(metadata !82332)
  call void @llvm.experimental.noalias.scope.decl(metadata !82333)
  call void @llvm.experimental.noalias.scope.decl(metadata !82334)
  call void @llvm.experimental.noalias.scope.decl(metadata !82335)
  %i.pr = load ptr, ptr %i.q, align 8, !alias.scope !82336, !nonnull !102, !noundef !102
  %i.ps = atomicrmw add ptr %i.pr, i64 -1 release, align 8, !noalias !82337
  %i.pt = icmp eq i64 %i.ps, 1
  br i1 %i.pt, label %bb.fa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i146

bb.fa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit40.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i146 unwind label %bb.fb, !noalias !82292

bb.fb:                                            ; preds = %bb.fa
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82338)
  call void @llvm.experimental.noalias.scope.decl(metadata !82339)
  call void @llvm.experimental.noalias.scope.decl(metadata !82340)
  %i.pv = load ptr, ptr %.sroa.7.0..sroa_idx302, align 8, !alias.scope !82341, !nonnull !102, !noundef !102
  %i.pw = atomicrmw add ptr %i.pv, i64 -1 release, align 8, !noalias !82342
  %i.px = icmp eq i64 %i.pw, 1
  br i1 %i.px, label %bb.fc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.fc:                                            ; preds = %bb.fb
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx302)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.fe, !noalias !82292

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i146: ; preds = %bb.fa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferyEECsjjpCCFGI3ul_14lance_encoding.exit40.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82343)
  call void @llvm.experimental.noalias.scope.decl(metadata !82344)
  call void @llvm.experimental.noalias.scope.decl(metadata !82345)
  %i.py = load ptr, ptr %.sroa.7.0..sroa_idx302, align 8, !alias.scope !82346, !nonnull !102, !noundef !102
  %i.pz = atomicrmw add ptr %i.py, i64 -1 release, align 8, !noalias !82347
  %i.qa = icmp eq i64 %i.pz, 1
  br i1 %i.qa, label %bb.fd, label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_lineyEB8_.exit

bb.fd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i146
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx302), !noalias !82292
  br label %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_lineyEB8_.exit

bb.fe:                                            ; preds = %bb.fc
  %i.qb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82292
  unreachable

bb.ff:                                            ; preds = %bb.ex, %bb.eh, %bb.eb
  %i.qc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i116

.body.i116:                                       ; preds = %bb.ff, %bb.ea, %bb.dz
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82292
  unreachable

bb.fg:                                            ; preds = %bb.ek
  %exitcond.not.i124 = icmp eq i64 %.sroa.08.077.i, %i.nr
  br i1 %exitcond.not.i124, label %21, label %bb.fh, !prof !108

21:                                               ; preds = %bb.fg
  %22 = sub nuw nsw i64 %i.nf, %storemerge76.i
  br label %.invoke.i132

.invoke.i132:                                     ; preds = %bb.ek, %21, %bb.es, %bb.er, %bb.eq
  %23 = phi i64 [ 0, %21 ], [ %i.mz, %bb.er ], [ 0, %bb.es ], [ %i.mz, %bb.eq ], [ %i.nt, %bb.ek ]
  %24 = phi i64 [ 1024, %21 ], [ %i.na, %bb.er ], [ 1024, %bb.es ], [ %i.on, %bb.eq ], [ %i.nu, %bb.ek ]
  %25 = phi i64 [ %22, %21 ], [ %i.oq, %bb.er ], [ %i.os, %bb.es ], [ %i.om, %bb.eq ], [ %i.ny, %bb.ek ]
  %26 = phi ptr [ @382, %21 ], [ @381, %bb.er ], [ @379, %bb.es ], [ @380, %bb.eq ], [ @383, %bb.ek ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %23, i64 noundef %24, i64 noundef %25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #66
          to label %.cont.i135 unwind label %bb.fj, !noalias !82291

.cont.i135:                                       ; preds = %.invoke.i132
  unreachable

bb.fh:                                            ; preds = %bb.fg
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %storemerge76.i
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nt
  invoke void @_RNvXs5_Cs76EB6vxIZIJ_16lance_bitpackingyNtB5_16BitPackingUninit23unchecked_unpack_uninit(i64 noundef %i.mg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qe, i64 noundef %.sroa.0.0.i111, ptr noalias noundef nonnull align 8 %i.qd, i64 noundef 1024)
          to label %bb.fi unwind label %.thread117.i, !noalias !82291

bb.fi:                                            ; preds = %bb.fh
  %i.qf = add nuw nsw i64 %storemerge76.i, 1024   ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.ns, %i.mx
  br i1 %exitcond98.not.i, label %._crit_edge.i129, label %bb.ek

.thread117.i:                                     ; preds = %bb.fh
  %lpad.loopexit.i125 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fj:                                            ; preds = %.invoke.i132, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i, %bb.et
  %lpad.loopexit.split-lp.i133 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.pre.i134 = load i64, ptr %i.c, align 8, !alias.scope !82348, !noalias !82291 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82348)
  %27 = icmp eq i64 %.val.i.pre.i134, 0
  br i1 %27, label %.thread.i127, label %._crit_edge

._crit_edge:                                      ; preds = %bb.fj
  %.val1.i.i126.pre = load ptr, ptr %i.no, align 8, !alias.scope !82348, !noalias !82291
  %.pre325 = shl nuw i64 %.val.i.pre.i134, 3
  br label %bb.fk

bb.fk:                                            ; preds = %._crit_edge, %.thread117.i
  %.pre-phi326 = phi i64 [ %.pre325, %._crit_edge ], [ %i.ng, %.thread117.i ]
  %.val1.i.i126 = phi ptr [ %.val1.i.i126.pre, %._crit_edge ], [ %i.ni, %.thread117.i ]
  %lpad.phi121.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i133, %._crit_edge ], [ %lpad.loopexit.i125, %.thread117.i ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i126, i64 noundef %.pre-phi326, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !82349
  br label %.thread.i127

_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linehEB8_.exit: ; preds = %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.fl

bb.fl:                                            ; preds = %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_lineyEB8_.exit, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linemEB8_.exit, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linetEB8_.exit, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linehEB8_.exit
  %.sroa.9.0 = phi i64 [ %i.w, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linehEB8_.exit ], [ %i.hj, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linetEB8_.exit ], [ %i.lj, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linemEB8_.exit ], [ %i.pj, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_lineyEB8_.exit ]
  %.sroa.5.0 = phi ptr [ %i.df, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linehEB8_.exit ], [ %i.hk, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linetEB8_.exit ], [ %i.lk, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linemEB8_.exit ], [ %i.pk, %_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_lineyEB8_.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  ret void

_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linetEB8_.exit: ; preds = %bb.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.fl

_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_linemEB8_.exit: ; preds = %bb.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i42.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.fl

_RINvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpacking18unpack_out_of_lineyEB8_.exit: ; preds = %bb.fd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i41.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.fl

bb.fm:                                            ; preds = %bb.fo, %bb.e
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i113, %bb.eb, %bb.fb, %bb.fc, %bb.cn, %bb.dn, %bb.do, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i53, %bb.az, %bb.bz, %bb.ca, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i12, %bb.k, %bb.ak, %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i, %bb.d, %bb.e, %bb.fn, %bb.fo
  %.pn164 = phi { ptr, i32 } [ %i.qh, %bb.fn ], [ %i.qh, %bb.fo ], [ %.pn30.i, %bb.k ], [ %i.dp, %bb.ak ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ], [ %.pn30.i112, %bb.eb ], [ %.pn30.i112, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i113 ], [ %i.pu, %bb.fc ], [ %i.pu, %bb.fb ], [ %.pn30.i52, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i53 ], [ %i.lu, %bb.do ], [ %i.lu, %bb.dn ], [ %.pn30.i52, %bb.cn ], [ %.pn30.i11, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i12 ], [ %i.hu, %bb.ca ], [ %i.hu, %bb.bz ], [ %.pn30.i11, %bb.az ], [ %.pn30.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i.i ], [ %i.dp, %bb.al ]
  resume { ptr, i32 } %.pn164

bb.fn:                                            ; preds = %bb.b
  %i.qh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82353)
  %i.qi = load ptr, ptr %2, align 8, !alias.scope !82354, !nonnull !102, !noundef !102
  %i.qj = atomicrmw add ptr %i.qi, i64 -1 release, align 8, !noalias !82354
  %i.qk = icmp eq i64 %i.qj, 1
  br i1 %i.qk, label %bb.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161

bb.fo:                                            ; preds = %bb.fn
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit161 unwind label %bb.fm
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5valueNtB5_17ValueDecompressorNtNtBb_11compression21MiniBlockDecompressor10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !82390 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.651 = alloca [16 x i8], align 8          ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [80 x i8], align 8                ; 17 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !102
  %i.m = mul i64 %i.l, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !102, !noundef !102 ; 4 uses
  %i.p = load i64, ptr %2, align 8, !range !103, !noundef !102
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !102 ; 3 uses
  %i.s = icmp ult i64 %i.r, 384307168202282326
  tail call void @llvm.assume(i1 %i.s)
  %.idx = mul nuw nsw i64 %i.r, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 3 uses
  store ptr %i.o, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82391)
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.thread, label %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit

.body29:                                          ; preds = %.thread63, %bb.x, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit, %bb.l, %bb.d, %bb.e, %bb.b, %bb.ab
  %.pn23.pn = phi { ptr, i32 } [ %i.bl, %bb.ab ], [ %i.as, %bb.l ], [ %i.v, %bb.b ], [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ %i.bb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit ], [ %i.ay, %bb.x ], [ %i.ay, %.thread63 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEB1t_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEEEB21_.exit unwind label %bb.w

bb.b:                                             ; preds = %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.thread
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body29

_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit: ; preds = %bb.a
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !82391
  %.sroa.0.0.copyload38 = load ptr, ptr %i.w, align 8, !noalias !82391 ; 4 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload38, null
  br i1 %.not, label %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.thread, label %bb.c, !prof !106

bb.c:                                             ; preds = %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx40, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.x, align 8, !noundef !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82392
  store ptr %.sroa.0.0.copyload38, ptr %i.a, align 8, !noalias !82393
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx43, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx40, i64 16, i1 false)
  %i.y = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.h unwind label %bb.d, !noalias !82392

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw add ptr %.sroa.0.0.copyload38, i64 -1 release, align 8, !noalias !82394
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %.body29

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body29 unwind label %bb.f, !noalias !82392

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !82392
  unreachable

_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.thread: ; preds = %bb.a, %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3627) #66
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.z, %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit31.thread, %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.thread
  unreachable

bb.h:                                             ; preds = %bb.c
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82392
  store i64 -9223372036854775804, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.0.0.copyload38, ptr %.sroa.4.0..sroa_idx46, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.y, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %.val, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %i.m, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !102, !noundef !102 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !102 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %.idx69 = shl nuw nsw i64 %i.ag, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx69
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.42.068 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ak, %bb.v ] ; 2 uses
  %i.aj = phi ptr [ %i.w, %.lr.ph ], [ %i.ap, %bb.v ] ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.42.068, i64 -16 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.42.068, i64 -8
  %i.am = load i8, ptr %i.al, align 8, !range !116, !noundef !102
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.n, label %bb.j

._crit_edge:                                      ; preds = %bb.v, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ao = invoke noundef i64 @_RNvMsn_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9DataBlock10num_values(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.h)
          to label %bb.y unwind label %bb.ab      ; 2 uses

bb.j:                                             ; preds = %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit, %bb.i
  %i.ap = phi ptr [ %i.av, %_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4_9BlockInfoNtNtCscI6d9CVNmLh_4core7default7Default7default.exit ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
end_hunk_2
begin_hunk_3_@_RNvXsa_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_40PackedStructVariablePerValueDecompressorNtNtBb_11compression28VariablePerValueDecompressor10decompress:bb.a
  %.pre.i.i3.i = load ptr, ptr %i.xw, align 8, !alias.scope !91419
  br label %_RNvMss_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_16DataBlockBuilder6append.exit.i.invoke

bb.jq:                                            ; preds = %bb.jp
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.055.0969, i64 104
  %i.xy = load i64, ptr %i.xx, align 8, !alias.scope !91419, !noundef !102
  %i.xz = invoke fastcc { ptr, ptr } @_RNvMsn_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9DataBlock12make_builder(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.xu, i64 noundef %i.xy)
          to label %.noexc429 unwind label %.thread565.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91420 ; 2 uses

.noexc429:                                        ; preds = %bb.jq
  %i.ya = extractvalue { ptr, ptr } %i.xz, 0      ; 3 uses
  %i.yb = extractvalue { ptr, ptr } %i.xz, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yb) ]
  store ptr %i.ya, ptr %i.xt, align 8, !alias.scope !91419
  store ptr %i.yb, ptr %i.xw, align 8, !alias.scope !91419
  %.not2.i.i6.i = icmp eq ptr %i.ya, null
  br i1 %.not2.i.i6.i, label %.invoke1748, label %_RNvMss_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_16DataBlockBuilder6append.exit.i.invoke, !prof !218

_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_16FieldAccumulator12append_empty.exit: ; preds = %_RNvMss_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_16DataBlockBuilder6append.exit.i.invoke
  %i.yc = load i8, ptr %i.az, align 8, !range !115, !noundef !102
  %.not198 = icmp eq i8 %i.yc, -1
  br i1 %.not198, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_16FieldAccumulator12append_empty.exit
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.yd, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 -1, ptr %0, align 8
  br label %.critedge

bb.js:                                            ; preds = %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_16FieldAccumulator12append_empty.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.ye = icmp eq ptr %i.wv, %i.qv
  br i1 %i.ye, label %.backedge, label %.lr.ph971

bb.jt:                                            ; preds = %bb.fs
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.yf, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %.critedge

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorEEB1g_.exit: ; preds = %bb.fj, %bb.jz, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.ka

.critedge:                                        ; preds = %bb.jk, %bb.gt, %bb.gs, %bb.ia, %bb.hz, %bb.hy, %bb.ib, %bb.ji, %bb.jh, %bb.jg, %bb.jj, %bb.co, %.loopexit648, %bb.fv, %bb.jt, %bb.jr
  %.val4.i = phi ptr [ %.sroa.4491.0.copyload, %bb.jk ], [ %.sroa.4491.0.copyload, %bb.gt ], [ %.sroa.4491.0.copyload, %bb.gs ], [ %.sroa.4491.0.copyload, %bb.ia ], [ %.sroa.4491.0.copyload, %bb.hz ], [ %.sroa.4491.0.copyload, %bb.hy ], [ %.sroa.4491.0.copyload, %bb.ib ], [ %.sroa.4491.0.copyload, %bb.ji ], [ %.sroa.4491.0.copyload, %bb.jh ], [ %.sroa.4491.0.copyload, %bb.jg ], [ %.sroa.4491.0.copyload, %bb.jj ], [ %i.gq, %bb.co ], [ %i.gq, %.loopexit648 ], [ %.sroa.4491.0.copyload, %bb.fv ], [ %.sroa.4491.0.copyload, %bb.jt ], [ %.sroa.4491.0.copyload, %bb.jr ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91421)
  %.val5.i = load i64, ptr %i.fg, align 8, !alias.scope !91421, !noundef !102 ; 4 uses
  %i.yg = icmp eq i64 %.val5.i, 0
  br i1 %i.yg, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit.i, label %.lr.ph1882

bb.ju:                                            ; preds = %.lr.ph1882
  %i.yh = icmp eq i64 %i.yj, %.val5.i
  br i1 %i.yh, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit.i, label %.lr.ph1882

.lr.ph1882:                                       ; preds = %.critedge, %bb.ju
  %.sroa.0.0.i.i.i4321881 = phi i64 [ %i.yj, %bb.ju ], [ 0, %.critedge ] ; 2 uses
  %i.yi = getelementptr inbounds nuw [112 x i8], ptr %.val4.i, i64 %.sroa.0.0.i.i.i4321881
  %i.yj = add nuw nsw i64 %.sroa.0.0.i.i.i4321881, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorEBJ_(ptr noalias noundef align 8 dereferenceable(112) %i.yi)
          to label %bb.ju unwind label %bb.jw, !noalias !91421

bb.jv:                                            ; preds = %.lr.ph1885
  %i.yk = add nuw nsw i64 %.sroa.0.1.i.i.i1883, 1 ; 2 uses
  %i.yl = icmp eq i64 %i.yk, %.val5.i
  br i1 %i.yl, label %.body.i, label %.lr.ph1885

bb.jw:                                            ; preds = %.lr.ph1882
  %i.ym = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yn = icmp eq i64 %i.yj, %.val5.i
  br i1 %i.yn, label %.body.i, label %.lr.ph1885

.lr.ph1885:                                       ; preds = %bb.jw, %bb.jv
  %.sroa.0.1.i.i.i1883 = phi i64 [ %i.yk, %bb.jv ], [ %i.yj, %bb.jw ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [112 x i8], ptr %.val4.i, i64 %.sroa.0.1.i.i.i1883
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorEBJ_(ptr noalias noundef align 8 dereferenceable(112) %i.yo) #67
          to label %bb.jv unwind label %bb.jx, !noalias !91421

bb.jx:                                            ; preds = %.lr.ph1885
  %i.yp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !91421
  unreachable

.body.i:                                          ; preds = %bb.jv, %bb.jw
  %.val2.i433 = load i64, ptr %i.bk, align 8, !alias.scope !91421 ; 2 uses
  %i.yq = icmp eq i64 %.val2.i433, 0
  br i1 %i.yq, label %.body435, label %bb.jy

bb.jy:                                            ; preds = %.body.i
  %i.yr = mul nuw i64 %.val2.i433, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.yr, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !91421
  br label %.body435

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit.i: ; preds = %bb.ju, %.critedge
  %.val.i434 = load i64, ptr %i.bk, align 8, !alias.scope !91421 ; 2 uses
  %i.ys = icmp eq i64 %.val.i434, 0
  br i1 %i.ys, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorEEB1g_.exit, label %bb.jz

bb.jz:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit.i
  %i.yt = mul nuw i64 %.val.i434, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.yt, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !91421
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorEEB1g_.exit

bb.ka:                                            ; preds = %bb.kc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorEEB1g_.exit
  %i.yu = icmp eq i64 %.sroa.0.0524, 0
  br i1 %i.yu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit439, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8442.0) ]
  %i.yv = shl nuw i64 %.sroa.0.0524, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8442.0, i64 noundef %i.yv, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !91422
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit439

.thread546:                                       ; preds = %.thread565.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ao, %bb.ar, %bb.as, %.body406, %bb.is, %.body364, %bb.hk, %bb.gj, %bb.gk, %.body250, %.body242, %.loopexit.split-lp630.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp639.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp644.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.in, %bb.hf, %bb.gf, %bb.cl, %bb.bw, %bb.ax
  %.pn199537 = phi { ptr, i32 } [ %i.vp, %bb.in ], [ %i.ho, %bb.ao ], [ %.pn189, %.body406 ], [ %i.tu, %bb.hf ], [ %i.ia, %bb.ax ], [ %i.jn, %bb.bw ], [ %i.kh, %bb.cl ], [ %i.rw, %bb.gf ], [ %.pn.pn, %.body250 ], [ %.pn170.pn, %.body242 ], [ %lpad.loopexit.split-lp1966, %.loopexit.split-lp644.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1956, %.loopexit.split-lp630.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn195, %.body364 ], [ %lpad.loopexit.split-lp1963, %.loopexit.split-lp639.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.rz, %bb.gj ], [ %i.rz, %bb.gk ], [ %.pn195, %bb.hk ], [ %.pn189, %bb.is ], [ %i.ht, %bb.as ], [ %i.ht, %bb.ar ], [ %lpad.loopexit.split-lp1959, %.thread565.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed16FieldAccumulatorEEB1g_(ptr noalias noundef align 8 dereferenceable(24) %i.bk) #67
          to label %.body435 unwind label %bb.n

bb.kc:                                            ; preds = %bb.ac
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.yw, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.ka

bb.kd:                                            ; preds = %bb.b
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.yx, ptr noundef nonnull align 8 dereferenceable(56) %i.bm, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit439

bb.ke:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermEECsjjpCCFGI3ul_14lance_encoding.exit
  resume { ptr, i32 } %.pn203
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blobNtB5_15BlobPageDecoderNtNtBd_7decoder21StructuralPageDecoder5drain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !91460 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !102 ; 3 uses
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit, !prof !108

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2409) #66, !noalias !91461
  unreachable

_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a
  store i64 0, ptr %i.e, align 8
  %i.h = sub nuw i64 %i.f, %2
  store ptr %1, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %2, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !91463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91464)
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1k_.exit.i, label %bb.e

_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1k_.exit.i: ; preds = %_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91463
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !91465
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterB1b_.exit

bb.c:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i, null
  br i1 %i.o, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !91466, !nonnull !102, !noundef !102
  invoke void %i.q(ptr noundef %.sroa.5.sroa.7.0.copyload.i, ptr noundef %.sroa.5.sroa.5.0.copyload.i, i64 noundef %.sroa.5.sroa.6.0.copyload.i)
          to label %bb.q unwind label %bb.p, !noalias !91466, !inline_history !9

bb.e:                                             ; preds = %_RINvNtNtCscI6d9CVNmLh_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !91467, !noundef !102 ; 2 uses
  %i.t = load i64, ptr %1, align 8, !range !103, !noalias !91467, !noundef !102 ; 2 uses
  %.not.i.i = icmp ult i64 %i.s, %i.t
  %i.u = select i1 %.not.i.i, i64 0, i64 %i.t
  %.sroa.02.0.i.i = sub nuw i64 %i.s, %i.u
  store i64 1, ptr %i.j, align 8, !alias.scope !91468
  %i.v = add i64 %2, -1
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !91468
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !91467, !nonnull !102, !noundef !102
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %.sroa.02.0.i.i ; 5 uses
  %.sroa.5.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !noalias !91469 ; 3 uses
  %.sroa.5.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa_idx.i, align 8, !noalias !91469 ; 2 uses
  %.sroa.5.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5.sroa.6.0.copyload.i = load i64, ptr %.sroa.5.sroa.6.0..sroa_idx.i, align 8, !noalias !91469 ; 2 uses
  %.sroa.5.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.5.sroa.7.0.copyload.i = load ptr, ptr %.sroa.5.sroa.7.0..sroa_idx.i, align 8, !noalias !91469 ; 2 uses
  %.sroa.5.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.5.sroa.8.0.copyload.i = load i64, ptr %.sroa.5.sroa.8.0..sroa_idx.i, align 8, !noalias !91469
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 4) ; 3 uses
  %i.z = mul i64 %.sroa.0.0.i.i, 40               ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %2, 230584300921369395
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !107

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !91470
  %i.ab = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, 17) 8) #63, !noalias !91470 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.z) #66
          to label %.noexc5.i unwind label %bb.c, !noalias !91463

.noexc5.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ab, %bb.g ] ; 7 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ad = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ad)
  store ptr %.sroa.5.sroa.0.0.copyload.i, ptr %.sroa.10.0.i.i, align 8, !noalias !91463
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !91463
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !91463
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store ptr %.sroa.5.sroa.7.0.copyload.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !91463
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store i64 %.sroa.5.sroa.8.0.copyload.i, ptr %.sroa.720.0..sroa_idx.i, align 8, !noalias !91463
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !91463
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !91463
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !91463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !91465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91474)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !91475, !noalias !91463 ; 2 uses
  %i.af = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.af, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ag = load ptr, ptr %i.a, align 8, !alias.scope !91476, !noalias !91463, !nonnull !102, !noundef !102 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.promoted31.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !91476, !noalias !91463
  br label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEBL_.exit.i.i.i: ; preds = %bb.l, %bb.k
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #67
          to label %.body.i unwind label %bb.n, !noalias !91477

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ak = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ay, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i ]
  %i.al = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i ] ; 5 uses
  %i.am = phi i64 [ %.promoted31.i.i.i, %.lr.ph.i.i.i ], [ %i.ar, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i ] ; 2 uses
  %.val2930.i.i.i = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.as, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91478)
  %i.an = load i64, ptr %i.ai, align 8, !noalias !91479, !noundef !102
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = load i64, ptr %i.ag, align 8, !range !103, !noalias !91479, !noundef !102 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.ao, %i.ap
  %i.aq = select i1 %.not.i.i.i.i, i64 0, i64 %i.ap
  %.sroa.02.0.i.i.i.i = sub nuw i64 %i.ao, %i.aq
  %i.ar = add i64 %i.am, 1                        ; 3 uses
  %i.as = add i64 %.val2930.i.i.i, -1             ; 3 uses
  %i.at = load ptr, ptr %i.aj, align 8, !noalias !91479, !nonnull !102, !noundef !102
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %.sroa.02.0.i.i.i.i ; 5 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.au, align 8, !noalias !91480 ; 3 uses
  %.sroa.5.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.5.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !91480 ; 2 uses
  %.sroa.5.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.5.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !91480 ; 2 uses
  %.sroa.5.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.5.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.5.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !91480 ; 2 uses
  %.sroa.5.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.5.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.5.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !91480
  %i.av = icmp samesign ult i64 %i.al, 230584300921369396
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.b, align 8, !range !103, !alias.scope !91481, !noalias !91463, !noundef !102
  %i.ax = icmp eq i64 %i.al, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i_crit_edge.i, %bb.j
  %i.ay = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i_crit_edge.i ], [ %i.ak, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.al ; 5 uses
  store ptr %.sroa.5.sroa.0.0.copyload.i.i.i, ptr %i.az, align 8, !noalias !91482
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload.i.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !91482
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload.i.i.i, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !91482
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %.sroa.5.sroa.7.0.copyload.i.i.i, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !91482
  %.sroa.717.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.5.sroa.8.0.copyload.i.i.i, ptr %.sroa.717.0..sroa_idx.i.i.i, align 8, !noalias !91482
  %i.ba = add nuw nsw i64 %i.al, 1                ; 3 uses
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !91481, !noalias !91463
  %i.bb = icmp eq i64 %i.as, 0
  br i1 %i.bb, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.loopexit.i, label %bb.j

bb.k:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ar, ptr %i.ah, align 8, !alias.scope !91476, !noalias !91463
  store i64 %i.as, ptr %i.ae, align 8, !alias.scope !91476, !noalias !91463
  %i.bd = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i.i, null
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEBL_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !91483, !nonnull !102, !noundef !102
  invoke void %i.bf(ptr noundef %.sroa.5.sroa.7.0.copyload.i.i.i, ptr noundef %.sroa.5.sroa.5.0.copyload.i.i.i, i64 noundef %.sroa.5.sroa.6.0.copyload.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEBL_.exit.i.i.i unwind label %bb.n, !noalias !91483, !inline_history !9

bb.m:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.al, i64 noundef range(i64 1, 0) %.val2930.i.i.i, i64 noundef 8, i64 noundef 40)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i_crit_edge.i unwind label %bb.k, !noalias !91484

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i_crit_edge.i: ; preds = %bb.m
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !91481, !noalias !91463
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i

bb.n:                                             ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEBL_.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !91482
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.loopexit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE7reserveBO_.exit.i.i.i
  store i64 %i.ar, ptr %i.ah, align 8, !alias.scope !91476, !noalias !91463
  store i64 0, ptr %i.ae, align 8, !alias.scope !91476, !noalias !91463
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.loopexit.i, %bb.i
  %.sroa.6.0.copyload5 = phi i64 [ %i.ba, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.loopexit.i ], [ 1, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendB11_.exit.i unwind label %bb.o, !noalias !91477

bb.o:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEBL_.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEBL_.exit.i.i.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEEB1i_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #67
          to label %common.resume unwind label %bb.p, !noalias !91463

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendB11_.exit.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBQ_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91463
  %.sroa.0.0.copyload1 = load i64, ptr %i.b, align 8, !noalias !91462
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !91462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91463
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterB1b_.exit

bb.p:                                             ; preds = %bb.q, %.body.i, %bb.d
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !91463
  unreachable

common.resume:                                    ; preds = %bb.t, %.body.i, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.n, %bb.q ], [ %i.bu, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.d, %bb.c
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drain5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d) #67
          to label %common.resume unwind label %bb.p, !noalias !91465

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterB1b_.exit: ; preds = %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1k_.exit.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendB11_.exit.i
  %.sroa.6.0 = phi i64 [ 0, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1k_.exit.i ], [ %.sroa.6.0.copyload5, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendB11_.exit.i ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1k_.exit.i ], [ %.sroa.5.0.copyload3, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendB11_.exit.i ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvXs3_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1k_.exit.i ], [ %.sroa.0.0.copyload1, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendB11_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !102, !noundef !102
  %i.bl = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterB1b_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load ptr, ptr %i.bj, align 8, !nonnull !102, !noundef !102
  %i.bp = load i64, ptr %i.bn, align 8, !noundef !102
  store i64 %.sroa.0.0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
end_hunk_3
