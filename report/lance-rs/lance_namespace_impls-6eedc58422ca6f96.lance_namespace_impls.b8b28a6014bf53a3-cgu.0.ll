Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob22execute_uncommitted_v20CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
          to label %.noexc8.i.i.i unwind label %.loopexit.i.i.i, !noalias !159492 ; 0 uses

.noexc8.i.i.i:                                    ; preds = %.noexc7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !159494
  %i.pv = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.pw = icmp eq i64 %i.pv, %.val180.i
  br i1 %i.pw, label %.loopexit626.i, label %.preheader

.loopexit.i.i.i:                                  ; preds = %.noexc7.i.i.i, %.preheader
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.loopexit.split-lp.i.i.i:                         ; preds = %bb.dr
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ds:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.q) #73, !noalias !159492
  br label %.body259.i

bb.dt:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i250.i
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %.body259.i

.loopexit626.i:                                   ; preds = %.noexc8.i.i.i, %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.pg, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !159488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8447.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !159391
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 1714
  store i8 0, ptr %i.py, align 2, !noalias !159391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.bl, ptr noundef nonnull align 16 dereferenceable(336) %i.jn, i64 336, i1 false), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !159391
  %i.pz = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i128 3, ptr %i.pz, align 16, !alias.scope !159495, !noalias !159391
  %.sroa.4.0..sroa_idx.i.i261.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i261.i, align 16, !alias.scope !159495, !noalias !159391
  %i.qa = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store ptr null, ptr %i.qa, align 16, !alias.scope !159495, !noalias !159391
  store i64 6, ptr %i.bk, align 16, !alias.scope !159495, !noalias !159391
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame11with_column(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.bm, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.bl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1955, i64 noundef 23, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.bk)
          to label %bb.du unwind label %bb.ht, !noalias !159392

bb.du:                                            ; preds = %.loopexit626.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !159391
  call void @llvm.experimental.noalias.scope.decl(metadata !159496)
  call void @llvm.experimental.noalias.scope.decl(metadata !159497)
  %i.qb = load i64, ptr %i.bm, align 16, !range !775, !alias.scope !159497, !noalias !159498, !noundef !416
  %i.qc = icmp eq i64 %i.qb, -1
  br i1 %i.qc, label %bb.dv, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNvYB2D_INtNtB5_7convert4FromB1w_E4fromECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.dv:                                            ; preds = %bb.du
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !159499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.qd, i64 40, i1 false), !noalias !159498
  %i.qe = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.qe, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNvYB2D_INtNtB5_7convert4FromB1w_E4fromECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i unwind label %bb.dx, !noalias !159392

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNvYB2D_INtNtB5_7convert4FromB1w_E4fromECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !159499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !159391
  br label %bb.hm

bb.dw:                                            ; preds = %bb.ht, %bb.dx
  %.pn50.i = phi { ptr, i32 } [ %i.qf, %bb.dx ], [ %i.zl, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8447.i)
  br label %bb.hu

bb.dx:                                            ; preds = %bb.dv
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNvYB2D_INtNtB5_7convert4FromB1w_E4fromECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.bn, ptr noundef nonnull readonly align 16 dereferenceable(336) %i.bm, i64 336, i1 false), !alias.scope !159500, !noalias !159391
  %.pr.i = load i64, ptr %i.bn, align 16, !alias.scope !159501, !noalias !159502 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !159391
  call void @llvm.experimental.noalias.scope.decl(metadata !159503)
  %i.qg = icmp eq i64 %.pr.i, -1
  br i1 %i.qg, label %bb.hm, label %bb.dy

bb.dy:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNvYB2D_INtNtB5_7convert4FromB1w_E4fromECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sroa.8447.0..sroa_idx448.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8447.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8447.0..sroa_idx448.i, i64 56, i1 false), !alias.scope !159504, !noalias !159391
  %.sroa.10449.0..sroa_idx450.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %.sroa.5453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5453.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.10449.0..sroa_idx450.i, i64 272, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !159391
  %.sroa.4452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4452.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8447.i, i64 56, i1 false), !noalias !159391
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 1713
  store i64 %.pr.i, ptr %i.bo, align 16, !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8447.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8456.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !159391
  store i8 0, ptr %i.qh, align 1, !noalias !159391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.bh, ptr noundef nonnull align 16 dereferenceable(336) %i.bo, i64 336, i1 false), !noalias !159391
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame5alias(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.bi, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1956, i64 noundef 6)
          to label %bb.ea unwind label %bb.dz, !noalias !159392

bb.dz:                                            ; preds = %bb.dy
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !159391
  br label %bb.hl

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !159391
  call void @llvm.experimental.noalias.scope.decl(metadata !159505)
  %i.qj = load i64, ptr %i.bi, align 16, !range !775, !alias.scope !159506, !noalias !159507, !noundef !416 ; 2 uses
  %i.qk = icmp eq i64 %i.qj, -1
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8456.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ql, i64 40, i1 false), !alias.scope !159508, !noalias !159391
  br i1 %i.qk, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !159509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8456.i, i64 40, i1 false), !noalias !159391
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1966)
          to label %bb.hk unwind label %bb.hj, !noalias !159392

bb.ec:                                            ; preds = %bb.ea
  %.sroa.10458.0..sroa_idx459.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.sroa.5462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5462.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10458.0..sroa_idx459.i, i64 288, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !159391
  %.sroa.4461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4461.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8456.i, i64 40, i1 false), !noalias !159391
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 1707 ; 2 uses
  store i8 1, ptr %i.qm, align 1, !noalias !159391
  store i64 %i.qj, ptr %i.bj, align 16, !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8456.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8465.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !159391
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 1709
  store i8 0, ptr %i.qn, align 1, !noalias !159391
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.be, ptr noundef nonnull align 16 dereferenceable(336) %i.qo, i64 336, i1 false), !noalias !159391
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame5alias(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.bf, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.be, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1957, i64 noundef 6)
          to label %bb.ee unwind label %bb.ed, !noalias !159392

bb.ed:                                            ; preds = %bb.ec
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !159391
  br label %bb.hh

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !159391
  call void @llvm.experimental.noalias.scope.decl(metadata !159510)
  %i.qq = load i64, ptr %i.bf, align 16, !range !775, !alias.scope !159511, !noalias !159512, !noundef !416 ; 2 uses
  %i.qr = icmp eq i64 %i.qq, -1
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8465.i, ptr noundef nonnull align 8 dereferenceable(40) %i.qs, i64 40, i1 false), !alias.scope !159513, !noalias !159391
  br i1 %i.qr, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !159514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8465.i, i64 40, i1 false), !noalias !159391
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1965)
          to label %bb.hf unwind label %bb.he, !noalias !159392

bb.eg:                                            ; preds = %bb.eh
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %.body288.i

bb.eh:                                            ; preds = %bb.ee
  %.sroa.10467.0..sroa_idx468.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %.sroa.5471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5471.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10467.0..sroa_idx468.i, i64 288, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !159391
  %.sroa.4470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4470.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8465.i, i64 40, i1 false), !noalias !159391
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 1712 ; 2 uses
  store i8 1, ptr %i.qu, align 16, !noalias !159391
  store i64 %i.qq, ptr %i.bg, align 16, !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8465.i)
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 3 uses
  %.val208.i = load i64, ptr %i.qv, align 16, !range !562, !noalias !159391, !noundef !416
  %i.qw = getelementptr i8, ptr %1, i64 1164
  %.val209.i = load i8, ptr %i.qw, align 4, !range !428, !noalias !159391, !noundef !416 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  %.val172.i = load ptr, ptr %i.qx, align 16, !noalias !159391, !nonnull !416, !noundef !416
  %i.qy = getelementptr i8, ptr %.val172.i, i64 296
  %.val177.i = load ptr, ptr %i.qy, align 8, !noalias !159392, !nonnull !416, !noundef !416
  %i.qz = getelementptr inbounds nuw i8, ptr %.val177.i, i64 336
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 3672 ; 3 uses
  invoke void @_RNvXs8_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_6SchemaE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ra, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.qz)
          to label %bb.ei unwind label %bb.eg, !noalias !159392

bb.ei:                                            ; preds = %bb.eh
  %.not.i269.i = icmp eq i64 %.val208.i, 40
  %..i.i = shl nuw nsw i8 %.val209.i, 1
  %3 = trunc nuw i8 %.val209.i to i1
  %.1.i.i = select i1 %3, i8 3, i8 1
  %.sroa.0.0.i.i = select i1 %.not.i269.i, i8 %..i.i, i8 %.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8474.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8480.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !159391
  store i8 0, ptr %i.qu, align 16, !noalias !159391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.az, ptr noundef nonnull align 16 dereferenceable(336) %i.bg, i64 336, i1 false), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !159391
  store i8 0, ptr %i.qm, align 1, !noalias !159391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ay, ptr noundef nonnull align 16 dereferenceable(336) %i.bj, i64 336, i1 false), !noalias !159391
  %i.rb = getelementptr i8, ptr %1, i64 1680
  %.val186.i = load ptr, ptr %i.rb, align 16, !noalias !159391, !nonnull !416, !noundef !416 ; 2 uses
  %i.rc = getelementptr i8, ptr %1, i64 1688
  %.val187.i = load i64, ptr %i.rc, align 8, !noalias !159391, !noundef !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !159391
  store i64 -2, ptr %i.ax, align 16, !noalias !159391
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame4join(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.ba, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.az, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.ay, i8 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val186.i, i64 noundef %.val187.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val186.i, i64 noundef %.val187.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ax)
          to label %bb.ej unwind label %.critedge.i, !noalias !159392

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !159391
  call void @llvm.experimental.noalias.scope.decl(metadata !159515)
  %i.rd = load i64, ptr %i.ba, align 16, !range !775, !alias.scope !159516, !noalias !159517, !noundef !416 ; 2 uses
  %i.re = icmp eq i64 %i.rd, -1
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8480.i, ptr noundef nonnull align 8 dereferenceable(40) %i.rf, i64 40, i1 false), !alias.scope !159518, !noalias !159391
  br i1 %i.re, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !159519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8480.i, i64 40, i1 false), !noalias !159391
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964)
          to label %bb.hb unwind label %bb.ha, !noalias !159392

bb.el:                                            ; preds = %bb.ej
  %.sroa.10482.0..sroa_idx483.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %.sroa.5486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5486.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10482.0..sroa_idx483.i, i64 288, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !159391
  %.sroa.4485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4485.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8480.i, i64 40, i1 false), !noalias !159391
  store i64 %i.rd, ptr %i.bb, align 16, !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8489.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !159391
  invoke void @_RNvNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert13assign_action19merge_insert_action(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.aw, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(368) %i.qv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.ra)
          to label %bb.en unwind label %bb.em, !noalias !159392

bb.em:                                            ; preds = %bb.el
  %i.rg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !159391
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 16 dereferenceable(336) %i.bb) #73
          to label %bb.gz unwind label %bb.cf, !noalias !159392

bb.en:                                            ; preds = %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !159520)
  %i.rh = load i64, ptr %i.aw, align 16, !range !469, !alias.scope !159521, !noalias !159522, !noundef !416 ; 2 uses
  %i.ri = icmp eq i64 %i.rh, -2
  %i.rj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8489.i, ptr noundef nonnull align 8 dereferenceable(56) %i.rj, i64 56, i1 false), !alias.scope !159523, !noalias !159391
  br i1 %i.ri, label %bb.gu, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.sroa.10491.0..sroa_idx492.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.sroa.10491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10491.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10491.0..sroa_idx492.i, i64 48, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !159391
  store i64 %i.rh, ptr %i.av, align 16, !noalias !159391
  %.sroa.8489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8489.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8489.i, i64 56, i1 false), !noalias !159391
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame11with_column(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.bc, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.bb, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1958, i64 noundef 8, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.av)
          to label %bb.eq unwind label %bb.ep, !noalias !159392

bb.ep:                                            ; preds = %bb.eo
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !159391
  call void @llvm.experimental.noalias.scope.decl(metadata !159524)
  %i.rl = load i64, ptr %i.bc, align 16, !range !775, !alias.scope !159525, !noalias !159526, !noundef !416 ; 2 uses
  %i.rm = icmp eq i64 %i.rl, -1
  %i.rn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8474.i, ptr noundef nonnull align 8 dereferenceable(40) %i.rn, i64 40, i1 false), !alias.scope !159527, !noalias !159391
  br i1 %i.rm, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !159528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8474.i, i64 40, i1 false), !noalias !159391
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964)
          to label %bb.gr unwind label %bb.gq, !noalias !159392

bb.es:                                            ; preds = %bb.eq
  %.sroa.10476.0..sroa_idx477.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.5495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5495.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10476.0..sroa_idx477.i, i64 288, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !159391
  %.sroa.4494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4494.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8474.i, i64 40, i1 false), !noalias !159391
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 1711 ; 4 uses
  store i8 1, ptr %i.ro, align 1, !noalias !159391
  store i64 %i.rl, ptr %i.bd, align 16, !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8489.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8480.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8474.i)
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 1705 ; 2 uses
  %.val210.i = load i8, ptr %i.rp, align 1, !range !428, !noalias !159391, !noundef !416
  %i.rq = icmp eq i8 %.val210.i, 0
  br i1 %i.rq, label %bb.et, label %.loopexit625.i

.loopexit625.i:                                   ; preds = %_RINvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringE8containsB14_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.et, %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !159391
  store i8 0, ptr %i.ro, align 1, !noalias !159391
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame10into_parts(ptr noalias noundef nonnull sret([2224 x i8]) align 16 captures(none) dereferenceable(2224) %i.am, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(336) %i.bd)
          to label %bb.ev unwind label %bb.eu, !noalias !159392

bb.et:                                            ; preds = %bb.es
  %.val211.i = load ptr, ptr %i.ra, align 8, !noalias !159391, !nonnull !416, !noundef !416
  %i.rr = getelementptr i8, ptr %1, i64 3680
  %.val212.i = load i64, ptr %i.rr, align 16, !noalias !159391, !noundef !416 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.val211.i, i64 16 ; 2 uses
  %.idx634.i = shl nuw nsw i64 %.val212.i, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.idx634.i
  %i.ru = icmp eq i64 %.val212.i, 0
  br i1 %i.ru, label %.loopexit625.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.et
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %.sroa.5505.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.8500.0..sroa_idx501.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.10502.0..sroa_idx503.i = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  br label %bb.fx

bb.eu:                                            ; preds = %.loopexit625.i
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !159391
  br label %bb.fw

bb.ev:                                            ; preds = %.loopexit625.i
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 1752 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %i.sb, ptr noundef nonnull align 16 dereferenceable(1904) %i.am, i64 1904, i1 false), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !159391
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 1710
  %i.sd = getelementptr inbounds nuw i8, ptr %i.am, i64 1904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.an, ptr noundef nonnull align 16 dereferenceable(320) %i.sd, i64 320, i1 false), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !159391
  store i8 0, ptr %i.sc, align 2, !noalias !159391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ak, ptr noundef nonnull align 16 dereferenceable(320) %i.an, i64 320, i1 false), !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !159391
  %.val174.i = load ptr, ptr %i.qx, align 16, !noalias !159391, !nonnull !416, !noundef !416 ; 2 uses
  %i.se = atomicrmw add ptr %.val174.i, i64 1 monotonic, align 8, !noalias !159392
  %i.sf = icmp slt i64 %i.se, 0
  br i1 %i.sf, label %bb.ew, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit278.i

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit278.i: ; preds = %bb.ev
  store ptr %.val174.i, ptr %i.aj, align 8, !noalias !159391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !159391
  invoke fastcc void @_RNvXsT_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB5_17MergeInsertParamsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(368) %i.ai, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(368) %i.qv)
          to label %bb.ex unwind label %bb.fs, !noalias !159392

bb.ex:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit278.i
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 1708
  store i8 0, ptr %i.sg, align 4, !noalias !159391
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 1696
  %i.si = load ptr, ptr %i.sh, align 16, !noalias !159391, !nonnull !416, !noundef !416
  %i.sj = load i8, ptr %i.rp, align 1, !range !428, !noalias !159391, !noundef !416
  %i.sk = trunc nuw i8 %i.sj to i1
  %i.sl = load ptr, ptr %i.aj, align 8, !noalias !159391, !nonnull !416, !noundef !416
  invoke void @_RNvMs2_NtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_planNtB5_20MergeInsertWriteNode3new(ptr noalias noundef nonnull sret([720 x i8]) align 16 captures(none) dereferenceable(720) %i.al, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.ak, ptr noundef nonnull %i.sl, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(368) %i.ai, ptr noundef nonnull %i.si, i1 noundef zeroext %i.sk)
          to label %bb.ey unwind label %bb.fr, !noalias !159392

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !159391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !159391
  %i.sm = invoke fastcc noundef nonnull ptr @_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert12logical_plan20MergeInsertWriteNodeE3newCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(none) dereferenceable(720) %i.al)
          to label %bb.fa unwind label %bb.ez, !noalias !159392

bb.ez:                                            ; preds = %bb.ey
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq
end_hunk_0
