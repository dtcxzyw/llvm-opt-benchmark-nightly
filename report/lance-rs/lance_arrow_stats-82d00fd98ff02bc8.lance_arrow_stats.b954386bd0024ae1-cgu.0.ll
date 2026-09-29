Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow_stats-82d00fd98ff02bc8.lance_arrow_stats.b954386bd0024ae1-cgu.0?download=true
inline.NumInlined: 392
inline.NumDeleted: 293
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator6update:bb.a
  %i.gl = extractvalue { ptr, ptr } %i.gj, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1010
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  store ptr %i.gk, ptr %i.b, align 8, !noalias !1010
  store ptr %i.gl, ptr %i.fi, align 8, !noalias !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1010
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.ax unwind label %bb.av, !noalias !1011

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit
  store i64 -1, ptr %0, align 8, !alias.scope !1002, !noalias !1012
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.av:                                            ; preds = %bb.au
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.gn = load ptr, ptr %i.b, align 8, !alias.scope !1015, !noalias !1010, !nonnull !6, !noundef !6
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !1016
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.bc, !noalias !1011

bb.ax:                                            ; preds = %bb.au
  %i.gq = load i64, ptr %i.a, align 8, !range !15, !noalias !1010, !noundef !6
  %.not4.i72 = icmp eq i64 %i.gq, -1
  br i1 %.not4.i72, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.gr = load ptr, ptr %i.b, align 8, !alias.scope !1019, !noalias !1010, !nonnull !6, !noundef !6
  %i.gs = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !1020
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73

bb.az:                                            ; preds = %bb.ay
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !1011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1010
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.gu = load ptr, ptr %i.b, align 8, !alias.scope !1023, !noalias !1010, !nonnull !6, !noundef !6
  %i.gv = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !1024
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !1011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1010
  %umax.i.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fl)
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271.not = icmp ult i64 %i.fl, %i.fb
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271.not, label %.lr.ph, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i

bb.bc:                                            ; preds = %bb.aw
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !1011
  unreachable

bb.bd:                                            ; preds = %bb.e
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gz = tail call fastcc noundef i64 @_RNvNtCsfUv75jb5FCv_17lance_arrow_stats3nan10count_nans(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.ha = load i64, ptr %i.gy, align 8, !noundef !6
  %i.hb = add i64 %i.ha, %i.gz
  store i64 %i.hb, ptr %i.gy, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_max(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.hd = load i8, ptr %i.hc, align 8, !range !16, !noundef !6 ; 2 uses
  %i.he = icmp eq i8 %i.hd, -1
  br i1 %i.he, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.526.0..sroa_idx, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09, i64 48, i1 false)
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 %i.hd, ptr %.sroa.7.0..sroa_idx10, align 8
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  %.sroa.8.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 1 dereferenceable(56) %.sroa.8.56..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_min(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.i)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_max(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.k)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %bb.bh, %.split, %bb.bf, %bb.d
  ret void

bb.bi:                                            ; preds = %bb.bg
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.k) #17
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCsfUv75jb5FCv_17lance_arrow_stats3nan10count_nans(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 20 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 20 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 20 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.n = load i8, ptr %i.m, align 8, !range !7, !noundef !6
  switch i8 %i.n, label %.loopexit [
    i8 10, label %bb.b
    i8 11, label %bb.d
    i8 12, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.o, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !8, !invariant.load !6
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr i8, ptr %.val17, i64 32
  %.val.i.i = load ptr, ptr %i.v, align 8
  %i.w = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.u), !inline_history !1025 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 8 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !6, !nonnull !6
  call void %i.aa(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef %i.x), !inline_history !1025
  %i.ab = load i128, ptr %i.l, align 16, !noundef !6
  %i.ac = icmp ne i128 %i.ab, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not1.i = icmp eq ptr %i.x, null
  %.not.i = or i1 %.not1.i, %i.ac
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = lshr i64 %i.ae, 1                       ; 13 uses
  %.not75 = icmp eq i64 %i.af, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ak = getelementptr i8, ptr %i.x, i64 32      ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !alias.scope !1058, !noundef !6
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader, label %.lr.ph68.split.preheader

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader: ; preds = %.lr.ph68
  %.val22.us.pre = load ptr, ptr %i.ak, align 8   ; 6 uses
  %i.an = add nsw i64 %i.af, -1
  %i.ao = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.an) ; 2 uses
  %i.ap = add nuw i64 %i.ao, 1                    ; 2 uses
  %min.iters.check157 = icmp samesign ult i64 %i.ao, 8
  br i1 %min.iters.check157, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171, label %vector.memcheck149

vector.memcheck149:                               ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader
  %scevgep150 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %1 = add nsw i64 %i.af, -1
  %umin151 = call i64 @llvm.umin.i64(i64 %i.af, i64 %1)
  %i.aq = shl nuw i64 %umin151, 1
  %i.ar = getelementptr i8, ptr %.val22.us.pre, i64 %i.aq
  %scevgep152 = getelementptr i8, ptr %i.ar, i64 2
  %bound0153 = icmp ult ptr %i.i, %scevgep152
  %bound1154 = icmp ult ptr %.val22.us.pre, %scevgep150
  %found.conflict155 = and i1 %bound0153, %bound1154
  br i1 %found.conflict155, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck149
  %i.as = and i64 %i.ap, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec159 = sub i64 %i.ap, %i.au
  %i.av = freeze i64 %n.vec159                    ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next166, %vector.body160 ] ; 3 uses
  %vec.phi162 = phi <2 x i64> [ zeroinitializer, %vector.ph158 ], [ %i.bf, %vector.body160 ]
  %vec.phi163 = phi <2 x i64> [ zeroinitializer, %vector.ph158 ], [ %i.bg, %vector.body160 ]
  %i.aw = or disjoint i64 %index161, 3
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.aw, ptr %i.i, align 8, !alias.scope !1060, !noalias !1061
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.val22.us.pre, i64 %index161 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %wide.load164 = load <2 x i16>, ptr %i.ax, align 2, !alias.scope !1061
  %wide.load165 = load <2 x i16>, ptr %i.ay, align 2, !alias.scope !1061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.az = and <2 x i16> %wide.load164, splat (i16 32767)
  %i.ba = and <2 x i16> %wide.load165, splat (i16 32767)
  %i.bb = icmp samesign ugt <2 x i16> %i.az, splat (i16 31744)
  %i.bc = icmp samesign ugt <2 x i16> %i.ba, splat (i16 31744)
  %i.bd = zext <2 x i1> %i.bb to <2 x i64>
  %i.be = zext <2 x i1> %i.bc to <2 x i64>
  %i.bf = add <2 x i64> %vec.phi162, %i.bd        ; 2 uses
  %i.bg = add <2 x i64> %vec.phi163, %i.be        ; 2 uses
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next166, %i.av
  br i1 %i.bh, label %middle.block167, label %vector.body160, !llvm.loop !1033

middle.block167:                                  ; preds = %vector.body160
  %bin.rdx168 = add <2 x i64> %i.bg, %i.bf
  %i.bi = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx168)
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171: ; preds = %vector.memcheck149, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader, %middle.block167
  %.sroa.0.067.us.ph = phi i64 [ 0, %vector.memcheck149 ], [ 0, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader ], [ %i.bi, %middle.block167 ] ; 2 uses
  %.sroa.09.066.us.ph = phi i64 [ 0, %vector.memcheck149 ], [ 0, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader ], [ %i.av, %middle.block167 ] ; 6 uses
  %i.bj = sub i64 %i.af, %.sroa.09.066.us.ph      ; 2 uses
  %xtraiter189 = and i64 %i.bj, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.09.066.us.ph, ptr %i.i, align 8
  %i.bk = icmp samesign ult i64 %.sroa.09.066.us.ph, %i.af
  br i1 %i.bk, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol, label %.split71.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol
  %i.bl = add nuw nsw i64 %.sroa.09.066.us.ph, 1
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.val22.us.pre, i64 %.sroa.09.066.us.ph
  %i.bn = load i16, ptr %i.bm, align 2, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bo = and i16 %i.bn, 32767
  %i.bp = icmp samesign ugt i16 %i.bo, 31744
  %i.bq = zext i1 %i.bp to i64
  %spec.select.us.prol = add i64 %.sroa.0.067.us.ph, %i.bq ; 2 uses
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171
  %spec.select.us.lcssa.unr = phi i64 [ poison, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171 ], [ %spec.select.us.prol, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %.sroa.0.067.us.unr = phi i64 [ %.sroa.0.067.us.ph, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171 ], [ %spec.select.us.prol, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %.sroa.09.066.us.unr = phi i64 [ %.sroa.09.066.us.ph, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader171 ], [ %i.bl, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %i.br = icmp eq i64 %i.bj, 1
  br i1 %i.br, label %.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1
  %.sroa.0.067.us = phi i64 [ %spec.select.us.1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ %.sroa.0.067.us.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ]
  %.sroa.09.066.us = phi i64 [ %i.ca, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ %.sroa.09.066.us.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.09.066.us, ptr %i.i, align 8
  %i.bs = icmp samesign ult i64 %.sroa.09.066.us, %i.af
  br i1 %i.bs, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us, label %.split71.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us
  %i.bt = add nuw nsw i64 %.sroa.09.066.us, 1     ; 3 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.val22.us.pre, i64 %.sroa.09.066.us
  %i.bv = load i16, ptr %i.bu, align 2, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.bt, ptr %i.i, align 8
  %i.bw = icmp samesign ult i64 %i.bt, %i.af
  br i1 %i.bw, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1, label %.split71.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us
  %i.bx = and i16 %i.bv, 32767
  %i.by = icmp samesign ugt i16 %i.bx, 31744
  %i.bz = zext i1 %i.by to i64
  %spec.select.us = add i64 %.sroa.0.067.us, %i.bz
  %i.ca = add nuw nsw i64 %.sroa.09.066.us, 2     ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.val22.us.pre, i64 %i.bt
  %i.cc = load i16, ptr %i.cb, align 2, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cd = and i16 %i.cc, 32767
  %i.ce = icmp samesign ugt i16 %i.cd, 31744
  %i.cf = zext i1 %i.ce to i64
  %spec.select.us.1 = add i64 %spec.select.us, %i.cf ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %i.ca, %i.af
  br i1 %exitcond96.not.1, label %.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us, !llvm.loop !1034

bb.d:                                             ; preds = %bb.a
  %.val18 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val19 = load ptr, ptr %i.cg, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !8, !invariant.load !6
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = and i64 %i.cj, -16
  %i.cl = getelementptr inbounds nuw i8, ptr %.val18, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr i8, ptr %.val19, i64 32
  %.val.i.i28 = load ptr, ptr %i.cn, align 8
  %i.co = tail call { ptr, ptr } %.val.i.i28(ptr noundef nonnull %i.cm), !inline_history !1035 ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.co, 0      ; 8 uses
  %i.cq = extractvalue { ptr, ptr } %i.co, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !invariant.load !6, !nonnull !6
  call void %i.cs(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef %i.cp), !inline_history !1035
  %i.ct = load i128, ptr %i.k, align 16, !noundef !6
  %i.cu = icmp ne i128 %i.ct, -166190901438446393179604529744170412853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not1.i29 = icmp eq ptr %i.cp, null
  %.not.i30 = or i1 %.not1.i29, %i.cu
  br i1 %.not.i30, label %bb.e, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !6
  %i.cx = lshr i64 %i.cw, 2                       ; 13 uses
  %.not74 = icmp eq i64 %i.cx, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.dc = getelementptr i8, ptr %i.cp, i64 32     ; 2 uses
  %i.dd = load ptr, ptr %i.cy, align 8, !alias.scope !1064, !noundef !6
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader, label %.lr.ph60.split.preheader

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader: ; preds = %.lr.ph60
  %.val24.us.pre = load ptr, ptr %i.dc, align 8   ; 6 uses
  %i.df = add nsw i64 %i.cx, -1
  %i.dg = call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.df) ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check135 = icmp samesign ult i64 %i.dg, 10
  br i1 %min.iters.check135, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175, label %vector.memcheck127

vector.memcheck127:                               ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader
  %scevgep128 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %2 = add nsw i64 %i.cx, -1
  %umin129 = call i64 @llvm.umin.i64(i64 %i.cx, i64 %2)
  %i.di = shl nuw i64 %umin129, 2
  %i.dj = getelementptr i8, ptr %.val24.us.pre, i64 %i.di
  %scevgep130 = getelementptr i8, ptr %i.dj, i64 4
  %bound0131 = icmp ult ptr %i.f, %scevgep130
  %bound1132 = icmp ult ptr %.val24.us.pre, %scevgep128
  %found.conflict133 = and i1 %bound0131, %bound1132
  br i1 %found.conflict133, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck127
  %i.dk = and i64 %i.dh, 3                        ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 4, i64 %i.dk
  %n.vec137 = sub nsw i64 %i.dh, %i.dm
  %i.dn = freeze i64 %n.vec137                    ; 2 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body138 ] ; 3 uses
  %vec.phi140 = phi <2 x i64> [ zeroinitializer, %vector.ph136 ], [ %i.dv, %vector.body138 ]
  %vec.phi141 = phi <2 x i64> [ zeroinitializer, %vector.ph136 ], [ %i.dw, %vector.body138 ]
  %i.do = or disjoint i64 %index139, 3
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.do, ptr %i.f, align 8, !alias.scope !1066, !noalias !1067
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val24.us.pre, i64 %index139 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %wide.load142 = load <2 x float>, ptr %i.dp, align 4, !alias.scope !1067
  %wide.load143 = load <2 x float>, ptr %i.dq, align 4, !alias.scope !1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dr = fcmp uno <2 x float> %wide.load142, zeroinitializer
  %i.ds = fcmp uno <2 x float> %wide.load143, zeroinitializer
  %i.dt = zext <2 x i1> %i.dr to <2 x i64>
  %i.du = zext <2 x i1> %i.ds to <2 x i64>
  %i.dv = add <2 x i64> %vec.phi140, %i.dt        ; 2 uses
  %i.dw = add <2 x i64> %vec.phi141, %i.du        ; 2 uses
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next144, %i.dn
  br i1 %i.dx, label %middle.block145, label %vector.body138, !llvm.loop !1043

middle.block145:                                  ; preds = %vector.body138
  %bin.rdx146 = add <2 x i64> %i.dw, %i.dv
  %i.dy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx146)
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175: ; preds = %vector.memcheck127, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader, %middle.block145
  %.sroa.0.359.us.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader ], [ %i.dy, %middle.block145 ] ; 2 uses
  %.sroa.011.058.us.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader ], [ %i.dn, %middle.block145 ] ; 6 uses
  %i.dz = sub i64 %i.cx, %.sroa.011.058.us.ph     ; 2 uses
  %xtraiter187 = and i64 %i.dz, 1
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.011.058.us.ph, ptr %i.f, align 8
  %i.ea = icmp samesign ult i64 %.sroa.011.058.us.ph, %i.cx
  br i1 %i.ea, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol, label %.split63.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol
  %i.eb = add nuw nsw i64 %.sroa.011.058.us.ph, 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val24.us.pre, i64 %.sroa.011.058.us.ph
  %i.ed = load float, ptr %i.ec, align 4, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ee = fcmp uno float %i.ed, 0.000000e+00
  %i.ef = zext i1 %i.ee to i64
  %spec.select15.us.prol = add i64 %.sroa.0.359.us.ph, %i.ef ; 2 uses
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175
  %spec.select15.us.lcssa.unr = phi i64 [ poison, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175 ], [ %spec.select15.us.prol, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %.sroa.0.359.us.unr = phi i64 [ %.sroa.0.359.us.ph, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175 ], [ %spec.select15.us.prol, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %.sroa.011.058.us.unr = phi i64 [ %.sroa.011.058.us.ph, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader175 ], [ %i.eb, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %i.eg = icmp eq i64 %i.dz, 1
  br i1 %i.eg, label %.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1
  %.sroa.0.359.us = phi i64 [ %spec.select15.us.1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ %.sroa.0.359.us.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ]
  %.sroa.011.058.us = phi i64 [ %i.eo, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ %.sroa.011.058.us.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.011.058.us, ptr %i.f, align 8
  %i.eh = icmp samesign ult i64 %.sroa.011.058.us, %i.cx
  br i1 %i.eh, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us, label %.split63.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us
  %i.ei = add nuw nsw i64 %.sroa.011.058.us, 1    ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val24.us.pre, i64 %.sroa.011.058.us
  %i.ek = load float, ptr %i.ej, align 4, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ei, ptr %i.f, align 8
  %i.el = icmp samesign ult i64 %i.ei, %i.cx
  br i1 %i.el, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1, label %.split63.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us
  %i.em = fcmp uno float %i.ek, 0.000000e+00
  %i.en = zext i1 %i.em to i64
  %spec.select15.us = add i64 %.sroa.0.359.us, %i.en
  %i.eo = add nuw nsw i64 %.sroa.011.058.us, 2    ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val24.us.pre, i64 %i.ei
  %i.eq = load float, ptr %i.ep, align 4, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.er = fcmp uno float %i.eq, 0.000000e+00
  %i.es = zext i1 %i.er to i64
  %spec.select15.us.1 = add i64 %spec.select15.us, %i.es ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %i.eo, %i.cx
  br i1 %exitcond94.not.1, label %.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us, !llvm.loop !1044

bb.f:                                             ; preds = %bb.a
  %.val20 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val21 = load ptr, ptr %i.et, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !range !8, !invariant.load !6
  %i.ew = add nsw i64 %i.ev, -1
  %i.ex = and i64 %i.ew, -16
  %i.ey = getelementptr inbounds nuw i8, ptr %.val20, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = getelementptr i8, ptr %.val21, i64 32
  %.val.i.i31 = load ptr, ptr %i.fa, align 8
  %i.fb = tail call { ptr, ptr } %.val.i.i31(ptr noundef nonnull %i.ez), !inline_history !1045 ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fb, 0      ; 8 uses
  %i.fd = extractvalue { ptr, ptr } %i.fb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !invariant.load !6, !nonnull !6
  call void %i.ff(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noundef %i.fc), !inline_history !1045
  %i.fg = load i128, ptr %i.j, align 16, !noundef !6
  %i.fh = icmp ne i128 %i.fg, 4246959316822800974081716267005431997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not1.i32 = icmp eq ptr %i.fc, null
  %.not.i33 = or i1 %.not1.i32, %i.fh
  br i1 %.not.i33, label %bb.g, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.f
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !noundef !6
  %i.fk = lshr i64 %i.fj, 3                       ; 13 uses
  %.not = icmp eq i64 %i.fk, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fp = getelementptr i8, ptr %i.fc, i64 32     ; 2 uses
  %i.fq = load ptr, ptr %i.fl, align 8, !alias.scope !1068, !noundef !6
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader, label %.lr.ph.split.preheader

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader: ; preds = %.lr.ph
  %.val26.us.pre = load ptr, ptr %i.fp, align 8   ; 6 uses
  %i.fs = add nsw i64 %i.fk, -1
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fs) ; 2 uses
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ft, 10
  br i1 %min.iters.check, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = add nsw i64 %i.fk, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.fk, i64 %3)
  %i.fv = shl nuw i64 %umin, 3
  %i.fw = getelementptr i8, ptr %.val26.us.pre, i64 %i.fv
  %scevgep124 = getelementptr i8, ptr %i.fw, i64 8
  %bound0 = icmp ult ptr %i.c, %scevgep124
  %bound1 = icmp ult ptr %.val26.us.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fx = and i64 %i.fu, 3                        ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = select i1 %i.fy, i64 4, i64 %i.fx
  %n.vec = sub nsw i64 %i.fu, %i.fz
  %i.ga = freeze i64 %n.vec                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gi, %vector.body ]
  %vec.phi125 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gj, %vector.body ]
  %i.gb = or disjoint i64 %index, 3
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.gb, ptr %i.c, align 8, !alias.scope !1070, !noalias !1071
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.val26.us.pre, i64 %index ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load = load <2 x double>, ptr %i.gc, align 8, !alias.scope !1071
  %wide.load126 = load <2 x double>, ptr %i.gd, align 8, !alias.scope !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ge = fcmp uno <2 x double> %wide.load, zeroinitializer
  %i.gf = fcmp uno <2 x double> %wide.load126, zeroinitializer
  %i.gg = zext <2 x i1> %i.ge to <2 x i64>
  %i.gh = zext <2 x i1> %i.gf to <2 x i64>
  %i.gi = add <2 x i64> %vec.phi, %i.gg           ; 2 uses
  %i.gj = add <2 x i64> %vec.phi125, %i.gh        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %i.ga
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !1053

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.gj, %i.gi
  %i.gl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181: ; preds = %vector.memcheck, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader, %middle.block
  %.sroa.0.556.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader ], [ %i.gl, %middle.block ] ; 2 uses
  %.sroa.013.055.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader ], [ %i.ga, %middle.block ] ; 6 uses
  %i.gm = sub i64 %i.fk, %.sroa.013.055.us.ph     ; 2 uses
  %xtraiter = and i64 %i.gm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.013.055.us.ph, ptr %i.c, align 8
  %i.gn = icmp samesign ult i64 %.sroa.013.055.us.ph, %i.fk
  br i1 %i.gn, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol, label %.split.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol
  %i.go = add nuw nsw i64 %.sroa.013.055.us.ph, 1
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.val26.us.pre, i64 %.sroa.013.055.us.ph
  %i.gq = load double, ptr %i.gp, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gr = fcmp uno double %i.gq, 0.000000e+00
  %i.gs = zext i1 %i.gr to i64
  %spec.select16.us.prol = add i64 %.sroa.0.556.us.ph, %i.gs ; 2 uses
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181
  %spec.select16.us.lcssa.unr = phi i64 [ poison, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181 ], [ %spec.select16.us.prol, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %.sroa.0.556.us.unr = phi i64 [ %.sroa.0.556.us.ph, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181 ], [ %spec.select16.us.prol, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %.sroa.013.055.us.unr = phi i64 [ %.sroa.013.055.us.ph, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader181 ], [ %i.go, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.prol ]
  %i.gt = icmp eq i64 %i.gm, 1
  br i1 %i.gt, label %.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1
  %.sroa.0.556.us = phi i64 [ %spec.select16.us.1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ %.sroa.0.556.us.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ]
  %.sroa.013.055.us = phi i64 [ %i.hb, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ %.sroa.013.055.us.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.013.055.us, ptr %i.c, align 8
  %i.gu = icmp samesign ult i64 %.sroa.013.055.us, %i.fk
  br i1 %i.gu, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us, label %.split.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us
  %i.gv = add nuw nsw i64 %.sroa.013.055.us, 1    ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.val26.us.pre, i64 %.sroa.013.055.us
  %i.gx = load double, ptr %i.gw, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.gv, ptr %i.c, align 8
  %i.gy = icmp samesign ult i64 %i.gv, %i.fk
  br i1 %i.gy, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1, label %.split.us, !prof !12

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us
  %i.gz = fcmp uno double %i.gx, 0.000000e+00
  %i.ha = zext i1 %i.gz to i64
  %spec.select16.us = add i64 %.sroa.0.556.us, %i.ha
  %i.hb = add nuw nsw i64 %.sroa.013.055.us, 2    ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val26.us.pre, i64 %i.gv
  %i.hd = load double, ptr %i.hc, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.he = fcmp uno double %i.hd, 0.000000e+00
  %i.hf = zext i1 %i.he to i64
  %spec.select16.us.1 = add i64 %spec.select16.us, %i.hf ; 2 uses
  %exitcond92.not.1 = icmp eq i64 %i.hb, %i.fk
  br i1 %exitcond92.not.1, label %.loopexit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us, !llvm.loop !1054

.lr.ph68.split.preheader:                         ; preds = %.lr.ph68, %bb.i
  %.sroa.0.067 = phi i64 [ %.sroa.0.2, %bb.i ], [ 0, %.lr.ph68 ] ; 2 uses
  %.sroa.09.066 = phi i64 [ %i.hg, %bb.i ], [ 0, %.lr.ph68 ] ; 6 uses
  %i.hg = add nuw nsw i64 %.sroa.09.066, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %i.hh = load i64, ptr %i.ah, align 8, !alias.scope !1059, !noundef !6
  %i.hi = icmp ult i64 %.sroa.09.066, %i.hh
  br i1 %i.hi, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %.lr.ph68.split.preheader
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !1059
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %.lr.ph68.split.preheader
  %i.hj = load ptr, ptr %i.ai, align 8, !alias.scope !1059, !noundef !6
  %i.hk = load i64, ptr %i.aj, align 8, !alias.scope !1059, !noundef !6
  %i.hl = add i64 %i.hk, %.sroa.09.066            ; 2 uses
  %i.hm = lshr i64 %i.hl, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !noalias !1059, !noundef !6
  %i.hp = trunc i64 %i.hl to i8
  %i.hq = and i8 %i.hp, 7
  %i.hr = xor i8 %i.ho, -1
  %i.hs = lshr i8 %i.hr, %i.hq
  %i.ht = trunc i8 %i.hs to i1
  br i1 %i.ht, label %bb.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread

.loopexit:                                        ; preds = %bb.m, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1, %bb.k, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1, %bb.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, %bb.a
  %.sroa.0.1 = phi i64 [ %spec.select.us.1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ 0, %bb.a ], [ %.sroa.0.4, %bb.k ], [ 0, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit ], [ %spec.select15.us.1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ 0, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float32TypeECsfUv75jb5FCv_17lance_arrow_stats.exit ], [ %spec.select16.us.1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.1 ], [ 0, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float64TypeECsfUv75jb5FCv_17lance_arrow_stats.exit ], [ %.sroa.0.2, %bb.i ], [ %spec.select.us.lcssa.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ], [ %spec.select15.us.lcssa.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ], [ %spec.select16.us.lcssa.unr, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol.loopexit ], [ %.sroa.0.6, %bb.m ]
  ret i64 %.sroa.0.1

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  %.val22 = load ptr, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.09.066, ptr %i.i, align 8
  %i.hu = icmp samesign ult i64 %.sroa.09.066, %i.af
  br i1 %i.hu, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit, label %.split71.us, !prof !12

.split71.us:                                      ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.prol, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.af, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.hv, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.val22, i64 %.sroa.09.066
  %i.hx = load i16, ptr %i.hw, align 2, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.hy = and i16 %i.hx, 32767
  %i.hz = icmp samesign ugt i16 %i.hy, 31744
  %i.ia = zext i1 %i.hz to i64
  %spec.select = add i64 %.sroa.0.067, %i.ia
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  %.sroa.0.2 = phi i64 [ %.sroa.0.067, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit ], [ %spec.select, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit ] ; 2 uses
  %exitcond95.not = icmp eq i64 %i.hg, %i.af
  br i1 %exitcond95.not, label %.loopexit, label %.lr.ph68.split.preheader, !llvm.loop !1055

.lr.ph60.split.preheader:                         ; preds = %.lr.ph60, %bb.k
  %.sroa.0.359 = phi i64 [ %.sroa.0.4, %bb.k ], [ 0, %.lr.ph60 ] ; 2 uses
  %.sroa.011.058 = phi i64 [ %i.ib, %bb.k ], [ 0, %.lr.ph60 ] ; 6 uses
  %i.ib = add nuw nsw i64 %.sroa.011.058, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %i.ic = load i64, ptr %i.cz, align 8, !alias.scope !1065, !noundef !6
  %i.id = icmp ult i64 %.sroa.011.058, %i.ic
  br i1 %i.id, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.j, !prof !12

bb.j:                                             ; preds = %.lr.ph60.split.preheader
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !1065
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %.lr.ph60.split.preheader
  %i.ie = load ptr, ptr %i.da, align 8, !alias.scope !1065, !noundef !6
  %i.if = load i64, ptr %i.db, align 8, !alias.scope !1065, !noundef !6
  %i.ig = add i64 %i.if, %.sroa.011.058           ; 2 uses
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !1065, !noundef !6
  %i.ik = trunc i64 %i.ig to i8
  %i.il = and i8 %i.ik, 7
  %i.im = xor i8 %i.ij, -1
end_hunk_0
