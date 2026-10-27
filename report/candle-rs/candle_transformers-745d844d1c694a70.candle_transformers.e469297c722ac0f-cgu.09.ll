Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.09?download=true
inline.NumInlined: 3626
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit13fastvit_stage0B7_:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.p, %bb.e
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !9408
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.c, align 8, !range !10, !noundef !5 ; 2 uses
  %.not56 = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 5 uses
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.533.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !9409)
  call void @llvm.experimental.noalias.scope.decl(metadata !9410)
  call void @llvm.experimental.noalias.scope.decl(metadata !9411)
  %i.t = load ptr, ptr %i.d, align 8, !alias.scope !9412, !nonnull !5, !noundef !5
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !9412
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit62

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit62 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.d, align 8
  br label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit62: ; preds = %bb.j, %bb.k
  store ptr %i.s, ptr %i.d, align 8
  br label %bb.d

bb.m:                                             ; preds = %bb.x, %bb.r, %bb.i
  %.sink = phi i64 [ %i.at, %bb.x ], [ %i.aj, %bb.r ], [ %i.q, %bb.i ]
  %.sroa.450.0.copyload.sink = phi ptr [ %i.au, %bb.x ], [ %i.al, %bb.r ], [ %i.s, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.450.0.copyload.sink, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9413)
  call void @llvm.experimental.noalias.scope.decl(metadata !9414)
  call void @llvm.experimental.noalias.scope.decl(metadata !9415)
  %i.x = load ptr, ptr %i.d, align 8, !alias.scope !9416, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !9416
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit63

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit63

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit65, %bb.d
  %i.aa = phi ptr [ %i.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit65 ], [ %i.j, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ae, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.v

bb.p:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn4funcNtB4_4FuncNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.aj = load i64, ptr %i.b, align 8, !range !10, !noundef !5 ; 2 uses
  %.not58 = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 5 uses
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.542.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !9417)
  call void @llvm.experimental.noalias.scope.decl(metadata !9418)
  call void @llvm.experimental.noalias.scope.decl(metadata !9419)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !9420, !nonnull !5, !noundef !5
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !9420
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit65

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit65 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr %i.al, ptr %i.d, align 8
  br label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit65: ; preds = %bb.s, %bb.t
  store ptr %i.al, ptr %i.d, align 8
  br label %bb.o

bb.v:                                             ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit67
  %.sroa.016.070 = phi ptr [ %i.ac, %.lr.ph ], [ %i.aq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit67 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.016.070, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn4funcNtB4_4FuncNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.016.070, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit67, %bb.o
  %i.ar = phi ptr [ %i.aa, %bb.o ], [ %i.au, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit67 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit63

bb.w:                                             ; preds = %bb.v
  %i.at = load i64, ptr %i.a, align 8, !range !10, !noundef !5 ; 2 uses
  %.not59 = icmp eq i64 %i.at, -1
  %i.au = load ptr, ptr %i.ah, align 8            ; 5 uses
  br i1 %.not59, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.551.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !9421)
  call void @llvm.experimental.noalias.scope.decl(metadata !9422)
  call void @llvm.experimental.noalias.scope.decl(metadata !9423)
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !9424, !nonnull !5, !noundef !5
  %i.aw = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !9424
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit67

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit67 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %i.d, align 8
  br label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit67: ; preds = %bb.y, %bb.z
  store ptr %i.au, ptr %i.d, align 8
  %i.az = icmp eq ptr %i.aq, %i.af
  br i1 %i.az, label %._crit_edge, label %bb.v

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit63: ; preds = %bb.n, %bb.m, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit14repmixer_block0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 10 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 15 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn4funcNtB4_4FuncNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.j = load i64, ptr %i.h, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.556.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.553.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.j, ptr %0, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.455.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn4funcNtB4_4FuncNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.w, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.f, align 8, !range !10, !noundef !5 ; 2 uses
  %.not94 = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %.not94, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.562.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.o, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.464.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit110

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.q, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.t, align 8
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjujjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.h unwind label %.thread125

.thread125:                                       ; preds = %bb.p, %bb.t, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread120

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load i64, ptr %i.c, align 8, !range !10, !noundef !5 ; 2 uses
  %.not95 = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  br i1 %.not95, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.574.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.571.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.u, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.473.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.w, ptr %i.d, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor13broadcast_mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.s, %bb.m
  %i.x = phi ptr [ %.pre, %bb.s ], [ %i.w, %bb.m ]
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.s ], [ %i.aa, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9473)
  call void @llvm.experimental.noalias.scope.decl(metadata !9474)
  call void @llvm.experimental.noalias.scope.decl(metadata !9475)
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !9476
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.l, label %.thread120

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %.thread120 unwind label %bb.x

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.e, align 8, !range !10, !noundef !5 ; 2 uses
  %.not96 = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  br i1 %.not96, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.583.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.580.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.ab, ptr %0, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ae = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !9477
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104 unwind label %.thread125

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !9478)
  call void @llvm.experimental.noalias.scope.decl(metadata !9479)
  call void @llvm.experimental.noalias.scope.decl(metadata !9480)
  %i.ag = load ptr, ptr %i.g, align 8, !alias.scope !9481, !nonnull !5, !noundef !5
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !9481
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit106

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit106 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !9476
  br label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit106: ; preds = %bb.q, %bb.r
  store ptr %i.ad, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9482)
  call void @llvm.experimental.noalias.scope.decl(metadata !9483)
  call void @llvm.experimental.noalias.scope.decl(metadata !9484)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !9485, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !9485
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit106
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108 unwind label %.thread125

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit106, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.ao = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  call void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao)
  %i.ap = load i64, ptr %i.a, align 8, !range !10, !noundef !5 ; 2 uses
  %.not98 = icmp eq i64 %i.ap, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  br i1 %.not98, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.592.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.589.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ap, ptr %0, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111: ; preds = %bb.b, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit110, %bb.y, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104: ; preds = %bb.o, %bb.p, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !9486)
  call void @llvm.experimental.noalias.scope.decl(metadata !9487)
  call void @llvm.experimental.noalias.scope.decl(metadata !9488)
  %i.at = load ptr, ptr %i.g, align 8, !alias.scope !9489, !nonnull !5, !noundef !5
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !9489
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit110

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit110 unwind label %bb.d

bb.x:                                             ; preds = %bb.ab, %bb.z, %bb.l
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit110: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104, %bb.w, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !9490)
  call void @llvm.experimental.noalias.scope.decl(metadata !9491)
  call void @llvm.experimental.noalias.scope.decl(metadata !9492)
  %i.ax = load ptr, ptr %i.i, align 8, !alias.scope !9493, !nonnull !5, !noundef !5
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !9493
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit110
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit111

.thread120:                                       ; preds = %bb.l, %bb.k, %.thread125
  %.pn99123 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread125 ], [ %.pn, %bb.k ], [ %.pn, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9494)
  call void @llvm.experimental.noalias.scope.decl(metadata !9495)
  call void @llvm.experimental.noalias.scope.decl(metadata !9496)
  %i.ba = load ptr, ptr %i.g, align 8, !alias.scope !9497, !nonnull !5, !noundef !5
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !9497
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread120
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #25
          to label %bb.aa unwind label %bb.x

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn101.ph

bb.aa:                                            ; preds = %bb.d, %bb.z, %.thread120
  %.pn101.ph = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn99123, %bb.z ], [ %.pn99123, %.thread120 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9498)
  call void @llvm.experimental.noalias.scope.decl(metadata !9499)
  call void @llvm.experimental.noalias.scope.decl(metadata !9500)
  %i.bd = load ptr, ptr %i.i, align 8, !alias.scope !9501, !nonnull !5, !noundef !5
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !9501
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit115 unwind label %bb.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7fastvit15attention_block0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 13 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 13 uses
  %i.f = alloca [80 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 11 uses
  %i.h = alloca [80 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 13 uses
  %i.l = alloca [80 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 13 uses
  %i.n = alloca [80 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 13 uses
  %i.p = alloca [80 x i8], align 8                ; 10 uses
  %i.q = alloca [8 x i8], align 8                 ; 11 uses
  %i.r = alloca [80 x i8], align 8                ; 11 uses
  %i.s = alloca [8 x i8], align 8                 ; 12 uses
  %i.t = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.u, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXs1_NtCs3NyA1pFSltE_9candle_nn10batch_normNtB5_9BatchNormNtCsltEA4u8Pgfu_11candle_core7ModuleT9forward_t(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218, %bb.an, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200, %bb.i, %bb.e
  %.pn195 = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %.pn193, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200 ], [ %.pn193, %bb.i ], [ %.pn187, %bb.an ], [ %.pn187, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9700)
  call void @llvm.experimental.noalias.scope.decl(metadata !9701)
  call void @llvm.experimental.noalias.scope.decl(metadata !9702)
  %i.y = load ptr, ptr %i.t, align 8, !alias.scope !9703, !nonnull !5, !noundef !5
  %i.z = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !9703
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.bs

bb.e:                                             ; preds = %bb.by, %bb.bv, %bb.br, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198

bb.f:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.l, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ac, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.594.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.591.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ac, ptr %0, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %.sroa.493.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit258

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store ptr %i.ae, ptr %i.m, align 8
  invoke void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn4funcNtB4_4FuncNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.k unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202, %bb.n, %bb.j
  %.pn193 = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %.pn191, %bb.n ], [ %.pn191, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9704)
  call void @llvm.experimental.noalias.scope.decl(metadata !9705)
  call void @llvm.experimental.noalias.scope.decl(metadata !9706)
  %i.af = load ptr, ptr %i.m, align 8, !alias.scope !9707, !nonnull !5, !noundef !5
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !9707
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198 unwind label %bb.bs

bb.j:                                             ; preds = %bb.bx, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200

bb.k:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %i.n, align 8, !range !10, !noundef !5 ; 2 uses
  %.not168 = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %.not168, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5103.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5100.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.aj, ptr %0, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
