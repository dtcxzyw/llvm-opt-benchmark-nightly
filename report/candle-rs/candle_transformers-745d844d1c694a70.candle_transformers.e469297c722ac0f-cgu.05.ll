Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.05?download=true
inline.NumInlined: 3394
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vlNtB2_16PaddleOCRVLModel13forward_video:bb.a

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit375 unwind label %bb.bs

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit408, %bb.bv, %bb.aa
  %.sroa.0178.9 = phi i1 [ true, %bb.bv ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit408 ], [ true, %bb.aa ]
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ae:                                            ; preds = %bb.aa
  %i.ck = load i64, ptr %i.t, align 8, !range !14, !noundef !5 ; 2 uses
  %.not339 = icmp eq i64 %i.ck, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.660, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  br i1 %.not339, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5244.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5241.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4243.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.660, i64 24, i1 false)
  store i64 %i.ck, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.660)
  br label %bb.cx

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.660, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.660)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5 ; 4 uses
  %.idx = shl nuw nsw i64 %i.cp, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %.thread441.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !5
  br label %bb.ah

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit378: ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit402, %bb.bz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386, %bb.bj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380, %bb.av
  %.sroa.0178.10 = phi i1 [ %.sroa.0178.18, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit402 ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386 ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380 ], [ true, %bb.av ], [ true, %bb.bj ], [ %.sroa.0178.18, %bb.bz ], [ true, %.loopexit ], [ %.sroa.0178.11.ph, %.loopexit.split-lp ]
  %.pn355 = phi { ptr, i32 } [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit402 ], [ %.pn351, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386 ], [ %.pn353, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380 ], [ %.pn353, %bb.av ], [ %.pn351, %bb.bj ], [ %.pn, %bb.bz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #27
          to label %bb.ab unwind label %bb.bs

.loopexit:                                        ; preds = %bb.ar, %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit378

.loopexit.split-lp:                               ; preds = %.thread441.thread, %bb.am, %bb.aq, %bb.bn, %bb.bt, %bb.cp, %bb.cw
  %.sroa.0178.11.ph = phi i1 [ true, %bb.cw ], [ true, %bb.am ], [ true, %.thread441.thread ], [ false, %bb.cp ], [ true, %bb.bn ], [ true, %bb.bt ], [ true, %bb.aq ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit378

bb.ah:                                            ; preds = %.lr.ph, %bb.ak
  %.sroa.067.0497 = phi i8 [ 0, %.lr.ph ], [ %.sroa.067.1, %bb.ak ]
  %.sroa.075.0496 = phi i64 [ 0, %.lr.ph ], [ %.sroa.075.1, %bb.ak ] ; 3 uses
  %.sroa.477.0495 = phi i64 [ undef, %.lr.ph ], [ %.sroa.477.1, %bb.ak ] ; 3 uses
  %.sroa.0.0494 = phi ptr [ %i.cn, %.lr.ph ], [ %i.cu, %bb.ak ] ; 2 uses
  %.sroa.7.0493 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %bb.ak ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0494, i64 4 ; 2 uses
  %i.cv = add nuw nsw i64 %.sroa.7.0493, 1
  %i.cw = load i32, ptr %.sroa.0.0494, align 4, !noundef !5
  %i.cx = icmp eq i32 %i.cw, %i.ct
  %i.cy = trunc nuw i8 %.sroa.067.0497 to i1      ; 3 uses
  br i1 %i.cx, label %bb.aj, label %bb.ai

._crit_edge:                                      ; preds = %bb.ak
  %i.cz = trunc nuw i8 %.sroa.067.1 to i1
  br i1 %i.cz, label %bb.al, label %.thread441.thread

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cy, label %.thread441, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %spec.select = select i1 %i.cy, i64 %.sroa.477.0495, i64 %.sroa.7.0493
  %spec.select367 = select i1 %i.cy, i64 %.sroa.075.0496, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.477.1 = phi i64 [ %spec.select, %bb.aj ], [ %.sroa.477.0495, %bb.ai ] ; 2 uses
  %.sroa.075.1 = phi i64 [ %spec.select367, %bb.aj ], [ %.sroa.075.0496, %bb.ai ] ; 2 uses
  %.sroa.067.1 = phi i8 [ 1, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.da = icmp eq ptr %i.cu, %i.cq
  br i1 %i.da, label %._crit_edge, label %bb.ah

.thread441:                                       ; preds = %bb.ai
  %i.db = trunc nuw i64 %.sroa.075.0496 to i1
  br i1 %i.db, label %bb.am, label %.thread441.thread

bb.al:                                            ; preds = %._crit_edge
  %i.dc = trunc nuw i64 %.sroa.075.1 to i1
  %i.dd = icmp ult i64 %i.cp, 2305843009213693952
  call void @llvm.assume(i1 %i.dd)
  br i1 %i.dc, label %bb.am, label %.thread441.thread

.thread441.thread:                                ; preds = %bb.ag, %._crit_edge, %.thread441, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit._crit_edge.split, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.df = load i32, ptr %i.de, align 4, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 488
  invoke void @_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vl4text32compute_mrope_position_ids_video(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i32 noundef %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, float noundef 5.000000e-01, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dg)
          to label %bb.bw unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %.thread441, %bb.al
  %.sroa.477.0491 = phi i64 [ %.sroa.477.1, %bb.al ], [ %.sroa.477.0495, %.thread441 ] ; 3 uses
  %.sroa.582.1 = phi i64 [ %i.cp, %bb.al ], [ %.sroa.7.0493, %.thread441 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dh = sub i64 %.sroa.582.1, %.sroa.477.0491   ; 2 uses
  store i64 %i.dh, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, i64 noundef 0)
          to label %bb.an unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.di = load i64, ptr %i.q, align 8, !range !14, !noundef !5 ; 2 uses
  %.not341 = icmp eq i64 %i.di, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dk = load i64, ptr %i.dj, align 8            ; 3 uses
  br i1 %.not341, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5253.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5250.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.di, ptr %0, align 8
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dk, ptr %.sroa.4252.0..sroa_idx, align 8
  br label %bb.bu

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.dk, ptr %i.r, align 8
  %i.dl = load i64, ptr %i.s, align 8, !noundef !5
  %.not342 = icmp eq i64 %i.dl, %i.dk
  br i1 %.not342, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.preheader, label %bb.aq

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.preheader: ; preds = %bb.ap
  %.not506 = icmp eq i64 %i.aj, 0
  br i1 %.not506, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit._crit_edge.split, label %.lr.ph505

.lr.ph505:                                        ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.preheader
  %i.dm = icmp ult i64 %.sroa.477.0491, %.sroa.582.1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br i1 %i.dm, label %.lr.ph503.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit._crit_edge.split

.lr.ph503.preheader:                              ; preds = %.lr.ph505
  %i.dv = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.ar, i64 1
  br label %.lr.ph503

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.s, ptr %i.o, align 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4257.0..sroa_idx, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.r, ptr %i.dw, align 8
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4261.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @17, ptr noundef nonnull %i.o)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1dZk1kIfPhr_19candle_transformers.exit unwind label %.loopexit.split-lp

._RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.loopexit_crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit396
  %exitcond538.not = icmp eq i64 %i.dx, %i.aj
  br i1 %exitcond538.not, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit._crit_edge.split, label %.lr.ph503

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit._crit_edge.split: ; preds = %._RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.loopexit_crit_edge, %.lr.ph505, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread441.thread

.lr.ph503:                                        ; preds = %.lr.ph503.preheader, %._RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.loopexit_crit_edge
  %.sroa.0264.0504 = phi i64 [ %i.dx, %._RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.loopexit_crit_edge ], [ 0, %.lr.ph503.preheader ] ; 2 uses
  %i.dx = add nuw i64 %.sroa.0264.0504, 1         ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph503, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit396
  %.sroa.0427.0501 = phi i64 [ %.sroa.477.0491, %.lr.ph503 ], [ %i.dy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit396 ] ; 2 uses
  %.sroa.8.0500 = phi i64 [ 0, %.lr.ph503 ], [ %i.dz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit396 ] ; 2 uses
  %i.dy = add nuw nsw i64 %.sroa.0427.0501, 1     ; 2 uses
  %i.dz = add nuw i64 %.sroa.8.0500, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsa_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpjE1iCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, i64 noundef %.sroa.8.0500)
          to label %bb.as unwind label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.ea = load i64, ptr %i.i, align 8, !range !14, !noundef !5 ; 2 uses
  %.not347 = icmp eq i64 %i.ea, -1
  %i.eb = load ptr, ptr %i.dn, align 8            ; 2 uses
  br i1 %.not347, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5274.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5271.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.ea, ptr %0, align 8
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %.sroa.4273.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit398

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.eb, ptr %i.j, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9unsqueezejECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, i64 noundef 0)
          to label %bb.aw unwind label %.loopexit460

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380: ; preds = %.loopexit460, %.loopexit.split-lp461, %bb.az, %bb.ba
  %.pn353 = phi { ptr, i32 } [ %i.eh, %bb.az ], [ %i.eh, %bb.ba ], [ %lpad.loopexit462, %.loopexit460 ], [ %lpad.loopexit.split-lp463, %.loopexit.split-lp461 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7235)
  call void @llvm.experimental.noalias.scope.decl(metadata !7236)
  call void @llvm.experimental.noalias.scope.decl(metadata !7237)
  %i.ec = load ptr, ptr %i.j, align 8, !alias.scope !7238, !nonnull !5, !noundef !5
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !7238
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.av, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit378

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit378 unwind label %bb.bs

.loopexit460:                                     ; preds = %bb.au
  %lpad.loopexit462 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380

.loopexit.split-lp461:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp463 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380

bb.aw:                                            ; preds = %bb.au
  %i.ef = load i64, ptr %i.k, align 8, !range !14, !noundef !5 ; 2 uses
  %.not348 = icmp eq i64 %i.ef, -1
  %i.eg = load ptr, ptr %i.do, align 8            ; 2 uses
  br i1 %.not348, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5283.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5280.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.ef, ptr %0, align 8
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %.sroa.4282.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit382

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.eg, ptr %i.l, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9unsqueezejECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, i64 noundef 0)
          to label %bb.bb unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7239)
  call void @llvm.experimental.noalias.scope.decl(metadata !7240)
  call void @llvm.experimental.noalias.scope.decl(metadata !7241)
  %i.ei = load ptr, ptr %i.l, align 8, !alias.scope !7242, !nonnull !5, !noundef !5
  %i.ej = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !7242
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.ba, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit380 unwind label %bb.bs

bb.bb:                                            ; preds = %bb.ay
  %i.el = load i64, ptr %i.m, align 8, !range !14, !noundef !5 ; 2 uses
  %.not349 = icmp eq i64 %i.el, -1
  %i.em = load ptr, ptr %i.dp, align 8            ; 2 uses
  br i1 %.not349, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5292.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5289.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.el, ptr %0, align 8
  %.sroa.4291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %.sroa.4291.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7243)
  call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  call void @llvm.experimental.noalias.scope.decl(metadata !7245)
  %i.en = load ptr, ptr %i.l, align 8, !alias.scope !7246, !nonnull !5, !noundef !5
  %i.eo = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !7246
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit382

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit382 unwind label %.loopexit.split-lp461

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.em, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7247)
  call void @llvm.experimental.noalias.scope.decl(metadata !7248)
  call void @llvm.experimental.noalias.scope.decl(metadata !7249)
  %i.eq = load ptr, ptr %i.l, align 8, !alias.scope !7250, !nonnull !5, !noundef !5
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !7250
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.bf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit384

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit384 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7251)
  call void @llvm.experimental.noalias.scope.decl(metadata !7252)
  call void @llvm.experimental.noalias.scope.decl(metadata !7253)
  %i.eu = load ptr, ptr %i.j, align 8, !alias.scope !7254, !nonnull !5, !noundef !5
  %i.ev = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !7254
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.bh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386 unwind label %bb.bs

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit384: ; preds = %bb.be, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !7255)
  call void @llvm.experimental.noalias.scope.decl(metadata !7256)
  call void @llvm.experimental.noalias.scope.decl(metadata !7257)
  %i.ex = load ptr, ptr %i.j, align 8, !alias.scope !7258, !nonnull !5, !noundef !5
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !7258
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit388

bb.bi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit384
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit388 unwind label %bb.bk

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386: ; preds = %bb.bg, %bb.bh, %bb.bq, %bb.bk
  %.pn351 = phi { ptr, i32 } [ %i.fm, %bb.bq ], [ %i.fd, %bb.bk ], [ %i.et, %bb.bh ], [ %i.et, %bb.bg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7259)
  call void @llvm.experimental.noalias.scope.decl(metadata !7260)
  call void @llvm.experimental.noalias.scope.decl(metadata !7261)
  %i.fa = load ptr, ptr %i.n, align 8, !alias.scope !7262, !nonnull !5, !noundef !5
  %i.fb = atomicrmw sub ptr %i.fa, i64 1 release, align 8, !noalias !7262
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit378

bb.bj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit378 unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit388
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit386

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit388: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit384, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0264.0504, ptr %i.g, align 8
  store i64 %i.dx, ptr %i.dq, align 8
  store i64 %.sroa.0427.0501, ptr %i.dr, align 8
  store i64 %i.dy, ptr %i.ds, align 8
  store <2 x i64> %i.dv, ptr %i.dt, align 8
end_hunk_0
