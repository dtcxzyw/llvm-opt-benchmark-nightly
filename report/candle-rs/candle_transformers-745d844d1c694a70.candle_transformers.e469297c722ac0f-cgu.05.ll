Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.05?download=true
inline.NumInlined: 3394
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion7unet_2dNtB4_20UNet2DConditionModel33forward_with_additional_residuals:bb.a
bb.ab:                                            ; preds = %bb.ef, %bb.cw, %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524

bb.ac:                                            ; preds = %bb.z
  %i.ck = load i64, ptr %i.z, align 8, !range !14, !noundef !5 ; 2 uses
  %.not475 = icmp eq i64 %i.ck, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  br i1 %.not475, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.5321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5324.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5321.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.ck, ptr %0, align 8
  %.sroa.4323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %.sroa.4323.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit563

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store ptr %i.cm, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke void @_RNvXs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracingNtB5_6Conv2dNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %bb.ag unwind label %.thread577

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit565: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526, %bb.eg, %bb.eh, %bb.ei, %.thread577
  %.pn510.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.eh ], [ %lpad.thr_comm, %.thread577 ], [ %.pn508, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526 ], [ %lpad.thr_comm.split-lp, %bb.ei ], [ %.pn508, %bb.eg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22154)
  call void @llvm.experimental.noalias.scope.decl(metadata !22155)
  call void @llvm.experimental.noalias.scope.decl(metadata !22156)
  %i.co = load ptr, ptr %i.aa, align 8, !alias.scope !22157, !nonnull !5, !noundef !5
  %i.cp = atomicrmw add ptr %i.co, i64 -1 release, align 8, !noalias !22157
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit565
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit524 unwind label %bb.bc

bb.ag:                                            ; preds = %bb.ae
  %i.cr = load i64, ptr %i.x, align 8, !range !14, !noundef !5 ; 2 uses
  %.not476 = icmp eq i64 %i.cr, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 6 uses
  br i1 %.not476, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5333.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5330.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.cr, ptr %0, align 8
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.4332.0..sroa_idx, align 8
  br label %bb.ee

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store ptr %i.ct, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.cu = invoke fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit(i64 noundef 8)
          to label %bb.aj unwind label %bb.eh     ; 2 uses

.thread577:                                       ; preds = %bb.ae, %bb.ed, %bb.cx
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit565

bb.aj:                                            ; preds = %bb.ai
  %i.cv = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8
  %i.cw = icmp slt i64 %i.cv, 0
  br i1 %i.cw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ct, ptr %i.cu, align 8
  store i64 1, ptr %i.w, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 1, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ct, ptr %i.v, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.dc, 416
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4349.sroa.4.0..sroa.4349.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.4349.sroa.5.0..sroa.4349.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4335.sroa.4.0..sroa.4335.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4335.sroa.5.0..sroa.4335.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528
  %.sroa.094.0624 = phi ptr [ %i.da, %.lr.ph ], [ %i.dk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528 ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.094.0624, i64 416 ; 2 uses
  %i.dl = load i64, ptr %.sroa.094.0624, align 8, !range !17, !noundef !5
  %.not477 = icmp eq i64 %i.dl, 2
  br i1 %.not477, label %bb.ao, label %bb.an

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.not481 = icmp eq ptr %5, null
  br i1 %.not481, label %bb.bg, label %bb.bf

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMsf_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion14unet_2d_blocksNtB5_20CrossAttnDownBlock2D7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %.sroa.094.0624, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %4)
          to label %bb.au unwind label %.loopexit607

bb.ao:                                            ; preds = %bb.am
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.094.0624, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMsd_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion14unet_2d_blocksNtB5_11DownBlock2D7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.dm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.aa)
          to label %bb.aq unwind label %.loopexit607

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530: ; preds = %.loopexit607, %.loopexit.split-lp608, %bb.ba, %bb.bb, %bb.ax, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit536, %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sroa.0243.0 = phi i8 [ 1, %bb.ba ], [ 1, %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0243.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit536 ], [ 1, %bb.ax ], [ 1, %bb.bb ], [ 1, %.loopexit607 ], [ %.sroa.0243.1.ph, %.loopexit.split-lp608 ] ; 2 uses
  %.pn506 = phi { ptr, i32 } [ %i.eb, %bb.ba ], [ %lpad.loopexit.split-lp737, %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn503, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit536 ], [ %i.dw, %bb.ax ], [ %i.eb, %bb.bb ], [ %lpad.loopexit609, %.loopexit607 ], [ %lpad.loopexit.split-lp610, %.loopexit.split-lp608 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22158)
  call void @llvm.experimental.noalias.scope.decl(metadata !22159)
  call void @llvm.experimental.noalias.scope.decl(metadata !22160)
  %i.dn = load ptr, ptr %i.v, align 8, !alias.scope !22161, !nonnull !5, !noundef !5
  %i.do = atomicrmw add ptr %i.dn, i64 -1 release, align 8, !noalias !22161
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit526 unwind label %bb.bc

.loopexit607:                                     ; preds = %bb.an, %bb.ao
  %lpad.loopexit609 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530

.loopexit.split-lp608:                            ; preds = %bb.bn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit548, %bb.ea
  %.sroa.0243.1.ph = phi i8 [ %.sroa.0243.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit548 ], [ %.sroa.0243.3, %bb.ea ], [ 1, %bb.bn ]
  %lpad.loopexit.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530

bb.aq:                                            ; preds = %bb.ao
  %i.dq = load i64, ptr %i.t, align 8, !range !14, !noundef !5 ; 2 uses
  %.not478 = icmp eq i64 %i.dq, -1
  %.sroa.0334.0.copyload = load ptr, ptr %i.dg, align 8 ; 2 uses
  %.sroa.4335.sroa.0.0.copyload = load i64, ptr %.sroa.4335.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4335.sroa.4.0.copyload = load ptr, ptr %.sroa.4335.sroa.4.0..sroa.4335.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.4335.sroa.5.0.copyload = load i64, ptr %.sroa.4335.sroa.5.0..sroa.4335.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  br i1 %.not478, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.6347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6347.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6343.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.dq, ptr %0, align 8
  %.sroa.4345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0334.0.copyload, ptr %.sroa.4345.0..sroa_idx, align 8
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4335.sroa.0.0.copyload, ptr %.sroa.5346.0..sroa_idx, align 8
  %.sroa.5346.sroa.4.0..sroa.5346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.4335.sroa.4.0.copyload, ptr %.sroa.5346.sroa.4.0..sroa.5346.0..sroa_idx.sroa_idx, align 8
  %.sroa.5346.sroa.5.0..sroa.5346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.4335.sroa.5.0.copyload, ptr %.sroa.5346.sroa.5.0..sroa.5346.0..sroa_idx.sroa_idx, align 8
  br label %bb.bd

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %bb.as
  %i.dr = phi ptr [ %.sroa.0348.0.copyload, %bb.aw ], [ %.sroa.0334.0.copyload, %bb.as ] ; 4 uses
  %.sroa.0448.0 = phi i64 [ %.sroa.4349.sroa.0.0.copyload, %bb.aw ], [ %.sroa.4335.sroa.0.0.copyload, %bb.as ] ; 2 uses
  %.sroa.3450.0 = phi ptr [ %.sroa.4349.sroa.4.0.copyload, %bb.aw ], [ %.sroa.4335.sroa.4.0.copyload, %bb.as ] ; 4 uses
  %.sroa.4452.0 = phi i64 [ %.sroa.4349.sroa.5.0.copyload, %bb.aw ], [ %.sroa.4335.sroa.5.0.copyload, %bb.as ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.dr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3450.0) ]
  %i.ds = icmp ult i64 %.sroa.4452.0, 1152921504606846976
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3450.0, i64 %.sroa.4452.0
  %i.du = icmp sgt i64 %.sroa.0448.0, -1
  call void @llvm.assume(i1 %i.du)
  store ptr %.sroa.3450.0, ptr %i.a, align 8
  store i64 %.sroa.0448.0, ptr %i.dh, align 8
  store ptr %.sroa.3450.0, ptr %i.di, align 8
  store ptr %i.dt, ptr %i.dj, align 8
  invoke void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.ay unwind label %bb.ba

bb.au:                                            ; preds = %bb.an
  %i.dv = load i64, ptr %i.s, align 8, !range !14, !noundef !5 ; 2 uses
  %.not479 = icmp eq i64 %i.dv, -1
  %.sroa.0348.0.copyload = load ptr, ptr %i.df, align 8 ; 2 uses
  %.sroa.4349.sroa.0.0.copyload = load i64, ptr %.sroa.4349.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4349.sroa.4.0.copyload = load ptr, ptr %.sroa.4349.sroa.4.0..sroa.4349.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.4349.sroa.5.0.copyload = load i64, ptr %.sroa.4349.sroa.5.0..sroa.4349.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  br i1 %.not479, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.6357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.6361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6361.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6357.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.dv, ptr %0, align 8
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0348.0.copyload, ptr %.sroa.4359.0..sroa_idx, align 8
  %.sroa.5360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4349.sroa.0.0.copyload, ptr %.sroa.5360.0..sroa_idx, align 8
  %.sroa.5360.sroa.4.0..sroa.5360.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.4349.sroa.4.0.copyload, ptr %.sroa.5360.sroa.4.0..sroa.5360.0..sroa_idx.sroa_idx, align 8
  %.sroa.5360.sroa.5.0..sroa.5360.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.4349.sroa.5.0.copyload, ptr %.sroa.5360.sroa.5.0..sroa.5360.0..sroa_idx.sroa_idx, align 8
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.at

bb.ax:                                            ; preds = %bb.az
  %i.dw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dr, ptr %i.v, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530

bb.ay:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !22162)
  call void @llvm.experimental.noalias.scope.decl(metadata !22163)
  call void @llvm.experimental.noalias.scope.decl(metadata !22164)
  %i.dx = load ptr, ptr %i.v, align 8, !alias.scope !22165, !nonnull !5, !noundef !5
  %i.dy = atomicrmw add ptr %i.dx, i64 -1 release, align 8, !noalias !22165
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.az, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528 unwind label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit528: ; preds = %bb.ay, %bb.az
  store ptr %i.dr, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ea = icmp eq ptr %i.dk, %i.dd
  br i1 %i.ea, label %._crit_edge, label %bb.am

bb.ba:                                            ; preds = %bb.at
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = atomicrmw add ptr %i.dr, i64 -1 release, align 8, !noalias !22166
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.bb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.ei, %bb.cn, %bb.cg, %bb.cb, %bb.bb, %bb.ap, %bb.af, %bb.aa, %bb.v, %bb.n, %bb.eg, %.loopexit.split-lp598, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit536, %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bd:                                            ; preds = %bb.ar, %bb.av, %bb.br
  %.sroa.0243.2 = phi i8 [ %.sroa.0243.4, %bb.br ], [ 1, %bb.av ], [ 1, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22167)
  call void @llvm.experimental.noalias.scope.decl(metadata !22168)
  call void @llvm.experimental.noalias.scope.decl(metadata !22169)
  %i.ef = load ptr, ptr %i.v, align 8, !alias.scope !22170, !nonnull !5, !noundef !5
  %i.eg = atomicrmw add ptr %i.ef, i64 -1 release, align 8, !noalias !22170
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.be, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit532

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit532 unwind label %bb.cu

bb.bf:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.ej, align 8
  %.idx637 = shl nuw nsw i64 %6, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 %.idx637
  %i.el = icmp eq i64 %6, 0
  br i1 %i.el, label %.thread584, label %.lr.ph628

.lr.ph628:                                        ; preds = %bb.bf
  %i.em = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  br label %bb.bi

.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bj, %bb.bk
  %lpad.loopexit.split-lp737 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit530 unwind label %bb.bc

bb.bh:                                            ; preds = %.lr.ph628, %bb.bp
  %.sroa.0.0626 = phi ptr [ %5, %.lr.ph628 ], [ %i.en, %bb.bp ] ; 2 uses
  %.sroa.8.0625 = phi i64 [ 0, %.lr.ph628 ], [ %i.eo, %bb.bp ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0626, i64 8 ; 2 uses
  %i.eo = add nuw nsw i64 %.sroa.8.0625, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ep = load i64, ptr %i.cy, align 8, !noundef !5 ; 2 uses
  %i.eq = icmp ult i64 %.sroa.8.0625, %i.ep
  br i1 %i.eq, label %bb.bj, label %bb.bk

.thread584:                                       ; preds = %bb.bp, %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bi

bb.bi:                                            ; preds = %.thread584, %bb.bg
  %.sroa.0243.3 = phi i8 [ 1, %.thread584 ], [ 0, %bb.bg ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMsb_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion14unet_2d_blocksNtB5_23UNetMidBlock2DCrossAttn7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %4)
          to label %bb.bt unwind label %bb.bs

bb.bj:                                            ; preds = %bb.bh
  %i.er = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.8.0625
  invoke void @_RNvXsl_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.es, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0626)
          to label %bb.bm unwind label %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0625, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #24
          to label %bb.bl unwind label %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.dh, %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %i.et = load i64, ptr %i.p, align 8, !range !14, !noundef !5 ; 2 uses
  %.not505 = icmp eq i64 %i.et, -1
  %i.eu = load ptr, ptr %i.em, align 8            ; 2 uses
  br i1 %.not505, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5370.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5367.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.et, ptr %0, align 8
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eu, ptr %.sroa.4369.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.bq unwind label %.loopexit.split-lp608

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE8push_mutCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noundef nonnull %i.eu)
          to label %bb.bp unwind label %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  %i.ev = icmp eq ptr %i.en, %i.ek
  br i1 %i.ev, label %.thread584, label %bb.bh

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.br

bb.br:                                            ; preds = %bb.eb, %bb.bq
  %.sroa.0243.4 = phi i8 [ 1, %bb.bq ], [ %.sroa.0243.3, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bd

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit536: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit538, %bb.cb, %bb.bs
  %.pn503 = phi { ptr, i32 } [ %i.ew, %bb.bs ], [ %.pn499, %bb.cb ], [ %.pn499, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit538 ]
end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_7T5Block4load:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !22562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.aw, ptr noundef nonnull align 8 dereferenceable(472) %i.bb, i64 472, i1 false), !noalias !22562
  %i.cd = load atomic i64, ptr @_RNvNtCs2ZSzJGZRtAv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !22562
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.v, %bb.s, %bb.q
  store i64 2, ptr %i.at, align 8, !noalias !22562
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr null, ptr %i.cf, align 8, !noalias !22562
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.cg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_20T5LayerSelfAttention4load10___CALLSITE, i64 16) monotonic, align 8, !noalias !22562 ; 3 uses
  switch i8 %i.cg, label %bb.t [
    i8 0, label %bb.r
    i8 1, label %bb.u
    i8 2, label %bb.u
  ], !prof !24

bb.t:                                             ; preds = %bb.s
  %i.ch = invoke noundef i8 @_RNvMNtCs2ZSzJGZRtAv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_20T5LayerSelfAttention4load10___CALLSITE)
          to label %bb.v unwind label %bb.p, !noalias !22563 ; 2 uses

bb.u:                                             ; preds = %bb.s, %bb.v, %bb.s
  %.sroa.019.0.i = phi i8 [ %i.ch, %bb.v ], [ %i.cg, %bb.s ], [ %i.cg, %bb.s ]
  %i.ci = load ptr, ptr @_RNvNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_20T5LayerSelfAttention4load10___CALLSITE, align 8, !noalias !22562, !nonnull !5, !align !10, !noundef !5
  %i.cj = invoke noundef zeroext i1 @_RNvNtCs95szcO5cFRN_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ci, i8 noundef %.sroa.019.0.i)
          to label %bb.w unwind label %bb.p, !noalias !22563

bb.v:                                             ; preds = %bb.t
  %.not43.i = icmp eq i8 %i.ch, 0
  br i1 %.not43.i, label %bb.r, label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.cj, label %bb.x, label %bb.r

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr @_RNvNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_20T5LayerSelfAttention4load10___CALLSITE, align 8, !noalias !22562, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !22562
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i64 1, ptr %i.au, align 8, !noalias !22562
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !22562
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %.sroa.537.0..sroa_idx.i, align 8, !noalias !22562
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.cl, ptr %i.cm, align 8, !noalias !22562
  invoke void @_RNvMNtCs95szcO5cFRN_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %bb.z unwind label %bb.p, !noalias !22563

bb.y:                                             ; preds = %bb.z, %bb.r
  %.sroa.0145.0.copyload = load i64, ptr %i.aw, align 8, !noalias !22562
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4146.0.copyload = load i64, ptr %.sroa.4146.0..sroa_idx, align 8, !noalias !22562
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5147.0..sroa_idx, i64 56, i1 false), !noalias !22565
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6148.0..sroa_idx, i64 16, i1 false), !noalias !22565
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(384) %.sroa.7.0..sroa_idx, i64 384, i1 false), !noalias !22562
  %.sroa.7.472..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.472..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 56, i1 false), !noalias !22562
  %.sroa.7.528..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.528..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !noalias !22562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !22562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !22562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(480) %.sroa.7, i64 480, i1 false), !noalias !22565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !22562
  br label %bb.y

bb.aa:                                            ; preds = %bb.y, %bb.o, %bb.k
  %.sroa.886.0 = phi i64 [ %.sroa.6.i.sroa.0.0.copyload144, %bb.k ], [ %.sroa.4146.0.copyload, %bb.y ], [ %i.ca, %bb.o ] ; 2 uses
  %.sroa.0.0 = phi i64 [ -1, %bb.k ], [ %.sroa.0145.0.copyload, %bb.y ], [ -1, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !22562
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bn)
          to label %bb.ae unwind label %bb.e

bb.ab:                                            ; preds = %bb.ad, %bb.ac, %bb.p, %bb.g
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !22563
  unreachable

bb.ac:                                            ; preds = %bb.p
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t511T5AttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(472) %i.aw) #27
          to label %bb.g unwind label %bb.ab, !noalias !22563

bb.ad:                                            ; preds = %bb.m, %bb.l
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t511T5AttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(472) %i.bb) #27
          to label %bb.g unwind label %bb.ab, !noalias !22563

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.cp = icmp eq i64 %.sroa.0.0, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, i64 16, i1 false)
  br i1 %i.cp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.7, i64 56, i1 false)
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5115.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.886.0, ptr %i.cq, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  br label %.invoke

bb.ag:                                            ; preds = %bb.ae
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(480) %.sroa.14, i64 480, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.7, i64 56, i1 false)
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  store i64 %.sroa.0.0, ptr %i.bo, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %.sroa.886.0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 161
  %i.cs = load i8, ptr %i.cr, align 1, !range !8, !noundef !5
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 -1, ptr %i.bm, align 8
  br label %.noexc.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1293)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1394)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 1)
          to label %bb.ap unwind label %bb.ao

.noexc.i:                                         ; preds = %bb.ah, %bb.bq
  %. = phi i32 [ 1, %bb.ah ], [ 2, %bb.bq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !22566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !22566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !22566
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.br

.noexc:                                           ; preds = %.noexc.i
  %i.cu = load i64, ptr %i.aq, align 8, !range !4, !noalias !22566, !noundef !5
  %i.cv = trunc nuw i64 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !range !6, !noalias !22566, !noundef !5 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  br i1 %i.cv, label %.noexc15.i, label %bb.aj, !prof !7

.noexc15.i:                                       ; preds = %.noexc
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !22566
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cx, i64 %i.cz) #24
          to label %.noexc55 unwind label %bb.br

.noexc55:                                         ; preds = %.noexc15.i
  unreachable

bb.aj:                                            ; preds = %.noexc
  %i.da = load ptr, ptr %i.cy, align 8, !noalias !22566, !nonnull !5, !noundef !5
  %i.db = icmp ugt i64 %i.cx, 9
  call void @llvm.assume(i1 %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !22566
  store i64 %i.cx, ptr %i.ar, align 8, !noalias !22566
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.da, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !22566
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !22566
  %i.dc = invoke { ptr, i64 } @_RNvMsa_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impm4__fmt(i32 noundef %., ptr noalias nofree noundef nonnull %i.as, i64 noundef 10)
          to label %bb.ak unwind label %bb.am, !noalias !22566 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0      ; 2 uses
  %5 = extractvalue { ptr, i64 } %i.dc, 1         ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %5)
          to label %.noexc20.i unwind label %bb.am, !noalias !22566

.noexc20.i:                                       ; preds = %bb.ak
  %i.de = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !22567, !noalias !22566, !noundef !5 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1
  call void @llvm.assume(i1 %i.df)
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %bb.bs, label %bb.al

bb.al:                                            ; preds = %.noexc20.i
  %i.dg = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !22567, !noalias !22566, !nonnull !5, !noundef !5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.dd, i64 %5, i1 false), !noalias !22566
  %.pre.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !22567, !noalias !22566
  br label %bb.bs

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #27
          to label %.thread162 unwind label %bb.an, !noalias !22566

bb.an:                                            ; preds = %bb.am
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !22566
  unreachable

bb.ao:                                            ; preds = %bb.bk, %bb.fj, %bb.ai
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.ap:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !22568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !22569
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i61.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i61.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !22569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !22569
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 15)
          to label %bb.as unwind label %bb.ar, !noalias !22570

bb.aq:                                            ; preds = %bb.bn, %bb.bm, %bb.ar
  %.pn45.i62 = phi { ptr, i32 } [ %i.dk, %bb.ar ], [ %i.eg, %bb.bn ], [ %i.du, %bb.bm ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bl) #27
          to label %bb.ga unwind label %bb.bl, !noalias !22570

bb.ar:                                            ; preds = %bb.ay, %bb.as, %bb.ap
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  invoke fastcc void @_RNvMs9_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_11T5Attention4load(ptr noalias nofree noundef align 8 captures(none) dereferenceable(472) %i.ao, i1 noundef zeroext false, i1 noundef zeroext %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %4)
          to label %bb.at unwind label %bb.ar, !noalias !22571

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !22569
  %i.dl = load i64, ptr %i.ao, align 8, !range !18, !noalias !22569, !noundef !5 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.6.i61.sroa.0.0.copyload150 = load i64, ptr %i.dn, align 8, !noalias !22569 ; 2 uses
  %.sroa.6.i61.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i61.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i61.sroa.7.0..sroa_idx, i64 56, i1 false), !noalias !22569
  %.sroa.6.i61.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i61.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i61.sroa.8.0..sroa_idx, i64 16, i1 false), !noalias !22569
  br i1 %i.dm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !22569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1293, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i61.sroa.7, i64 56, i1 false), !noalias !22572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1394, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i61.sroa.8, i64 16, i1 false), !noalias !22572
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i61.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i61.sroa.8)
  br label %bb.bk

bb.av:                                            ; preds = %bb.at
  %.sroa.524.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %.sroa.5.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.sroa.5.0..sroa_idx.i65, ptr noundef nonnull align 8 dereferenceable(384) %.sroa.524.0..sroa_idx.i64, i64 384, i1 false), !noalias !22569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !22569
  %.sroa.4.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.6.i61.sroa.0.0.copyload150, ptr %.sroa.4.0..sroa_idx.i66, align 8, !noalias !22569
  %.sroa.6.i61.sroa.7.0..sroa.4.0..sroa_idx.i66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i61.sroa.7.0..sroa.4.0..sroa_idx.i66.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i61.sroa.7, i64 56, i1 false), !noalias !22569
  %.sroa.6.i61.sroa.8.0..sroa.4.0..sroa_idx.i66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i61.sroa.8.0..sroa.4.0..sroa_idx.i66.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i61.sroa.8, i64 16, i1 false), !noalias !22569
  store i64 %i.dl, ptr %i.ap, align 8, !noalias !22569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i61.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i61.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i60)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !22569
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !22568, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dr = load double, ptr %i.dq, align 8, !alias.scope !22568, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !22569
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 10)
          to label %bb.aw unwind label %bb.bn, !noalias !22570

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_11T5LayerNorm4load(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.am, i64 noundef %i.dp, double noundef %i.dr, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.al)
          to label %bb.ax unwind label %bb.bn, !noalias !22570

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !22569
  %i.ds = load i64, ptr %i.am, align 8, !range !14, !noalias !22569, !noundef !5 ; 2 uses
  %.not.i67 = icmp eq i64 %i.ds, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.67.i60, ptr noundef nonnull align 8 dereferenceable(56) %i.dt, i64 56, i1 false), !noalias !22569
  br i1 %.not.i67, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.530.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1394, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i69, i64 16, i1 false), !noalias !22572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !22569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1293, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.67.i60, i64 56, i1 false), !noalias !22572
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i60)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t511T5AttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(472) %i.ap)
          to label %bb.bk unwind label %bb.ar, !noalias !22570

bb.az:                                            ; preds = %bb.bh, %bb.be, %bb.bd
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t511T5LayerNormEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aj) #27
          to label %bb.bm unwind label %bb.bl, !noalias !22570

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !22569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !22569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.67.i60, i64 56, i1 false), !noalias !22569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i60)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !22569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.ak, ptr noundef nonnull align 8 dereferenceable(472) %i.ap, i64 472, i1 false), !noalias !22569
  %i.dv = load atomic i64, ptr @_RNvNtCs2ZSzJGZRtAv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !22569
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.bg, %bb.bf, %bb.bc, %bb.ba
  store i64 2, ptr %i.ah, align 8, !noalias !22569
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr null, ptr %i.dx, align 8, !noalias !22569
  br label %bb.bi

bb.bc:                                            ; preds = %bb.ba
  %i.dy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsb_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_21T5LayerCrossAttention4load10___CALLSITE, i64 16) monotonic, align 8, !noalias !22569 ; 3 uses
  switch i8 %i.dy, label %bb.bd [
    i8 0, label %bb.bb
    i8 1, label %bb.be
    i8 2, label %bb.be
  ], !prof !24

bb.bd:                                            ; preds = %bb.bc
  %i.dz = invoke noundef i8 @_RNvMNtCs2ZSzJGZRtAv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsb_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_21T5LayerCrossAttention4load10___CALLSITE)
          to label %bb.bf unwind label %bb.az, !noalias !22570 ; 2 uses

bb.be:                                            ; preds = %bb.bc, %bb.bf, %bb.bc
  %.sroa.019.0.i72 = phi i8 [ %i.dz, %bb.bf ], [ %i.dy, %bb.bc ], [ %i.dy, %bb.bc ]
  %i.ea = load ptr, ptr @_RNvNvMsb_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_21T5LayerCrossAttention4load10___CALLSITE, align 8, !noalias !22569, !nonnull !5, !align !10, !noundef !5
  %i.eb = invoke noundef zeroext i1 @_RNvNtCs95szcO5cFRN_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ea, i8 noundef %.sroa.019.0.i72)
          to label %bb.bg unwind label %bb.az, !noalias !22570

bb.bf:                                            ; preds = %bb.bd
  %.not43.i75 = icmp eq i8 %i.dz, 0
  br i1 %.not43.i75, label %bb.bb, label %bb.be

bb.bg:                                            ; preds = %bb.be
  br i1 %i.eb, label %bb.bh, label %bb.bb

bb.bh:                                            ; preds = %bb.bg
  %i.ec = load ptr, ptr @_RNvNvMsb_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_21T5LayerCrossAttention4load10___CALLSITE, align 8, !noalias !22569, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !22569
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store i64 1, ptr %i.ai, align 8, !noalias !22569
  %.sroa.436.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.436.0..sroa_idx.i73, align 8, !noalias !22569
  %.sroa.537.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.537.0..sroa_idx.i74, align 8, !noalias !22569
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.ed, ptr %i.ee, align 8, !noalias !22569
  invoke void @_RNvMNtCs95szcO5cFRN_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.bj unwind label %bb.az, !noalias !22570

bb.bi:                                            ; preds = %bb.bj, %bb.bb
  %.sroa.0151.0.copyload = load i64, ptr %i.ak, align 8, !noalias !22569
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4152.0.copyload = load i64, ptr %.sroa.4152.0..sroa_idx, align 8, !noalias !22569
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1293, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5153.0..sroa_idx, i64 56, i1 false), !noalias !22572
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1394, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6154.0..sroa_idx, i64 16, i1 false), !noalias !22572
  %.sroa.7155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.sroa.7155, ptr noundef nonnull align 8 dereferenceable(384) %.sroa.7155.0..sroa_idx, i64 384, i1 false), !noalias !22569
  %.sroa.7155.472..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7155, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7155.472..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 56, i1 false), !noalias !22569
  %.sroa.7155.528..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7155, i64 440
end_hunk_1
begin_hunk_2_@_RNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_7T5Stack10forward_dt:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit106: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit106.sink.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit117, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108
  ret void

bb.ed:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit102
  call void @llvm.experimental.noalias.scope.decl(metadata !22992)
  call void @llvm.experimental.noalias.scope.decl(metadata !22993)
  call void @llvm.experimental.noalias.scope.decl(metadata !22994)
  %i.ja = load ptr, ptr %i.aa, align 8, !alias.scope !22995, !nonnull !5, !noundef !5
  %i.jb = atomicrmw add ptr %i.ja, i64 -1 release, align 8, !noalias !22995
  %i.jc = icmp eq i64 %i.jb, 1
  br i1 %i.jc, label %bb.ee, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119

bb.ee:                                            ; preds = %bb.ed
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119 unwind label %bb.dr

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit119, %bb.d
  resume { ptr, i32 } %.pn82
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_7T5Stack14clear_kv_cache(ptr %.104.val, i64 %.112.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.104.val) ]
  %.idx = mul nuw nsw i64 %.112.val, 1624
  %i.a = getelementptr inbounds nuw i8, ptr %.104.val, i64 %.idx
  %i.b = icmp eq i64 %.112.val, 0
  br i1 %i.b, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsd_BV_NtBV_7T5Stack14clear_kv_cache0EBZ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack14clear_kv_cache0Bb_.exit.i
  %.sroa.0.011.i = phi ptr [ %i.c, %_RNCNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack14clear_kv_cache0Bb_.exit.i ], [ %.104.val, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 1624 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23061)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 448 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23062)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !23063, !noundef !5 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_20T5LayerSelfAttention14clear_kv_cache.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23064)
  %i.g = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !23065
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 456 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23068)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !23069, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !23070
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %common.resume.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %common.resume.i.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 456 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23073)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !23074, !nonnull !5, !noundef !5
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !23075
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_20T5LayerSelfAttention14clear_kv_cache.exit.i.i.i

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #25
          to label %_RNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_20T5LayerSelfAttention14clear_kv_cache.exit.i.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

common.resume.i.i.i:                              ; preds = %bb.m, %bb.l, %.split11.us.i.i.i.i, %bb.h, %bb.e, %bb.d
  %.sink.i = phi ptr [ %i.d, %bb.d ], [ %i.d, %bb.h ], [ %i.d, %bb.e ], [ %i.v, %bb.l ], [ %i.v, %bb.m ], [ %i.v, %.split11.us.i.i.i.i ]
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.s, %bb.h ], [ %i.i, %bb.e ], [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.ae, %.split11.us.i.i.i.i ]
  store ptr null, ptr %.sink.i, align 8, !alias.scope !23076
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_20T5LayerSelfAttention14clear_kv_cache.exit.i.i.i: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.i, %.lr.ph.i
  store ptr null, ptr %i.d, align 8, !alias.scope !23077
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 1056
  %i.u = load i64, ptr %i.t, align 8, !range !18, !alias.scope !23076, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.u, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23078)
  br i1 %.not.i.i.i, label %_RNCNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack14clear_kv_cache0Bb_.exit.i, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %_RNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_20T5LayerSelfAttention14clear_kv_cache.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23082)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 1504 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23083)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !23084, !noundef !5 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callQNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t521T5LayerCrossAttentionNCNvMsc_B1i_NtB1i_7T5Block14clear_kv_cache0E0B1m_.exit.us.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23085)
  %i.y = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !23086
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.us.i.i.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.us.i.i.i.i unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.us.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 1512 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23089)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !23090, !nonnull !5, !noundef !5
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !23091
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callQNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t521T5LayerCrossAttentionNCNvMsc_B1i_NtB1i_7T5Block14clear_kv_cache0E0B1m_.exit.us.i.i.i.i

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.us.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #25
          to label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callQNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t521T5LayerCrossAttentionNCNvMsc_B1i_NtB1i_7T5Block14clear_kv_cache0E0B1m_.exit.us.i.i.i.i unwind label %.split11.us.i.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callQNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t521T5LayerCrossAttentionNCNvMsc_B1i_NtB1i_7T5Block14clear_kv_cache0E0B1m_.exit.us.i.i.i.i: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i.i.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  store ptr null, ptr %i.v, align 8, !alias.scope !23092
  br label %_RNCNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack14clear_kv_cache0Bb_.exit.i

.split11.us.i.i.i.i:                              ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 1512 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !23093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23096)
  %i.ag = atomicrmw add ptr %.pre.i.i.i.i, i64 -1 release, align 8, !noalias !23097
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %common.resume.i.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.phi.trans.insert.i.i.i.i) #25
          to label %common.resume.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNCNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack14clear_kv_cache0Bb_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callQNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t521T5LayerCrossAttentionNCNvMsc_B1i_NtB1i_7T5Block14clear_kv_cache0E0B1m_.exit.us.i.i.i.i, %_RNvMsa_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_20T5LayerSelfAttention14clear_kv_cache.exit.i.i.i
  %i.aj = icmp eq ptr %i.c, %i.a
  br i1 %i.aj, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsd_BV_NtBV_7T5Stack14clear_kv_cache0EBZ_.exit, label %.lr.ph.i

_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsd_BV_NtBV_7T5Stack14clear_kv_cache0EBZ_.exit: ; preds = %_RNCNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack14clear_kv_cache0Bb_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_7T5Stack4load(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.017 = alloca [120 x i8], align 8         ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 3 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.610 = alloca [56 x i8], align 8          ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [1 x i8], align 1                 ; 2 uses
  %i.m = zext i1 %1 to i8
  store i8 %i.m, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.o, ptr %i.q, align 8
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB1G_7T5Stack4load0ENtB1G_7T5BlockINtNtB6_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorENCINvXso_B35_IB33_INtNtCsgCecv3eZDcN_5alloc3vec3VecB2O_EB3p_EINtNtNtB4_6traits7collect12FromIteratorIB33_B2O_B3p_EE9from_iterBQ_E0B4p_EB1K_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing9EmbeddingEEB1f_.exit, %bb.b, %bb.ab
  %.pn57 = phi { ptr, i32 } [ %i.ag, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing9EmbeddingEEB1f_.exit ], [ %i.au, %bb.ab ], [ %i.r, %bb.b ], [ %i.ac, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #27
          to label %bb.ac unwind label %bb.y

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.s = load i64, ptr %i.j, align 8, !range !14, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.535.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.532.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.434.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockEEB1e_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.y = load double, ptr %i.x, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 16)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB5_11T5LayerNorm4load(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.h, i64 noundef %i.w, double noundef %i.y, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.z = load i64, ptr %i.h, align 8, !range !14, !noundef !5 ; 2 uses
  %.not54 = icmp eq i64 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  br i1 %.not54, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.ab, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockEEB1e_.exit unwind label %bb.b

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ae = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.v, %bb.s, %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t511T5LayerNormEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #27
          to label %bb.z unwind label %bb.y

bb.o:                                             ; preds = %bb.l
  store ptr %.0.val, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  %i.ah = load atomic i64, ptr @_RNvNtCs2ZSzJGZRtAv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o, %bb.u, %bb.t
  store i64 2, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.aj, align 8
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.ak = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack4load10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ak, label %bb.r [
    i8 0, label %bb.p
    i8 1, label %bb.s
    i8 2, label %bb.s
  ], !prof !24

bb.r:                                             ; preds = %bb.q
  %i.al = invoke noundef i8 @_RNvMNtCs2ZSzJGZRtAv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack4load10___CALLSITE)
          to label %bb.t unwind label %bb.n       ; 2 uses

bb.s:                                             ; preds = %bb.q, %bb.q, %bb.t
  %.sroa.024.0 = phi i8 [ %i.al, %bb.t ], [ %i.ak, %bb.q ], [ %i.ak, %bb.q ]
  %i.am = load ptr, ptr @_RNvNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack4load10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5
  %i.an = invoke noundef zeroext i1 @_RNvNtCs95szcO5cFRN_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.am, i8 noundef %.sroa.024.0)
          to label %bb.u unwind label %bb.n

bb.t:                                             ; preds = %bb.r
  %.not55 = icmp eq i8 %i.al, 0
  br i1 %.not55, label %bb.p, label %bb.s

bb.u:                                             ; preds = %bb.s
  br i1 %i.an, label %bb.v, label %bb.p

bb.v:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr @_RNvNvMsd_NtNtCs1dZk1kIfPhr_19candle_transformers6models2t5NtB7_7T5Stack4load10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i64 1, ptr %i.b, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.548.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ap, ptr %i.aq, align 8
  invoke void @_RNvMNtCs95szcO5cFRN_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.x unwind label %bb.n

bb.w:                                             ; preds = %bb.x, %bb.p
  %.sroa.017.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.017, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  %.sroa.017.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.017, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.017.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.017, i64 120, i1 false)
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.0.val, ptr %.sroa.618.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockEEB1e_.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockEEB1e_.exit: ; preds = %bb.d, %bb.j, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

bb.y:                                             ; preds = %bb.aa, %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing9EmbeddingEEB1f_.exit, %bb.n, %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.z:                                             ; preds = %bb.n
  %i.as = atomicrmw add ptr %.0.val, i64 -1 release, align 8, !noalias !23102
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing9EmbeddingEEB1f_.exit

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing9EmbeddingE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing9EmbeddingEEB1f_.exit unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing9EmbeddingEEB1f_.exit: ; preds = %bb.z, %bb.aa
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #27
          to label %.body unwind label %bb.y

bb.ab:                                            ; preds = %bb.f, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models2t57T5BlockEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %.body unwind label %bb.y

bb.ac:                                            ; preds = %.body
  resume { ptr, i32 } %.pn57
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion14unet_2d_blocksNtB5_11DownBlock2D3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, i64 noundef range(i64 0, 2) %4, i64 %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 7 uses
  %.sroa.611 = alloca [80 x i8], align 8          ; 6 uses
  %i.g = alloca [144 x i8], align 8               ; 8 uses
  %i.h = alloca [144 x i8], align 8               ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [80 x i8], align 8                ; 12 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.o, align 8
  store i64 %3, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 7)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn49 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn47, %.body ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #27
          to label %bb.al unwind label %bb.ag

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6resnet13ResnetBlock2DEEB1g_.exit.invoke, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load double, ptr %i.q, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.t = load double, ptr %i.s, align 8, !noundef !5
  store i64 1, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %4, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %5, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 32, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store double %i.r, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i8 2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store double %i.t, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ac = load i64, ptr %6, align 8, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ac, ptr %i.ae, align 8
  store ptr %i.o, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.l, ptr %.sroa.65.0..sroa_idx, align 8
  invoke void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCNvMsd_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion14unet_2d_blocksNtB1G_11DownBlock2D3new0ENtNtB1I_6resnet13ResnetBlock2DINtNtB6_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorENCINvXso_B3W_IB3U_INtNtCsgCecv3eZDcN_5alloc3vec3VecB3p_EB4g_EINtNtNtB4_6traits7collect12FromIteratorIB3U_B3p_B4g_EE9from_iterBQ_E0B5g_EB1M_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %bb.ai, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion14unet_2d_blocks12Downsample2DEEB15_.exit
end_hunk_2
begin_hunk_3_@_RNvXs6_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice3gptNtB5_5BlockNtCsltEA4u8Pgfu_11candle_core6Module7forward:bb.a
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.568.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.az, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %.sroa.470.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27719)
  call void @llvm.experimental.noalias.scope.decl(metadata !27720)
  call void @llvm.experimental.noalias.scope.decl(metadata !27721)
  %i.bc = load ptr, ptr %i.b, align 8, !alias.scope !27722, !nonnull !5, !noundef !5
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !27722
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit97

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit97 unwind label %bb.s

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.bb, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27723)
  call void @llvm.experimental.noalias.scope.decl(metadata !27724)
  call void @llvm.experimental.noalias.scope.decl(metadata !27725)
  %i.bf = load ptr, ptr %i.b, align 8, !alias.scope !27726, !nonnull !5, !noundef !5
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !27726
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit99

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit99 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27727)
  call void @llvm.experimental.noalias.scope.decl(metadata !27728)
  call void @llvm.experimental.noalias.scope.decl(metadata !27729)
  %i.bj = load ptr, ptr %i.e, align 8, !alias.scope !27730, !nonnull !5, !noundef !5
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !27730
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit95

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit95 unwind label %bb.ai

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit99: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !27731)
  call void @llvm.experimental.noalias.scope.decl(metadata !27732)
  call void @llvm.experimental.noalias.scope.decl(metadata !27733)
  %i.bo = load ptr, ptr %i.j, align 8, !alias.scope !27734, !nonnull !5, !noundef !5
  %i.bp = atomicrmw add ptr %i.bo, i64 -1 release, align 8, !noalias !27734
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit103

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit99
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit103 unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit103: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit99, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105.sink.split: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit103, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit107
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.br), !noalias !5
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105.sink.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit107, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit103
  ret void

bb.ai:                                            ; preds = %bb.ag, %bb.y, %bb.r, %bb.k, %bb.f
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit97: ; preds = %bb.ab, %bb.ac, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !27735)
  call void @llvm.experimental.noalias.scope.decl(metadata !27736)
  call void @llvm.experimental.noalias.scope.decl(metadata !27737)
  %i.bt = load ptr, ptr %i.j, align 8, !alias.scope !27738, !nonnull !5, !noundef !5
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !27738
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit107

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit97
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit107 unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit107: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit97, %bb.aj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit105.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit86: ; preds = %bb.n, %bb.o, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit107

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs95szcO5cFRN_7tracing4span7EnteredECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit, %bb.f
  resume { ptr, i32 } %.pn78
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCs1dZk1kIfPhr_19candle_transformers6models4blipNtB5_11VisionModelNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 11 uses
  %i.f = alloca [80 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 23 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 32 uses
  %i.l = alloca [80 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 11 uses
  %i.n = alloca [80 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 10 uses
  %i.p = alloca [80 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 32 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 32 uses
  %i.t = alloca [80 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 32 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [80 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 13 uses
  %i.z = alloca [80 x i8], align 8                ; 8 uses
  %i.aa = alloca [8 x i8], align 8                ; 11 uses
  %i.ab = alloca [80 x i8], align 8               ; 9 uses
  %i.ac = alloca [8 x i8], align 8                ; 34 uses
  %i.ad = alloca [80 x i8], align 8               ; 9 uses
  %i.ae = alloca [80 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 8 uses
  %i.ag = alloca [80 x i8], align 8               ; 8 uses
  %i.ah = alloca [8 x i8], align 8                ; 7 uses
  %i.ai = alloca [80 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 12 uses
  %i.ak = alloca [80 x i8], align 8               ; 9 uses
  %i.al = alloca [80 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 11 uses
  %i.an = alloca [80 x i8], align 8               ; 11 uses
  %i.ao = alloca [8 x i8], align 8                ; 14 uses
  %.sroa.11 = alloca [64 x i8], align 8           ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 7 uses
  %i.aq = alloca [80 x i8], align 8               ; 7 uses
  %i.ar = alloca [8 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvXs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models4blipNtB5_16VisionEmbeddingsNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.as = load i64, ptr %i.aq, align 8, !range !14, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.as, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.521.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store i64 %i.as, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.423.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit41

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store ptr %i.au, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val38 = load i64, ptr %i.aw, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !28379
  %i.ax = atomicrmw add ptr %i.au, i64 1 monotonic, align 8, !noalias !28379
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.au, ptr %i.ao, align 8, !noalias !28379
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.idx.i = mul nuw nsw i64 %.val38, 320
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.ba = icmp eq i64 %.val38, 0
  br i1 %i.ba, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4156.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.7167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.7172.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.4169.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 15 uses
  %.sroa.5170.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 15 uses
  %.sroa.6171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5178.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5205.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5214.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5223.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5232.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5241.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5250.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5259.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5277.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5286.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5295.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 6 uses
  %.sroa.463.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 5 uses
  %.sroa.469.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.570.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit25.i, %.lr.ph.i
  %.sroa.0.051.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.cb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit25.i ] ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.051.i, i64 320 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !28379
  call void @llvm.experimental.noalias.scope.decl(metadata !28380)
  call void @llvm.experimental.noalias.scope.decl(metadata !28381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !28382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !28382
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.051.i, i64 256
  invoke void @_RNvXs1_NtCs3NyA1pFSltE_9candle_nn10layer_normNtB5_9LayerNormNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao)
          to label %.noexc.i unwind label %bb.gt, !noalias !28379

.noexc.i:                                         ; preds = %bb.f
  %i.cd = load i64, ptr %i.al, align 8, !range !14, !noalias !28382, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cd, -1
  %i.ce = load ptr, ptr %i.bb, align 8, !noalias !28382 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %.noexc.i
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.564.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.552.0..sroa_idx.i.i, i64 64, i1 false), !noalias !28383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !28382
  br label %.loopexit2.i

bb.g:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28382
  store ptr %i.ce, ptr %i.am, align 8, !noalias !28382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !28382
  call void @llvm.experimental.noalias.scope.decl(metadata !28384)
  call void @llvm.experimental.noalias.scope.decl(metadata !28385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !28386
  invoke void @_RNvMs12_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB8_6tensor6Tensor5dims3(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %.noexc.i.i unwind label %bb.fu, !noalias !28387

.noexc.i.i:                                       ; preds = %bb.g
  %i.cf = load i64, ptr %i.ad, align 8, !range !14, !noalias !28386, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cf, -1
  %.sroa.0155.0.copyload.i.i.i = load i64, ptr %i.bc, align 8, !noalias !28386 ; 3 uses
  %.sroa.4156.0.copyload.i.i.i = load i64, ptr %.sroa.4156.0..sroa_idx.i.i.i, align 8, !noalias !28386 ; 2 uses
  %.sroa.5157.0.copyload.i.i.i = load i64, ptr %.sroa.5157.0..sroa_idx.i.i.i, align 8, !noalias !28386 ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7172.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7167.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !28388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !28386
  store i64 %.sroa.0155.0.copyload.i.i.i, ptr %.sroa.4169.0..sroa_idx.i.i.i, align 8, !alias.scope !28384, !noalias !28382
  store i64 %.sroa.4156.0.copyload.i.i.i, ptr %.sroa.5170.0..sroa_idx.i.i.i, align 8, !alias.scope !28384, !noalias !28382
  store i64 %.sroa.5157.0.copyload.i.i.i, ptr %.sroa.6171.0..sroa_idx.i.i.i, align 8, !alias.scope !28384, !noalias !28382
  %i.cg = inttoptr i64 %.sroa.0155.0.copyload.i.i.i to ptr
  br label %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models4blipNtB5_9Attention7forward.exit.thread.i.i

bb.i:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !28386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !28386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !28386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !28386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !28386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !28386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !28386
  invoke void @_RNvXs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracingNtB5_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %.sroa.0.051.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %.noexc100.i.i unwind label %bb.fu, !noalias !28387

.noexc100.i.i:                                    ; preds = %bb.i
  %i.ch = load i64, ptr %i.x, align 8, !range !14, !noalias !28386, !noundef !5 ; 2 uses
  %.not300.i.i.i = icmp eq i64 %i.ch, -1
  %i.ci = load ptr, ptr %i.bd, align 8, !noalias !28386 ; 3 uses
  br i1 %.not300.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc100.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5170.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5178.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !28388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28386
  store ptr %i.ci, ptr %.sroa.4169.0..sroa_idx.i.i.i, align 8, !alias.scope !28384, !noalias !28382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !28386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !28386
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit533.i.i.i

bb.k:                                             ; preds = %.noexc100.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28386
  store ptr %i.ci, ptr %i.y, align 8, !noalias !28386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !28386
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.051.i, i64 120
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !28389, !noalias !28379, !noundef !5 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = udiv i64 %.sroa.5157.0.copyload.i.i.i, %i.ck
  store i64 %.sroa.0155.0.copyload.i.i.i, ptr %i.w, align 8, !noalias !28386
  store i64 %.sroa.4156.0.copyload.i.i.i, ptr %i.be, align 8, !noalias !28386
  store i64 3, ptr %i.bf, align 8, !noalias !28386
  store i64 %i.ck, ptr %i.bg, align 8, !noalias !28386
  store i64 %i.cm, ptr %i.bh, align 8, !noalias !28386
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjjjjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.w)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !28390

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #24
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !28390

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit368.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %bb.s
  %.pn364.i.i.i = phi { ptr, i32 } [ %i.cs, %bb.s ], [ %i.cs, %bb.t ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28391)
  call void @llvm.experimental.noalias.scope.decl(metadata !28392)
  call void @llvm.experimental.noalias.scope.decl(metadata !28393)
  %i.cn = load ptr, ptr %i.y, align 8, !alias.scope !28394, !noalias !28386, !nonnull !5, !noundef !5
  %i.co = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !28395
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.n, label %.body.i.i

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit368.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #25
          to label %.body.i.i unwind label %bb.df, !noalias !28390

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.l, %bb.m
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit368.i.i.i

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !28386
  %i.cq = load i64, ptr %i.z, align 8, !range !14, !noalias !28386, !noundef !5 ; 2 uses
  %.not301.i.i.i = icmp eq i64 %i.cq, -1
  %i.cr = load ptr, ptr %i.bi, align 8, !noalias !28386 ; 3 uses
  br i1 %.not301.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5170.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5187.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !28388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !28386
  store ptr %i.cr, ptr %.sroa.4169.0..sroa_idx.i.i.i, align 8, !alias.scope !28384, !noalias !28382
end_hunk_3
