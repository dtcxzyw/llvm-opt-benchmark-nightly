Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.09?download=true
inline.NumInlined: 3626
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models6repvgg12repvgg_layer:bb.a
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4275.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.681, i64 56, i1 false)
  store i64 %i.ce, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ab)
          to label %.sink.split unwind label %bb.u

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.681, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false)
  invoke fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models6repvgg12fuse_conv_bn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.t)
          to label %bb.ao unwind label %bb.an

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit430: ; preds = %bb.ba, %bb.cw, %bb.cx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit426, %bb.cz, %bb.da, %.thread488, %bb.an
  %.sroa.0204.4 = phi i8 [ 1, %bb.an ], [ 1, %bb.cz ], [ 0, %.thread488 ], [ 1, %bb.da ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit426 ], [ 0, %bb.cx ], [ 0, %bb.cw ], [ 0, %bb.ba ]
  %.sroa.0206.4 = phi i8 [ %.sroa.0206.5, %bb.an ], [ 0, %bb.cz ], [ 0, %.thread488 ], [ 0, %bb.da ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit426 ], [ 0, %bb.cx ], [ 0, %bb.cw ], [ 0, %bb.ba ]
  %.pn386 = phi { ptr, i32 } [ %i.ch, %bb.an ], [ %lpad.thr_comm.split-lp487, %bb.cz ], [ %lpad.thr_comm486, %.thread488 ], [ %lpad.thr_comm.split-lp487, %bb.da ], [ %.pn382, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit426 ], [ %.pn382, %bb.cx ], [ %.pn382, %bb.cw ], [ %i.dj, %bb.ba ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.y) #26
          to label %.thread466 unwind label %bb.cm

bb.an:                                            ; preds = %bb.at, %bb.am
  %.sroa.0206.5 = phi i8 [ 0, %bb.at ], [ 1, %bb.am ]
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit430

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ci = load i64, ptr %i.u, align 8, !range !10, !noundef !5 ; 2 uses
  %.not369 = icmp eq i64 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  br i1 %.not369, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.6288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6288.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6284.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.ci, ptr %0, align 8
  %.sroa.4286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %.sroa.4286.0..sroa_idx, align 8
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cm, ptr %.sroa.5287.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.y)
          to label %.thread529 unwind label %.thread475

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.cm, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cn = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ck)
          to label %bb.ar unwind label %bb.cz

.thread488:                                       ; preds = %.invoke
  %lpad.thr_comm486 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit430

bb.ar:                                            ; preds = %bb.aq
  %i.co = load i64, ptr %i.r, align 8, !range !10, !noundef !5 ; 2 uses
  %.not370 = icmp eq i64 %i.co, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  br i1 %.not370, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.5294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5297.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5294.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.co, ptr %0, align 8
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %.sroa.4296.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !25168)
  call void @llvm.experimental.noalias.scope.decl(metadata !25169)
  call void @llvm.experimental.noalias.scope.decl(metadata !25170)
  %i.cr = load ptr, ptr %i.v, align 8, !alias.scope !25171, !nonnull !5, !noundef !5
  %i.cs = atomicrmw add ptr %i.cr, i64 -1 release, align 8, !noalias !25171
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit406

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit406 unwind label %bb.an

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.cq, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cu = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.cv = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.p, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cv)
          to label %bb.aw unwind label %bb.av

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit426: ; preds = %.body.thread594, %bb.cv, %.body, %bb.av
  %.sroa.0198.0 = phi i8 [ %.sroa.0198.1, %bb.av ], [ %.sroa.0198.2, %.body ], [ %.sroa.0198.2540, %bb.cv ], [ %.sroa.0198.2540, %.body.thread594 ]
  %.pn382 = phi { ptr, i32 } [ %i.cx, %bb.av ], [ %.pn378.pn.pn, %.body ], [ %.pn378.pn.pn541, %bb.cv ], [ %.pn378.pn.pn541, %.body.thread594 ] ; 3 uses
  %i.cw = trunc nuw i8 %.sroa.0198.0 to i1
  br i1 %i.cw, label %bb.cw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit430

bb.av:                                            ; preds = %bb.cp, %bb.bg, %bb.au
  %.sroa.0198.1 = phi i8 [ 1, %bb.bg ], [ %.sroa.0198.12528, %bb.cp ], [ 1, %bb.au ]
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit426

bb.aw:                                            ; preds = %bb.au
  %i.cy = load i64, ptr %i.p, align 8, !range !10, !noundef !5 ; 2 uses
  %.not371 = icmp eq i64 %i.cy, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  br i1 %.not371, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5306.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5303.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.cy, ptr %0, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %.sroa.4305.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !25172)
  call void @llvm.experimental.noalias.scope.decl(metadata !25173)
  call void @llvm.experimental.noalias.scope.decl(metadata !25174)
  %i.db = load ptr, ptr %i.s, align 8, !alias.scope !25175, !nonnull !5, !noundef !5
  %i.dc = atomicrmw add ptr %i.db, i64 -1 release, align 8, !noalias !25175
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %.invoke, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit406.sink.split

.invoke:                                          ; preds = %bb.ax, %bb.cq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit406.sink.split unwind label %.thread488

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store ptr %i.da, ptr %i.q, align 8
  br i1 %1, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit416, %bb.ay
  %i.de = phi ptr [ %.pre571, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit416 ], [ %i.da, %bb.ay ]
  %i.df = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.de, ptr %i.dh, align 8
  %.sroa.4186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.df, ptr %.sroa.4186.0..sroa_idx, align 8
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 1, ptr %.sroa.5187.0..sroa_idx, align 8
  %.sroa.6188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %3, ptr %.sroa.6188.0..sroa_idx, align 8
  %.sroa.7189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %.sroa.7189.0..sroa_idx, align 8
  %.sroa.8190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %6, ptr %.sroa.8190.0..sroa_idx, align 8
  %.sroa.9191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 -1, ptr %.sroa.9191.0..sroa_idx, align 8
  %i.di = invoke fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit(i64 noundef 72)
          to label %bb.ce unwind label %bb.ba     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models6repvgg12repvgg_layer0EEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit430 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 8)
          to label %bb.bd unwind label %.body.thread

.body:                                            ; preds = %bb.bq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit420, %.thread499.thread558
  %.sroa.0196.0 = phi i8 [ %.sroa.0196.5, %bb.bq ], [ %.sroa.0196.4.ph.ph, %.thread499.thread558 ], [ %.sroa.0196.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit420 ]
  %.sroa.0198.2 = phi i8 [ %.sroa.0198.7, %bb.bq ], [ %.sroa.0198.6.ph.ph, %.thread499.thread558 ], [ %.sroa.0198.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit420 ] ; 2 uses
  %.pn378.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bq ], [ %lpad.thr_comm556, %.thread499.thread558 ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit420 ] ; 2 uses
  %i.dl = trunc nuw i8 %.sroa.0196.0 to i1
  br i1 %i.dl, label %.body.thread594, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit426

.body.thread:                                     ; preds = %bb.bc, %bb.bd, %bb.bo
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread594

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10batch_norm10batch_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, i64 noundef %2, double noundef 1.000000e-05, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.be unwind label %.body.thread

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dn = load i64, ptr %i.n, align 8, !range !10, !noundef !5 ; 2 uses
  %.not372 = icmp eq i64 %i.dn, -1
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6124, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false)
  br i1 %.not372, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.5315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5312.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6124, i64 56, i1 false)
  store i64 %i.dn, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6124)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !25176)
  call void @llvm.experimental.noalias.scope.decl(metadata !25177)
  call void @llvm.experimental.noalias.scope.decl(metadata !25178)
  %i.dp = load ptr, ptr %i.q, align 8, !alias.scope !25179, !nonnull !5, !noundef !5
  %i.dq = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !noalias !25179
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit410

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit410 unwind label %bb.av

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6124, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ds = invoke noundef i64 @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg)
          to label %bb.bi unwind label %.thread491

.thread499.thread558:                             ; preds = %bb.cd, %bb.cj
  %.sroa.0196.4.ph.ph = phi i8 [ %.sroa.0196.8, %bb.cj ], [ 1, %bb.cd ]
  %.sroa.0198.6.ph.ph = phi i8 [ %.sroa.0198.11, %bb.cj ], [ 1, %bb.cd ]
  %lpad.thr_comm556 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread491:                                       ; preds = %bb.bi, %._crit_edge, %bb.bh
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.thread499.thread550

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ds)
          to label %bb.bj unwind label %.thread491

bb.bj:                                            ; preds = %bb.bi
  %i.du = icmp eq i64 %6, 0
  br i1 %i.du, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dv = udiv i64 %4, %6                         ; 2 uses
  %.not567 = icmp eq i64 %4, 0
  br i1 %.not567, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk
  %i.dw = icmp ugt i64 %6, %4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br i1 %i.dw, label %bb.cr, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre = load i64, ptr %i.dy, align 8            ; 2 uses
  br label %.lr.ph.split

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #24
          to label %bb.bm unwind label %bb.cu

bb.bm:                                            ; preds = %bb.ct, %bb.cr, %bb.bl
  unreachable

._crit_edge:                                      ; preds = %bb.cs, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.dz = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 145
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implRNtNtB8_5shape5ShapefECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.eb, i1 noundef zeroext false)
          to label %bb.bn unwind label %.thread491

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.cs
  %.sroa.0316.0566 = phi i64 [ %i.gc, %bb.cs ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.ec = mul i64 %.sroa.0316.0566, %i.dv
  %i.ed = urem i64 %.sroa.0316.0566, %i.dv
  %i.ee = add i64 %i.ed, %i.ec
  %i.ef = mul i64 %i.ee, 9
  %i.eg = add i64 %i.ef, 4                        ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %.pre
  br i1 %i.eh, label %bb.cs, label %bb.ct

bb.bn:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ei = load i64, ptr %i.j, align 8, !range !10, !noundef !5 ; 2 uses
  %.not373 = icmp eq i64 %i.ei, -1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  br i1 %.not373, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.5323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5326.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5323.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.ei, ptr %0, align 8
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %.sroa.4325.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %.thread524 unwind label %.body.thread

.thread524:                                       ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.co

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.ek, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  invoke fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models6repvgg12fuse_conv_bn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f)
          to label %bb.bs unwind label %bb.br

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit420: ; preds = %bb.ck, %bb.cl, %bb.bv, %bb.br
  %.sroa.0196.5 = phi i8 [ 1, %bb.br ], [ 0, %bb.bv ], [ 1, %bb.cl ], [ 1, %bb.ck ] ; 2 uses
  %.sroa.0198.7 = phi i8 [ %.sroa.0198.8, %bb.br ], [ 1, %bb.bv ], [ 0, %bb.cl ], [ 0, %bb.ck ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.br ], [ %i.ev, %bb.bv ], [ %i.fp, %bb.cl ], [ %i.fp, %bb.ck ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25180)
  call void @llvm.experimental.noalias.scope.decl(metadata !25181)
  call void @llvm.experimental.noalias.scope.decl(metadata !25182)
  %i.el = load ptr, ptr %i.k, align 8, !alias.scope !25183, !nonnull !5, !noundef !5
  %i.em = atomicrmw add ptr %i.el, i64 -1 release, align 8, !noalias !25183
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.bq, label %.body

bb.bq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit420
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %.body unwind label %bb.cm

bb.br:                                            ; preds = %bb.by, %bb.bp
  %.sroa.0198.8 = phi i8 [ 0, %bb.by ], [ 1, %bb.bp ]
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit420

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ep = load i64, ptr %i.g, align 8, !range !10, !noundef !5 ; 2 uses
  %.not374 = icmp eq i64 %i.ep, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  br i1 %.not374, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.6334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6338.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6334.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.ep, ptr %0, align 8
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.er, ptr %.sroa.4336.0..sroa_idx, align 8
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.et, ptr %.sroa.5337.0..sroa_idx, align 8
  br label %bb.ci

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.et, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.eu = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.er)
end_hunk_0
begin_hunk_1_@_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit15mobileone_block:bb.a
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [160 x i8], align 8               ; 14 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 12 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 7 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [80 x i8], align 8                ; 7 uses
  %i.t = alloca [80 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 11 uses
  %i.v = alloca [80 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 8 uses
  %i.x = alloca [80 x i8], align 8                ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 11 uses
  %i.aa = alloca [56 x i8], align 8               ; 5 uses
  %i.ab = alloca [56 x i8], align 8               ; 11 uses
  %i.ac = alloca [160 x i8], align 8              ; 15 uses
  %i.ad = alloca [40 x i8], align 8               ; 4 uses
  %i.ae = alloca [80 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [80 x i8], align 8               ; 7 uses
  %i.ah = alloca [80 x i8], align 8               ; 7 uses
  %i.ai = alloca [80 x i8], align 8               ; 7 uses
  %i.aj = alloca [80 x i8], align 8               ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 9 uses
  %i.al = alloca [56 x i8], align 8               ; 5 uses
  %i.am = alloca [56 x i8], align 8               ; 11 uses
  %i.an = alloca [160 x i8], align 8              ; 16 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [80 x i8], align 8               ; 6 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [80 x i8], align 8               ; 7 uses
  %i.as = alloca [80 x i8], align 8               ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 16 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [80 x i8], align 8               ; 7 uses
  %i.aw = alloca [8 x i8], align 8                ; 16 uses
  %i.ax = icmp eq i64 %5, 0
  %. = select i1 %i.ax, i64 1, i64 %1, !prof !7   ; 5 uses
  %i.ay = lshr i64 %3, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.az = icmp eq i64 %., 0
  br i1 %i.az, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = udiv i64 %1, %.                         ; 2 uses
  store i64 %2, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %3, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %3, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 25
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor10zeros_implTjjjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.au, i8 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bg, i1 noundef zeroext false)
          to label %bb.e unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482.thread

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #24
          to label %bb.d unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit484: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482.thread, %bb.gc, %bb.gd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482
  %.pn416 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp643, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482.thread ], [ %.pn410.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482 ], [ %.pn410.pn.pn.pn.pn, %bb.gd ], [ %.pn410.pn.pn.pn.pn, %bb.gc ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %7) #26
          to label %bb.ge unwind label %bb.aq

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.bh = load i64, ptr %i.av, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.bh, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5221.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i64 %i.bh, ptr %0, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %.sroa.4223.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit480

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store ptr %i.bj, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bk = load ptr, ptr %i.be, align 8, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 25
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor10zeros_impljECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.as, i64 noundef %2, i8 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bl, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482: ; preds = %.thread566, %bb.gb, %.thread490, %bb.h
  %.sroa.0205.0 = phi i8 [ %.sroa.0205.1, %bb.h ], [ %.sroa.0205.2, %.thread490 ], [ %.sroa.0205.2488, %bb.gb ], [ %.sroa.0205.2488, %.thread566 ]
  %.pn410.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %.pn410.pn.pn.pn, %.thread490 ], [ %.pn410.pn.pn.pn489, %bb.gb ], [ %.pn410.pn.pn.pn489, %.thread566 ] ; 3 uses
  %i.bm = trunc nuw i8 %.sroa.0205.0 to i1
  br i1 %i.bm, label %bb.gc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit484

bb.h:                                             ; preds = %bb.fj, %bb.g
  %.sroa.0205.1 = phi i8 [ %.sroa.0205.14, %bb.fj ], [ 1, %bb.g ]
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482

bb.i:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.as, align 8, !range !10, !noundef !5 ; 2 uses
  %.not362 = icmp eq i64 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  br i1 %.not362, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5230.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.bo, ptr %0, align 8
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %.sroa.4232.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.fk

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store ptr %i.bq, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @353, i64 noundef 13)
          to label %bb.l unwind label %.thread

.thread490:                                       ; preds = %bb.dq, %bb.do, %bb.dn, %bb.dk, %bb.dy, %bb.fs, %.thread516, %bb.az, %bb.ax, %bb.aw, %bb.at, %.thread496
  %.sroa.0203.0 = phi i8 [ %.sroa.0203.2.ph, %.thread496 ], [ %.sroa.0203.5, %bb.az ], [ %.sroa.0203.5, %bb.ax ], [ %.sroa.0203.10, %bb.aw ], [ %.sroa.0203.10, %bb.at ], [ %.sroa.0203.25, %bb.dn ], [ %.sroa.0203.25, %bb.dk ], [ %.sroa.0203.28639, %bb.fs ], [ %.sroa.0203.14.ph, %.thread516 ], [ %.sroa.0203.38, %bb.dy ], [ %.sroa.0203.19, %bb.dq ], [ %.sroa.0203.19, %bb.do ]
  %.sroa.0205.2 = phi i8 [ %.sroa.0205.4.ph, %.thread496 ], [ %.sroa.0205.8, %bb.az ], [ %.sroa.0205.8, %bb.ax ], [ %.sroa.0205.13, %bb.aw ], [ %.sroa.0205.13, %bb.at ], [ %.sroa.0205.29, %bb.dn ], [ %.sroa.0205.29, %bb.dk ], [ %.sroa.0205.32640, %bb.fs ], [ %.sroa.0205.17.ph, %.thread516 ], [ %.sroa.0205.43, %bb.dy ], [ %.sroa.0205.22, %bb.dq ], [ %.sroa.0205.22, %bb.do ] ; 2 uses
  %.pn410.pn.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm, %.thread496 ], [ %.pn370, %bb.az ], [ %.pn370, %bb.ax ], [ %i.dr, %bb.aw ], [ %i.dr, %bb.at ], [ %i.hs, %bb.dn ], [ %i.hs, %bb.dk ], [ %.pn410641, %bb.fs ], [ %lpad.thr_comm514, %.thread516 ], [ %.pn407, %bb.dy ], [ %.pn390, %bb.dq ], [ %.pn390, %bb.do ] ; 2 uses
  %i.br = trunc nuw i8 %.sroa.0203.0 to i1
  br i1 %i.br, label %.thread566, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482

.thread:                                          ; preds = %bb.k, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.thread566

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10batch_norm10batch_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ar, i64 noundef %2, double noundef 1.000000e-05, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aq)
          to label %bb.m unwind label %.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 15)
          to label %bb.n unwind label %bb.ga

.thread496:                                       ; preds = %bb.bm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434, %bb.bj, %bb.bl, %bb.au
  %.sroa.0203.2.ph = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434 ], [ 1, %bb.bm ], [ %.sroa.0203.10, %bb.au ], [ 1, %bb.bl ], [ 1, %bb.bj ]
  %.sroa.0205.4.ph = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434 ], [ 1, %bb.bm ], [ %.sroa.0205.13, %bb.au ], [ 1, %bb.bl ], [ 1, %bb.bj ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread490

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ay, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %., ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 -1, ptr %.sroa.10.0..sroa_idx, align 8
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn4conv14conv2d_no_bias(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ap, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ao)
          to label %bb.o unwind label %bb.ga

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i64 80, i1 false)
  %i.bu = load i64, ptr %i.an, align 8, !range !10, !noundef !5
  %.not363 = icmp eq i64 %i.bu, -1                ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !range !10
  %.not364 = icmp eq i64 %i.bv, -1
  %or.cond = select i1 %.not363, i1 %.not364, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not363, label %bb.ba, label %bb.af

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  invoke fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit12fuse_conv_bn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.by, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.al)
          to label %bb.s unwind label %bb.r

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423: ; preds = %bb.ao, %bb.ap, %bb.v, %bb.r
  %.sroa.0203.3 = phi i8 [ 1, %bb.r ], [ 0, %bb.v ], [ 1, %bb.ap ], [ 1, %bb.ao ]
  %.sroa.0205.5 = phi i8 [ %.sroa.0205.6, %bb.r ], [ 1, %bb.v ], [ 0, %bb.ap ], [ 0, %bb.ao ]
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %i.cg, %bb.v ], [ %i.dk, %bb.ap ], [ %i.dk, %bb.ao ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.am) #26
          to label %.body420 unwind label %bb.aq

bb.r:                                             ; preds = %bb.y, %bb.q
  %.sroa.0205.6 = phi i8 [ 0, %bb.y ], [ 1, %bb.q ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423

bb.s:                                             ; preds = %bb.q
  %i.ca = load i64, ptr %i.aj, align 8, !range !10, !noundef !5 ; 2 uses
  %.not365 = icmp eq i64 %i.ca, -1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %.not365, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6245.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6241.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.ca, ptr %0, align 8
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %.sroa.4243.0..sroa_idx, align 8
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ce, ptr %.sroa.5244.0..sroa_idx, align 8
  br label %bb.ag

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.ce, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.cf = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ai, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cc)
          to label %bb.w unwind label %bb.ao

bb.v:                                             ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.ai, align 8, !range !10, !noundef !5 ; 2 uses
  %.not366 = icmp eq i64 %i.ch, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  br i1 %.not366, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5254.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5251.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  store i64 %i.ch, ptr %0, align 8
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %.sroa.4253.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26724)
  call void @llvm.experimental.noalias.scope.decl(metadata !26725)
  call void @llvm.experimental.noalias.scope.decl(metadata !26726)
  %i.ck = load ptr, ptr %i.ak, align 8, !alias.scope !26727, !nonnull !5, !noundef !5
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !26727
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.r

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  store ptr %i.cj, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.cn = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.co = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ah, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %bb.z
  %i.cp = load i64, ptr %i.ah, align 8, !range !10, !noundef !5 ; 2 uses
  %.not367 = icmp eq i64 %i.cp, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  br i1 %.not367, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5263.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5260.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 %i.cp, ptr %0, align 8
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %.sroa.4262.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store ptr %i.cr, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.am)
          to label %bb.ae unwind label %bb.ad

.body420:                                         ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423
  %.sroa.0203.5 = phi i8 [ %.sroa.0203.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423 ], [ %.sroa.0203.6, %bb.ad ], [ %.sroa.0203.10, %bb.ak ], [ %.sroa.0203.10, %bb.aj ], [ %.sroa.0203.10, %bb.ai ] ; 2 uses
  %.sroa.0205.8 = phi i8 [ %.sroa.0205.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423 ], [ %.sroa.0205.9, %bb.ad ], [ %.sroa.0205.13, %bb.ak ], [ %.sroa.0205.13, %bb.aj ], [ %.sroa.0205.13, %bb.ai ] ; 2 uses
  %.pn370 = phi { ptr, i32 } [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423 ], [ %i.cu, %bb.ad ], [ %i.da, %bb.ak ], [ %i.da, %bb.aj ], [ %i.da, %bb.ai ] ; 2 uses
  %i.cs = load i64, ptr %i.an, align 8, !range !10, !noundef !5
  %i.ct = icmp eq i64 %i.cs, -1
  br i1 %i.ct, label %bb.ax, label %bb.ay

bb.ad:                                            ; preds = %bb.am, %bb.ac
  %.sroa.0203.6 = phi i8 [ %.sroa.0203.10, %bb.am ], [ 1, %bb.ac ]
  %.sroa.0205.9 = phi i8 [ %.sroa.0205.13, %bb.am ], [ 1, %bb.ac ]
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body420

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.cv = load i64, ptr %i.an, align 8, !range !10, !noundef !5
  %.not368 = icmp eq i64 %i.cv, -1
  br i1 %.not368, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.p
  %.sroa.0194.0 = phi i8 [ 1, %bb.p ], [ 0, %bb.ae ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.an)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431 unwind label %bb.bi

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431: ; preds = %bb.bf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i426, %bb.bg, %bb.af, %bb.ae
  %.sroa.0194.1 = phi i8 [ %.sroa.0194.0, %bb.af ], [ 0, %bb.ae ], [ 1, %bb.bg ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i426 ], [ 1, %bb.bf ]
  %i.cw = load i64, ptr %i.bt, align 8, !range !10, !noundef !5
  %.not375 = icmp eq i64 %i.cw, -1
  br i1 %.not375, label %bb.bk, label %bb.bj

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.x, %bb.y, %bb.ab
  %.sroa.0203.9 = phi i8 [ 0, %bb.ab ], [ 1, %bb.y ], [ 1, %bb.x ]
  %.sroa.0205.12 = phi i8 [ 1, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit, %bb.t
  %.sroa.0203.10 = phi i8 [ 1, %bb.t ], [ %.sroa.0203.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit ] ; 8 uses
  %.sroa.0205.13 = phi i8 [ 1, %bb.t ], [ %.sroa.0205.12, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !26728)
  call void @llvm.experimental.noalias.scope.decl(metadata !26729)
  call void @llvm.experimental.noalias.scope.decl(metadata !26730)
  call void @llvm.experimental.noalias.scope.decl(metadata !26731)
  %i.cx = load ptr, ptr %i.by, align 8, !alias.scope !26732, !nonnull !5, !noundef !5
  %i.cy = atomicrmw add ptr %i.cx, i64 -1 release, align 8, !noalias !26732
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26733)
  %i.db = load ptr, ptr %i.am, align 8, !alias.scope !26734, !noundef !5 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.body420, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = atomicrmw add ptr %i.db, i64 -1 release, align 8, !noalias !26735
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ak, label %.body420

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.am) #25
          to label %.body420 unwind label %bb.an

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !26736)
  %i.df = load ptr, ptr %i.am, align 8, !alias.scope !26737, !noundef !5 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.dh = atomicrmw add ptr %i.df, i64 -1 release, align 8, !noalias !26738
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.am) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.ad

bb.an:                                            ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ao:                                            ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26739)
  call void @llvm.experimental.noalias.scope.decl(metadata !26740)
  call void @llvm.experimental.noalias.scope.decl(metadata !26741)
  %i.dl = load ptr, ptr %i.ak, align 8, !alias.scope !26742, !nonnull !5, !noundef !5
  %i.dm = atomicrmw add ptr %i.dl, i64 -1 release, align 8, !noalias !26742
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.gd, %bb.gb, %bb.fc, %bb.el, %bb.dh, %bb.cx, %bb.cw, %bb.cb, %bb.ap, %bb.ga, %bb.fz, %bb.fy, %bb.fw, %bb.fv, %bb.fu, %bb.fs, %bb.fr, %.thread546.thread581, %bb.fn, %bb.dq, %bb.dp, %bb.dn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450, %bb.az, %bb.ay, %bb.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit423, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit484
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.dp = load i64, ptr %i.an, align 8, !range !10, !noundef !5
  %.not372 = icmp eq i64 %i.dp, -1
  br i1 %.not372, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.an)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit
  %i.dq = load i64, ptr %i.bt, align 8, !range !10, !noundef !5
  %.not373 = icmp eq i64 %i.dq, -1
  br i1 %.not373, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load i64, ptr %i.bt, align 8, !range !10, !noundef !5
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %.thread490, label %bb.aw

bb.au:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %.thread496

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.au, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.av

bb.av:                                            ; preds = %bb.dm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit
  %.sroa.0203.11 = phi i8 [ %.sroa.0203.26, %bb.dm ], [ %.sroa.0203.10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit ]
  %.sroa.0205.14 = phi i8 [ %.sroa.0205.30, %bb.dm ], [ %.sroa.0205.13, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.du = trunc nuw i8 %.sroa.0203.11 to i1
  br i1 %i.du, label %bb.fi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit478

bb.aw:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bt) #26
          to label %.thread490 unwind label %bb.aq

bb.ax:                                            ; preds = %bb.ay, %.body420
  %i.dv = load i64, ptr %i.bt, align 8, !range !10, !noundef !5
  %i.dw = icmp eq i64 %i.dv, -1
  br i1 %i.dw, label %.thread490, label %bb.az

bb.ay:                                            ; preds = %.body420
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.an) #26
          to label %bb.ax unwind label %bb.aq

bb.az:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bt) #26
          to label %.thread490 unwind label %bb.aq

bb.ba:                                            ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26743)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26744)
  call void @llvm.experimental.noalias.scope.decl(metadata !26745)
  call void @llvm.experimental.noalias.scope.decl(metadata !26746)
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !26747, !nonnull !5, !noundef !5
  %i.ea = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !noalias !26747
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.bb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i426

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dy) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i426 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26748)
  %i.ed = load ptr, ptr %i.dx, align 8, !alias.scope !26749, !noundef !5 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.body429, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ef = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !26750
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.be, label %.body429

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dx) #25
          to label %.body429 unwind label %bb.bh

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i426: ; preds = %bb.bb, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !26751)
  %i.eh = load ptr, ptr %i.dx, align 8, !alias.scope !26752, !noundef !5 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i426
  %i.ej = atomicrmw add ptr %i.eh, i64 -1 release, align 8, !noalias !26753
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dx) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431 unwind label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.af
  %.sroa.0194.2 = phi i8 [ %.sroa.0194.0, %bb.af ], [ 1, %bb.bg ]
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = trunc nuw i8 %.sroa.0194.2 to i1
  br label %.body429

.body429:                                         ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bi
  %.sroa.0194.2.lpad-body = phi i1 [ %i.en, %bb.bi ], [ true, %bb.be ], [ true, %bb.bd ], [ true, %bb.bc ]
  %eh.lpad-body430 = phi { ptr, i32 } [ %i.em, %bb.bi ], [ %i.ec, %bb.be ], [ %i.ec, %bb.bd ], [ %i.ec, %bb.bc ] ; 3 uses
  %i.eo = load i64, ptr %i.bt, align 8, !range !10, !noundef !5
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %bb.fx, label %bb.fy

bb.bj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434 unwind label %.thread496

bb.bk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit431
  %i.eq = trunc nuw i8 %.sroa.0194.1 to i1
  br i1 %i.eq, label %bb.bl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434: ; preds = %bb.bj, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 13)
          to label %bb.bm unwind label %.thread496

bb.bl:                                            ; preds = %bb.bk
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.er)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434 unwind label %.thread496

bb.bm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit434
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10batch_norm10batch_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ag, i64 noundef %2, double noundef 1.000000e-05, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.af)
          to label %bb.bn unwind label %.thread496

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 15)
          to label %bb.bo unwind label %bb.fw

.thread516:                                       ; preds = %bb.fg, %bb.dw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464, %bb.dt, %bb.dv, %bb.dl
  %.sroa.0203.14.ph = phi i8 [ 1, %bb.dw ], [ %.sroa.0203.37, %bb.fg ], [ %.sroa.0203.25, %bb.dl ], [ 1, %bb.dv ], [ 1, %bb.dt ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464 ]
  %.sroa.0205.17.ph = phi i8 [ 1, %bb.dw ], [ %.sroa.0205.42, %bb.fg ], [ %.sroa.0205.29, %bb.dl ], [ 1, %bb.dv ], [ 1, %bb.dt ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464 ]
  %lpad.thr_comm514 = landingpad { ptr, i32 }
          cleanup
  br label %.thread490

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ay, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %.sroa.7.0..sroa_idx8, align 8
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.8.0..sroa_idx12, align 8
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %., ptr %.sroa.9.0..sroa_idx16, align 8
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 -1, ptr %.sroa.10.0..sroa_idx20, align 8
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn4conv14conv2d_no_bias(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ae, i64 noundef %1, i64 noundef %2, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ad)
          to label %bb.bp unwind label %bb.fw

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.es, ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i64 80, i1 false)
  %i.et = load i64, ptr %i.ac, align 8, !range !10, !noundef !5
  %.not376 = icmp eq i64 %i.et, -1                ; 2 uses
  %i.eu = load i64, ptr %i.es, align 8, !range !10
  %.not377 = icmp eq i64 %i.eu, -1
  %or.cond418 = select i1 %.not376, i1 %.not377, i1 false
  br i1 %or.cond418, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not376, label %bb.dr, label %bb.cq

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.ev, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %i.ew, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  invoke fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit12fuse_conv_bn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ex, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.aa)
          to label %bb.bt unwind label %bb.bs

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458, %bb.cx, %bb.bs
  %.sroa.0203.15 = phi i8 [ %.sroa.0203.16, %bb.bs ], [ %.sroa.0203.24, %bb.cx ], [ %.sroa.0203.24, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458 ]
  %.sroa.0205.18 = phi i8 [ %.sroa.0205.19, %bb.bs ], [ %.sroa.0205.28, %bb.cx ], [ %.sroa.0205.28, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458 ]
  %.pn388 = phi { ptr, i32 } [ %i.ey, %bb.bs ], [ %.pn386, %bb.cx ], [ %.pn386, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ab) #26
          to label %.body454 unwind label %bb.aq

bb.bs:                                            ; preds = %bb.cs, %bb.cn, %bb.br
  %.sroa.0203.16 = phi i8 [ %.sroa.0203.23, %bb.cs ], [ 1, %bb.cn ], [ 1, %bb.br ]
  %.sroa.0205.19 = phi i8 [ %.sroa.0205.26, %bb.cs ], [ 1, %bb.cn ], [ 1, %bb.br ]
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450

bb.bt:                                            ; preds = %bb.br
  %i.ez = load i64, ptr %i.x, align 8, !range !10, !noundef !5 ; 2 uses
  %.not378 = icmp eq i64 %i.ez, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  br i1 %.not378, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6275.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6271.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.ez, ptr %0, align 8
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fb, ptr %.sroa.4273.0..sroa_idx, align 8
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fd, ptr %.sroa.5274.0..sroa_idx, align 8
  br label %bb.cz

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.fb, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.fd, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor14pad_with_zerosNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, i64 noundef 0, i64 undef, i64 noundef 1, i64 noundef 1)
          to label %bb.bx unwind label %bb.bw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448: ; preds = %bb.cj
  %lpad.thr_comm531 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458

bb.bw:                                            ; preds = %bb.ce, %bb.bv
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.thread522

bb.bx:                                            ; preds = %bb.bv
  %i.ff = load i64, ptr %i.t, align 8, !range !10, !noundef !5 ; 2 uses
  %.not379 = icmp eq i64 %i.ff, -1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  br i1 %.not379, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5281.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ff, ptr %0, align 8
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fh, ptr %.sroa.4283.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit438

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store ptr %i.fh, ptr %i.u, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor14pad_with_zerosNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, i64 noundef 1, i64 undef, i64 noundef 1, i64 noundef 1)
          to label %bb.cc unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26754)
  call void @llvm.experimental.noalias.scope.decl(metadata !26755)
  call void @llvm.experimental.noalias.scope.decl(metadata !26756)
  %i.fj = load ptr, ptr %i.u, align 8, !alias.scope !26757, !nonnull !5, !noundef !5
  %i.fk = atomicrmw add ptr %i.fj, i64 -1 release, align 8, !noalias !26757
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.cb, label %.thread522

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #25
          to label %.thread522 unwind label %bb.aq

bb.cc:                                            ; preds = %bb.bz
  %i.fm = load i64, ptr %i.v, align 8, !range !10, !noundef !5 ; 2 uses
  %.not380 = icmp eq i64 %i.fm, -1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  br i1 %.not380, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5293.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5290.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.fm, ptr %0, align 8
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fo, ptr %.sroa.4292.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26758)
  call void @llvm.experimental.noalias.scope.decl(metadata !26759)
  call void @llvm.experimental.noalias.scope.decl(metadata !26760)
  %i.fp = load ptr, ptr %i.u, align 8, !alias.scope !26761, !nonnull !5, !noundef !5
  %i.fq = atomicrmw add ptr %i.fp, i64 -1 release, align 8, !noalias !26761
  %i.fr = icmp eq i64 %i.fq, 1
  br i1 %i.fr, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit438

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit438 unwind label %bb.bw

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %i.fo, ptr %i.w, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26762)
  call void @llvm.experimental.noalias.scope.decl(metadata !26763)
  call void @llvm.experimental.noalias.scope.decl(metadata !26764)
  %i.fs = load ptr, ptr %i.u, align 8, !alias.scope !26765, !nonnull !5, !noundef !5
  %i.ft = atomicrmw add ptr %i.fs, i64 -1 release, align 8, !noalias !26765
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.cg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit440

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit440 unwind label %bb.cv

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit440: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.fv = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.fw = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.s, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fw)
          to label %bb.ch unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448.thread573

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448.thread573: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit440
  %lpad.thr_comm531576 = landingpad { ptr, i32 }
          cleanup
  br label %.thread522

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit440
  %i.fx = load i64, ptr %i.s, align 8, !range !10, !noundef !5 ; 2 uses
  %.not381 = icmp eq i64 %i.fx, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  br i1 %.not381, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.sroa.5299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5302.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5299.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.fx, ptr %0, align 8
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %.sroa.4301.0..sroa_idx, align 8
  br label %bb.ct

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.fz, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ga = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.gb = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gb)
          to label %bb.ck unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448

bb.ck:                                            ; preds = %bb.cj
  %i.gc = load i64, ptr %i.r, align 8, !range !10, !noundef !5 ; 2 uses
  %.not382 = icmp eq i64 %i.gc, -1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  br i1 %.not382, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.5308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5311.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5308.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.gc, ptr %0, align 8
  %.sroa.4310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ge, ptr %.sroa.4310.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit446

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.ge, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !26766)
  call void @llvm.experimental.noalias.scope.decl(metadata !26767)
  call void @llvm.experimental.noalias.scope.decl(metadata !26768)
  %i.gf = load ptr, ptr %i.z, align 8, !alias.scope !26769, !nonnull !5, !noundef !5
  %i.gg = atomicrmw add ptr %i.gf, i64 -1 release, align 8, !noalias !26769
  %i.gh = icmp eq i64 %i.gg, 1
  br i1 %i.gh, label %bb.cn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit442

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit442 unwind label %bb.bs

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit442: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ab)
          to label %bb.cp unwind label %bb.co

.body454:                                         ; preds = %bb.db, %bb.dc, %bb.dd, %bb.co, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450
  %.sroa.0203.19 = phi i8 [ %.sroa.0203.15, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450 ], [ %.sroa.0203.20, %bb.co ], [ %.sroa.0203.25, %bb.dd ], [ %.sroa.0203.25, %bb.dc ], [ %.sroa.0203.25, %bb.db ] ; 2 uses
  %.sroa.0205.22 = phi i8 [ %.sroa.0205.18, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450 ], [ %.sroa.0205.23, %bb.co ], [ %.sroa.0205.29, %bb.dd ], [ %.sroa.0205.29, %bb.dc ], [ %.sroa.0205.29, %bb.db ] ; 2 uses
  %.pn390 = phi { ptr, i32 } [ %.pn388, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450 ], [ %i.gk, %bb.co ], [ %i.hd, %bb.dd ], [ %i.hd, %bb.dc ], [ %i.hd, %bb.db ] ; 2 uses
  %i.gi = load i64, ptr %i.ac, align 8, !range !10, !noundef !5
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %bb.do, label %bb.dp

bb.co:                                            ; preds = %bb.df, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit442
  %.sroa.0203.20 = phi i8 [ %.sroa.0203.25, %bb.df ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit442 ]
  %.sroa.0205.23 = phi i8 [ %.sroa.0205.29, %bb.df ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit442 ]
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body454

bb.cp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.gl = load i64, ptr %i.ac, align 8, !range !10, !noundef !5
  %.not383 = icmp eq i64 %i.gl, -1
  br i1 %.not383, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.bq
  %.sroa.0196.0 = phi i8 [ 1, %bb.bq ], [ 0, %bb.cp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ac)
          to label %bb.cr unwind label %bb.ds

bb.cr:                                            ; preds = %bb.dr, %bb.cq, %bb.cp
  %.sroa.0196.1 = phi i8 [ %.sroa.0196.0, %bb.cq ], [ 1, %bb.dr ], [ 0, %bb.cp ]
  %i.gm = load i64, ptr %i.es, align 8, !range !10, !noundef !5
  %.not395.a = icmp eq i64 %i.gm, -1
  br i1 %.not395.a, label %bb.du, label %bb.dt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit446: ; preds = %bb.ct, %bb.cu, %bb.cl
  %.sroa.0203.23 = phi i8 [ 0, %bb.cl ], [ 1, %bb.cu ], [ 1, %bb.ct ] ; 2 uses
  %.sroa.0205.26 = phi i8 [ 1, %bb.cl ], [ %.sroa.0205.27, %bb.cu ], [ %.sroa.0205.27, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !26770)
  call void @llvm.experimental.noalias.scope.decl(metadata !26771)
  call void @llvm.experimental.noalias.scope.decl(metadata !26772)
  %i.gn = load ptr, ptr %i.z, align 8, !alias.scope !26773, !nonnull !5, !noundef !5
  %i.go = atomicrmw add ptr %i.gn, i64 -1 release, align 8, !noalias !26773
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit444

bb.cs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit446
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit444 unwind label %bb.bs

bb.ct:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit438, %bb.ci
  %.sroa.0205.27 = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit438 ], [ 0, %bb.ci ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !26774)
  call void @llvm.experimental.noalias.scope.decl(metadata !26775)
  call void @llvm.experimental.noalias.scope.decl(metadata !26776)
  %i.gq = load ptr, ptr %i.y, align 8, !alias.scope !26777, !nonnull !5, !noundef !5
  %i.gr = atomicrmw add ptr %i.gq, i64 -1 release, align 8, !noalias !26777
  %i.gs = icmp eq i64 %i.gr, 1
  br i1 %i.gs, label %bb.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit446

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit446 unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cg
  %lpad.thr_comm.split-lp532 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26778)
  call void @llvm.experimental.noalias.scope.decl(metadata !26779)
  call void @llvm.experimental.noalias.scope.decl(metadata !26780)
  %i.gt = load ptr, ptr %i.w, align 8, !alias.scope !26781, !nonnull !5, !noundef !5
  %i.gu = atomicrmw add ptr %i.gt, i64 -1 release, align 8, !noalias !26781
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.cw, label %.thread522

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #25
          to label %.thread522 unwind label %bb.aq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit438: ; preds = %bb.cd, %bb.ce, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ct

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448, %.thread522, %bb.dh, %bb.cy
  %.sroa.0203.24 = phi i8 [ 1, %bb.cy ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448 ], [ 1, %bb.dh ], [ 1, %.thread522 ] ; 2 uses
  %.sroa.0205.28 = phi i8 [ %.sroa.0205.27, %bb.cy ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448 ], [ %.sroa.0205.20527, %bb.dh ], [ %.sroa.0205.20527, %.thread522 ] ; 2 uses
  %.pn386 = phi { ptr, i32 } [ %i.gz, %bb.cy ], [ %lpad.thr_comm531, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448 ], [ %.pn384528, %bb.dh ], [ %.pn384528, %.thread522 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26782)
  call void @llvm.experimental.noalias.scope.decl(metadata !26783)
  call void @llvm.experimental.noalias.scope.decl(metadata !26784)
  %i.gw = load ptr, ptr %i.z, align 8, !alias.scope !26785, !nonnull !5, !noundef !5
  %i.gx = atomicrmw add ptr %i.gw, i64 -1 release, align 8, !noalias !26785
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.cx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450

bb.cx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit450 unwind label %bb.aq

bb.cy:                                            ; preds = %bb.cu
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit444: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit446, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit444, %bb.bu
  %.sroa.0203.25 = phi i8 [ 1, %bb.bu ], [ %.sroa.0203.23, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit444 ] ; 8 uses
  %.sroa.0205.29 = phi i8 [ 1, %bb.bu ], [ %.sroa.0205.26, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit444 ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !26786)
  call void @llvm.experimental.noalias.scope.decl(metadata !26787)
  call void @llvm.experimental.noalias.scope.decl(metadata !26788)
  call void @llvm.experimental.noalias.scope.decl(metadata !26789)
  %i.ha = load ptr, ptr %i.ex, align 8, !alias.scope !26790, !nonnull !5, !noundef !5
  %i.hb = atomicrmw add ptr %i.ha, i64 -1 release, align 8, !noalias !26790
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.da, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i451

bb.da:                                            ; preds = %bb.cz
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ex) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i451 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26791)
  %i.he = load ptr, ptr %i.ab, align 8, !alias.scope !26792, !noundef !5 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %.body454, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.hg = atomicrmw add ptr %i.he, i64 -1 release, align 8, !noalias !26793
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.dd, label %.body454

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ab) #25
          to label %.body454 unwind label %bb.dg

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i451: ; preds = %bb.da, %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !26794)
  %i.hi = load ptr, ptr %i.ab, align 8, !alias.scope !26795, !noundef !5 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit456, label %bb.de

bb.de:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i451
  %i.hk = atomicrmw add ptr %i.hi, i64 -1 release, align 8, !noalias !26796
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.df, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit456

bb.df:                                            ; preds = %bb.de
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ab) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit456 unwind label %bb.co

bb.dg:                                            ; preds = %bb.dd
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread522:                                       ; preds = %bb.cv, %bb.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448.thread573, %bb.ca, %bb.cb, %bb.bw
  %.pn384528 = phi { ptr, i32 } [ %lpad.thr_comm531576, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448.thread573 ], [ %i.fe, %bb.bw ], [ %i.fi, %bb.cb ], [ %i.fi, %bb.ca ], [ %lpad.thr_comm.split-lp532, %bb.cw ], [ %lpad.thr_comm.split-lp532, %bb.cv ] ; 2 uses
  %.sroa.0205.20527 = phi i8 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit448.thread573 ], [ 1, %bb.bw ], [ 1, %bb.cb ], [ 1, %bb.ca ], [ 1, %bb.cw ], [ 1, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26797)
  call void @llvm.experimental.noalias.scope.decl(metadata !26798)
  call void @llvm.experimental.noalias.scope.decl(metadata !26799)
  %i.hn = load ptr, ptr %i.y, align 8, !alias.scope !26800, !nonnull !5, !noundef !5
  %i.ho = atomicrmw add ptr %i.hn, i64 -1 release, align 8, !noalias !26800
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458

bb.dh:                                            ; preds = %.thread522
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit458 unwind label %bb.aq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit456: ; preds = %bb.de, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i451, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.hq = load i64, ptr %i.ac, align 8, !range !10, !noundef !5
  %.not392 = icmp eq i64 %i.hq, -1
  br i1 %.not392, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit456
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ac)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit456
  %i.hr = load i64, ptr %i.es, align 8, !range !10, !noundef !5
  %.not393 = icmp eq i64 %i.hr, -1
  br i1 %.not393, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit461, label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load i64, ptr %i.es, align 8, !range !10, !noundef !5
  %i.hu = icmp eq i64 %i.ht, -1
  br i1 %i.hu, label %.thread490, label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.es)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit461 unwind label %.thread516

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit461: ; preds = %bb.dl, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.fh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit461
  %.sroa.0203.26 = phi i8 [ %.sroa.0203.37, %bb.fh ], [ %.sroa.0203.25, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit461 ]
  %.sroa.0205.30 = phi i8 [ %.sroa.0205.42, %bb.fh ], [ %.sroa.0205.29, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit461 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.av

bb.dn:                                            ; preds = %bb.dk
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.es) #26
          to label %.thread490 unwind label %bb.aq

bb.do:                                            ; preds = %bb.dp, %.body454
  %i.hv = load i64, ptr %i.es, align 8, !range !10, !noundef !5
  %i.hw = icmp eq i64 %i.hv, -1
  br i1 %i.hw, label %.thread490, label %bb.dq

bb.dp:                                            ; preds = %.body454
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ac) #26
          to label %bb.do unwind label %bb.aq

bb.dq:                                            ; preds = %bb.do
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.es) #26
          to label %.thread490 unwind label %bb.aq

bb.dr:                                            ; preds = %bb.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.hx)
          to label %bb.cr unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.cq
  %.sroa.0196.2 = phi i8 [ %.sroa.0196.0, %bb.cq ], [ 1, %bb.dr ]
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.hz = load i64, ptr %i.es, align 8, !range !10, !noundef !5
  %i.ia = icmp eq i64 %i.hz, -1
  br i1 %i.ia, label %bb.ft, label %bb.fu

bb.dt:                                            ; preds = %bb.cr
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.es)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464 unwind label %.thread516

bb.du:                                            ; preds = %bb.cr
  %i.ib = trunc nuw i8 %.sroa.0196.1 to i1
  br i1 %i.ib, label %bb.dv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464: ; preds = %bb.dt, %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 2)
          to label %bb.dw unwind label %.thread516

bb.dv:                                            ; preds = %bb.du
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ic)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464 unwind label %.thread516

bb.dw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEECs1dZk1kIfPhr_19candle_transformers.exit464
  %i.id = lshr i64 %2, 4
  invoke fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit22squeeze_and_excitation(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.q, i64 noundef %2, i64 noundef %i.id, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.p)
          to label %bb.dx unwind label %.thread516

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 8)
          to label %bb.dz unwind label %.split.thread

bb.dy:                                            ; preds = %bb.fr, %.body
  br i1 %.sroa.0208.2, label %bb.fs, label %.thread490

.split.thread:                                    ; preds = %bb.ff, %bb.dz, %bb.dx
  %.sroa.0203.29.ph = phi i8 [ 1, %bb.dx ], [ 1, %bb.dz ], [ %.sroa.0203.37, %bb.ff ]
  %.sroa.0205.33.ph = phi i8 [ 1, %bb.dx ], [ 1, %bb.dz ], [ %.sroa.0205.42, %bb.ff ]
  %lpad.thr_comm642 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit482.thread: ; preds = %bb.b, %bb.c, %bb.fl, %bb.fp
  %lpad.thr_comm.split-lp643 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit484

bb.dz:                                            ; preds = %bb.dx
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10batch_norm10batch_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.o, i64 noundef %2, double noundef 1.000000e-05, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.ea unwind label %.split.thread

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ie = load i64, ptr %i.o, align 8, !range !10, !noundef !5
  %.not396 = icmp eq i64 %i.ie, -1
  br i1 %.not396, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit472, %bb.ea
  %i.if = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.ig = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ih, ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 80, i1 false)
  %i.ii = zext i1 %6 to i8
  store i64 1, ptr %i.c, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ij, align 8
  %.sroa.4186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.ig, ptr %.sroa.4186.0..sroa_idx, align 8
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.if, ptr %.sroa.5187.0..sroa_idx, align 8
  %.sroa.6188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %i.ay, ptr %.sroa.6188.0..sroa_idx, align 8
  %.sroa.7189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i64 %4, ptr %.sroa.7189.0..sroa_idx, align 8
  %.sroa.8190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 1, ptr %.sroa.8190.0..sroa_idx, align 8
  %.sroa.9191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 %., ptr %.sroa.9191.0..sroa_idx, align 8
  %.sroa.10192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 -1, ptr %.sroa.10192.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 %i.ii, ptr %.sroa.12.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !26801
  %i.ik = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 369) 160, i64 noundef 8) #28, !noalias !26801 ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.ec, label %bb.fo, !prof !7

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #24
          to label %.noexc465 unwind label %bb.ed

.noexc465:                                        ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.ec
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit15mobileone_block0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ih)
          to label %.body unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ef:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.io = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.io, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ip = invoke noundef i64 @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %bb.eg unwind label %.thread538

.thread546.thread589:                             ; preds = %bb.ey, %bb.fa
  %.sroa.0203.32.ph.ph = phi i8 [ %.sroa.0203.36, %bb.fa ], [ 1, %bb.ey ]
  %.sroa.0205.36.ph.ph = phi i8 [ %.sroa.0205.41, %bb.fa ], [ 1, %bb.ey ]
  %lpad.thr_comm587 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread538:                                       ; preds = %bb.eg, %._crit_edge, %bb.ef
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.thread546.thread581

bb.eg:                                            ; preds = %bb.ef
  invoke fastcc void @_RINvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ip)
          to label %.preheader unwind label %.thread538

.preheader:                                       ; preds = %bb.eg
  %.not602 = icmp eq i64 %1, 0
  br i1 %.not602, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ir = icmp samesign ugt i64 %3, 1
  %i.is = add i64 %i.ba, 1
  %i.it = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.iv = mul nuw nsw i64 %3, %3
  %.pre612 = load i64, ptr %i.it, align 8         ; 3 uses
  br i1 %i.ir, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.eh
  %.sroa.0312.0600.us = phi i64 [ %i.iz, %bb.eh ], [ 0, %.lr.ph ] ; 2 uses
  %i.iw = mul i64 %i.iv, %.sroa.0312.0600.us
  %i.ix = add i64 %i.iw, 4                        ; 3 uses
  %i.iy = icmp ult i64 %i.ix, %.pre612
  br i1 %i.iy, label %bb.eh, label %.split.us.invoke

bb.eh:                                            ; preds = %.lr.ph.split.us
  %i.iz = add nuw i64 %.sroa.0312.0600.us, 1      ; 2 uses
  %i.ja = load ptr, ptr %i.iu, align 8, !nonnull !5, !noundef !5
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ix
  store float 1.000000e+00, ptr %i.jb, align 4
  %exitcond611.not = icmp eq i64 %i.iz, %1
  br i1 %exitcond611.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.fm, %bb.eh, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.jc = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 145
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implRNtNtB8_5shape5ShapefECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.je, i1 noundef zeroext false)
          to label %bb.ei unwind label %.thread538

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.fm
  %.sroa.0312.0600 = phi i64 [ %i.lb, %bb.fm ], [ 0, %.lr.ph ] ; 2 uses
  %i.jf = mul i64 %.sroa.0312.0600, %i.is         ; 3 uses
  %i.jg = icmp ult i64 %i.jf, %.pre612
  br i1 %i.jg, label %bb.fm, label %.split.us.invoke

bb.ei:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.jh = load i64, ptr %i.j, align 8, !range !10, !noundef !5 ; 2 uses
  %.not397 = icmp eq i64 %i.jh, -1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  br i1 %.not397, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5322.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5319.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.jh, ptr %0, align 8
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jj, ptr %.sroa.4321.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m)
          to label %bb.fd unwind label %bb.fe

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.jj, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  invoke fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit12fuse_conv_bn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f)
          to label %bb.en unwind label %bb.em

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit476: ; preds = %bb.fb, %bb.fc, %bb.eq, %bb.em
  %.sroa.0203.33 = phi i8 [ 1, %bb.em ], [ 0, %bb.eq ], [ 1, %bb.fc ], [ 1, %bb.fb ] ; 2 uses
  %.sroa.0205.37 = phi i8 [ %.sroa.0205.38, %bb.em ], [ 1, %bb.eq ], [ 0, %bb.fc ], [ 0, %bb.fb ] ; 2 uses
  %.pn401 = phi { ptr, i32 } [ %i.jn, %bb.em ], [ %i.ju, %bb.eq ], [ %i.km, %bb.fc ], [ %i.km, %bb.fb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26802)
  call void @llvm.experimental.noalias.scope.decl(metadata !26803)
  call void @llvm.experimental.noalias.scope.decl(metadata !26804)
  %i.jk = load ptr, ptr %i.k, align 8, !alias.scope !26805, !nonnull !5, !noundef !5
  %i.jl = atomicrmw add ptr %i.jk, i64 -1 release, align 8, !noalias !26805
  %i.jm = icmp eq i64 %i.jl, 1
end_hunk_1
