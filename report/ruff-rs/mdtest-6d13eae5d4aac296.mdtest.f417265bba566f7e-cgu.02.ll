inline.NumInlined: 379
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_CskXhPDodhyTq_6mdtestNtB5_16AttemptTestError18into_file_failures:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_RNvXs0_NtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ct)
          to label %.thread131 unwind label %bb.bk

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest.exit.i106, %bb.aq
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body97

bb.ba:                                            ; preds = %bb.aq
  %i.cv = load i64, ptr %i.aa, align 8, !alias.scope !583, !noalias !586, !noundef !4 ; 3 uses
  %i.cw = load i64, ptr %i.u, align 8, !range !50, !alias.scope !583, !noalias !586, !noundef !4
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskXhPDodhyTq_6mdtest7matcher7FailureE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.be unwind label %bb.bc, !noalias !586

bb.bc:                                            ; preds = %bb.bb
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskXhPDodhyTq_6mdtest7matcher7FailureEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) #25
          to label %.body97 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.be:                                            ; preds = %bb.bb, %bb.ba
  %i.da = load ptr, ptr %i.z, align 8, !alias.scope !583, !noalias !586, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.da, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.db, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.dc = add i64 %i.cv, 1
  store i64 %i.dc, ptr %i.aa, align 8, !alias.scope !583, !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aw

bb.bf:                                            ; preds = %bb.bg
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #25
          to label %.body97 unwind label %bb.bk

bb.bg:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !570
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4 ; 3 uses
  store i64 0, ptr %i.i, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.dh, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.df, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.534.sroa.4.0..sroa.534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.dh, ptr %.sroa.534.sroa.4.0..sroa.534.0..sroa_idx.sroa_idx, align 8
  %.sroa.534.sroa.5.0..sroa.534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %.sroa.534.sroa.5.0..sroa.534.0..sroa_idx.sroa_idx, align 8
  %.sroa.534.sroa.6.0..sroa.534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.dh, ptr %.sroa.534.sroa.6.0..sroa.534.0..sroa_idx.sroa_idx, align 8
  %.sroa.534.sroa.7.0..sroa.534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 10, ptr %.sroa.534.sroa.7.0..sroa.534.0..sroa_idx.sroa_idx, align 8
  %.sroa.534.sroa.8.0..sroa.534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i32 10, ptr %.sroa.534.sroa.8.0..sroa.534.0..sroa_idx.sroa_idx, align 4
  %.sroa.534.sroa.9.0..sroa.534.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 1, ptr %.sroa.534.sroa.9.0..sroa.534.0..sroa_idx.sroa_idx, align 8
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 1, ptr %.sroa.635.0..sroa_idx, align 8
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 65
  store i8 0, ptr %.sroa.736.0..sroa_idx, align 1
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskXhPDodhyTq_6mdtest7matcher7FailureE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1M_3str4iter5SplitcEINvMs_BH_BF_3newReEEEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.i)
          to label %bb.bh unwind label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest.exit.i106 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body97 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest.exit.i106: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest.exit110 unwind label %bb.az

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest.exit110: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest.exit.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aw

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.ao, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ap

bb.bk:                                            ; preds = %bb.bv, %bb.ay, %bb.bu, %bb.bn, %bb.bx, %.thread131, %bb.br, %bb.bf, %.body55
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bl:                                            ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !4
  store ptr %i.cl, ptr %i.g, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %i.dm, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %3, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.u, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.g, ptr %i.dq, align 8
  invoke void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachuDNtCs56aZGHL6Dc6_7ruff_db2DbEL_NCNvMs2_CskXhPDodhyTq_6mdtestNtB2x_16AttemptTestError18into_file_failures0E0uEB2x_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @59, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bp, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  invoke void @_RNvMNtCskXhPDodhyTq_6mdtest7matcherNtB2_14FailuresByLine4push(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.bq unwind label %bb.d

bb.bn:                                            ; preds = %bb.bl
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %.val51 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %.val52 = load i64, ptr %i.dn, align 8, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceECskXhPDodhyTq_6mdtest(ptr nonnull %.val51, i64 %.val52) #25
          to label %.thread131 unwind label %bb.bk

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val49 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %.val50 = load i64, ptr %i.dn, align 8, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceECskXhPDodhyTq_6mdtest(ptr nonnull %.val49, i64 %.val50)
          to label %bb.bp unwind label %.thread174

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bm

bb.bq:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !align !41, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !588, !noalias !591, !nonnull !4, !noundef !4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !588, !noalias !591, !noundef !4
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dv, i64 %i.dx
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskXhPDodhyTq_6mdtest6parser15BacktickOffsetsEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterNtB14_9CodeBlockENvMs8_B14_B3z_16backtick_offsetsEE9from_iterB16_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dy)
          to label %_RNvMs1_CskXhPDodhyTq_6mdtestNtB5_8TestFile30to_code_block_backtick_offsets.exit unwind label %bb.d

_RNvMs1_CskXhPDodhyTq_6mdtestNtB5_8TestFile30to_code_block_backtick_offsets.exit: ; preds = %bb.bq
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.br:                                            ; preds = %bb.d, %.thread131
  %.pn46129 = phi { ptr, i32 } [ %.pn46130, %.thread131 ], [ %lpad.thr_comm.split-lp, %bb.d ]
  %.sroa.09.0127 = phi i1 [ %.sroa.09.0128, %.thread131 ], [ %.not45, %bb.d ]
  %.sroa.010.0125 = phi i1 [ %.sroa.010.0126, %.thread131 ], [ %.not43, %bb.d ]
  %.sroa.011.0123 = phi i1 [ %.sroa.011.0124, %.thread131 ], [ false, %bb.d ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskXhPDodhyTq_6mdtest7matcher14FailuresByLineEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.v) #25
          to label %bb.bs unwind label %bb.bk

.thread131:                                       ; preds = %.body97, %bb.ay, %.body55, %bb.bn, %bb.al, %bb.ag, %bb.ab, %bb.w, %bb.q, %bb.g, %.thread174
  %.pn46130 = phi { ptr, i32 } [ %i.cd, %bb.al ], [ %lpad.thr_comm, %.thread174 ], [ %i.bv, %bb.ag ], [ %i.ai, %bb.g ], [ %i.aw, %bb.q ], [ %i.bb, %bb.w ], [ %i.bj, %bb.ab ], [ %eh.lpad-body56, %.body55 ], [ %i.dr, %bb.bn ], [ %.pn, %bb.ay ], [ %.pn, %.body97 ]
  %.sroa.09.0128 = phi i1 [ true, %bb.al ], [ %.sroa.09.1.ph, %.thread174 ], [ true, %bb.ag ], [ true, %bb.g ], [ true, %bb.q ], [ true, %bb.w ], [ true, %bb.ab ], [ true, %.body55 ], [ false, %bb.bn ], [ true, %bb.ay ], [ true, %.body97 ]
  %.sroa.010.0126 = phi i1 [ true, %bb.al ], [ %.sroa.010.1.ph, %.thread174 ], [ true, %bb.ag ], [ true, %bb.g ], [ true, %bb.q ], [ true, %bb.w ], [ true, %bb.ab ], [ true, %.body55 ], [ %.not43, %bb.bn ], [ false, %bb.ay ], [ false, %.body97 ]
  %.sroa.011.0124 = phi i1 [ false, %bb.al ], [ %.sroa.011.1.ph, %.thread174 ], [ false, %bb.ag ], [ true, %bb.g ], [ true, %bb.q ], [ true, %bb.w ], [ true, %bb.ab ], [ true, %.body55 ], [ false, %bb.bn ], [ false, %bb.ay ], [ false, %.body97 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskXhPDodhyTq_6mdtest7matcher7FailureEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.u) #25
          to label %bb.br unwind label %bb.bk

bb.bs:                                            ; preds = %bb.br
  br i1 %.sroa.011.0123, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs
  %i.ea = load i64, ptr %i.w, align 8, !range !85, !noundef !4
  %8 = icmp eq i64 %i.ea, 2
  %or.cond183.not = and i1 %.sroa.010.0125, %8
  br i1 %or.cond183.not, label %bb.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECskXhPDodhyTq_6mdtest.exit114

bb.bu:                                            ; preds = %bb.bs
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.val53 = load ptr, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %.val54 = load ptr, ptr %i.ec, align 8, !nonnull !4, !align !41, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db5panic7PayloadECskXhPDodhyTq_6mdtest(ptr %.val53, ptr nonnull %.val54) #25
          to label %bb.bt unwind label %bb.bk

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECskXhPDodhyTq_6mdtest.exit114: ; preds = %bb.bv, %bb.bt
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ee = load ptr, ptr %i.ed, align 8, !align !41, !noundef !4 ; 2 uses
  %i.ef = icmp ne ptr %i.ee, null
  %or.cond5 = and i1 %.sroa.09.0127, %i.ef
  br i1 %or.cond5, label %bb.bx, label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void @_RNvXs0_NtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.eg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECskXhPDodhyTq_6mdtest.exit114 unwind label %bb.bk

bb.bw:                                            ; preds = %bb.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECskXhPDodhyTq_6mdtest.exit114
  resume { ptr, i32 } %.pn46129

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECskXhPDodhyTq_6mdtest.exit114
  %i.eh = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.val48 = load i64, ptr %i.eh, align 8, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceECskXhPDodhyTq_6mdtest(ptr nonnull %i.ee, i64 %.val48) #25
          to label %bb.bw unwind label %bb.bk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_CskXhPDodhyTq_6mdtestNtB5_15IndentingWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.preheader:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !41 ; 2 uses
  %.promoted = load i8, ptr %i.b, align 8
  %i.d = trunc nuw i8 %.promoted to i1
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.h
  %i.e = phi i1 [ %i.ad, %bb.h ], [ %i.d, %.lr.ph.split.preheader ]
  %.lcssa2130 = phi i64 [ %.lcssa2128, %bb.h ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.lcssa2425 = phi i64 [ %.lcssa23, %bb.h ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.f = icmp ult i64 %2, %.lcssa2130
  br i1 %i.f, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %bb.d
  %i.g = phi i64 [ %i.v, %bb.d ], [ %.lcssa2130, %.lr.ph.split ] ; 5 uses
  %i.h = sub nuw i64 %2, %i.g                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 16
  br i1 %i.j, label %.preheader.i.i.i, label %bb.a

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.k = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !593
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.h, %bb.b ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.b ], [ 1, %.lr.ph.i.i.i ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.01.05.i.i.i = phi i64 [ %i.q, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.05.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !599, !noalias !593, !noundef !4
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %._crit_edge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.a
  %.merged.i.i.i = phi { i64, i64 } [ %i.m, %._crit_edge.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.c, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i

bb.c:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.t = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.u = add i64 %i.g, 1
  %i.v = add i64 %i.u, %i.t                       ; 6 uses
  %.not13.i.i = icmp ugt i64 %i.v, %2
  %i.w = add i64 %i.g, %i.t
  %or.cond.i.i.not = icmp ult i64 %i.w, %2
  br i1 %or.cond.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br i1 %.not13.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %1, i64 %i.g
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t
  %lhsc = load i8, ptr %i.y, align 1
  %i.z = icmp eq i8 %lhsc, 10
  br i1 %i.z, label %select.unfold, label %bb.d

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.d, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %.lr.ph.split
  %.lcssa2129 = phi i64 [ %.lcssa2130, %.lr.ph.split ], [ %2, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ], [ %i.v, %bb.d ]
  %.not.i3.i.not = icmp eq i64 %2, %.lcssa2425
  br i1 %.not.i3.i.not, label %.split.us, label %select.unfold

select.unfold:                                    ; preds = %bb.e, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i
  %.lcssa2128 = phi i64 [ %.lcssa2129, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i ], [ %i.v, %bb.e ]
  %.lcssa23 = phi i64 [ %.lcssa2425, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i ], [ %i.v, %bb.e ]
  %i.aa = phi i1 [ true, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i ], [ false, %bb.e ]
  %.pn = phi i64 [ %2, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i ], [ %i.v, %bb.e ]
  %.sroa.4.1.i.ph = sub nuw i64 %.pn, %.lcssa2425 ; 2 uses
  %.sroa.0.1.i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa2425 ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.f

.split.us:                                        ; preds = %bb.h, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i, %bb.f, %bb.g
  %.not16 = phi i1 [ true, %bb.f ], [ true, %bb.g ], [ false, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskXhPDodhyTq_6mdtest.exit.i ], [ false, %bb.h ]
  ret i1 %.not16

bb.f:                                             ; preds = %bb.g, %select.unfold
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.ph, i64 noundef %.sroa.4.1.i.ph)
  br i1 %i.ab, label %.split.us, label %bb.h

bb.g:                                             ; preds = %select.unfold
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br i1 %i.ac, label %.split.us, label %bb.f

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 10, ptr %i.a, align 4
  %i.ad = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.ph, i64 noundef %.sroa.4.1.i.ph, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.b, align 8
  br i1 %i.aa, label %.split.us, label %.lr.ph.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !602, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !602, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !602, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
end_hunk_0
