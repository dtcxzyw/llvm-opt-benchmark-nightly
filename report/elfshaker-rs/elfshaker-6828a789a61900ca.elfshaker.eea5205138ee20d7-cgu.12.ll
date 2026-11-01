Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.12?download=true
inline.NumInlined: 693
inline.NumDeleted: 334
begin_hunk_0_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB13_2io5error5ErrorENCNvMs0_NtB4_10repositoryNtB2K_10Repository11create_pack0INtNtB1F_9into_iter8IntoIterBV_EEB6_:bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.e:                                             ; preds = %bb.c
  store ptr %i.aq, ptr %i.ak, align 8, !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1270
  %i.at = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEENtNtB1Y_7default7Default7defaultCskuiImRAV2ip_9elfshaker()
          to label %bb.g unwind label %bb.f, !noalias !1270 ; 8 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit44.i: ; preds = %bb.ei, %.thread144.i, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.av, %bb.f ], [ %.pn.pn90135.i, %bb.ei ], [ %.pn.pn90135.i, %.thread144.i ] ; 2 uses
  %.sroa.08.1.i = phi i8 [ %.sroa.07.1.i, %bb.f ], [ 0, %bb.ei ], [ 0, %.thread144.i ] ; 2 uses
  %.sroa.07.0.i = phi i8 [ %.sroa.07.1.i, %bb.f ], [ %.sroa.07.292132.i, %bb.ei ], [ %.sroa.07.292132.i, %.thread144.i ]
  %i.au = trunc nuw i8 %.sroa.07.0.i to i1
  br i1 %i.au, label %.thread72.i, label %bb.d

bb.f:                                             ; preds = %bb.ec, %bb.e
  %.sroa.07.1.i = phi i8 [ 0, %bb.ec ], [ 1, %bb.e ] ; 2 uses
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit44.i

bb.g:                                             ; preds = %bb.e
  store ptr %i.at, ptr %i.ai, align 8, !noalias !1270
  %i.aw = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.j unwind label %bb.h, !noalias !1270

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !1271
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.i, label %.thread72.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #25
          to label %.thread72.i unwind label %bb.ed, !noalias !1270

bb.j:                                             ; preds = %bb.g
  store ptr %i.at, ptr %i.aj, align 8, !noalias !1270
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr %i.aw, ptr %i.ba, align 8, !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1270
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %i.al, align 8, !alias.scope !1269
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0.sroa.6.0.copyload.i = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1269 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1272
  store i64 %.sroa.0.sroa.0.0.copyload.i, ptr %i.bb, align 8, !noalias !1270
  %.sroa.854.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %i.bc = load <2 x ptr>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1269
  %.sroa.0.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1269
  store <2 x ptr> %i.bc, ptr %.sroa.854.0..sroa_idx.i, align 8, !noalias !1270
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  store i64 %.sroa.0.sroa.6.0.copyload.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1272
  store i64 0, ptr %i.y, align 8, !noalias !1272
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bd, align 8, !noalias !1272
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store i64 0, ptr %i.be, align 8, !noalias !1272
  store i64 0, ptr %i.x, align 8, !alias.scope !1273, !noalias !1272
  %i.bf = load i64, ptr %i.am, align 8, !noalias !1272, !noundef !5 ; 3 uses
  %i.bg = ptrtoint ptr %.sroa.0.sroa.4.0.copyload.i to i64
  %i.bh = sub nuw i64 %.sroa.0.sroa.6.0.copyload.i, %i.bg
  %i.bi = lshr exact i64 %i.bh, 4                 ; 2 uses
  %i.bj = icmp ugt i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.p, label %bb.m

bb.k:                                             ; preds = %.body.i.i.i.i.i
  br i1 %.sroa.07.2.lpad-body.i.i.i.i.i, label %bb.cm, label %.body46.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.y, %bb.v, %bb.o
  %.sroa.07.2.ph.i.i.i.i.i = phi i1 [ false, %bb.y ], [ false, %bb.v ], [ true, %bb.o ]
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ci, %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i
  %.sroa.07.2.lpad-body.i.i.i.i.i = phi i1 [ true, %bb.ci ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i ], [ true, %bb.cd ], [ %.sroa.07.2.ph.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.gd, %bb.ci ], [ %.pn38.i.i163.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i ], [ %.pn38.i.i163.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i ], [ %i.fv, %bb.cd ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ %lpad.loopexit.split-lp206, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.k unwind label %bb.cl, !noalias !1274

bb.l:                                             ; preds = %bb.o
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bk = icmp eq i64 %i.bf, 0
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = udiv i64 %i.bi, %i.bf
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
          to label %bb.l unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1274

bb.p:                                             ; preds = %bb.n, %bb.j
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.bl, %bb.n ], [ 1, %bb.j ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.5.0..sroa_idx.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.ck, %bb.p
  %i.bx = phi i64 [ %i.gh, %bb.ck ], [ 0, %bb.p ] ; 2 uses
  %i.by = phi i64 [ %.pre.i.i.i.i.i, %bb.ck ], [ 0, %bb.p ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.pr.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1272
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.ca = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1279, !noalias !1272, !nonnull !5, !noundef !5
  %i.cb = load ptr, ptr %.sroa.854.0..sroa_idx.i, align 8, !alias.scope !1279, !noalias !1272, !nonnull !5, !noundef !5 ; 4 uses
  %i.cc = icmp eq ptr %i.cb, %i.ca
  br i1 %i.cc, label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cd, ptr %.sroa.854.0..sroa_idx.i, align 8, !alias.scope !1279, !noalias !1272
  %i.ce = load ptr, ptr %i.cb, align 8, !noalias !1280, !nonnull !5, !align !1281, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !1280, !noundef !5
  br label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i

_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.3.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.t ], [ undef, %bb.s ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ce, %bb.t ], [ null, %bb.s ] ; 2 uses
  store i64 1, ptr %i.x, align 8, !alias.scope !1275, !noalias !1272
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1275, !noalias !1272
  store i64 %.sroa.3.0.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1275, !noalias !1272
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i, %bb.r
  %i.ch = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSmEE4peek0CskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i ], [ %.pr.i.i.i.i.i, %bb.r ]
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1272
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRSmEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeQINtNtB1q_8peekable8PeekableINtNtB4_9into_iter8IntoIterBU_EEEE9from_iterCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.x, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.aa unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1274

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RSmEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1j_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1272
  %i.ci = load ptr, ptr %i.bd, align 8, !noalias !1272, !nonnull !5, !noundef !5 ; 3 uses
  %i.cj = load i64, ptr %i.y, align 8, !range !8, !noalias !1272, !noundef !5
  %i.ck = icmp ult i64 %i.bx, 384307168202282326
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.bx
  store ptr %i.ci, ptr %i.s, align 8, !noalias !1272
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.cl, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultTyIB2U_hEENtNtNtB6_2io5error5ErrorEEEENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmB34_NCNvMs0_NtB4b_10repositoryNtB5h_10Repository11create_pack0IB17_B52_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB6v_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B6v_EE9from_iterBQ_E0B7K_EB4d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.s)
          to label %bb.w unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1274

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1272
  %i.cm = load i64, ptr %i.t, align 8, !range !6, !noalias !1272, !noundef !5 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %4 = load ptr, ptr %i.co, align 8, !noalias !1272, !nonnull !5, !noundef !5 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %6 = load ptr, ptr %5, align 8, !noalias !1272, !nonnull !5, !align !7, !noundef !5
  %7 = insertelement <2 x ptr> poison, ptr %4, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %6, i64 1
  br label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB9_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB9_2io5error5ErrorENCNvMs0_NtB25_10repositoryNtB4u_10Repository11create_pack0INtNtB3q_9into_iter8IntoIterB2W_EE0IB30_IB3o_B2Z_EINtNtB3s_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %5, align 8, !noalias !1272, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1272
  %i.cq = icmp ult i64 %i.cp, 384307168202282326
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.cp
  store ptr %4, ptr %i.q, align 8, !noalias !1272
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %4, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.cm, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.cr, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1272
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBL_hEENtNtNtBZ_2io5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.q)
          to label %bb.z unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1274

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1272
  %.sroa.01.0.copyload2.i.i = load i64, ptr %i.r, align 8, !noalias !1282
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cs = load <2 x ptr>, ptr %.sroa.53.0..sroa_idx4.i.i, align 8, !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1272
  br label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB9_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB9_2io5error5ErrorENCNvMs0_NtB25_10repositoryNtB4u_10Repository11create_pack0INtNtB3q_9into_iter8IntoIterB2W_EE0IB30_IB3o_B2Z_EINtNtB3s_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !1274
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1284
  store ptr %i.aj, ptr %i.bn, align 8, !noalias !1284
  store i64 0, ptr %i.p, align 8, !noalias !1284
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i41.i.i.i.i.i, align 8, !noalias !1284
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1284
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1286
  %i.ct = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultTyIB28_hEENtNtNtB1A_2io5error5ErrorEEEEENtNtB1A_7default7Default7defaultCskuiImRAV2ip_9elfshaker()
          to label %bb.ab unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i, !noalias !1287 ; 4 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i: ; preds = %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  br i1 %.sroa.015.3.i.i.i.i.i.i.i, label %bb.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i: ; preds = %bb.aa
  %lpad.loopexit60.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.ap
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ct, ptr %i.o, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1286
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !1287
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ct, ptr %i.l, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1286
  %i.cw = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !1287
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.at, ptr %i.k, align 8, !noalias !1286
  %i.cy = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %bb.ai unwind label %bb.ag, !noalias !1287

bb.af:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.da = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !1288
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ah, label %bb.bu

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %bb.bu unwind label %bb.br, !noalias !1287

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1286
  store ptr %i.at, ptr %i.bo, align 8, !noalias !1286
  store ptr %i.cy, ptr %i.bp, align 8, !noalias !1286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !1289
  store ptr %i.ct, ptr %i.bq, align 8, !noalias !1286
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1290
  %i.dc = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 96, i64 noundef 8) #22, !noalias !1290 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.aj, label %bb.an, !prof !12

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #26
          to label %.noexc47.i.i.i.i.i.i.i unwind label %bb.ak, !noalias !1287

.noexc47.i.i.i.i.i.i.i:                           ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtB23_10repositoryNtB4s_10Repository11create_pack0INtNtB3o_9into_iter8IntoIterB2U_EE00IB3m_B2X_EE0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.al, !noalias !1287

bb.al:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1287
  unreachable

bb.am:                                            ; preds = %bb.an
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dc, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false), !noalias !1287
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1285, !noalias !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i41.i.i.i.i.i, i64 24, i1 false), !noalias !1292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1291
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.dc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %.noexc48.i.i.i.i.i.i.i unwind label %bb.am, !noalias !1287

.noexc48.i.i.i.i.i.i.i:                           ; preds = %bb.an
  %i.dh = load ptr, ptr %i.d, align 8, !noalias !1291, !noundef !5 ; 6 uses
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = load ptr, ptr %i.br, align 8, !noalias !1291 ; 3 uses
  br i1 %i.di, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dj) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1286
  call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.dk = load ptr, ptr %i.o, align 8, !alias.scope !1295, !noalias !1286, !nonnull !5, !noundef !5
  %i.dl = atomicrmw add ptr %i.dk, i64 -1 release, align 8, !noalias !1296
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.ap, label %bb.cc

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultTyIB28_hEENtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.cc unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1287

bb.aq:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1286
  %i.dn = atomicrmw add ptr %i.dh, i64 1 monotonic, align 8, !noalias !1287
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.dh, ptr %i.i, align 8, !noalias !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1286
  store i64 1, ptr %i.g, align 8, !noalias !1286
  store i64 1, ptr %i.bs, align 8, !noalias !1286
  store i32 0, ptr %i.bt, align 8, !noalias !1286
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1286
  store ptr %i.dh, ptr %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1286
  store ptr %i.dj, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1286
  store i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1286
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1297
  %i.dp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !1297 ; 7 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.as, label %bb.ax, !prof !12

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc50.i.i.i.i.i.i.i unwind label %bb.at, !noalias !1287

.noexc50.i.i.i.i.i.i.i:                           ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.au, !noalias !1287

end_hunk_0
begin_hunk_1_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB13_2io5error5ErrorENCNvMs0_NtB4_10repositoryNtB2K_10Repository11create_pack0INtNtB1F_9into_iter8IntoIterBV_EEB6_:bb.a
  br label %.body45.i.i.i.i.i

.body45.i.i.i.i.i:                                ; preds = %bb.ca, %bb.bx, %bb.br
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1311
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i: ; preds = %bb.ay, %.body42.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.fg = load ptr, ptr %i.n, align 8, !alias.scope !1314, !noalias !1286, !nonnull !5, !noundef !5
  %i.fh = atomicrmw add ptr %i.fg, i64 -1 release, align 8, !noalias !1315
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.br, !noalias !1287

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu, %bb.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i, %bb.aw, %.body.i.i.i.i.i.i.i, %bb.am, %bb.ak
  %.sroa.015.3.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i ], [ false, %bb.am ], [ false, %bb.ak ], [ false, %bb.aw ], [ false, %bb.bs ], [ true, %bb.bv ], [ true, %bb.bu ]
  %.sroa.016.4.i.i.i.i.i.i.i = phi i1 [ false, %.body.i.i.i.i.i.i.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i ], [ false, %bb.am ], [ true, %bb.ak ], [ false, %bb.aw ], [ false, %bb.bs ], [ true, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %.pn35.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dr, %.body.i.i.i.i.i.i.i ], [ %.pn35.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker.exit55.i.i.i.i.i.i.i ], [ %i.dg, %bb.am ], [ %i.de, %bb.ak ], [ %i.dr, %bb.aw ], [ %.pn35.i.i.i.i.i.i.i, %bb.bs ], [ %i.cz, %bb.bv ], [ %i.cz, %bb.bu ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.fj = load ptr, ptr %i.o, align 8, !alias.scope !1318, !noalias !1286, !nonnull !5, !noundef !5
  %i.fk = atomicrmw add ptr %i.fj, i64 -1 release, align 8, !noalias !1319
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultTyIB28_hEENtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i unwind label %bb.br, !noalias !1287

bb.bu:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.fm = load ptr, ptr %i.l, align 8, !alias.scope !1322, !noalias !1286, !nonnull !5, !noundef !5
  %i.fn = atomicrmw add ptr %i.fm, i64 -1 release, align 8, !noalias !1323
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultTyIB28_hEENtNtNtB1A_2io5error5ErrorEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.br, !noalias !1287

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRSmEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i
  %.pn38.i.i163.i.i.i.i.i = phi { ptr, i32 } [ %.pn38.i.i164.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRSmEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.016.0.i.i161.i.i.i.i.i = phi i1 [ %.sroa.016.0.i.i162.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRSmEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ]
  %i.fp = load i64, ptr %.sroa.5.0..sroa_idx.i41.i.i.i.i.i, align 8, !range !6, !noalias !1272
  %i.fq = icmp ne i64 %i.fp, -1
  %or.cond.not.i.i.i.i.i = select i1 %.sroa.016.0.i.i161.i.i.i.i.i, i1 %i.fq, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.bz, label %.body.i.i.i.i.i

bb.bw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i
  %.pn38.i.i164.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit60.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i ], [ %.pn35.pn.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ]
  %.sroa.016.0.i.i162.i.i.i.i.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.thread.i.i.i.i.i ], [ %.sroa.016.4.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultTyIB2l_hEENtNtNtB4_2io5error5ErrorEEEEEECskuiImRAV2ip_9elfshaker.exit62.i.i.i.i.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRSmEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i unwind label %bb.bx, !noalias !1324

bb.bx:                                            ; preds = %bb.bw
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %.body45.i.i.i.i.i unwind label %bb.by, !noalias !1324

bb.by:                                            ; preds = %bb.bx
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1324
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRSmEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i unwind label %bb.br, !noalias !1274

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorENCNvMs0_NtBK_10repositoryNtB39_10Repository11create_pack0INtNtB25_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i41.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.ca, !noalias !1311

bb.ca:                                            ; preds = %bb.bz
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i41.i.i.i.i.i)
          to label %.body45.i.i.i.i.i unwind label %bb.cb, !noalias !1311

bb.cb:                                            ; preds = %bb.ca
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1311
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i41.i.i.i.i.i)
          to label %.body.i.i.i.i.i unwind label %bb.br, !noalias !1274

bb.cc:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1325
  store ptr %i.dj, ptr %i.b, align 8, !noalias !1325
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 29, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.ce unwind label %bb.cd, !noalias !1326

bb.cd:                                            ; preds = %bb.cc
  %i.fv = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %.body.i.i.i.i.i unwind label %bb.cf, !noalias !1326

bb.ce:                                            ; preds = %bb.cc
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1326
  unreachable

bb.cg:                                            ; preds = %bb.bq, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  %i.fx = load ptr, ptr %i.n, align 8, !noalias !1286, !nonnull !5, !noundef !5
  %i.fy = load ptr, ptr %i.o, align 8, !noalias !1286, !nonnull !5, !noundef !5
  %i.fz = load ptr, ptr %i.m, align 8, !noalias !1286, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1284
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  store ptr %i.fx, ptr %i.v, align 8, !alias.scope !1329, !noalias !1272
  store ptr %i.fy, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !1329, !noalias !1272
  store ptr %i.fz, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1329, !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1272
  %i.ga = load i64, ptr %i.be, align 8, !alias.scope !1330, !noalias !1272, !noundef !5 ; 3 uses
  %i.gb = load i64, ptr %i.y, align 8, !range !8, !alias.scope !1330, !noalias !1272, !noundef !5
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1M_hEENtNtNtB26_2io5error5ErrorEEEE8grow_oneCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.ck unwind label %bb.ci, !noalias !1331

bb.ci:                                            ; preds = %bb.ch
  %i.gd = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIB1B_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #23
          to label %.body.i.i.i.i.i unwind label %bb.cj, !noalias !1274

bb.cj:                                            ; preds = %bb.ci
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1274
  unreachable

bb.ck:                                            ; preds = %bb.ch, %bb.cg
  %i.gf = load ptr, ptr %i.bd, align 8, !alias.scope !1330, !noalias !1272, !nonnull !5, !noundef !5
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1274
  %i.gh = add i64 %i.ga, 1                        ; 2 uses
  store i64 %i.gh, ptr %i.be, align 8, !alias.scope !1330, !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1272
  %.pre.i.i.i.i.i = load i64, ptr %i.x, align 8, !range !15, !alias.scope !1275, !noalias !1272
  br label %bb.q

bb.cl:                                            ; preds = %bb.co, %.body.i.i.i.i.i
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.cn, %bb.cl
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1274
  unreachable

bb.cm:                                            ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleIBw_INtNtCs3oUPovFnLWP_4core6result6ResultTyIBw_hEENtNtNtB1N_2io5error5ErrorEEEENtNtNtB1N_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.co unwind label %bb.cn, !noalias !1274

bb.cn:                                            ; preds = %bb.cm
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1M_hEENtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i.i.i.i unwind label %bb.cp, !noalias !1274

bb.co:                                            ; preds = %bb.cm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1M_hEENtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body46.i unwind label %bb.cl, !noalias !1332

bb.cp:                                            ; preds = %bb.cn
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1274
  unreachable

_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB9_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB9_2io5error5ErrorENCNvMs0_NtB25_10repositoryNtB4u_10Repository11create_pack0INtNtB3q_9into_iter8IntoIterB2W_EE0IB30_IB3o_B2Z_EINtNtB3s_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i: ; preds = %bb.z, %bb.x
  %.sroa.01.0.i.i = phi i64 [ -1, %bb.x ], [ %.sroa.01.0.copyload2.i.i, %bb.z ]
  %i.gl = phi <2 x ptr> [ %8, %bb.x ], [ %i.cs, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1272
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.cs unwind label %bb.cq, !noalias !1270

bb.cq:                                            ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB9_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB9_2io5error5ErrorENCNvMs0_NtB25_10repositoryNtB4u_10Repository11create_pack0INtNtB3q_9into_iter8IntoIterB2W_EE0IB30_IB3o_B2Z_EINtNtB3s_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body46.i

.body46.i:                                        ; preds = %bb.cq, %bb.co, %bb.k
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.gm, %bb.cq ], [ %eh.lpad-body.i.i.i.i.i, %bb.co ], [ %eh.lpad-body.i.i.i.i.i, %bb.k ]
  %i.gn = extractvalue { ptr, i32 } %eh.lpad-body47.i, 0
  %i.go = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.gn)
          to label %bb.ct unwind label %bb.cr, !noalias !1270 ; 2 uses

bb.cr:                                            ; preds = %.body46.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !noalias !1270
  unreachable

bb.cs:                                            ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB9_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB9_2io5error5ErrorENCNvMs0_NtB25_10repositoryNtB4u_10Repository11create_pack0INtNtB3q_9into_iter8IntoIterB2W_EE0IB30_IB3o_B2Z_EINtNtB3s_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1272
  store i64 %.sroa.01.0.i.i, ptr %i.ah, align 8, !noalias !1270
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <2 x ptr> %i.gl, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1270
  br label %bb.cu

bb.ct:                                            ; preds = %.body46.i
  %i.gq = extractvalue { ptr, ptr } %i.go, 0
  %i.gr = extractvalue { ptr, ptr } %i.go, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gr) ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.gq, ptr %i.gs, align 8, !noalias !1270
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.gr, ptr %i.gt, align 8, !noalias !1270
  store i64 -2, ptr %i.ah, align 8, !noalias !1270
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1270
  %i.gu = load ptr, ptr %i.ba, align 8, !noalias !1270, !nonnull !5, !noundef !5
  store ptr %i.gu, ptr %i.ag, align 8, !noalias !1270
  invoke void @_RNvXs0_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.cx unwind label %bb.cv, !noalias !1270

bb.cv:                                            ; preds = %bb.cu
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.gw = load ptr, ptr %i.ag, align 8, !alias.scope !1335, !noalias !1270, !nonnull !5, !noundef !5
  %i.gx = atomicrmw add ptr %i.gw, i64 -1 release, align 8, !noalias !1336
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.cw, label %.thread84.i

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25
          to label %.thread84.i unwind label %bb.cz, !noalias !1270

bb.cx:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.gz = load ptr, ptr %i.ag, align 8, !alias.scope !1339, !noalias !1270, !nonnull !5, !noundef !5
  %i.ha = atomicrmw add ptr %i.gz, i64 -1 release, align 8, !noalias !1340
  %i.hb = icmp eq i64 %i.ha, 1
  br i1 %i.hb, label %bb.cy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.da, !noalias !1270

bb.cz:                                            ; preds = %bb.cw
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1270
  unreachable

.body20.i:                                        ; preds = %bb.ef, %bb.da
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.ef ], [ %i.he, %bb.da ] ; 2 uses
  %.sroa.07.2.i = phi i8 [ 0, %bb.ef ], [ %.sroa.07.3.i, %bb.da ] ; 2 uses
  %.sroa.06.0.i = phi i8 [ 1, %bb.ef ], [ %.sroa.04.1.i, %bb.da ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.2.ph.i, %bb.ef ], [ true, %bb.da ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.04.3.ph.i, %bb.ef ], [ %.sroa.04.1.i, %bb.da ]
  %i.hd = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.hd, label %.thread84.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scope12AbortOnPanicECskuiImRAV2ip_9elfshaker.exit.i

bb.da:                                            ; preds = %bb.dy, %bb.db, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i, %bb.cy
  %.sroa.07.3.i = phi i8 [ 0, %bb.dy ], [ 1, %bb.cy ], [ 0, %bb.db ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ]
  %.sroa.04.1.i = phi i8 [ 0, %bb.dy ], [ 1, %bb.cy ], [ 1, %bb.db ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i ] ; 2 uses
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1270
  %i.hf = load ptr, ptr %i.ak, align 8, !noalias !1270, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull %i.hf)
          to label %bb.db unwind label %bb.da, !noalias !1270

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_group9WaitGroupECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1270
  %i.hg = load ptr, ptr %i.aj, align 8, !noalias !1270, !nonnull !5, !noundef !5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %i.hh)
          to label %bb.dc unwind label %bb.da, !noalias !1270

bb.dc:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.hi = load i64, ptr %i.ac, align 8, !range !15, !alias.scope !1341, !noalias !1270, !noundef !5
  %i.hj = trunc nuw i64 %i.hi to i1
  br i1 %i.hj, label %bb.dd, label %bb.dh, !prof !12

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1342
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1341, !noalias !1270, !nonnull !5, !align !7, !noundef !5
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.hn = load i8, ptr %i.hm, align 8, !range !10, !alias.scope !1341, !noalias !1270, !noundef !5
  store ptr %i.hl, ptr %i.z, align 8, !noalias !1342
  %i.ho = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 %i.hn, ptr %i.ho, align 8, !noalias !1342
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
          to label %bb.df unwind label %bb.de, !noalias !1343

bb.de:                                            ; preds = %bb.dd
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #23
          to label %.thread84.i unwind label %bb.dg, !noalias !1343

bb.df:                                            ; preds = %bb.dd
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1343
  unreachable

bb.dh:                                            ; preds = %bb.dc
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !1341, !noalias !1270, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.hu = load i8, ptr %i.ht, align 8, !range !10, !alias.scope !1341, !noalias !1270, !noundef !5 ; 2 uses
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1270
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB15_6thread11join_handle10JoinHandleuEEEEE5drainNtNtNtB1Q_3ops5range9RangeFullECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hw)
          to label %bb.dj unwind label %bb.di, !noalias !1270

bb.di:                                            ; preds = %bb.dj, %bb.dh
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.hs, i8 %i.hu) #23
          to label %.thread84.i unwind label %bb.ed, !noalias !1270

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1270
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB1h_6result6ResultTyIBL_hEENtNtNtB1h_2io5error5ErrorENCNvMs0_NtB6S_10repositoryNtB8Q_10Repository11create_pack0INtNtB4_9into_iter8IntoIterB7J_EE0IB7N_IBL_B7M_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB6U_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ae)
          to label %bb.dk unwind label %bb.di, !noalias !1270

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1270
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  br i1 %i.hv, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.hz = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1270
  %i.ia = and i64 %i.hz, 9223372036854775807
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dm, !prof !11

bb.dm:                                            ; preds = %bb.dl
  %i.ic = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc32.i unwind label %bb.ef, !noalias !1270

.noexc32.i:                                       ; preds = %bb.dm
  br i1 %i.ic, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.noexc32.i
  store atomic i8 1, ptr %i.hy monotonic, align 4, !noalias !1270
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.dn, %.noexc32.i, %bb.dl, %bb.dk
  %i.id = atomicrmw xchg ptr %i.hs, i32 0 release, align 4, !noalias !1270
  %i.ie = icmp eq i32 %i.id, 2
  br i1 %i.ie, label %bb.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i, !prof !12

bb.do:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hs)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_4sync3ArcINtBE_5MutexINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEEEEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.ef, !noalias !1270
end_hunk_1
begin_hunk_2_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB6_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtBY_12ExtractStatsNtNtB4_5error5ErrorENCINvMsa_BY_NtBY_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB1n_9into_iter8IntoIterBV_EEB6_:bb.a
  %.sroa.08.1.i = phi i8 [ %.sroa.07.1.i, %bb.f ], [ 0, %bb.en ], [ 0, %.thread144.i ] ; 2 uses
  %.sroa.07.0.i = phi i8 [ %.sroa.07.1.i, %bb.f ], [ %.sroa.07.292132.i, %bb.en ], [ %.sroa.07.292132.i, %.thread144.i ]
  %i.aw = trunc nuw i8 %.sroa.07.0.i to i1
  br i1 %i.aw, label %.thread72.i, label %bb.d

bb.f:                                             ; preds = %bb.eh, %bb.e
  %.sroa.07.1.i = phi i8 [ 0, %bb.eh ], [ 1, %bb.e ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit44.i

bb.g:                                             ; preds = %bb.e
  store ptr %i.av, ptr %i.ai, align 8, !noalias !1475
  %i.ay = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.j unwind label %bb.h, !noalias !1475

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !1476
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %.thread72.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #25
          to label %.thread72.i unwind label %bb.ei, !noalias !1475

bb.j:                                             ; preds = %bb.g
  store ptr %i.av, ptr %i.aj, align 8, !noalias !1475
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr %i.ay, ptr %i.bc, align 8, !noalias !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1475
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %i.al, align 8, !alias.scope !1474
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0.sroa.6.0.copyload.i = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1474 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1477
  store i64 %.sroa.0.sroa.0.0.copyload.i, ptr %i.bd, align 8, !noalias !1475
  %.sroa.854.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 3 uses
  %i.be = load <2 x ptr>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1474
  %.sroa.0.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1474
  store <2 x ptr> %i.be, ptr %.sroa.854.0..sroa_idx.i, align 8, !noalias !1475
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 2 uses
  store i64 %.sroa.0.sroa.6.0.copyload.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !1475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1477
  store i64 0, ptr %i.y, align 8, !noalias !1477
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8, !noalias !1477
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store i64 0, ptr %i.bg, align 8, !noalias !1477
  store i64 -1, ptr %i.x, align 8, !alias.scope !1478, !noalias !1477
  %i.bh = load i64, ptr %i.an, align 8, !noalias !1477, !noundef !5 ; 3 uses
  %i.bi = ptrtoint ptr %.sroa.0.sroa.4.0.copyload.i to i64
  %i.bj = sub nuw i64 %.sroa.0.sroa.6.0.copyload.i, %i.bi
  %i.bk = udiv exact i64 %i.bj, 96                ; 2 uses
  %i.bl = icmp ugt i64 %i.bh, %i.bk
  br i1 %i.bl, label %bb.r, label %bb.o

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtBG_3VecNtNtB1w_7packidx9FileEntryEEEEB1w_.exit.i.i.i.i.i
  br i1 %.sroa.07.2.lpad-body.i.i.i.i.i, label %bb.cr, label %.body46.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.aa, %bb.x, %bb.q
  %.sroa.07.2.ph.i.i.i.i.i = phi i1 [ false, %bb.aa ], [ false, %bb.x ], [ true, %bb.q ]
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body39.i.i.i.i.i

.body39.i.i.i.i.i:                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cn, %bb.ci, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i
  %.sroa.07.2.lpad-body.i.i.i.i.i = phi i1 [ true, %bb.cn ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i ], [ true, %bb.ci ], [ %.sroa.07.2.ph.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body40.i.i.i.i.i = phi { ptr, i32 } [ %i.gi, %bb.cn ], [ %.pn38.i.i163.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i ], [ %.pn38.i.i163.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i ], [ %i.ga, %bb.ci ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ %lpad.loopexit.split-lp207, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtBG_3VecNtNtB1w_7packidx9FileEntryEEEEB1w_.exit.i.i.i.i.i unwind label %bb.l, !noalias !1479

bb.l:                                             ; preds = %.body39.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB18_7packidx9FileEntryEEEEEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x) #23
          to label %.body.i.i.i.i unwind label %bb.m, !noalias !1479

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtBG_3VecNtNtB1w_7packidx9FileEntryEEEEB1w_.exit.i.i.i.i.i: ; preds = %.body39.i.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB18_7packidx9FileEntryEEEEEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x)
          to label %bb.k unwind label %bb.cq, !noalias !1480

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1479
  unreachable

bb.n:                                             ; preds = %bb.q
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.bo = icmp eq i64 %i.bh, 0
  br i1 %i.bo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = udiv i64 %i.bk, %i.bh
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
          to label %bb.n unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1479

bb.r:                                             ; preds = %bb.p, %bb.j
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.bp, %bb.p ], [ 1, %bb.j ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.cp, %bb.r
  %i.cb = phi i64 [ %i.gm, %bb.cp ], [ 0, %bb.r ] ; 2 uses
  %i.cc = phi i64 [ %.pre.i.i.i.i.i, %bb.cp ], [ -1, %bb.r ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cc, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.cd = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1485, !noalias !1477, !nonnull !5, !noundef !5
  %i.ce = load ptr, ptr %.sroa.854.0..sroa_idx.i, align 8, !alias.scope !1485, !noalias !1477, !nonnull !5, !noundef !5 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, %i.cd
  br i1 %i.cf, label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1d_3VecNtNtB23_7packidx9FileEntryEEEE4peek0B23_.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  store ptr %i.cg, ptr %.sroa.854.0..sroa_idx.i, align 8, !alias.scope !1485, !noalias !1477
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !1486
  %.sroa.5.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx8.i.i.i.i.i.i, i64 88, i1 false), !noalias !1487
  br label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1d_3VecNtNtB23_7packidx9FileEntryEEEE4peek0B23_.exit.i.i.i.i.i.i

_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1d_3VecNtNtB23_7packidx9FileEntryEEEE4peek0B23_.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.0.0.i38.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %bb.u ], [ 2, %bb.t ] ; 3 uses
  store i64 %.sroa.0.0.i38.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !1481, !noalias !1477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i.i.i.i.i.i, i64 88, i1 false), !noalias !1488
  %i.ch = icmp ne i64 %.sroa.0.0.i38.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ch)
  br label %bb.v

bb.v:                                             ; preds = %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1d_3VecNtNtB23_7packidx9FileEntryEEEE4peek0B23_.exit.i.i.i.i.i.i, %bb.s
  %i.ci = phi i64 [ %.sroa.0.0.i38.i.i.i.i.i, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1d_3VecNtNtB23_7packidx9FileEntryEEEE4peek0B23_.exit.i.i.i.i.i.i ], [ %i.cc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 2
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1477
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderIBL_NtNtB11_7packidx9FileEntryEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeQINtNtB2K_8peekable8PeekableINtNtB4_9into_iter8IntoIterBU_EEEE9from_iterB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %bb.af unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1479

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1477
  %i.cj = load ptr, ptr %i.bf, align 8, !noalias !1477, !nonnull !5, !noundef !5 ; 3 uses
  %i.ck = load i64, ptr %i.y, align 8, !range !8, !noalias !1477, !noundef !5
  %i.cl = icmp ult i64 %i.cb, 384307168202282326
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cb
  store ptr %i.cj, ptr %i.s, align 8, !noalias !1477
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.ck, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.cm, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1b_3VecINtNtB6_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3u_5error5ErrorEEEENCNCINvNtB3u_4algo15run_in_parallelTNtB3s_10PackReaderIB2U_NtNtB3w_7packidx9FileEntryEEB34_NCINvMsa_B3s_NtB3s_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB17_B5f_EE0s_0EB2T_IB35_zINtNtB1d_5boxed3BoxDNtNtB6_3any3AnyNtNtB6_6marker4SendEL_EENCINvXso_B37_IB35_IB2U_B2T_EB7Q_EINtNtNtB4_6traits7collect12FromIteratorIB35_B2T_B7Q_EE9from_iterBQ_E0B95_EB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1479

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1477
  %i.cn = load i64, ptr %i.t, align 8, !range !6, !noalias !1477, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %5 = load ptr, ptr %i.cp, align 8, !noalias !1477, !nonnull !5, !noundef !5 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %7 = load ptr, ptr %6, align 8, !noalias !1477, !nonnull !5, !align !7, !noundef !5
  %8 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %7, i64 1
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cq = load i64, ptr %6, align 8, !noalias !1477, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1477
  %i.cr = icmp ult i64 %i.cq, 384307168202282326
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.cq
  store ptr %5, ptr %i.q, align 8, !noalias !1477
  %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %5, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.cn, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.cs, ptr %.sroa.016.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  %.sroa.619.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr null, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1477
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1A_5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB1C_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.q)
          to label %bb.ab unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1479

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1477
  %.sroa.01.0.copyload2.i.i = load i64, ptr %i.r, align 8, !noalias !1489
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ct = load <2 x ptr>, ptr %.sroa.53.0..sroa_idx4.i.i, align 8, !noalias !1489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1477
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.01.0.i.i = phi i64 [ -1, %bb.z ], [ %.sroa.01.0.copyload2.i.i, %bb.ab ]
  %i.cu = phi <2 x ptr> [ %9, %bb.z ], [ %i.ct, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1477
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB25_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB27_7packidx9FileEntryEEINtNtB9_6result6ResultNtB2Z_12ExtractStatsNtNtB25_5error5ErrorENCINvMsa_B2Z_NtB2Z_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3p_9into_iter8IntoIterB2W_EE0IB4m_IB3n_B4l_EINtNtB3r_5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EEE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB27_.exit.i.i unwind label %bb.ad, !noalias !1479

bb.ad:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB18_7packidx9FileEntryEEEEEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.x) #23
          to label %.body46.i unwind label %bb.ae, !noalias !1479

bb.ae:                                            ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1479
  unreachable

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1477
  %i.cx = load <2 x ptr>, ptr %i.am, align 16, !noalias !1479
  store <2 x ptr> %i.cx, ptr %i.bq, align 8, !noalias !1477
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1491
  store ptr %i.aj, ptr %i.br, align 8, !noalias !1491
  store i64 0, ptr %i.p, align 8, !noalias !1491
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1491
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1491
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1493
  %i.cy = invoke noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2O_5error5ErrorEEEEENtNtB1A_7default7Default7defaultB2Q_()
          to label %bb.ag unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEEB32_.exit62.i.i.thread.i.i.i.i.i, !noalias !1494 ; 4 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEEB32_.exit62.i.i.i.i.i.i.i: ; preds = %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  br i1 %.sroa.015.3.i.i.i.i.i.i.i, label %bb.cb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtBG_3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB30_5error5ErrorEEEEEEB32_.exit62.i.i.thread.i.i.i.i.i: ; preds = %bb.af
  %lpad.loopexit59.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.au
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body39.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cy, ptr %i.o, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1493
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8, !noalias !1494
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.cy, ptr %i.l, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1493
  %i.db = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !1494
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  store ptr %i.av, ptr %i.k, align 8, !noalias !1493
  %i.dd = invoke noundef nonnull ptr @_RNvXs1_NtNtCs1ftIqucrW6Z_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %bb.an unwind label %bb.al, !noalias !1494

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.df = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !1495
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.am, label %bb.bz

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %bb.bz unwind label %bb.bw, !noalias !1494

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1493
  store ptr %i.av, ptr %i.bs, align 8, !noalias !1493
  store ptr %i.dd, ptr %i.bt, align 8, !noalias !1493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !1496
  store ptr %i.cy, ptr %i.bu, align 8, !noalias !1493
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1497
  %i.dh = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 64, i64 noundef 8) #22, !noalias !1497 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ao, label %bb.as, !prof !12

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc47.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !1494

.noexc47.i.i.i.i.i.i.i:                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB23_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB25_7packidx9FileEntryEEINtNtB4_6result6ResultNtB2X_12ExtractStatsNtNtB23_5error5ErrorENCINvMsa_B2X_NtB2X_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3n_9into_iter8IntoIterB2U_EE00IB3l_B4j_EE0EB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i unwind label %bb.aq, !noalias !1494

bb.aq:                                            ; preds = %bb.ap
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !1494
  unreachable

bb.ar:                                            ; preds = %bb.as
  %i.dl = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecIBC_IB1a_INtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !1494
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1492, !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !1499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1498
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) @6)
          to label %.noexc48.i.i.i.i.i.i.i unwind label %bb.ar, !noalias !1494

.noexc48.i.i.i.i.i.i.i:                           ; preds = %bb.as
  %i.dm = load ptr, ptr %i.d, align 8, !noalias !1498, !noundef !5 ; 6 uses
  %i.dn = icmp eq ptr %i.dm, null
  %i.do = load ptr, ptr %i.bv, align 8, !noalias !1498 ; 3 uses
  br i1 %i.dn, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1498
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1493
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.dp = load ptr, ptr %i.o, align 8, !alias.scope !1502, !noalias !1493, !nonnull !5, !noundef !5
  %i.dq = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !noalias !1503
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.au, label %bb.ch

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2O_5error5ErrorEEEEE9drop_slowB2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.ch unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBK_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBM_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1E_12ExtractStatsNtNtBK_5error5ErrorENCINvMsa_B1E_NtB1E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB23_9into_iter8IntoIterB1B_EE00EBM_.exit.thread.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1494

bb.av:                                            ; preds = %.noexc48.i.i.i.i.i.i.i
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1493
  %i.ds = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !1494
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.dm, ptr %i.i, align 8, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1493
  store i64 1, ptr %i.g, align 8, !noalias !1493
  store i64 1, ptr %i.bw, align 8, !noalias !1493
  store i32 0, ptr %i.bx, align 8, !noalias !1493
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1493
  store ptr %i.dm, ptr %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1493
  store ptr %i.do, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1493
  store i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1493
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1504
  %i.du = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 97) 48, i64 noundef 8) #22, !noalias !1504 ; 7 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ax, label %bb.bc, !prof !12

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc50.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !1494

.noexc50.i.i.i.i.i.i.i:                           ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.524.sroa.3.0..sroa.524.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.az, !noalias !1494

bb.az:                                            ; preds = %bb.ay
end_hunk_2
