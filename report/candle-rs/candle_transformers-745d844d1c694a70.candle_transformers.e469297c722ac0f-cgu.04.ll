Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.04?download=true
inline.NumInlined: 4677
inline.NumDeleted: 720
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models12codegeex4_9bNtB5_5Model7forward:bb.a

bb.jb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit143
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit147 unwind label %bb.ik

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit147: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit143, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.experimental.noalias.scope.decl(metadata !25079)
  %i.xy = load ptr, ptr %i.ca, align 8, !alias.scope !25079, !noundef !4 ; 2 uses
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit150, label %bb.jc

bb.jc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit147
  %i.ya = atomicrmw sub ptr %i.xy, i64 1 release, align 8, !noalias !25080
  %i.yb = icmp eq i64 %i.ya, 1
  br i1 %i.yb, label %bb.jd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit150

bb.jd:                                            ; preds = %bb.jc
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit150 unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit150: ; preds = %bb.jc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit147, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !25081)
  call void @llvm.experimental.noalias.scope.decl(metadata !25082)
  call void @llvm.experimental.noalias.scope.decl(metadata !25083)
  %i.yc = load ptr, ptr %i.cc, align 8, !alias.scope !25084, !nonnull !4, !noundef !4
  %i.yd = atomicrmw sub ptr %i.yc, i64 1 release, align 8, !noalias !25084
  %i.ye = icmp eq i64 %i.yd, 1
  br i1 %i.ye, label %bb.je, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit151

bb.je:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit150
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit151

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit151: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit150, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.jf

bb.jf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit133, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit151, %bb.b
  ret void

bb.jg:                                            ; preds = %bb.ja, %bb.it, %bb.in, %bb.ij, %bb.m
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit141: ; preds = %bb.iv, %bb.iw, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.experimental.noalias.scope.decl(metadata !25085)
  call void @llvm.experimental.noalias.scope.decl(metadata !25086)
  call void @llvm.experimental.noalias.scope.decl(metadata !25087)
  %i.yg = load ptr, ptr %i.by, align 8, !alias.scope !25088, !nonnull !4, !noundef !4
  %i.yh = atomicrmw sub ptr %i.yg, i64 1 release, align 8, !noalias !25088
  %i.yi = icmp eq i64 %i.yh, 1
  br i1 %i.yi, label %bb.jh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153

bb.jh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit141
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153 unwind label %bb.ik

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit141, %bb.jh, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.experimental.noalias.scope.decl(metadata !25089)
  %i.yj = load ptr, ptr %i.ca, align 8, !alias.scope !25089, !noundef !4 ; 2 uses
  %i.yk = icmp eq ptr %i.yj, null
  br i1 %i.yk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit156, label %bb.ji

bb.ji:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153
  %i.yl = atomicrmw sub ptr %i.yj, i64 1 release, align 8, !noalias !25090
  %i.ym = icmp eq i64 %i.yl, 1
  br i1 %i.ym, label %bb.jj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit156

bb.jj:                                            ; preds = %bb.ji
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit156 unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit133: ; preds = %bb.ih, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit156, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.jf

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.body, %bb.m
  resume { ptr, i32 } %.pn125
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Model14reset_kv_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val1, 368
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_11Transformer14reset_kv_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block14reset_kv_cache.exit.i
  %.sroa.0.04.i = phi ptr [ %i.e, %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block14reset_kv_cache.exit.i ], [ %.val, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25118)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 160 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25119)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !25120, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block14reset_kv_cache.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25121)
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !25122
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25125)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !25126, !nonnull !4, !noundef !4
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !25127
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %.body.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #26
          to label %.body.i.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25130)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !25131, !nonnull !4, !noundef !4
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !25132
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block14reset_kv_cache.exit.i

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
          to label %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block14reset_kv_cache.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.e, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  store ptr null, ptr %i.f, align 8, !alias.scope !25133
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block14reset_kv_cache.exit.i: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i.i.i, %.lr.ph.i
  store ptr null, ptr %i.f, align 8, !alias.scope !25133
  %i.v = icmp eq ptr %i.e, %i.c
  br i1 %i.v, label %_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_11Transformer14reset_kv_cache.exit, label %.lr.ph.i

_RNvMs5_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_11Transformer14reset_kv_cache.exit: ; preds = %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block14reset_kv_cache.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Model3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 14 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 14 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 14 uses
  %i.j = alloca [56 x i8], align 8                ; 12 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [184 x i8], align 8               ; 28 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 13 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 13 uses
  %i.r = alloca [32 x i8], align 8                ; 12 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 13 uses
  %i.u = alloca [40 x i8], align 8                ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 13 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [80 x i8], align 8                ; 13 uses
  %i.y = alloca [8 x i8], align 8                 ; 11 uses
  %i.z = alloca [80 x i8], align 8                ; 13 uses
  %i.aa = alloca [8 x i8], align 8                ; 13 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [80 x i8], align 8               ; 15 uses
  %i.ad = alloca [8 x i8], align 8                ; 7 uses
  %i.ae = alloca [80 x i8], align 8               ; 13 uses
  %i.af = alloca [8 x i8], align 8                ; 12 uses
  %i.ag = alloca [80 x i8], align 8               ; 13 uses
  %i.ah = alloca [8 x i8], align 8                ; 13 uses
  %i.ai = alloca [80 x i8], align 8               ; 14 uses
  %i.aj = alloca [8 x i8], align 8                ; 11 uses
  %i.ak = alloca [80 x i8], align 8               ; 15 uses
  %i.al = alloca [8 x i8], align 8                ; 11 uses
  %i.am = alloca [80 x i8], align 8               ; 13 uses
  %i.an = alloca [8 x i8], align 8                ; 11 uses
  %i.ao = alloca [80 x i8], align 8               ; 14 uses
  %i.ap = alloca [8 x i8], align 8                ; 11 uses
  %i.aq = alloca [40 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [80 x i8], align 8               ; 13 uses
  %i.aw = alloca [40 x i8], align 8               ; 4 uses
  %i.ax = alloca [80 x i8], align 8               ; 13 uses
  %i.ay = alloca [32 x i8], align 8               ; 18 uses
  %i.az = alloca [368 x i8], align 8              ; 32 uses
  %i.ba = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.34.i = alloca [96 x i8], align 8         ; 5 uses
  %.sroa.40.i = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.41.i = alloca [32 x i8], align 8         ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 12 uses
  %i.bc = alloca [40 x i8], align 8               ; 6 uses
  %i.bd = alloca [40 x i8], align 8               ; 4 uses
  %i.be = alloca [80 x i8], align 8               ; 9 uses
  %i.bf = alloca [144 x i8], align 8              ; 6 uses
  %i.bg = alloca [40 x i8], align 8               ; 4 uses
  %i.bh = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.617 = alloca [56 x i8], align 8          ; 6 uses
  %i.bi = alloca [40 x i8], align 8               ; 10 uses
  %i.bj = alloca [64 x i8], align 8               ; 13 uses
  %i.bk = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.15 = alloca [55 x i8], align 1           ; 6 uses
  %.sroa.6.sroa.9 = alloca [7 x i8], align 1      ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 11 uses
  %i.bm = alloca [40 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 11)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn57 = phi { ptr, i32 } [ %i.bn, %bb.c ], [ %.pn55, %.body ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #29
          to label %bb.hh unwind label %bb.hg

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm9EmbeddingEBH_.exit64.invoke, %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 9)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %.body61, %bb.p, %bb.g, %bb.e
  %.pn55 = phi { ptr, i32 } [ %i.bt, %bb.g ], [ %i.bo, %bb.e ], [ %.pn, %bb.p ], [ %.pn, %.body61 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bm) #29
          to label %bb.b unwind label %bb.hg

bb.e:                                             ; preds = %bb.hf, %bb.l, %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !25416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !25417
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !25416, !noalias !25418, !noundef !4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !25416, !noalias !25418, !noundef !4 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !25417
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 15)
          to label %bb.h unwind label %bb.g, !noalias !25419

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bk) #29
          to label %.body unwind label %bb.m, !noalias !25419

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn9embedding9embedding(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.be, i64 noundef %i.bq, i64 noundef %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bd)
          to label %bb.i unwind label %bb.g, !noalias !25419

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25417
  %i.bu = load i64, ptr %i.be, align 8, !range !22, !noalias !25417, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.bu, -1                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !25417 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noalias !25417 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.sroa.13.24.copyload = load i8, ptr %.sroa.620.0..sroa_idx.i, align 8, !noalias !25420
  %.sroa.15.24..sroa.620.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.15.24..sroa.620.0..sroa_idx.i.sroa_idx, i64 55, i1 false), !noalias !25420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25417
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25417
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.ca = load i8, ptr %i.bz, align 1, !range !15, !alias.scope !25416, !noalias !25418, !noundef !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.13.0 = phi i8 [ %i.ca, %bb.k ], [ %.sroa.13.24.copyload, %bb.j ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bk)
          to label %_RNvMs6_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_9Embedding3new.exit unwind label %bb.e

bb.m:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25419
  unreachable

_RNvMs6_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_9Embedding3new.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15, i64 7, i1 false)
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMs6_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_9Embedding3new.exit
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 7
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.532.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(48) %.sroa.15.32..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  %.sroa.431.sroa.6.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.431.sroa.6.0..sroa.431.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.9, i64 7, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bu, ptr %i.cc, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.by, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx, align 8
  %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.13.0, ptr %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm9EmbeddingEBH_.exit64.invoke

bb.o:                                             ; preds = %_RNvMs6_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_9Embedding3new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.9, i64 7, i1 false)
  store ptr %i.bw, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.by, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i8 %.sroa.13.0, ptr %.sroa.5110.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 7)
          to label %bb.r unwind label %bb.q

.body61:                                          ; preds = %bb.s, %bb.q, %bb.gy
  %.pn = phi { ptr, i32 } [ %i.ny, %bb.gy ], [ %i.cg, %bb.q ], [ %.pn70.pn.i, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25421)
  call void @llvm.experimental.noalias.scope.decl(metadata !25422)
  call void @llvm.experimental.noalias.scope.decl(metadata !25423)
  call void @llvm.experimental.noalias.scope.decl(metadata !25424)
  call void @llvm.experimental.noalias.scope.decl(metadata !25425)
  %i.cd = load ptr, ptr %i.bl, align 8, !alias.scope !25426, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !25426
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.p, label %.body

bb.p:                                             ; preds = %.body61
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl) #26
          to label %.body unwind label %bb.hg

bb.q:                                             ; preds = %bb.dm, %bb.hb, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !25427)
  call void @llvm.experimental.noalias.scope.decl(metadata !25428)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !25429
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 6)
          to label %bb.u unwind label %bb.t, !noalias !25430

bb.s:                                             ; preds = %.body82.i, %bb.t
  %.pn70.pn.i = phi { ptr, i32 } [ %.pn70.i, %.body82.i ], [ %i.ch, %bb.t ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bi) #29
          to label %.body61 unwind label %bb.dn, !noalias !25430

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockEEB1e_.exit.invoke.i, %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !25429
  %i.ci = load i64, ptr %1, align 8, !alias.scope !25427, !noalias !25431, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !25429
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, i64 noundef %i.ci, i1 noundef zeroext false, i64 noundef 8, i64 noundef 368)
          to label %bb.w unwind label %bb.v, !noalias !25430

.body82.i:                                        ; preds = %bb.dp, %.body79.i, %bb.v
  %.pn70.i = phi { ptr, i32 } [ %.pn.i, %.body79.i ], [ %i.cj, %bb.v ], [ %i.lh, %bb.dp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bc) #29
          to label %bb.s unwind label %bb.dn, !noalias !25430

bb.v:                                             ; preds = %bb.dq, %bb.x, %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

bb.w:                                             ; preds = %bb.u
  %i.ck = load i64, ptr %i.at, align 8, !range !20, !noalias !25429, !noundef !4
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !25, !noalias !25429, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !17

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.co, align 8, !noalias !25429
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.cp) #30
          to label %bb.gu unwind label %bb.v, !noalias !25430

bb.y:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr %i.co, align 8, !noalias !25429, !nonnull !4, !noundef !4
  %i.cr = icmp ule i64 %i.ci, %i.cn
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !25429
  store i64 %i.cn, ptr %i.bb, align 8, !noalias !25429
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  store ptr %i.cq, ptr %i.cs, align 8, !noalias !25429
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  store i64 0, ptr %i.ct, align 8, !noalias !25429
  %.not346.i = icmp eq i64 %i.ci, 0
  br i1 %.not346.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cv = load i8, ptr %i.cu, align 8, !range !15, !alias.scope !25427, !noalias !25431
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cy = load double, ptr %i.cx, align 8, !alias.scope !25427, !noalias !25431 ; 4 uses
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.67.i.sroa.7.0..sroa.466.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa.466.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.67.i.sroa.7.sroa.8.0..sroa.67.i.sroa.7.0..sroa.466.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.26.sroa.19.24..sroa.567.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.26.sroa.20.24..sroa.567.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.33.48..sroa.567.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.67.i.sroa.7.0..sroa_idx145.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %.sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa_idx145.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.67.i.sroa.7.sroa.8.0..sroa.67.i.sroa.7.0..sroa_idx145.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %.sroa.484.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.625.i.sroa.7.0..sroa.484.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.625.i.sroa.7.sroa.7.0..sroa.625.i.sroa.7.0..sroa.484.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.625.i.sroa.7.sroa.8.0..sroa.625.i.sroa.7.0..sroa.484.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.585.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.26.sroa.19.24..sroa.585.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.26.sroa.20.24..sroa.585.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.33.48..sroa.585.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.625.i.sroa.7.0..sroa_idx151.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.sroa.625.i.sroa.7.sroa.7.0..sroa.625.i.sroa.7.0..sroa_idx151.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.625.i.sroa.7.sroa.8.0..sroa.625.i.sroa.7.0..sroa_idx151.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.i.sroa.7.0..sroa.457.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa.457.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.6.i.sroa.7.sroa.8.0..sroa.6.i.sroa.7.0..sroa.457.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.558.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.26.sroa.19.24..sroa.558.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.26.sroa.20.24..sroa.558.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.33.48..sroa.558.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.475.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.616.i.sroa.7.0..sroa.475.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.616.i.sroa.7.sroa.7.0..sroa.616.i.sroa.7.0..sroa.475.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.616.i.sroa.7.sroa.8.0..sroa.616.i.sroa.7.0..sroa.475.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.576.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.26.sroa.19.24..sroa.576.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.26.sroa.20.24..sroa.576.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.33.48..sroa.576.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !25427, !noalias !25431 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !25427, !noalias !25431 ; 4 uses
  %i.dd = mul i64 %i.dc, %i.da                    ; 3 uses
  %i.de = icmp eq i64 %i.dc, 0
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.dg = load i8, ptr %i.df, align 2, !range !15, !alias.scope !25427, !noalias !25431 ; 2 uses
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = mul i64 %i.dd, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !25427, !noalias !25431 ; 2 uses
  %factor.op.mul.i = shl i64 %i.dk, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.dm = load i8, ptr %i.dl, align 1, !range !15, !alias.scope !25427, !noalias !25431
  %i.dn = trunc nuw i8 %i.dm to i1                ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.dp = load i8, ptr %i.do, align 4, !range !15, !alias.scope !25427, !noalias !25431
  %i.dq = trunc nuw i8 %i.dp to i1
  %.sroa.05.0.i.i.i = select i1 %i.dn, i1 true, i1 %i.dq
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.i.sroa.7.i.sroa.6.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6.i.sroa.7.i.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.6.i.sroa.7.i.sroa.8.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.6.i.sroa.7.i.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.6.i.sroa.7.i.sroa.10.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.16.sroa.10.48..sroa.526.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.6.i.sroa.7.0..sroa_idx167.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.6.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.8.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.10.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.ds = uitofp i64 %i.da to double
  %i.dt = call nnan ninf double @llvm.sqrt.f64(double %i.ds)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.dv = load i8, ptr %i.du, align 1, !range !15, !alias.scope !25427, !noalias !25431 ; 2 uses
  %i.dw = trunc nuw i8 %i.dv to i1
  %.sroa.029.0.i.i.i = zext nneg i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.611.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.611.i.sroa.7.i.sroa.6.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.611.i.sroa.7.i.sroa.7.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.611.i.sroa.7.i.sroa.8.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.611.i.sroa.7.i.sroa.9.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.611.i.sroa.7.i.sroa.10.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.543.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.16.sroa.10.48..sroa.543.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %.sroa.16.sroa.11.i.sroa.5.0..sroa.540.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.16.sroa.11.i.sroa.6.0..sroa.540.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %.sroa.16.sroa.11.i.sroa.7.0..sroa.540.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %.sroa.16.sroa.11.i.sroa.8.0..sroa.540.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %.sroa.16.sroa.11.i.sroa.9.0..sroa.540.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %.sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.7.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.8.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.9.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.10.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.11.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.439.sroa.4.0..sroa.439.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.439.sroa.5.sroa.0.sroa.4.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.439.sroa.5.sroa.4.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %.sroa.540.sroa.6.0..sroa.540.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %.sroa.540.sroa.7.0..sroa.540.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %.sroa.540.sroa.9.0..sroa.540.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !25427, !noalias !25431 ; 2 uses
  %i.ea = shl i64 %i.dz, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.i108.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.i108.i.sroa.6.sroa.6.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.i108.i.sroa.6.sroa.7.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6.i108.i.sroa.6.sroa.8.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.6.i108.i.sroa.6.sroa.9.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.6.i108.i.sroa.6.sroa.10.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.14.i.sroa.8.0..sroa.519.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.6.i108.i.sroa.6.0..sroa_idx167.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.6.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.7.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.8.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.9.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.10.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.67.i.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.67.i.i.sroa.6.sroa.6.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.67.i.i.sroa.6.sroa.7.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.67.i.i.sroa.6.sroa.8.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.67.i.i.sroa.6.sroa.8.sroa.6.0..sroa.67.i.i.sroa.6.sroa.8.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.67.i.i.sroa.6.sroa.8.sroa.7.0..sroa.67.i.i.sroa.6.sroa.8.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.528.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.14.i.sroa.8.0..sroa.528.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ee = load i8, ptr %i.ed, align 1, !range !15, !alias.scope !25427, !noalias !25431
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.6.sroa.8.sroa.7.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.6.sroa.8.sroa.8.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.6.sroa.8.sroa.9.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.6.sroa.8.sroa.10.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %.sroa.6.sroa.8.sroa.11.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  %.sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %.sroa.8.sroa.7.sroa.5.sroa.5.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  %.sroa.8.sroa.7.sroa.5.sroa.6.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 224
  %.sroa.8.sroa.7.sroa.5.sroa.7.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 232
  %.sroa.8.sroa.7.sroa.5.sroa.8.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %.sroa.8.sroa.7.sroa.5.sroa.9.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 256
  %.sroa.8.sroa.8.sroa.5.0..sroa.8.sroa.8.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 264
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %.sroa.8.sroa.9.sroa.5.0..sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 280
  %.sroa.8.sroa.9.sroa.6.0..sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 288
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 296
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 360
  br label %bb.z

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockE8push_mutBL_.exit.i, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !25429
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.eg = load i8, ptr %i.ef, align 2, !range !15, !alias.scope !25427, !noalias !25431, !noundef !4
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockE8push_mutBL_.exit.i, %.lr.ph.i
  %.sroa.034.0345.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ei, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockE8push_mutBL_.exit.i ] ; 2 uses
  %i.ei = add nuw i64 %.sroa.034.0345.i, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.34.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.40.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !25429
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bc, i64 noundef %.sroa.034.0345.i)
          to label %bb.ds unwind label %.loopexit.i, !noalias !25430

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i8 2, ptr %i.ej, align 8, !noalias !25429
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.el = load i8, ptr %i.ek, align 8, !range !15, !alias.scope !25427, !noalias !25431, !noundef !4
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.em, label %bb.cr, label %bb.cq

bb.ac:                                            ; preds = %bb.cw, %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ep = load i8, ptr %i.eo, align 8, !range !23, !alias.scope !25428, !noalias !25430, !noundef !4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !25428, !noalias !25430, !nonnull !4, !noundef !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 25 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.et, align 8, !alias.scope !25427, !noalias !25431, !noundef !4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val73.i = load i64, ptr %i.eu, align 8, !alias.scope !25427, !noalias !25431 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !25432
  %i.ev = lshr i64 %.val.i, 1                     ; 2 uses
  store i64 %i.ev, ptr %i.as, align 8, !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !25432
  %i.ew = lshr i64 %.val.i, 2
  %.sroa.05.0.i.i.i.i = sub nuw nsw i64 %i.ev, %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.ex, align 8, !noalias !25432
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.05.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !25432
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 1, ptr %.sroa.51.0..sroa_idx.i.i, align 8, !noalias !25432
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !25432
  store ptr %i.as, ptr %i.aq, align 8, !noalias !25432
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvMs_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB3j_15RotaryEmbedding3new0EE9from_iterB3n_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aq)
          to label %.noexc.i unwind label %bb.db, !noalias !25430

.noexc.i:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !25432
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !25432, !noundef !4 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 2305843009213693952
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !25432
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implTjjEfECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ar, i64 noundef 1, i64 noundef %i.ez, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.es, i1 noundef zeroext false)
          to label %.noexc74.i unwind label %bb.db, !noalias !25430

.noexc74.i:                                       ; preds = %.noexc.i
  %i.fb = load i64, ptr %i.am, align 8, !range !22, !noalias !25432, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.fb, -1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !25432 ; 2 uses
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc74.i
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.27.i.sroa.0.0.copyload = load i64, ptr %.sroa.591.0..sroa_idx.i.i, align 8, !noalias !25433
  %.sroa.27.i.sroa.13.0..sroa.591.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.27.i.sroa.13.0.copyload = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.591.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.14.0..sroa.591.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.27.i.sroa.14.0.copyload = load double, ptr %.sroa.27.i.sroa.14.0..sroa.591.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.15.0..sroa.591.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.27.i.sroa.15.0.copyload = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.591.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.16.0..sroa.591.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.27.i.sroa.16.0.copyload = load double, ptr %.sroa.27.i.sroa.16.0..sroa.591.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.17.0..sroa.591.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %3 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.591.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.18.0..sroa.591.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %.sroa.27.i.sroa.19.0.copyload = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.591.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i

bb.ae:                                            ; preds = %.noexc74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !25432
  store ptr %i.fd, ptr %i.an, align 8, !noalias !25432
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, i8 noundef range(i8 0, 14) %i.ep)
          to label %bb.ah unwind label %bb.af, !noalias !25434

bb.af:                                            ; preds = %bb.ae
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25435)
  call void @llvm.experimental.noalias.scope.decl(metadata !25436)
  call void @llvm.experimental.noalias.scope.decl(metadata !25437)
  %i.ff = load ptr, ptr %i.an, align 8, !alias.scope !25438, !noalias !25432, !nonnull !4, !noundef !4
  %i.fg = atomicrmw sub ptr %i.ff, i64 1 release, align 8, !noalias !25439
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.ag, label %.body.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #26
          to label %.body.i unwind label %bb.ck, !noalias !25434

bb.ah:                                            ; preds = %bb.ae
  %i.fi = load i64, ptr %i.ao, align 8, !range !22, !noalias !25432, !noundef !4 ; 3 uses
  %.not168.i.i = icmp eq i64 %i.fi, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !25432 ; 3 uses
  br i1 %.not168.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.5100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.27.i.sroa.0.0.copyload168 = load i64, ptr %.sroa.5100.0..sroa_idx.i.i, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.13.0..sroa.5100.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.27.i.sroa.13.0.copyload176 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5100.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.14.0..sroa.5100.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.27.i.sroa.14.0.copyload184 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5100.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.15.0..sroa.5100.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.sroa.27.i.sroa.15.0.copyload192 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5100.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.16.0..sroa.5100.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.sroa.27.i.sroa.16.0.copyload200 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5100.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.17.0..sroa.5100.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %4 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5100.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.18.0..sroa.5100.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %.sroa.27.i.sroa.19.0.copyload224 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5100.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25440)
  call void @llvm.experimental.noalias.scope.decl(metadata !25441)
  call void @llvm.experimental.noalias.scope.decl(metadata !25442)
  %i.fl = load ptr, ptr %i.an, align 8, !alias.scope !25443, !noalias !25432, !nonnull !4, !noundef !4
  %i.fm = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !25444
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i unwind label %bb.db, !noalias !25430

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25432
  store ptr %i.fk, ptr %i.ap, align 8, !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25445)
  call void @llvm.experimental.noalias.scope.decl(metadata !25446)
  call void @llvm.experimental.noalias.scope.decl(metadata !25447)
  %i.fo = load ptr, ptr %i.an, align 8, !alias.scope !25448, !noalias !25432, !nonnull !4, !noundef !4
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !25449
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit190.i.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit190.i.i unwind label %bb.an, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i: ; preds = %bb.bg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i, %bb.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196.i.i, %bb.an
  %.pn185.i.i = phi { ptr, i32 } [ %i.fu, %bb.an ], [ %.pn183.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196.i.i ], [ %.pn183.i.i, %bb.ar ], [ %.pn181.i.i, %bb.bg ], [ %.pn181.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25450)
  call void @llvm.experimental.noalias.scope.decl(metadata !25451)
  call void @llvm.experimental.noalias.scope.decl(metadata !25452)
  %i.fr = load ptr, ptr %i.ap, align 8, !alias.scope !25453, !noalias !25432, !nonnull !4, !noundef !4
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !25454
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %bb.am, label %.body.i

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #26
          to label %.body.i unwind label %bb.ck, !noalias !25434

bb.an:                                            ; preds = %bb.cp, %bb.cn, %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit190.i.i, %bb.al
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit190.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !25432
  %i.fv = trunc i64 %.val73.i to i32
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor11arange_stepmECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ag, i32 noundef 0, i32 noundef %i.fv, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.es)
          to label %bb.ao unwind label %bb.an, !noalias !25434

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit190.i.i
  %i.fw = load i64, ptr %i.ag, align 8, !range !22, !noalias !25432, !noundef !4 ; 2 uses
  %.not169.i.i = icmp eq i64 %i.fw, -1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !25432 ; 2 uses
  br i1 %.not169.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.5109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.27.i.sroa.0.0.copyload169 = load i64, ptr %.sroa.5109.0..sroa_idx.i.i, align 8, !noalias !25433
  %.sroa.27.i.sroa.13.0..sroa.5109.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.27.i.sroa.13.0.copyload177 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5109.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.14.0..sroa.5109.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.27.i.sroa.14.0.copyload185 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5109.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.15.0..sroa.5109.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.27.i.sroa.15.0.copyload193 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5109.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.16.0..sroa.5109.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.27.i.sroa.16.0.copyload201 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5109.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.17.0..sroa.5109.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %5 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5109.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.18.0..sroa.5109.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.27.i.sroa.19.0.copyload225 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5109.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !25432
  store ptr %i.fy, ptr %i.ah, align 8, !noalias !25432
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, i8 noundef range(i8 0, 14) %i.ep)
          to label %bb.at unwind label %bb.as, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196.i.i: ; preds = %bb.ax, %bb.aw, %bb.as
  %.pn183.i.i = phi { ptr, i32 } [ %i.gc, %bb.as ], [ %i.gg, %bb.ax ], [ %i.gg, %bb.aw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25455)
  call void @llvm.experimental.noalias.scope.decl(metadata !25456)
  call void @llvm.experimental.noalias.scope.decl(metadata !25457)
  %i.fz = load ptr, ptr %i.ah, align 8, !alias.scope !25458, !noalias !25432, !nonnull !4, !noundef !4
  %i.ga = atomicrmw sub ptr %i.fz, i64 1 release, align 8, !noalias !25459
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.ar, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i unwind label %bb.ck, !noalias !25434

bb.as:                                            ; preds = %bb.ba, %bb.aq
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196.i.i

bb.at:                                            ; preds = %bb.aq
  %i.gd = load i64, ptr %i.ai, align 8, !range !22, !noalias !25432, !noundef !4 ; 2 uses
  %.not170.i.i = icmp eq i64 %i.gd, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !25432 ; 2 uses
  br i1 %.not170.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.5118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.27.i.sroa.0.0.copyload170 = load i64, ptr %.sroa.5118.0..sroa_idx.i.i, align 8, !noalias !25433
  %.sroa.27.i.sroa.13.0..sroa.5118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.27.i.sroa.13.0.copyload178 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.14.0..sroa.5118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.27.i.sroa.14.0.copyload186 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.15.0..sroa.5118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.27.i.sroa.15.0.copyload194 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.16.0..sroa.5118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.sroa.27.i.sroa.16.0.copyload202 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.17.0..sroa.5118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %6 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.18.0..sroa.5118.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.27.i.sroa.19.0.copyload226 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5118.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !25432
  store ptr %i.gf, ptr %i.aj, align 8, !noalias !25432
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef %.val73.i, i64 noundef 1)
          to label %bb.ay unwind label %bb.aw, !noalias !25434

bb.aw:                                            ; preds = %bb.av
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25460)
  call void @llvm.experimental.noalias.scope.decl(metadata !25461)
  call void @llvm.experimental.noalias.scope.decl(metadata !25462)
  %i.gh = load ptr, ptr %i.aj, align 8, !alias.scope !25463, !noalias !25432, !nonnull !4, !noundef !4
  %i.gi = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !25464
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.ax, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196.i.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit196.i.i unwind label %bb.ck, !noalias !25434

bb.ay:                                            ; preds = %bb.av
  %i.gk = load i64, ptr %i.ak, align 8, !range !22, !noalias !25432, !noundef !4 ; 3 uses
  %.not171.i.i = icmp eq i64 %i.gk, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !25432 ; 3 uses
  br i1 %.not171.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.5127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.27.i.sroa.0.0.copyload171 = load i64, ptr %.sroa.5127.0..sroa_idx.i.i, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.13.0..sroa.5127.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.27.i.sroa.13.0.copyload179 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5127.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.14.0..sroa.5127.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.27.i.sroa.14.0.copyload187 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5127.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.15.0..sroa.5127.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.27.i.sroa.15.0.copyload195 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5127.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.16.0..sroa.5127.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.27.i.sroa.16.0.copyload203 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5127.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.17.0..sroa.5127.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %7 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5127.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.18.0..sroa.5127.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %.sroa.27.i.sroa.19.0.copyload227 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5127.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25465)
  call void @llvm.experimental.noalias.scope.decl(metadata !25466)
  call void @llvm.experimental.noalias.scope.decl(metadata !25467)
  %i.gn = load ptr, ptr %i.aj, align 8, !alias.scope !25468, !noalias !25432, !nonnull !4, !noundef !4
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !25469
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.ba, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i unwind label %bb.as, !noalias !25434

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25432
  store ptr %i.gm, ptr %i.al, align 8, !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25470)
  call void @llvm.experimental.noalias.scope.decl(metadata !25471)
  call void @llvm.experimental.noalias.scope.decl(metadata !25472)
  %i.gq = load ptr, ptr %i.aj, align 8, !alias.scope !25473, !noalias !25432, !nonnull !4, !noundef !4
  %i.gr = atomicrmw sub ptr %i.gq, i64 1 release, align 8, !noalias !25474
  %i.gs = icmp eq i64 %i.gr, 1
  br i1 %i.gs, label %bb.bc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200.i.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200.i.i unwind label %bb.bd, !noalias !25434

bb.bd:                                            ; preds = %bb.bc
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25475)
  call void @llvm.experimental.noalias.scope.decl(metadata !25476)
  call void @llvm.experimental.noalias.scope.decl(metadata !25477)
  %i.gu = load ptr, ptr %i.ah, align 8, !alias.scope !25478, !noalias !25432, !nonnull !4, !noundef !4
  %i.gv = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !25479
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.be, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i unwind label %bb.ck, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200.i.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !25480)
  call void @llvm.experimental.noalias.scope.decl(metadata !25481)
  call void @llvm.experimental.noalias.scope.decl(metadata !25482)
  %i.gx = load ptr, ptr %i.ah, align 8, !alias.scope !25483, !noalias !25432, !nonnull !4, !noundef !4
  %i.gy = atomicrmw sub ptr %i.gx, i64 1 release, align 8, !noalias !25484
  %i.gz = icmp eq i64 %i.gy, 1
  br i1 %i.gz, label %bb.bf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit204.i.i

bb.bf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit204.i.i unwind label %bb.bh, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i: ; preds = %bb.bl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i, %bb.bh, %bb.be, %bb.bd
  %.pn181.i.i = phi { ptr, i32 } [ %i.hd, %bb.bh ], [ %i.gt, %bb.bd ], [ %i.gt, %bb.be ], [ %.pn179.i.i, %bb.bl ], [ %.pn179.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25485)
  call void @llvm.experimental.noalias.scope.decl(metadata !25486)
  call void @llvm.experimental.noalias.scope.decl(metadata !25487)
  %i.ha = load ptr, ptr %i.al, align 8, !alias.scope !25488, !noalias !25432, !nonnull !4, !noundef !4
  %i.hb = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !25489
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i

bb.bg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i unwind label %bb.ck, !noalias !25434

bb.bh:                                            ; preds = %bb.cm, %bb.ch, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit204.i.i, %bb.bf
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit204.i.i: ; preds = %bb.bf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit200.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25432
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor6matmul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %bb.bi unwind label %bb.bh, !noalias !25434

bb.bi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit204.i.i
  %i.he = load i64, ptr %i.ae, align 8, !range !22, !noalias !25432, !noundef !4 ; 2 uses
  %.not172.i.i = icmp eq i64 %i.he, -1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !25432 ; 2 uses
  br i1 %.not172.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.5136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.27.i.sroa.0.0.copyload172 = load i64, ptr %.sroa.5136.0..sroa_idx.i.i, align 8, !noalias !25433
  %.sroa.27.i.sroa.13.0..sroa.5136.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.27.i.sroa.13.0.copyload180 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5136.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.14.0..sroa.5136.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.27.i.sroa.14.0.copyload188 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5136.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.15.0..sroa.5136.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.27.i.sroa.15.0.copyload196 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5136.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.16.0..sroa.5136.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.27.i.sroa.16.0.copyload204 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5136.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.17.0..sroa.5136.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %8 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5136.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.18.0..sroa.5136.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.27.i.sroa.19.0.copyload228 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5136.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25432
  store ptr %i.hg, ptr %i.af, align 8, !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25432
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3cos(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %bb.bn unwind label %bb.bm, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i: ; preds = %bb.cf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218.i.i, %bb.bq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit212.i.i, %bb.bm
  %.pn179.i.i = phi { ptr, i32 } [ %i.hk, %bb.bm ], [ %.pn177.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit212.i.i ], [ %.pn177.i.i, %bb.bq ], [ %.pn.i.i, %bb.cf ], [ %.pn.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25490)
  call void @llvm.experimental.noalias.scope.decl(metadata !25491)
  call void @llvm.experimental.noalias.scope.decl(metadata !25492)
  %i.hh = load ptr, ptr %i.af, align 8, !alias.scope !25493, !noalias !25432, !nonnull !4, !noundef !4
  %i.hi = atomicrmw sub ptr %i.hh, i64 1 release, align 8, !noalias !25494
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.bl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i

bb.bl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit202.i.i unwind label %bb.ck, !noalias !25434

bb.bm:                                            ; preds = %bb.cl, %bb.bk
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i

bb.bn:                                            ; preds = %bb.bk
  %i.hl = load i64, ptr %i.z, align 8, !range !22, !noalias !25432, !noundef !4 ; 2 uses
  %.not173.i.i = icmp eq i64 %i.hl, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !25432 ; 2 uses
  br i1 %.not173.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.5145.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.27.i.sroa.0.0.copyload173 = load i64, ptr %.sroa.5145.0..sroa_idx.i.i, align 8, !noalias !25433
  %.sroa.27.i.sroa.13.0..sroa.5145.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.27.i.sroa.13.0.copyload181 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5145.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.14.0..sroa.5145.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.27.i.sroa.14.0.copyload189 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5145.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.15.0..sroa.5145.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.27.i.sroa.15.0.copyload197 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5145.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.16.0..sroa.5145.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.27.i.sroa.16.0.copyload205 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5145.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.17.0..sroa.5145.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %9 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5145.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.18.0..sroa.5145.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %.sroa.27.i.sroa.19.0.copyload229 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5145.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25432
  store ptr %i.hn, ptr %i.aa, align 8, !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25432
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sin(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %bb.bs unwind label %bb.br, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit212.i.i: ; preds = %bb.bw, %bb.bv, %bb.br
  %.pn177.i.i = phi { ptr, i32 } [ %i.hr, %bb.br ], [ %i.hw, %bb.bw ], [ %i.hw, %bb.bv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25495)
  call void @llvm.experimental.noalias.scope.decl(metadata !25496)
  call void @llvm.experimental.noalias.scope.decl(metadata !25497)
  %i.ho = load ptr, ptr %i.aa, align 8, !alias.scope !25498, !noalias !25432, !nonnull !4, !noundef !4
  %i.hp = atomicrmw sub ptr %i.ho, i64 1 release, align 8, !noalias !25499
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.bq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i

bb.bq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit212.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i unwind label %bb.ck, !noalias !25434

bb.br:                                            ; preds = %bb.bz, %bb.bp
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit212.i.i

bb.bs:                                            ; preds = %bb.bp
  %i.hs = load i64, ptr %i.x, align 8, !range !22, !noalias !25432, !noundef !4 ; 2 uses
  %.not174.i.i = icmp eq i64 %i.hs, -1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !25432 ; 2 uses
  br i1 %.not174.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.5154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.27.i.sroa.0.0.copyload174 = load i64, ptr %.sroa.5154.0..sroa_idx.i.i, align 8, !noalias !25433
  %.sroa.27.i.sroa.13.0..sroa.5154.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.27.i.sroa.13.0.copyload182 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5154.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.14.0..sroa.5154.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.27.i.sroa.14.0.copyload190 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5154.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.15.0..sroa.5154.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.27.i.sroa.15.0.copyload198 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5154.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.16.0..sroa.5154.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.27.i.sroa.16.0.copyload206 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5154.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.17.0..sroa.5154.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %10 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5154.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  %.sroa.27.i.sroa.18.0..sroa.5154.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.27.i.sroa.19.0.copyload230 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5154.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25432
  store ptr %i.hu, ptr %i.y, align 8, !noalias !25432
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !25432
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.y, ptr %i.hv, align 8, !noalias !25432
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor5stackRBG_NtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef 2, i64 noundef 0, i64 undef)
          to label %bb.bx unwind label %bb.bv, !noalias !25434

bb.bv:                                            ; preds = %bb.bu
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25500)
  call void @llvm.experimental.noalias.scope.decl(metadata !25501)
  call void @llvm.experimental.noalias.scope.decl(metadata !25502)
  %i.hx = load ptr, ptr %i.y, align 8, !alias.scope !25503, !noalias !25432, !nonnull !4, !noundef !4
  %i.hy = atomicrmw sub ptr %i.hx, i64 1 release, align 8, !noalias !25504
  %i.hz = icmp eq i64 %i.hy, 1
  br i1 %i.hz, label %bb.bw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit212.i.i

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit212.i.i unwind label %bb.ck, !noalias !25434

bb.bx:                                            ; preds = %bb.bu
  %i.ia = load i64, ptr %i.ac, align 8, !range !22, !noalias !25432, !noundef !4 ; 3 uses
  %.not175.i.i = icmp eq i64 %i.ia, -1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !25432 ; 3 uses
  br i1 %.not175.i.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.5163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.27.i.sroa.0.0.copyload175 = load i64, ptr %.sroa.5163.0..sroa_idx.i.i, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.13.0..sroa.5163.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.27.i.sroa.13.0.copyload183 = load i64, ptr %.sroa.27.i.sroa.13.0..sroa.5163.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.14.0..sroa.5163.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.27.i.sroa.14.0.copyload191 = load double, ptr %.sroa.27.i.sroa.14.0..sroa.5163.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.15.0..sroa.5163.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.27.i.sroa.15.0.copyload199 = load i64, ptr %.sroa.27.i.sroa.15.0..sroa.5163.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.16.0..sroa.5163.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.27.i.sroa.16.0.copyload207 = load double, ptr %.sroa.27.i.sroa.16.0..sroa.5163.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.17.0..sroa.5163.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %11 = load <2 x i64>, ptr %.sroa.27.i.sroa.17.0..sroa.5163.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  %.sroa.27.i.sroa.18.0..sroa.5163.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %.sroa.27.i.sroa.19.0.copyload231 = load i64, ptr %.sroa.27.i.sroa.18.0..sroa.5163.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !25433 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25505)
  call void @llvm.experimental.noalias.scope.decl(metadata !25506)
  call void @llvm.experimental.noalias.scope.decl(metadata !25507)
  %i.id = load ptr, ptr %i.y, align 8, !alias.scope !25508, !noalias !25432, !nonnull !4, !noundef !4
  %i.ie = atomicrmw sub ptr %i.id, i64 1 release, align 8, !noalias !25509
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %bb.bz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i unwind label %bb.br, !noalias !25434

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25432
  store ptr %i.ic, ptr %i.ad, align 8, !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25510)
  call void @llvm.experimental.noalias.scope.decl(metadata !25511)
  call void @llvm.experimental.noalias.scope.decl(metadata !25512)
  %i.ig = load ptr, ptr %i.y, align 8, !alias.scope !25513, !noalias !25432, !nonnull !4, !noundef !4
  %i.ih = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !25514
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.cb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216.i.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216.i.i unwind label %bb.cc, !noalias !25434

bb.cc:                                            ; preds = %bb.cb
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25515)
  call void @llvm.experimental.noalias.scope.decl(metadata !25516)
  call void @llvm.experimental.noalias.scope.decl(metadata !25517)
  %i.ik = load ptr, ptr %i.aa, align 8, !alias.scope !25518, !noalias !25432, !nonnull !4, !noundef !4
  %i.il = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !25519
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218.i.i

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218.i.i unwind label %bb.ck, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25520)
  call void @llvm.experimental.noalias.scope.decl(metadata !25521)
  call void @llvm.experimental.noalias.scope.decl(metadata !25522)
  %i.in = load ptr, ptr %i.aa, align 8, !alias.scope !25523, !noalias !25432, !nonnull !4, !noundef !4
  %i.io = atomicrmw sub ptr %i.in, i64 1 release, align 8, !noalias !25524
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i.i

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i.i unwind label %bb.cg, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218.i.i: ; preds = %bb.cg, %bb.cd, %bb.cc
  %.pn.i.i = phi { ptr, i32 } [ %i.it, %bb.cg ], [ %i.ij, %bb.cd ], [ %i.ij, %bb.cc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25525)
  call void @llvm.experimental.noalias.scope.decl(metadata !25526)
  call void @llvm.experimental.noalias.scope.decl(metadata !25527)
  %i.iq = load ptr, ptr %i.ad, align 8, !alias.scope !25528, !noalias !25432, !nonnull !4, !noundef !4
  %i.ir = atomicrmw sub ptr %i.iq, i64 1 release, align 8, !noalias !25529
  %i.is = icmp eq i64 %i.ir, 1
  br i1 %i.is, label %bb.cf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i

bb.cf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit210.i.i unwind label %bb.ck, !noalias !25434

bb.cg:                                            ; preds = %bb.ce
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i.i: ; preds = %bb.ce, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25432
  %i.iu = load ptr, ptr %i.ad, align 8, !noalias !25432, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25530)
  call void @llvm.experimental.noalias.scope.decl(metadata !25531)
  call void @llvm.experimental.noalias.scope.decl(metadata !25532)
  %i.iv = load ptr, ptr %i.af, align 8, !alias.scope !25533, !noalias !25432, !nonnull !4, !noundef !4
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !noalias !25534
  %i.ix = icmp eq i64 %i.iw, 1
  br i1 %i.ix, label %bb.ch, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit224.i.i

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit224.i.i unwind label %bb.bh, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit224.i.i: ; preds = %bb.ch, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25535)
  call void @llvm.experimental.noalias.scope.decl(metadata !25536)
  call void @llvm.experimental.noalias.scope.decl(metadata !25537)
  %i.iy = load ptr, ptr %i.al, align 8, !alias.scope !25538, !noalias !25432, !nonnull !4, !noundef !4
  %i.iz = atomicrmw sub ptr %i.iy, i64 1 release, align 8, !noalias !25539
  %i.ja = icmp eq i64 %i.iz, 1
  br i1 %i.ja, label %bb.ci, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i.i

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit224.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i.i unwind label %bb.an, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i.i: ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit224.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25540)
  call void @llvm.experimental.noalias.scope.decl(metadata !25541)
  call void @llvm.experimental.noalias.scope.decl(metadata !25542)
  %i.jb = load ptr, ptr %i.ap, align 8, !alias.scope !25543, !noalias !25432, !nonnull !4, !noundef !4
  %i.jc = atomicrmw sub ptr %i.jb, i64 1 release, align 8, !noalias !25544
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.cj, label %bb.dl

bb.cj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #26
          to label %bb.dl unwind label %bb.db, !noalias !25430

bb.ck:                                            ; preds = %bb.cf, %bb.cd, %bb.bw, %bb.bq, %bb.bl, %bb.bg, %bb.be, %bb.ax, %bb.ar, %bb.am, %bb.ag
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25434
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i: ; preds = %bb.bz, %bb.by, %bb.bt
  %.sroa.27.i.sroa.0.7 = phi i64 [ %.sroa.27.i.sroa.0.0.copyload175, %bb.bz ], [ %.sroa.27.i.sroa.0.0.copyload175, %bb.by ], [ %.sroa.27.i.sroa.0.0.copyload174, %bb.bt ] ; 2 uses
  %.sroa.27.i.sroa.13.7 = phi i64 [ %.sroa.27.i.sroa.13.0.copyload183, %bb.bz ], [ %.sroa.27.i.sroa.13.0.copyload183, %bb.by ], [ %.sroa.27.i.sroa.13.0.copyload182, %bb.bt ] ; 2 uses
  %.sroa.27.i.sroa.14.7 = phi double [ %.sroa.27.i.sroa.14.0.copyload191, %bb.bz ], [ %.sroa.27.i.sroa.14.0.copyload191, %bb.by ], [ %.sroa.27.i.sroa.14.0.copyload190, %bb.bt ] ; 2 uses
  %.sroa.27.i.sroa.15.7 = phi i64 [ %.sroa.27.i.sroa.15.0.copyload199, %bb.bz ], [ %.sroa.27.i.sroa.15.0.copyload199, %bb.by ], [ %.sroa.27.i.sroa.15.0.copyload198, %bb.bt ] ; 2 uses
  %.sroa.27.i.sroa.16.7 = phi double [ %.sroa.27.i.sroa.16.0.copyload207, %bb.bz ], [ %.sroa.27.i.sroa.16.0.copyload207, %bb.by ], [ %.sroa.27.i.sroa.16.0.copyload206, %bb.bt ] ; 2 uses
  %.sroa.27.i.sroa.17.7 = phi i64 [ %.sroa.27.i.sroa.19.0.copyload231, %bb.bz ], [ %.sroa.27.i.sroa.19.0.copyload231, %bb.by ], [ %.sroa.27.i.sroa.19.0.copyload230, %bb.bt ] ; 2 uses
  %.sroa.15.6.i = phi ptr [ %i.ic, %bb.bz ], [ %i.ic, %bb.by ], [ %i.hu, %bb.bt ] ; 2 uses
  %.sroa.0111.6.i = phi i64 [ %i.ia, %bb.bz ], [ %i.ia, %bb.by ], [ %i.hs, %bb.bt ] ; 2 uses
  %i.jf = phi <2 x i64> [ %11, %bb.bz ], [ %11, %bb.by ], [ %10, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25545)
  call void @llvm.experimental.noalias.scope.decl(metadata !25546)
  call void @llvm.experimental.noalias.scope.decl(metadata !25547)
  %i.jg = load ptr, ptr %i.aa, align 8, !alias.scope !25548, !noalias !25432, !nonnull !4, !noundef !4
  %i.jh = atomicrmw sub ptr %i.jg, i64 1 release, align 8, !noalias !25549
  %i.ji = icmp eq i64 %i.jh, 1
  br i1 %i.ji, label %bb.cl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i

bb.cl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i unwind label %bb.bm, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i: ; preds = %bb.cl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i, %bb.bo
  %.sroa.27.i.sroa.0.6 = phi i64 [ %.sroa.27.i.sroa.0.7, %bb.cl ], [ %.sroa.27.i.sroa.0.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %.sroa.27.i.sroa.0.0.copyload173, %bb.bo ] ; 2 uses
  %.sroa.27.i.sroa.13.6 = phi i64 [ %.sroa.27.i.sroa.13.7, %bb.cl ], [ %.sroa.27.i.sroa.13.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %.sroa.27.i.sroa.13.0.copyload181, %bb.bo ] ; 2 uses
  %.sroa.27.i.sroa.14.6 = phi double [ %.sroa.27.i.sroa.14.7, %bb.cl ], [ %.sroa.27.i.sroa.14.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %.sroa.27.i.sroa.14.0.copyload189, %bb.bo ] ; 2 uses
  %.sroa.27.i.sroa.15.6 = phi i64 [ %.sroa.27.i.sroa.15.7, %bb.cl ], [ %.sroa.27.i.sroa.15.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %.sroa.27.i.sroa.15.0.copyload197, %bb.bo ] ; 2 uses
  %.sroa.27.i.sroa.16.6 = phi double [ %.sroa.27.i.sroa.16.7, %bb.cl ], [ %.sroa.27.i.sroa.16.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %.sroa.27.i.sroa.16.0.copyload205, %bb.bo ] ; 2 uses
  %.sroa.27.i.sroa.17.6 = phi i64 [ %.sroa.27.i.sroa.17.7, %bb.cl ], [ %.sroa.27.i.sroa.17.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %.sroa.27.i.sroa.19.0.copyload229, %bb.bo ] ; 2 uses
  %.sroa.15.5.i = phi ptr [ %.sroa.15.6.i, %bb.cl ], [ %.sroa.15.6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %i.hn, %bb.bo ] ; 2 uses
  %.sroa.0111.5.i = phi i64 [ %.sroa.0111.6.i, %bb.cl ], [ %.sroa.0111.6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %i.hl, %bb.bo ] ; 2 uses
  %i.jj = phi <2 x i64> [ %i.jf, %bb.cl ], [ %i.jf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit214.i.i ], [ %9, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25550)
  call void @llvm.experimental.noalias.scope.decl(metadata !25551)
  call void @llvm.experimental.noalias.scope.decl(metadata !25552)
  %i.jk = load ptr, ptr %i.af, align 8, !alias.scope !25553, !noalias !25432, !nonnull !4, !noundef !4
  %i.jl = atomicrmw sub ptr %i.jk, i64 1 release, align 8, !noalias !25554
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.cm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i

bb.cm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i unwind label %bb.bh, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i: ; preds = %bb.cm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i, %bb.bj
  %.sroa.27.i.sroa.0.5 = phi i64 [ %.sroa.27.i.sroa.0.6, %bb.cm ], [ %.sroa.27.i.sroa.0.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %.sroa.27.i.sroa.0.0.copyload172, %bb.bj ] ; 2 uses
  %.sroa.27.i.sroa.13.5 = phi i64 [ %.sroa.27.i.sroa.13.6, %bb.cm ], [ %.sroa.27.i.sroa.13.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %.sroa.27.i.sroa.13.0.copyload180, %bb.bj ] ; 2 uses
  %.sroa.27.i.sroa.14.5 = phi double [ %.sroa.27.i.sroa.14.6, %bb.cm ], [ %.sroa.27.i.sroa.14.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %.sroa.27.i.sroa.14.0.copyload188, %bb.bj ] ; 2 uses
  %.sroa.27.i.sroa.15.5 = phi i64 [ %.sroa.27.i.sroa.15.6, %bb.cm ], [ %.sroa.27.i.sroa.15.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %.sroa.27.i.sroa.15.0.copyload196, %bb.bj ] ; 2 uses
  %.sroa.27.i.sroa.16.5 = phi double [ %.sroa.27.i.sroa.16.6, %bb.cm ], [ %.sroa.27.i.sroa.16.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %.sroa.27.i.sroa.16.0.copyload204, %bb.bj ] ; 2 uses
  %.sroa.27.i.sroa.17.5 = phi i64 [ %.sroa.27.i.sroa.17.6, %bb.cm ], [ %.sroa.27.i.sroa.17.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %.sroa.27.i.sroa.19.0.copyload228, %bb.bj ] ; 2 uses
  %.sroa.15.4.i = phi ptr [ %.sroa.15.5.i, %bb.cm ], [ %.sroa.15.5.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %i.hg, %bb.bj ] ; 2 uses
  %.sroa.0111.4.i = phi i64 [ %.sroa.0111.5.i, %bb.cm ], [ %.sroa.0111.5.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %i.he, %bb.bj ] ; 2 uses
  %i.jn = phi <2 x i64> [ %i.jj, %bb.cm ], [ %i.jj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit229.i.i ], [ %8, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25555)
  call void @llvm.experimental.noalias.scope.decl(metadata !25556)
  call void @llvm.experimental.noalias.scope.decl(metadata !25557)
  %i.jo = load ptr, ptr %i.al, align 8, !alias.scope !25558, !noalias !25432, !nonnull !4, !noundef !4
  %i.jp = atomicrmw sub ptr %i.jo, i64 1 release, align 8, !noalias !25559
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %bb.cn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i

bb.cn:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i unwind label %bb.an, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i, %bb.cn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i
  %.sroa.27.i.sroa.0.3 = phi i64 [ %.sroa.27.i.sroa.0.5, %bb.cn ], [ %.sroa.27.i.sroa.0.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.27.i.sroa.0.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %.sroa.27.i.sroa.13.3 = phi i64 [ %.sroa.27.i.sroa.13.5, %bb.cn ], [ %.sroa.27.i.sroa.13.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.27.i.sroa.13.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %.sroa.27.i.sroa.14.3 = phi double [ %.sroa.27.i.sroa.14.5, %bb.cn ], [ %.sroa.27.i.sroa.14.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.27.i.sroa.14.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %.sroa.27.i.sroa.15.3 = phi i64 [ %.sroa.27.i.sroa.15.5, %bb.cn ], [ %.sroa.27.i.sroa.15.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.27.i.sroa.15.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %.sroa.27.i.sroa.16.3 = phi double [ %.sroa.27.i.sroa.16.5, %bb.cn ], [ %.sroa.27.i.sroa.16.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.27.i.sroa.16.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %.sroa.27.i.sroa.17.3 = phi i64 [ %.sroa.27.i.sroa.17.5, %bb.cn ], [ %.sroa.27.i.sroa.17.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.27.i.sroa.17.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %.sroa.15.2.i = phi ptr [ %.sroa.15.4.i, %bb.cn ], [ %.sroa.15.4.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.15.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %.sroa.0111.2.i = phi i64 [ %.sroa.0111.4.i, %bb.cn ], [ %.sroa.0111.4.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %.sroa.0111.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  %i.jr = phi <2 x i64> [ %i.jn, %bb.cn ], [ %i.jn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit231.i.i ], [ %i.jz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !25432
  call void @llvm.experimental.noalias.scope.decl(metadata !25560)
  call void @llvm.experimental.noalias.scope.decl(metadata !25561)
  call void @llvm.experimental.noalias.scope.decl(metadata !25562)
  %i.js = load ptr, ptr %i.ap, align 8, !alias.scope !25563, !noalias !25432, !nonnull !4, !noundef !4
  %i.jt = atomicrmw sub ptr %i.js, i64 1 release, align 8, !noalias !25564
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.co, label %bb.dc

bb.co:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #26
          to label %bb.dc unwind label %bb.db, !noalias !25430

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i: ; preds = %bb.ba, %bb.az, %bb.au
  %.sroa.27.i.sroa.0.4 = phi i64 [ %.sroa.27.i.sroa.0.0.copyload171, %bb.ba ], [ %.sroa.27.i.sroa.0.0.copyload171, %bb.az ], [ %.sroa.27.i.sroa.0.0.copyload170, %bb.au ] ; 2 uses
  %.sroa.27.i.sroa.13.4 = phi i64 [ %.sroa.27.i.sroa.13.0.copyload179, %bb.ba ], [ %.sroa.27.i.sroa.13.0.copyload179, %bb.az ], [ %.sroa.27.i.sroa.13.0.copyload178, %bb.au ] ; 2 uses
  %.sroa.27.i.sroa.14.4 = phi double [ %.sroa.27.i.sroa.14.0.copyload187, %bb.ba ], [ %.sroa.27.i.sroa.14.0.copyload187, %bb.az ], [ %.sroa.27.i.sroa.14.0.copyload186, %bb.au ] ; 2 uses
  %.sroa.27.i.sroa.15.4 = phi i64 [ %.sroa.27.i.sroa.15.0.copyload195, %bb.ba ], [ %.sroa.27.i.sroa.15.0.copyload195, %bb.az ], [ %.sroa.27.i.sroa.15.0.copyload194, %bb.au ] ; 2 uses
  %.sroa.27.i.sroa.16.4 = phi double [ %.sroa.27.i.sroa.16.0.copyload203, %bb.ba ], [ %.sroa.27.i.sroa.16.0.copyload203, %bb.az ], [ %.sroa.27.i.sroa.16.0.copyload202, %bb.au ] ; 2 uses
  %.sroa.27.i.sroa.17.4 = phi i64 [ %.sroa.27.i.sroa.19.0.copyload227, %bb.ba ], [ %.sroa.27.i.sroa.19.0.copyload227, %bb.az ], [ %.sroa.27.i.sroa.19.0.copyload226, %bb.au ] ; 2 uses
  %.sroa.15.3.i = phi ptr [ %i.gm, %bb.ba ], [ %i.gm, %bb.az ], [ %i.gf, %bb.au ] ; 2 uses
  %.sroa.0111.3.i = phi i64 [ %i.gk, %bb.ba ], [ %i.gk, %bb.az ], [ %i.gd, %bb.au ] ; 2 uses
  %i.jv = phi <2 x i64> [ %7, %bb.ba ], [ %7, %bb.az ], [ %6, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25565)
  call void @llvm.experimental.noalias.scope.decl(metadata !25566)
  call void @llvm.experimental.noalias.scope.decl(metadata !25567)
  %i.jw = load ptr, ptr %i.ah, align 8, !alias.scope !25568, !noalias !25432, !nonnull !4, !noundef !4
  %i.jx = atomicrmw sub ptr %i.jw, i64 1 release, align 8, !noalias !25569
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.cp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i

bb.cp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i unwind label %bb.an, !noalias !25434

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit236.i.i: ; preds = %bb.cp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i, %bb.ap
  %.sroa.27.i.sroa.0.2 = phi i64 [ %.sroa.27.i.sroa.0.4, %bb.cp ], [ %.sroa.27.i.sroa.0.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %.sroa.27.i.sroa.0.0.copyload169, %bb.ap ]
  %.sroa.27.i.sroa.13.2 = phi i64 [ %.sroa.27.i.sroa.13.4, %bb.cp ], [ %.sroa.27.i.sroa.13.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %.sroa.27.i.sroa.13.0.copyload177, %bb.ap ]
  %.sroa.27.i.sroa.14.2 = phi double [ %.sroa.27.i.sroa.14.4, %bb.cp ], [ %.sroa.27.i.sroa.14.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %.sroa.27.i.sroa.14.0.copyload185, %bb.ap ]
  %.sroa.27.i.sroa.15.2 = phi i64 [ %.sroa.27.i.sroa.15.4, %bb.cp ], [ %.sroa.27.i.sroa.15.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %.sroa.27.i.sroa.15.0.copyload193, %bb.ap ]
  %.sroa.27.i.sroa.16.2 = phi double [ %.sroa.27.i.sroa.16.4, %bb.cp ], [ %.sroa.27.i.sroa.16.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %.sroa.27.i.sroa.16.0.copyload201, %bb.ap ]
  %.sroa.27.i.sroa.17.2 = phi i64 [ %.sroa.27.i.sroa.17.4, %bb.cp ], [ %.sroa.27.i.sroa.17.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %.sroa.27.i.sroa.19.0.copyload225, %bb.ap ]
  %.sroa.15.1.i = phi ptr [ %.sroa.15.3.i, %bb.cp ], [ %.sroa.15.3.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %i.fy, %bb.ap ]
  %.sroa.0111.1.i = phi i64 [ %.sroa.0111.3.i, %bb.cp ], [ %.sroa.0111.3.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %i.fw, %bb.ap ]
  %i.jz = phi <2 x i64> [ %i.jv, %bb.cp ], [ %i.jv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit198.i.i ], [ %5, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !25432
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i: ; preds = %bb.aj, %bb.ai, %bb.ad
  %.sroa.27.i.sroa.0.0 = phi i64 [ %.sroa.27.i.sroa.0.0.copyload168, %bb.aj ], [ %.sroa.27.i.sroa.0.0.copyload168, %bb.ai ], [ %.sroa.27.i.sroa.0.0.copyload, %bb.ad ]
  %.sroa.27.i.sroa.13.0 = phi i64 [ %.sroa.27.i.sroa.13.0.copyload176, %bb.aj ], [ %.sroa.27.i.sroa.13.0.copyload176, %bb.ai ], [ %.sroa.27.i.sroa.13.0.copyload, %bb.ad ]
  %.sroa.27.i.sroa.14.0 = phi double [ %.sroa.27.i.sroa.14.0.copyload184, %bb.aj ], [ %.sroa.27.i.sroa.14.0.copyload184, %bb.ai ], [ %.sroa.27.i.sroa.14.0.copyload, %bb.ad ]
  %.sroa.27.i.sroa.15.0 = phi i64 [ %.sroa.27.i.sroa.15.0.copyload192, %bb.aj ], [ %.sroa.27.i.sroa.15.0.copyload192, %bb.ai ], [ %.sroa.27.i.sroa.15.0.copyload, %bb.ad ]
  %.sroa.27.i.sroa.16.0 = phi double [ %.sroa.27.i.sroa.16.0.copyload200, %bb.aj ], [ %.sroa.27.i.sroa.16.0.copyload200, %bb.ai ], [ %.sroa.27.i.sroa.16.0.copyload, %bb.ad ]
  %.sroa.27.i.sroa.17.0 = phi i64 [ %.sroa.27.i.sroa.19.0.copyload224, %bb.aj ], [ %.sroa.27.i.sroa.19.0.copyload224, %bb.ai ], [ %.sroa.27.i.sroa.19.0.copyload, %bb.ad ]
  %.sroa.15.0.i = phi ptr [ %i.fk, %bb.aj ], [ %i.fk, %bb.ai ], [ %i.fd, %bb.ad ]
  %.sroa.0111.0.i = phi i64 [ %i.fi, %bb.aj ], [ %i.fi, %bb.ai ], [ %i.fb, %bb.ad ]
  %i.ka = phi <2 x i64> [ %4, %bb.aj ], [ %4, %bb.ai ], [ %3, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !25432
  br label %bb.dc

bb.cq:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !25429
  %i.kb = load double, ptr %i.en, align 8, !alias.scope !25427, !noalias !25431, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !25429
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 15)
          to label %bb.cs unwind label %.loopexit.split-lp.i, !noalias !25430

bb.cr:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !25429
  %i.kc = load double, ptr %i.en, align 8, !alias.scope !25427, !noalias !25431, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !25429
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 15)
          to label %bb.cx unwind label %.loopexit.split-lp.i, !noalias !25430

.body79.i:                                        ; preds = %bb.gs, %.body.i.i, %bb.dh, %bb.dg, %bb.df, %.body.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn103.i.i, %.body.i.i ], [ %i.kq, %bb.df ], [ %i.nr, %bb.gs ], [ %i.kq, %bb.dh ], [ %i.kq, %bb.dg ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #29
          to label %.body82.i unwind label %bb.dn, !noalias !25430

.loopexit.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i, %bb.z
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body79.i

.loopexit.split-lp.i:                             ; preds = %bb.dj, %bb.cx, %bb.cs, %bb.cr, %bb.cq
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body79.i

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10layer_norm10layer_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.av, i64 noundef %i.bs, double noundef %i.kb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.au)
          to label %bb.ct unwind label %.loopexit.split-lp.i, !noalias !25430

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25429
  %i.kd = load i64, ptr %i.av, align 8, !range !22, !noalias !25429, !noundef !4 ; 2 uses
  %.not.i59 = icmp eq i64 %i.kd, -1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.615.i.sroa.0.0.copyload153 = load i64, ptr %i.ke, align 8, !noalias !25429 ; 2 uses
  %.sroa.615.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.615.i.sroa.7.0.copyload155 = load i64, ptr %.sroa.615.i.sroa.7.0..sroa_idx, align 8, !noalias !25429 ; 2 uses
  %.sroa.615.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.615.i.sroa.8.0.copyload158 = load i64, ptr %.sroa.615.i.sroa.8.0..sroa_idx, align 8, !noalias !25429 ; 2 uses
  %.sroa.615.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.615.i.sroa.9.0.copyload161 = load double, ptr %.sroa.615.i.sroa.9.0..sroa_idx, align 8, !noalias !25429 ; 2 uses
  br i1 %.not.i59, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.21.40.copyload = load i64, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !25570
  %.sroa.24.40..sroa.553.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %.sroa.24.40.copyload = load double, ptr %.sroa.24.40..sroa.553.0..sroa_idx.i.sroa_idx, align 8, !noalias !25570
  %.sroa.25.40..sroa.553.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %12 = load <2 x i64>, ptr %.sroa.25.40..sroa.553.0..sroa_idx.i.sroa_idx, align 8, !noalias !25570
  %.sroa.26.40..sroa.553.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %.sroa.28.40.copyload = load i64, ptr %.sroa.26.40..sroa.553.0..sroa_idx.i.sroa_idx, align 8, !noalias !25570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25429
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25429
  br label %bb.cw

bb.cw:                                            ; preds = %bb.da, %bb.cv
  %.sroa.0164.0 = phi i64 [ %.sroa.67.i.sroa.0.0.copyload142, %bb.da ], [ %.sroa.615.i.sroa.0.0.copyload153, %bb.cv ]
  %.sroa.5165.0 = phi i64 [ %.sroa.67.i.sroa.7.0.copyload144, %bb.da ], [ %.sroa.615.i.sroa.7.0.copyload155, %bb.cv ]
  %.sroa.7166.0 = phi i64 [ %.sroa.67.i.sroa.8.0.copyload147, %bb.da ], [ %.sroa.615.i.sroa.8.0.copyload158, %bb.cv ]
  %.sroa.9167.0 = phi double [ %.sroa.67.i.sroa.9.0.copyload150, %bb.da ], [ %.sroa.615.i.sroa.9.0.copyload161, %bb.cv ]
  store i64 %.sroa.0164.0, ptr %i.ay, align 8, !noalias !25429
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.5165.0, ptr %.sroa.5165.0..sroa_idx, align 8, !noalias !25429
  %.sroa.7166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.sroa.7166.0, ptr %.sroa.7166.0..sroa_idx, align 8, !noalias !25429
  %.sroa.9167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store double %.sroa.9167.0, ptr %.sroa.9167.0..sroa_idx, align 8, !noalias !25429
  br label %bb.ac

bb.cx:                                            ; preds = %bb.cr
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn10layer_norm8rms_norm(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ax, i64 noundef %i.bs, double noundef %i.kc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aw)
          to label %bb.cy unwind label %.loopexit.split-lp.i, !noalias !25430

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !25429
  %i.kf = load i64, ptr %i.ax, align 8, !range !22, !noalias !25429, !noundef !4 ; 2 uses
  %.not67.i = icmp eq i64 %i.kf, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.67.i.sroa.0.0.copyload142 = load i64, ptr %i.kg, align 8, !noalias !25429 ; 2 uses
  %.sroa.67.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.67.i.sroa.7.0.copyload144 = load i64, ptr %.sroa.67.i.sroa.7.0..sroa_idx, align 8, !noalias !25429 ; 2 uses
  %.sroa.67.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.67.i.sroa.8.0.copyload147 = load i64, ptr %.sroa.67.i.sroa.8.0..sroa_idx, align 8, !noalias !25429 ; 2 uses
  %.sroa.67.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.67.i.sroa.9.0.copyload150 = load double, ptr %.sroa.67.i.sroa.9.0..sroa_idx, align 8, !noalias !25429 ; 2 uses
  br i1 %.not67.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %.sroa.21.40.copyload89 = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !25570
  %.sroa.24.40..sroa.544.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.sroa.24.40.copyload92 = load double, ptr %.sroa.24.40..sroa.544.0..sroa_idx.i.sroa_idx, align 8, !noalias !25570
  %.sroa.25.40..sroa.544.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %13 = load <2 x i64>, ptr %.sroa.25.40..sroa.544.0..sroa_idx.i.sroa_idx, align 8, !noalias !25570
  %.sroa.26.40..sroa.544.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %.sroa.28.40.copyload98 = load i64, ptr %.sroa.26.40..sroa.544.0..sroa_idx.i.sroa_idx, align 8, !noalias !25570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25429
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25429
  br label %bb.cw

bb.db:                                            ; preds = %bb.co, %bb.cj, %bb.aj, %.noexc.i, %bb.ac
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.db, %bb.am, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i, %bb.ag, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.kh, %bb.db ], [ %i.fe, %bb.af ], [ %i.fe, %bb.ag ], [ %.pn185.i.i, %bb.am ], [ %.pn185.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit194.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay) #29
          to label %.body79.i unwind label %bb.dn, !noalias !25430

bb.dc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i, %bb.co, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i
  %.sroa.27.i.sroa.0.1 = phi i64 [ %.sroa.27.i.sroa.0.3, %bb.co ], [ %.sroa.27.i.sroa.0.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.27.i.sroa.0.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  %.sroa.27.i.sroa.13.1 = phi i64 [ %.sroa.27.i.sroa.13.3, %bb.co ], [ %.sroa.27.i.sroa.13.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.27.i.sroa.13.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  %.sroa.27.i.sroa.14.1 = phi double [ %.sroa.27.i.sroa.14.3, %bb.co ], [ %.sroa.27.i.sroa.14.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.27.i.sroa.14.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  %.sroa.27.i.sroa.15.1 = phi i64 [ %.sroa.27.i.sroa.15.3, %bb.co ], [ %.sroa.27.i.sroa.15.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.27.i.sroa.15.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  %.sroa.27.i.sroa.16.1 = phi double [ %.sroa.27.i.sroa.16.3, %bb.co ], [ %.sroa.27.i.sroa.16.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.27.i.sroa.16.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  %.sroa.27.i.sroa.17.1 = phi i64 [ %.sroa.27.i.sroa.17.3, %bb.co ], [ %.sroa.27.i.sroa.17.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.27.i.sroa.17.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  %.sroa.15.7.ph.i = phi ptr [ %.sroa.15.2.i, %bb.co ], [ %.sroa.15.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.15.0.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ]
  %.sroa.0111.7.ph.i = phi i64 [ %.sroa.0111.2.i, %bb.co ], [ %.sroa.0111.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %.sroa.0111.0.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  %i.ki = phi <2 x i64> [ %i.jr, %bb.co ], [ %i.jr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit233.i.i ], [ %i.ka, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit188.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25432
  %i.kj = ptrtoint ptr %.sroa.15.7.ph.i to i64    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25571)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.kl = load i8, ptr %i.kk, align 8, !range !10, !alias.scope !25571, !noalias !25429, !noundef !4
  %i.km = icmp eq i8 %i.kl, 2
  br i1 %i.km, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !25572)
  call void @llvm.experimental.noalias.scope.decl(metadata !25573)
  call void @llvm.experimental.noalias.scope.decl(metadata !25574)
  call void @llvm.experimental.noalias.scope.decl(metadata !25575)
  %i.kn = load ptr, ptr %i.ay, align 8, !alias.scope !25576, !noalias !25429, !nonnull !4, !noundef !4
  %i.ko = atomicrmw sub ptr %i.kn, i64 1 release, align 8, !noalias !25577
  %i.kp = icmp eq i64 %i.ko, 1
  br i1 %i.kp, label %bb.de, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ay) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i unwind label %bb.df, !noalias !25430

bb.df:                                            ; preds = %bb.de
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25578)
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !25579, !noalias !25429, !noundef !4 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %.body79.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ku = atomicrmw sub ptr %i.ks, i64 1 release, align 8, !noalias !25580
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.dh, label %.body79.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kr) #26
          to label %.body79.i unwind label %bb.dk, !noalias !25430

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i: ; preds = %bb.de, %bb.dd
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25581)
  %i.kx = load ptr, ptr %i.kw, align 8, !alias.scope !25582, !noalias !25429, !noundef !4 ; 2 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.di

bb.di:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i
  %i.kz = atomicrmw sub ptr %i.kx, i64 1 release, align 8, !noalias !25583
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.dj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.dj:                                            ; preds = %bb.di
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kw) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %.loopexit.split-lp.i, !noalias !25430

bb.dk:                                            ; preds = %bb.dh
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25430
  unreachable

bb.dl:                                            ; preds = %bb.cj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25432
  %.sroa.032.i.sroa.0.0.copyload = load i64, ptr %i.bb, align 8, !noalias !25429
  %.sroa.032.i.sroa.4.0.copyload = load i64, ptr %i.cs, align 8, !noalias !25429
  %.sroa.032.i.sroa.5.0.copyload = load i64, ptr %i.ct, align 8, !noalias !25429
  %.sroa.032.i.sroa.6.24.copyload = load double, ptr %i.ay, align 8, !noalias !25429
  %.sroa.032.i.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.032.i.sroa.8.24.copyload = load i64, ptr %.sroa.032.i.sroa.8.24..sroa_idx, align 8, !noalias !25429
  %.sroa.032.i.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.032.i.sroa.9.24.copyload = load double, ptr %.sroa.032.i.sroa.9.24..sroa_idx, align 8, !noalias !25429
  %.sroa.032.i.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.032.i.sroa.10.24.copyload = load i64, ptr %.sroa.032.i.sroa.10.24..sroa_idx, align 8, !noalias !25429
  %i.lc = ptrtoint ptr %i.iu to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !25429
  %14 = insertelement <2 x i64> poison, i64 %.sroa.032.i.sroa.10.24.copyload, i64 0
  %i.ld = insertelement <2 x i64> %14, i64 %i.lc, i64 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockEEB1e_.exit.invoke.i

bb.dm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockEEB1e_.exit.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25429
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bi)
          to label %bb.gv unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.dj, %bb.di, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, %bb.dc, %bb.cz, %bb.cu
  %.sroa.25.0 = phi i64 [ %.sroa.27.i.sroa.17.1, %bb.dc ], [ %.sroa.27.i.sroa.17.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.27.i.sroa.17.1, %bb.dj ], [ %.sroa.27.i.sroa.17.1, %bb.di ], [ %.sroa.28.40.copyload98, %bb.cz ], [ %.sroa.28.40.copyload, %bb.cu ]
  %.sroa.24.0 = phi double [ %.sroa.27.i.sroa.16.1, %bb.dc ], [ %.sroa.27.i.sroa.16.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.27.i.sroa.16.1, %bb.dj ], [ %.sroa.27.i.sroa.16.1, %bb.di ], [ %.sroa.24.40.copyload92, %bb.cz ], [ %.sroa.24.40.copyload, %bb.cu ]
  %.sroa.21.0 = phi i64 [ %.sroa.27.i.sroa.15.1, %bb.dc ], [ %.sroa.27.i.sroa.15.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.27.i.sroa.15.1, %bb.dj ], [ %.sroa.27.i.sroa.15.1, %bb.di ], [ %.sroa.21.40.copyload89, %bb.cz ], [ %.sroa.21.40.copyload, %bb.cu ]
  %.sroa.20.0 = phi double [ %.sroa.27.i.sroa.14.1, %bb.dc ], [ %.sroa.27.i.sroa.14.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.27.i.sroa.14.1, %bb.dj ], [ %.sroa.27.i.sroa.14.1, %bb.di ], [ %.sroa.67.i.sroa.9.0.copyload150, %bb.cz ], [ %.sroa.615.i.sroa.9.0.copyload161, %bb.cu ]
  %.sroa.19.0 = phi i64 [ %.sroa.27.i.sroa.13.1, %bb.dc ], [ %.sroa.27.i.sroa.13.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.27.i.sroa.13.1, %bb.dj ], [ %.sroa.27.i.sroa.13.1, %bb.di ], [ %.sroa.67.i.sroa.8.0.copyload147, %bb.cz ], [ %.sroa.615.i.sroa.8.0.copyload158, %bb.cu ]
  %.sroa.17.0 = phi i64 [ %.sroa.27.i.sroa.0.1, %bb.dc ], [ %.sroa.27.i.sroa.0.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.27.i.sroa.0.1, %bb.dj ], [ %.sroa.27.i.sroa.0.1, %bb.di ], [ %.sroa.67.i.sroa.7.0.copyload144, %bb.cz ], [ %.sroa.615.i.sroa.7.0.copyload155, %bb.cu ]
  %.sroa.10.0 = phi i64 [ %i.kj, %bb.dc ], [ %i.kj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %i.kj, %bb.dj ], [ %i.kj, %bb.di ], [ %.sroa.67.i.sroa.0.0.copyload142, %bb.cz ], [ %.sroa.615.i.sroa.0.0.copyload153, %bb.cu ]
  %.sroa.069.0 = phi i64 [ %.sroa.0111.7.ph.i, %bb.dc ], [ %.sroa.0111.7.ph.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %.sroa.0111.7.ph.i, %bb.dj ], [ %.sroa.0111.7.ph.i, %bb.di ], [ %i.kf, %bb.cz ], [ %i.kd, %bb.cu ]
  %i.le = phi <2 x i64> [ %i.ki, %bb.dc ], [ %i.ki, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i.i ], [ %i.ki, %bb.dj ], [ %i.ki, %bb.di ], [ %13, %bb.cz ], [ %12, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !25429
  br label %bb.do

bb.dn:                                            ; preds = %.body.i, %.body79.i, %.body82.i, %bb.s
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25430
  unreachable

bb.do:                                            ; preds = %bb.gp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i
  %.sroa.25.1 = phi i64 [ %.sroa.25.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %i.nn, %bb.gp ]
  %.sroa.24.1 = phi double [ %.sroa.24.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.26.sroa.19.0.i, %bb.gp ]
  %.sroa.21.1 = phi i64 [ %.sroa.21.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.26.sroa.14.0.i, %bb.gp ]
  %.sroa.20.1 = phi double [ %.sroa.20.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.26.sroa.13.0.i, %bb.gp ]
  %.sroa.19.1 = phi i64 [ %.sroa.19.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.26.sroa.12.0.i, %bb.gp ]
  %.sroa.17.1 = phi i64 [ %.sroa.17.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.26.sroa.0.0.i, %bb.gp ]
  %.sroa.10.1 = phi i64 [ %.sroa.10.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %i.nm, %bb.gp ]
  %.sroa.069.1 = phi i64 [ %.sroa.069.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.sroa.12.0.i, %bb.gp ]
  %i.lg = phi <2 x i64> [ %i.le, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormEECs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %21, %bb.gp ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.dq unwind label %bb.dp, !noalias !25430

bb.dp:                                            ; preds = %bb.do
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body82.i unwind label %bb.dr, !noalias !25430

bb.dq:                                            ; preds = %bb.do
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockEEB1e_.exit.invoke.i unwind label %bb.v, !noalias !25430

bb.dr:                                            ; preds = %bb.dp
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25430
  unreachable

bb.ds:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25584
  br i1 %i.cw, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !25584
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15)
          to label %bb.dw unwind label %bb.dv, !noalias !25585

bb.du:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !25584
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15)
          to label %bb.en unwind label %bb.dv, !noalias !25585

.body.i.i:                                        ; preds = %bb.ej, %bb.ei, %bb.eh, %.body117.i.i, %bb.dv
  %.pn103.i.i = phi { ptr, i32 } [ %.pn101.i.i, %.body117.i.i ], [ %i.lj, %bb.dv ], [ %i.lq, %bb.ej ], [ %i.lq, %bb.ei ], [ %i.lq, %bb.eh ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ba) #29
          to label %.body79.i unwind label %bb.go, !noalias !25585

bb.dv:                                            ; preds = %bb.en, %bb.el, %bb.dw, %bb.du, %bb.dt
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.dw:                                            ; preds = %bb.dt
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10layer_norm10layer_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.t, i64 noundef %i.bs, double noundef %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s)
          to label %bb.dx unwind label %bb.dv, !noalias !25585

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !25584
  %i.lk = load i64, ptr %i.t, align 8, !range !22, !noalias !25584, !noundef !4 ; 2 uses
  %.not.i84.i = icmp eq i64 %i.lk, -1
  %.sroa.67.i.sroa.0.0.copyload143.i = load double, ptr %.sroa.466.0..sroa_idx.i.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.67.i.sroa.7.sroa.0.0.copyload259.i = load i64, ptr %.sroa.67.i.sroa.7.0..sroa.466.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.67.i.sroa.7.sroa.7.0.copyload261.i = load i64, ptr %.sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa.466.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.67.i.sroa.7.sroa.8.0.copyload263.i = load double, ptr %.sroa.67.i.sroa.7.sroa.8.0..sroa.67.i.sroa.7.0..sroa.466.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  br i1 %.not.i84.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.sroa.26.sroa.14.24.copyload.i = load i64, ptr %.sroa.567.0..sroa_idx.i.i, align 8, !noalias !25586
  %.sroa.26.sroa.19.24.copyload.i = load double, ptr %.sroa.26.sroa.19.24..sroa.567.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %15 = load <2 x i64>, ptr %.sroa.26.sroa.20.24..sroa.567.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.33.48.copyload.i = load double, ptr %.sroa.33.48..sroa.567.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !25584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !25584
  store double %.sroa.67.i.sroa.0.0.copyload143.i, ptr %i.w, align 8, !noalias !25584
  store i64 %.sroa.67.i.sroa.7.sroa.0.0.copyload259.i, ptr %.sroa.67.i.sroa.7.0..sroa_idx145.i, align 8, !noalias !25584
  store i64 %.sroa.67.i.sroa.7.sroa.7.0.copyload261.i, ptr %.sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa_idx145.sroa_idx.i, align 8, !noalias !25584
  store double %.sroa.67.i.sroa.7.sroa.8.0.copyload263.i, ptr %.sroa.67.i.sroa.7.sroa.8.0..sroa.67.i.sroa.7.0..sroa_idx145.sroa_idx.i, align 8, !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25584
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 24)
          to label %bb.eb unwind label %bb.ea, !noalias !25585

.body117.i.i:                                     ; preds = %bb.gk, %bb.gj, %bb.gi, %.body106.i.i, %bb.ea
  %.pn101.i.i = phi { ptr, i32 } [ %.pn.i86.i, %.body106.i.i ], [ %i.ll, %bb.ea ], [ %i.na, %bb.gk ], [ %i.na, %bb.gj ], [ %i.na, %bb.gi ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #29
          to label %.body.i.i unwind label %bb.go, !noalias !25585

bb.ea:                                            ; preds = %bb.gm, %bb.er, %bb.eq, %bb.eb, %bb.dz
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i.i

bb.eb:                                            ; preds = %bb.dz
  invoke void @_RINvNtCs3NyA1pFSltE_9candle_nn10layer_norm10layer_normdECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.o, i64 noundef %i.bs, double noundef %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.ec unwind label %bb.ea, !noalias !25585

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25584
  %i.lm = load i64, ptr %i.o, align 8, !range !22, !noalias !25584, !noundef !4 ; 2 uses
  %.not97.i.i = icmp eq i64 %i.lm, -1
  %.sroa.625.i.sroa.0.0.copyload149.i = load double, ptr %.sroa.484.0..sroa_idx.i.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.625.i.sroa.7.sroa.0.0.copyload247.i = load i64, ptr %.sroa.625.i.sroa.7.0..sroa.484.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.625.i.sroa.7.sroa.7.0.copyload249.i = load i64, ptr %.sroa.625.i.sroa.7.sroa.7.0..sroa.625.i.sroa.7.0..sroa.484.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.625.i.sroa.7.sroa.8.0.copyload251.i = load double, ptr %.sroa.625.i.sroa.7.sroa.8.0..sroa.625.i.sroa.7.0..sroa.484.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  br i1 %.not97.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.sroa.26.sroa.14.24.copyload232.i = load i64, ptr %.sroa.585.0..sroa_idx.i.i, align 8, !noalias !25586
  %.sroa.26.sroa.19.24.copyload238.i = load double, ptr %.sroa.26.sroa.19.24..sroa.585.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %16 = load <2 x i64>, ptr %.sroa.26.sroa.20.24..sroa.585.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.33.48.copyload108.i = load double, ptr %.sroa.33.48..sroa.585.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25584
  br label %bb.ef

bb.ef:                                            ; preds = %bb.eu, %bb.ee
  %storemerge396.i = phi double [ %.sroa.625.i.sroa.0.0.copyload149.i, %bb.ee ], [ %.sroa.616.i.sroa.0.0.copyload146.i, %bb.eu ]
  %storemerge395.i = phi i64 [ %.sroa.625.i.sroa.7.sroa.0.0.copyload247.i, %bb.ee ], [ %.sroa.616.i.sroa.7.sroa.0.0.copyload253.i, %bb.eu ]
  %storemerge394.i = phi i64 [ %.sroa.625.i.sroa.7.sroa.7.0.copyload249.i, %bb.ee ], [ %.sroa.616.i.sroa.7.sroa.7.0.copyload255.i, %bb.eu ]
  %storemerge.i = phi double [ %.sroa.625.i.sroa.7.sroa.8.0.copyload251.i, %bb.ee ], [ %.sroa.616.i.sroa.7.sroa.8.0.copyload257.i, %bb.eu ]
  store double %storemerge396.i, ptr %i.r, align 8, !noalias !25584
  store i64 %storemerge395.i, ptr %.sroa.625.i.sroa.7.0..sroa_idx151.i, align 8, !noalias !25584
  store i64 %storemerge394.i, ptr %.sroa.625.i.sroa.7.sroa.7.0..sroa.625.i.sroa.7.0..sroa_idx151.sroa_idx.i, align 8, !noalias !25584
  store double %storemerge.i, ptr %.sroa.625.i.sroa.7.sroa.8.0..sroa.625.i.sroa.7.0..sroa_idx151.sroa_idx.i, align 8, !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !25584
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 14)
          to label %bb.ew unwind label %bb.ev, !noalias !25585

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i: ; preds = %bb.gm, %bb.gl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i, %bb.et, %bb.ed
  %.sroa.26.sroa.19.1.i = phi double [ %.sroa.26.sroa.19.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.26.sroa.19.2.i, %bb.gm ], [ %.sroa.26.sroa.19.2.i, %bb.gl ], [ %.sroa.26.sroa.19.24.copyload240.i, %bb.et ], [ %.sroa.26.sroa.19.24.copyload238.i, %bb.ed ] ; 3 uses
  %.sroa.26.sroa.14.1.i = phi i64 [ %.sroa.26.sroa.14.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.26.sroa.14.2.i, %bb.gm ], [ %.sroa.26.sroa.14.2.i, %bb.gl ], [ %.sroa.26.sroa.14.24.copyload234.i, %bb.et ], [ %.sroa.26.sroa.14.24.copyload232.i, %bb.ed ] ; 3 uses
  %.sroa.26.sroa.13.1.i = phi double [ %.sroa.26.sroa.13.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.26.sroa.13.2.i, %bb.gm ], [ %.sroa.26.sroa.13.2.i, %bb.gl ], [ %.sroa.616.i.sroa.7.sroa.8.0.copyload257.i, %bb.et ], [ %.sroa.625.i.sroa.7.sroa.8.0.copyload251.i, %bb.ed ] ; 3 uses
  %.sroa.26.sroa.12.1.i = phi i64 [ %.sroa.26.sroa.12.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.26.sroa.12.2.i, %bb.gm ], [ %.sroa.26.sroa.12.2.i, %bb.gl ], [ %.sroa.616.i.sroa.7.sroa.7.0.copyload255.i, %bb.et ], [ %.sroa.625.i.sroa.7.sroa.7.0.copyload249.i, %bb.ed ] ; 3 uses
  %.sroa.26.sroa.0.1.i = phi i64 [ %.sroa.26.sroa.0.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.26.sroa.0.2.i, %bb.gm ], [ %.sroa.26.sroa.0.2.i, %bb.gl ], [ %.sroa.616.i.sroa.7.sroa.0.0.copyload253.i, %bb.et ], [ %.sroa.625.i.sroa.7.sroa.0.0.copyload247.i, %bb.ed ] ; 3 uses
  %.sroa.33.1.i = phi double [ %.sroa.33.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.33.2.i, %bb.gm ], [ %.sroa.33.2.i, %bb.gl ], [ %.sroa.33.48.copyload110.i, %bb.et ], [ %.sroa.33.48.copyload108.i, %bb.ed ] ; 3 uses
  %.sroa.20.1.i = phi double [ %.sroa.20.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.20.2.i, %bb.gm ], [ %.sroa.20.2.i, %bb.gl ], [ %.sroa.616.i.sroa.0.0.copyload146.i, %bb.et ], [ %.sroa.625.i.sroa.0.0.copyload149.i, %bb.ed ] ; 3 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %.sroa.12.2.i, %bb.gm ], [ %.sroa.12.2.i, %bb.gl ], [ %i.mb, %bb.et ], [ %i.lm, %bb.ed ] ; 3 uses
  %17 = phi <2 x i64> [ %23, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i ], [ %23, %bb.gm ], [ %23, %bb.gl ], [ %19, %bb.et ], [ %16, %bb.ed ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !25584
  call void @llvm.experimental.noalias.scope.decl(metadata !25587)
  call void @llvm.experimental.noalias.scope.decl(metadata !25588)
  call void @llvm.experimental.noalias.scope.decl(metadata !25589)
  call void @llvm.experimental.noalias.scope.decl(metadata !25590)
  %i.ln = load ptr, ptr %i.w, align 8, !alias.scope !25591, !noalias !25584, !nonnull !4, !noundef !4
  %i.lo = atomicrmw sub ptr %i.ln, i64 1 release, align 8, !noalias !25592
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.eg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i

bb.eg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i unwind label %bb.eh, !noalias !25585

bb.eh:                                            ; preds = %bb.eg
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25593)
  %i.lr = load ptr, ptr %.sroa.67.i.sroa.7.0..sroa_idx145.i, align 8, !alias.scope !25594, !noalias !25584, !noundef !4 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %.body.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.lt = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !noalias !25595
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.ej, label %.body.i.i

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.67.i.sroa.7.0..sroa_idx145.i) #26
          to label %.body.i.i unwind label %bb.em, !noalias !25585

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i: ; preds = %bb.eg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !25596)
  %i.lv = load ptr, ptr %.sroa.67.i.sroa.7.0..sroa_idx145.i, align 8, !alias.scope !25597, !noalias !25584, !noundef !4 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.ek

bb.ek:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i
  %i.lx = atomicrmw sub ptr %i.lv, i64 1 release, align 8, !noalias !25598
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.el, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.el:                                            ; preds = %bb.ek
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.67.i.sroa.7.0..sroa_idx145.i) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i unwind label %bb.dv, !noalias !25585

bb.em:                                            ; preds = %bb.ej
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25585
  unreachable

bb.en:                                            ; preds = %bb.du
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn10layer_norm8rms_norm(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.v, i64 noundef %i.bs, double noundef %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.eo unwind label %bb.dv, !noalias !25585

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !25584
  %i.ma = load i64, ptr %i.v, align 8, !range !22, !noalias !25584, !noundef !4 ; 2 uses
  %.not98.i.i = icmp eq i64 %i.ma, -1
  %.sroa.6.i.sroa.0.0.copyload140.i = load double, ptr %.sroa.457.0..sroa_idx.i.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.6.i.sroa.7.sroa.0.0.copyload265.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa.457.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.6.i.sroa.7.sroa.7.0.copyload267.i = load i64, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa.457.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.6.i.sroa.7.sroa.8.0.copyload269.i = load double, ptr %.sroa.6.i.sroa.7.sroa.8.0..sroa.6.i.sroa.7.0..sroa.457.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  br i1 %.not98.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.sroa.26.sroa.14.24.copyload233.i = load i64, ptr %.sroa.558.0..sroa_idx.i.i, align 8, !noalias !25586
  %.sroa.26.sroa.19.24.copyload239.i = load double, ptr %.sroa.26.sroa.19.24..sroa.558.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %18 = load <2 x i64>, ptr %.sroa.26.sroa.20.24..sroa.558.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.33.48.copyload109.i = load double, ptr %.sroa.33.48..sroa.558.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25584
  store double %.sroa.6.i.sroa.0.0.copyload140.i, ptr %i.w, align 8, !noalias !25584
  store i64 %.sroa.6.i.sroa.7.sroa.0.0.copyload265.i, ptr %.sroa.67.i.sroa.7.0..sroa_idx145.i, align 8, !noalias !25584
  store i64 %.sroa.6.i.sroa.7.sroa.7.0.copyload267.i, ptr %.sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa_idx145.sroa_idx.i, align 8, !noalias !25584
  store double %.sroa.6.i.sroa.7.sroa.8.0.copyload269.i, ptr %.sroa.67.i.sroa.7.sroa.8.0..sroa.67.i.sroa.7.0..sroa_idx145.sroa_idx.i, align 8, !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !25584
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 24)
          to label %bb.er unwind label %bb.ea, !noalias !25585

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn10layer_norm8rms_norm(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.q, i64 noundef %i.bs, double noundef %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %bb.es unwind label %bb.ea, !noalias !25585

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25584
  %i.mb = load i64, ptr %i.q, align 8, !range !22, !noalias !25584, !noundef !4 ; 2 uses
  %.not99.i.i = icmp eq i64 %i.mb, -1
  %.sroa.616.i.sroa.0.0.copyload146.i = load double, ptr %.sroa.475.0..sroa_idx.i.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.616.i.sroa.7.sroa.0.0.copyload253.i = load i64, ptr %.sroa.616.i.sroa.7.0..sroa.475.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.616.i.sroa.7.sroa.7.0.copyload255.i = load i64, ptr %.sroa.616.i.sroa.7.sroa.7.0..sroa.616.i.sroa.7.0..sroa.475.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  %.sroa.616.i.sroa.7.sroa.8.0.copyload257.i = load double, ptr %.sroa.616.i.sroa.7.sroa.8.0..sroa.616.i.sroa.7.0..sroa.475.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !25584 ; 2 uses
  br i1 %.not99.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %.sroa.26.sroa.14.24.copyload234.i = load i64, ptr %.sroa.576.0..sroa_idx.i.i, align 8, !noalias !25586
  %.sroa.26.sroa.19.24.copyload240.i = load double, ptr %.sroa.26.sroa.19.24..sroa.576.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %19 = load <2 x i64>, ptr %.sroa.26.sroa.20.24..sroa.576.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.33.48.copyload110.i = load double, ptr %.sroa.33.48..sroa.576.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25584
  br label %bb.ef

.body106.i.i:                                     ; preds = %.body112.i.i, %bb.ez, %bb.ev
  %.pn.i86.i = phi { ptr, i32 } [ %eh.lpad-body113.i.i, %.body112.i.i ], [ %i.mc, %bb.ev ], [ %.pn.i.i.i, %bb.ez ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #29
          to label %.body117.i.i unwind label %bb.go, !noalias !25585

bb.ev:                                            ; preds = %bb.ge, %bb.fm, %bb.ef
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body106.i.i

bb.ew:                                            ; preds = %bb.ef
  br i1 %i.de, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.dh, label %bb.fb, label %bb.fc

bb.ey:                                            ; preds = %bb.ew
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #30
          to label %bb.fa unwind label %.loopexit.split-lp331.i, !noalias !25599

bb.ez:                                            ; preds = %bb.fh, %.loopexit.split-lp331.i, %.loopexit330.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.mk, %bb.fh ], [ %lpad.loopexit332.i, %.loopexit330.i ], [ %lpad.loopexit.split-lp333.i, %.loopexit.split-lp331.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #29
          to label %.body106.i.i unwind label %bb.fn, !noalias !25600

.loopexit330.i:                                   ; preds = %bb.fk, %bb.fd, %bb.fc
  %lpad.loopexit332.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit.split-lp331.i:                          ; preds = %bb.ey
  %lpad.loopexit.split-lp333.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fa:                                            ; preds = %bb.ey
  unreachable

bb.fb:                                            ; preds = %bb.ex
  %i.md = udiv i64 %i.dd, %i.dc
  %.reass.i = mul i64 %factor.op.mul.i, %i.md
  %i.me = add i64 %.reass.i, %i.dd
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ex
  %.sroa.0.0.i.i.i = phi i64 [ %i.me, %bb.fb ], [ %i.di, %bb.ex ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !25601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25601
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 15)
          to label %bb.fd unwind label %.loopexit330.i, !noalias !25600

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, i64 noundef %i.bs, i64 noundef %.sroa.0.0.i.i.i, i1 noundef zeroext %.sroa.05.0.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.fe unwind label %.loopexit330.i, !noalias !25600

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25601
  %i.mf = load i64, ptr %i.i, align 8, !range !22, !noalias !25601, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.mf, -1
  %.sroa.6.i.sroa.0.0.copyload165.i.i = load double, ptr %i.dr, align 8, !noalias !25601 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx.i.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.7.i.sroa.6.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.7.0.copyload.i = load double, ptr %.sroa.6.i.sroa.7.i.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.7.i.sroa.8.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.9.0.copyload.i = load double, ptr %.sroa.6.i.sroa.7.i.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.6.i.sroa.7.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.7.i.sroa.10.0..sroa.6.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  br i1 %.not.i.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.mg = load i64, ptr %.sroa.526.0..sroa_idx.i.i.i, align 8, !noalias !25602
  %.sroa.16.sroa.10.48.copyload.i.i = load double, ptr %.sroa.16.sroa.10.48..sroa.526.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !25602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25601
  br label %bb.fm

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25601
  store double %.sroa.6.i.sroa.0.0.copyload165.i.i, ptr %i.j, align 8, !noalias !25601
  store i64 %.sroa.6.i.sroa.7.i.sroa.0.0.copyload.i, ptr %.sroa.6.i.sroa.7.0..sroa_idx167.i.i, align 8, !noalias !25601
  store i64 %.sroa.6.i.sroa.7.i.sroa.6.0.copyload.i, ptr %.sroa.6.i.sroa.7.i.sroa.6.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25601
  store double %.sroa.6.i.sroa.7.i.sroa.7.0.copyload.i, ptr %.sroa.6.i.sroa.7.i.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25601
  store i64 %.sroa.6.i.sroa.7.i.sroa.8.0.copyload.i, ptr %.sroa.6.i.sroa.7.i.sroa.8.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25601
  store double %.sroa.6.i.sroa.7.i.sroa.9.0.copyload.i, ptr %.sroa.6.i.sroa.7.i.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25601
  store i64 %.sroa.6.i.sroa.7.i.sroa.10.0.copyload.i, ptr %.sroa.6.i.sroa.7.i.sroa.10.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25601
  %i.mh = uitofp i64 %i.ei to double
  %i.mi = call nsz double @llvm.maximumnum.f64(double %i.mh, double 1.000000e+00) ; 2 uses
  %i.mj = select i1 %i.dw, double %i.mi, double 1.000000e+00
  %.sroa.027.0.i.i.i = fmul nnan double %i.dt, %i.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !25601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25601
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 5)
          to label %bb.fi unwind label %bb.fh, !noalias !25600

bb.fh:                                            ; preds = %bb.fi, %bb.fg
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing6LinearEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #29
          to label %bb.ez unwind label %bb.fn, !noalias !25600

bb.fi:                                            ; preds = %bb.fg
  invoke void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, i64 noundef %i.bs, i64 noundef %i.bs, i1 noundef zeroext %i.dn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.fj unwind label %bb.fh, !noalias !25600

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25601
  %i.ml = load i64, ptr %i.g, align 8, !range !22, !noalias !25601, !noundef !4 ; 2 uses
  %.not50.i.i.i = icmp eq i64 %i.ml, -1
  %.sroa.611.i.sroa.0.0.copyload168.i.i = load double, ptr %i.dx, align 8, !noalias !25601 ; 2 uses
  %.sroa.611.i.sroa.7.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.611.i.sroa.7.0..sroa_idx.i.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.611.i.sroa.7.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.611.i.sroa.7.i.sroa.6.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.611.i.sroa.7.i.sroa.7.0.copyload.i = load double, ptr %.sroa.611.i.sroa.7.i.sroa.7.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.611.i.sroa.7.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.611.i.sroa.7.i.sroa.8.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.611.i.sroa.7.i.sroa.9.0.copyload.i = load double, ptr %.sroa.611.i.sroa.7.i.sroa.9.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  %.sroa.611.i.sroa.7.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.611.i.sroa.7.i.sroa.10.0..sroa.611.i.sroa.7.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25601 ; 2 uses
  br i1 %.not50.i.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.mm = load i64, ptr %.sroa.543.0..sroa_idx.i.i.i, align 8, !noalias !25602
  %.sroa.16.sroa.10.48.copyload172.i.i = load double, ptr %.sroa.16.sroa.10.48..sroa.543.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !25602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25601
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing6LinearEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j)
          to label %bb.fm unwind label %.loopexit330.i, !noalias !25600

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25601
  %.sroa.16.sroa.0.sroa.0.i.sroa.0.0.copyload301.i = load i64, ptr %i.j, align 8, !noalias !25602
  %.sroa.16.sroa.0.sroa.0.i.sroa.8.0.copyload303.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx167.i.i, align 8, !noalias !25602
  %.sroa.16.sroa.0.sroa.0.i.sroa.10.0.copyload305.i = load double, ptr %.sroa.6.i.sroa.7.i.sroa.6.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25602
  %.sroa.16.sroa.0.sroa.0.i.sroa.12.0.copyload307.i = load i64, ptr %.sroa.6.i.sroa.7.i.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25602
  %.sroa.16.sroa.0.sroa.0.i.sroa.14.0.copyload309.i = load double, ptr %.sroa.6.i.sroa.7.i.sroa.8.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25602
  %.sroa.16.sroa.0.sroa.0.i.sroa.16.0.copyload311.i = load i64, ptr %.sroa.6.i.sroa.7.i.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25602
  %.sroa.16.sroa.0.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.6.i.sroa.7.i.sroa.10.0..sroa.6.i.sroa.7.0..sroa_idx167.i.sroa_idx.i, align 8, !noalias !25602
  %i.mn = bitcast double %i.mi to i64
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %bb.ff
  %.sroa.16.sroa.0.sroa.0.i.sroa.0.0.i = phi i64 [ %.sroa.16.sroa.0.sroa.0.i.sroa.0.0.copyload301.i, %bb.fl ], [ %.sroa.611.i.sroa.7.i.sroa.0.0.copyload.i, %bb.fk ], [ %.sroa.6.i.sroa.7.i.sroa.0.0.copyload.i, %bb.ff ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.i.sroa.8.0.i = phi i64 [ %.sroa.16.sroa.0.sroa.0.i.sroa.8.0.copyload303.i, %bb.fl ], [ %.sroa.611.i.sroa.7.i.sroa.6.0.copyload.i, %bb.fk ], [ %.sroa.6.i.sroa.7.i.sroa.6.0.copyload.i, %bb.ff ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.i.sroa.10.0.i = phi double [ %.sroa.16.sroa.0.sroa.0.i.sroa.10.0.copyload305.i, %bb.fl ], [ %.sroa.611.i.sroa.7.i.sroa.7.0.copyload.i, %bb.fk ], [ %.sroa.6.i.sroa.7.i.sroa.7.0.copyload.i, %bb.ff ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.i.sroa.12.0.i = phi i64 [ %.sroa.16.sroa.0.sroa.0.i.sroa.12.0.copyload307.i, %bb.fl ], [ %.sroa.611.i.sroa.7.i.sroa.8.0.copyload.i, %bb.fk ], [ %.sroa.6.i.sroa.7.i.sroa.8.0.copyload.i, %bb.ff ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.i.sroa.14.0.i = phi double [ %.sroa.16.sroa.0.sroa.0.i.sroa.14.0.copyload309.i, %bb.fl ], [ %.sroa.611.i.sroa.7.i.sroa.9.0.copyload.i, %bb.fk ], [ %.sroa.6.i.sroa.7.i.sroa.9.0.copyload.i, %bb.ff ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.i.sroa.16.0.i = phi i64 [ %.sroa.16.sroa.0.sroa.0.i.sroa.16.0.copyload311.i, %bb.fl ], [ %.sroa.611.i.sroa.7.i.sroa.10.0.copyload.i, %bb.fk ], [ %.sroa.6.i.sroa.7.i.sroa.10.0.copyload.i, %bb.ff ] ; 2 uses
  %.sroa.16.sroa.11.i.sroa.0.0.i = phi i64 [ %.sroa.611.i.sroa.7.i.sroa.0.0.copyload.i, %bb.fl ], [ undef, %bb.fk ], [ undef, %bb.ff ]
  %.sroa.16.sroa.11.i.sroa.5.0.i = phi i64 [ %.sroa.611.i.sroa.7.i.sroa.6.0.copyload.i, %bb.fl ], [ undef, %bb.fk ], [ undef, %bb.ff ]
  %.sroa.16.sroa.11.i.sroa.6.0.i = phi double [ %.sroa.611.i.sroa.7.i.sroa.7.0.copyload.i, %bb.fl ], [ undef, %bb.fk ], [ undef, %bb.ff ]
  %.sroa.16.sroa.11.i.sroa.7.0.i = phi i64 [ %.sroa.611.i.sroa.7.i.sroa.8.0.copyload.i, %bb.fl ], [ undef, %bb.fk ], [ undef, %bb.ff ]
  %.sroa.16.sroa.11.i.sroa.8.0.i = phi double [ %.sroa.611.i.sroa.7.i.sroa.9.0.copyload.i, %bb.fl ], [ undef, %bb.fk ], [ undef, %bb.ff ]
  %.sroa.16.sroa.11.i.sroa.9.0.i = phi i64 [ %.sroa.611.i.sroa.7.i.sroa.10.0.copyload.i, %bb.fl ], [ undef, %bb.fk ], [ undef, %bb.ff ]
  %.sroa.16.sroa.0.sroa.8.0.i.i = phi i64 [ %.sroa.16.sroa.0.sroa.8.0.copyload.i.i, %bb.fl ], [ %i.mm, %bb.fk ], [ %i.mg, %bb.ff ] ; 2 uses
  %.sroa.16.sroa.10.0.i.i = phi double [ %.sroa.611.i.sroa.0.0.copyload168.i.i, %bb.fl ], [ %.sroa.16.sroa.10.48.copyload172.i.i, %bb.fk ], [ %.sroa.16.sroa.10.48.copyload.i.i, %bb.ff ] ; 2 uses
  %.sroa.22.0.i.i = phi i64 [ %i.dk, %bb.fl ], [ undef, %bb.fk ], [ undef, %bb.ff ]
  %.sroa.13.0.i.i = phi double [ %.sroa.027.0.i.i.i, %bb.fl ], [ %.sroa.611.i.sroa.0.0.copyload168.i.i, %bb.fk ], [ %.sroa.6.i.sroa.0.0.copyload165.i.i, %bb.ff ] ; 2 uses
  %.sroa.8121.0.i.i = phi i64 [ %i.mn, %bb.fl ], [ %i.ml, %bb.fk ], [ %i.mf, %bb.ff ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.029.0.i.i.i, %bb.fl ], [ 2, %bb.fk ], [ 2, %bb.ff ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25601
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i unwind label %bb.ev, !noalias !25585

bb.fn:                                            ; preds = %bb.fh, %bb.ez
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25600
  unreachable

_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i: ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25584
  %i.mp = icmp eq i64 %.sroa.0.0.i.i, 2
  br i1 %i.mp, label %bb.gg, label %bb.fo

bb.fo:                                            ; preds = %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i
  store i64 %.sroa.16.sroa.11.i.sroa.0.0.i, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.11.i.sroa.5.0.i, ptr %.sroa.16.sroa.11.i.sroa.5.0..sroa.540.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store double %.sroa.16.sroa.11.i.sroa.6.0.i, ptr %.sroa.16.sroa.11.i.sroa.6.0..sroa.540.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.11.i.sroa.7.0.i, ptr %.sroa.16.sroa.11.i.sroa.7.0..sroa.540.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store double %.sroa.16.sroa.11.i.sroa.8.0.i, ptr %.sroa.16.sroa.11.i.sroa.8.0..sroa.540.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.11.i.sroa.9.0.i, ptr %.sroa.16.sroa.11.i.sroa.9.0..sroa.540.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.0.sroa.0.i.sroa.0.0.i, ptr %.sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.0.sroa.0.i.sroa.8.0.i, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.7.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store double %.sroa.16.sroa.0.sroa.0.i.sroa.10.0.i, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.8.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.0.sroa.0.i.sroa.12.0.i, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.9.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store double %.sroa.16.sroa.0.sroa.0.i.sroa.14.0.i, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.10.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.0.sroa.0.i.sroa.16.0.i, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.11.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25584
  store i64 %.sroa.0.0.i.i, ptr %i.m, align 8, !noalias !25584
  store i64 %.sroa.8121.0.i.i, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !25584
  store double %.sroa.13.0.i.i, ptr %.sroa.439.sroa.4.0..sroa.439.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store i64 %.sroa.16.sroa.0.sroa.8.0.i.i, ptr %.sroa.439.sroa.5.sroa.0.sroa.4.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store double %.sroa.16.sroa.10.0.i.i, ptr %.sroa.439.sroa.5.sroa.4.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store i64 %i.dc, ptr %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store i64 %.sroa.22.0.i.i, ptr %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store i64 %i.da, ptr %.sroa.540.sroa.6.0..sroa.540.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store ptr null, ptr %.sroa.540.sroa.7.0..sroa.540.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  store i8 %i.dg, ptr %.sroa.540.sroa.9.0..sroa.540.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25584
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 3)
          to label %bb.fq unwind label %bb.fp, !noalias !25585

bb.fp:                                            ; preds = %bb.gc, %bb.fo
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.body112.i.i

.body112.i.i:                                     ; preds = %bb.fr, %bb.fp
  %eh.lpad-body113.i.i = phi { ptr, i32 } [ %i.mq, %bb.fp ], [ %.pn.i109.i.i, %bb.fr ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm13SelfAttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(184) %i.m) #29
          to label %.body106.i.i unwind label %bb.go, !noalias !25585

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25603
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 13)
          to label %bb.ft unwind label %bb.fs, !noalias !25604

bb.fr:                                            ; preds = %bb.fx, %bb.fs
  %.pn.i109.i.i = phi { ptr, i32 } [ %i.mr, %bb.fs ], [ %i.mt, %bb.fx ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #29
          to label %.body112.i.i unwind label %bb.gd, !noalias !25604

bb.fs:                                            ; preds = %bb.ga, %bb.ft, %bb.fq
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ft:                                            ; preds = %bb.fq
  invoke void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, i64 noundef %i.bs, i64 noundef %i.ea, i1 noundef zeroext %i.dn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.fu unwind label %bb.fs, !noalias !25604

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25603
  %i.ms = load i64, ptr %i.d, align 8, !range !22, !noalias !25603, !noundef !4 ; 2 uses
  %.not.i110.i.i = icmp eq i64 %i.ms, -1
  %.sroa.6.i108.i.sroa.0.0.copyload.i = load double, ptr %i.eb, align 8, !noalias !25603 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.i108.i.sroa.6.0..sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i108.i.sroa.6.sroa.6.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.7.0.copyload.i = load double, ptr %.sroa.6.i108.i.sroa.6.sroa.7.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.8.0.copyload.i = load i64, ptr %.sroa.6.i108.i.sroa.6.sroa.8.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.9.0.copyload.i = load double, ptr %.sroa.6.i108.i.sroa.6.sroa.9.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.6.i108.i.sroa.6.sroa.10.0.copyload.i = load i64, ptr %.sroa.6.i108.i.sroa.6.sroa.10.0..sroa.6.i108.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  br i1 %.not.i110.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %.sroa.14.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i.i, align 8, !noalias !25605
  %.sroa.14.i.sroa.8.0.copyload.i = load double, ptr %.sroa.14.i.sroa.8.0..sroa.519.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !25605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25603
  br label %bb.gc

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25603
  store double %.sroa.6.i108.i.sroa.0.0.copyload.i, ptr %i.e, align 8, !noalias !25603
  store i64 %.sroa.6.i108.i.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.6.i108.i.sroa.6.0..sroa_idx167.i, align 8, !noalias !25603
  store i64 %.sroa.6.i108.i.sroa.6.sroa.6.0.copyload.i, ptr %.sroa.6.i108.i.sroa.6.sroa.6.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25603
  store double %.sroa.6.i108.i.sroa.6.sroa.7.0.copyload.i, ptr %.sroa.6.i108.i.sroa.6.sroa.7.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25603
  store i64 %.sroa.6.i108.i.sroa.6.sroa.8.0.copyload.i, ptr %.sroa.6.i108.i.sroa.6.sroa.8.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25603
  store double %.sroa.6.i108.i.sroa.6.sroa.9.0.copyload.i, ptr %.sroa.6.i108.i.sroa.6.sroa.9.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25603
  store i64 %.sroa.6.i108.i.sroa.6.sroa.10.0.copyload.i, ptr %.sroa.6.i108.i.sroa.6.sroa.10.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25603
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 13)
          to label %bb.fy unwind label %bb.fx, !noalias !25604

bb.fx:                                            ; preds = %bb.fy, %bb.fw
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing6LinearEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #29
          to label %bb.fr unwind label %bb.gd, !noalias !25604

bb.fy:                                            ; preds = %bb.fw
  invoke void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, i64 noundef %i.dz, i64 noundef %i.bs, i1 noundef zeroext %i.dn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.fz unwind label %bb.fx, !noalias !25604

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25603
  %i.mu = load i64, ptr %i.b, align 8, !range !22, !noalias !25603, !noundef !4 ; 2 uses
  %.not34.i.i.i = icmp eq i64 %i.mu, -1
  %.sroa.67.i.i.sroa.0.0.copyload.i = load double, ptr %i.ec, align 8, !noalias !25603 ; 2 uses
  %.sroa.67.i.i.sroa.6.sroa.0.0.copyload.i = load i64, ptr %.sroa.67.i.i.sroa.6.0..sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.67.i.i.sroa.6.sroa.6.0.copyload.i = load i64, ptr %.sroa.67.i.i.sroa.6.sroa.6.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.67.i.i.sroa.6.sroa.7.0.copyload.i = load double, ptr %.sroa.67.i.i.sroa.6.sroa.7.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.67.i.i.sroa.6.sroa.8.sroa.0.0.copyload.i = load i64, ptr %.sroa.67.i.i.sroa.6.sroa.8.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.67.i.i.sroa.6.sroa.8.sroa.6.0.copyload.i = load double, ptr %.sroa.67.i.i.sroa.6.sroa.8.sroa.6.0..sroa.67.i.i.sroa.6.sroa.8.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  %.sroa.67.i.i.sroa.6.sroa.8.sroa.7.0.copyload.i = load i64, ptr %.sroa.67.i.i.sroa.6.sroa.8.sroa.7.0..sroa.67.i.i.sroa.6.sroa.8.0..sroa.67.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !25603 ; 2 uses
  br i1 %.not34.i.i.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %.sroa.14.i.sroa.0.0.copyload160.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i.i, align 8, !noalias !25605
  %.sroa.14.i.sroa.8.0.copyload162.i = load double, ptr %.sroa.14.i.sroa.8.0..sroa.528.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !25605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25603
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing6LinearEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e)
          to label %bb.gc unwind label %bb.fs, !noalias !25604

bb.gb:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25603
  %.sroa.0175.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !25603
  %.sroa.4176.0.copyload.i.i = load i64, ptr %.sroa.6.i108.i.sroa.6.0..sroa_idx167.i, align 8, !noalias !25603
  %.sroa.5177.i.sroa.0.0.copyload.i = load double, ptr %.sroa.6.i108.i.sroa.6.sroa.6.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25584
  %.sroa.5177.i.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.i108.i.sroa.6.sroa.7.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25584
  %.sroa.5177.i.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.i108.i.sroa.6.sroa.8.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25584
  %.sroa.5177.i.sroa.4.sroa.5.0.copyload.i = load double, ptr %.sroa.6.i108.i.sroa.6.sroa.9.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25584
  %.sroa.5177.i.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i108.i.sroa.6.sroa.10.0..sroa.6.i108.i.sroa.6.0..sroa_idx167.sroa_idx.i, align 8, !noalias !25584
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %bb.fv
  %.sroa.5177.i.sroa.9.sroa.5.0.i = phi i64 [ %.sroa.67.i.i.sroa.6.sroa.8.sroa.7.0.copyload.i, %bb.gb ], [ undef, %bb.ga ], [ undef, %bb.fv ]
  %.sroa.5177.i.sroa.9.sroa.4.0.i = phi double [ %.sroa.67.i.i.sroa.6.sroa.8.sroa.6.0.copyload.i, %bb.gb ], [ undef, %bb.ga ], [ undef, %bb.fv ]
  %.sroa.5177.i.sroa.9.sroa.0.0.i = phi i64 [ %.sroa.67.i.i.sroa.6.sroa.8.sroa.0.0.copyload.i, %bb.gb ], [ undef, %bb.ga ], [ undef, %bb.fv ]
  %.sroa.12.i.sroa.8.sroa.12.0.i = phi i64 [ %.sroa.67.i.i.sroa.6.sroa.0.0.copyload.i, %bb.gb ], [ %.sroa.67.i.i.sroa.6.sroa.8.sroa.7.0.copyload.i, %bb.ga ], [ %.sroa.6.i108.i.sroa.6.sroa.10.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.12.i.sroa.8.sroa.11.0.i = phi double [ %.sroa.67.i.i.sroa.0.0.copyload.i, %bb.gb ], [ %.sroa.67.i.i.sroa.6.sroa.8.sroa.6.0.copyload.i, %bb.ga ], [ %.sroa.6.i108.i.sroa.6.sroa.9.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.12.i.sroa.8.sroa.10.0.i = phi i64 [ %.sroa.5177.i.sroa.4.sroa.6.0.copyload.i, %bb.gb ], [ %.sroa.67.i.i.sroa.6.sroa.8.sroa.0.0.copyload.i, %bb.ga ], [ %.sroa.6.i108.i.sroa.6.sroa.8.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.12.i.sroa.8.sroa.9.0.i = phi double [ %.sroa.5177.i.sroa.4.sroa.5.0.copyload.i, %bb.gb ], [ %.sroa.67.i.i.sroa.6.sroa.7.0.copyload.i, %bb.ga ], [ %.sroa.6.i108.i.sroa.6.sroa.7.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.12.i.sroa.8.sroa.8.0.i = phi i64 [ %.sroa.5177.i.sroa.4.sroa.4.0.copyload.i, %bb.gb ], [ %.sroa.67.i.i.sroa.6.sroa.6.0.copyload.i, %bb.ga ], [ %.sroa.6.i108.i.sroa.6.sroa.6.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.12.i.sroa.8.sroa.0.0.i = phi i64 [ %.sroa.5177.i.sroa.4.sroa.0.0.copyload.i, %bb.gb ], [ %.sroa.67.i.i.sroa.6.sroa.0.0.copyload.i, %bb.ga ], [ %.sroa.6.i108.i.sroa.6.sroa.0.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.12.i.sroa.0.0.i = phi double [ %.sroa.5177.i.sroa.0.0.copyload.i, %bb.gb ], [ %.sroa.67.i.i.sroa.0.0.copyload.i, %bb.ga ], [ %.sroa.6.i108.i.sroa.0.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.14.i.sroa.8.0.i = phi double [ %.sroa.67.i.i.sroa.6.sroa.7.0.copyload.i, %bb.gb ], [ %.sroa.14.i.sroa.8.0.copyload162.i, %bb.ga ], [ %.sroa.14.i.sroa.8.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.14.i.sroa.0.0.i = phi i64 [ %.sroa.67.i.i.sroa.6.sroa.6.0.copyload.i, %bb.gb ], [ %.sroa.14.i.sroa.0.0.copyload160.i, %bb.ga ], [ %.sroa.14.i.sroa.0.0.copyload.i, %bb.fv ] ; 2 uses
  %.sroa.8128.0.i.i = phi i64 [ %.sroa.4176.0.copyload.i.i, %bb.gb ], [ %i.mu, %bb.ga ], [ %i.ms, %bb.fv ] ; 2 uses
  %.sroa.0127.0.i.i = phi i64 [ %.sroa.0175.0.copyload.i.i, %bb.gb ], [ -1, %bb.ga ], [ -1, %bb.fv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25603
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_3MLP3new.exit.i.i unwind label %bb.fp, !noalias !25585

bb.gd:                                            ; preds = %bb.fx, %bb.fr
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25604
  unreachable

_RNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_3MLP3new.exit.i.i: ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25584
  %i.mw = icmp eq i64 %.sroa.0127.0.i.i, -1
  br i1 %i.mw, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_3MLP3new.exit.i.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm13SelfAttentionEBH_(ptr noalias nofree noundef align 8 dereferenceable(184) %i.m)
          to label %bb.gg unwind label %bb.ev, !noalias !25585

bb.gf:                                            ; preds = %_RNvMs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_3MLP3new.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.i, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !25586
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !25586
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !25586
  %.sroa.20.0.copyload.i = load double, ptr %.sroa.439.sroa.4.0..sroa.439.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25586
  %.sroa.26.sroa.0.0.copyload.i = load i64, ptr %.sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !25586
  %.sroa.26.sroa.12.0.copyload.i = load i64, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.7.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.26.sroa.13.0.copyload.i = load double, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.8.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.26.sroa.14.0.copyload.i = load i64, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.9.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.26.sroa.19.0.copyload.i = load double, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.10.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %20 = load <2 x i64>, ptr %.sroa.634.sroa.8.sroa.0.sroa.0.i.sroa.11.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !25586
  %.sroa.33.0.copyload.i = load double, ptr %.sroa.439.sroa.5.sroa.4.0..sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !25586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.34.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.540.0..sroa_idx.i.i, i64 96, i1 false), !noalias !25586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.41.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !25586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !25584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.gf, %bb.ep, %bb.el, %bb.ek, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i, %bb.dy
  %.sroa.26.sroa.19.0.i = phi double [ %.sroa.26.sroa.19.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.26.sroa.19.1.i, %bb.el ], [ %.sroa.26.sroa.19.1.i, %bb.ek ], [ %.sroa.26.sroa.19.0.copyload.i, %bb.gf ], [ %.sroa.26.sroa.19.24.copyload239.i, %bb.ep ], [ %.sroa.26.sroa.19.24.copyload.i, %bb.dy ] ; 2 uses
  %.sroa.26.sroa.14.0.i = phi i64 [ %.sroa.26.sroa.14.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.26.sroa.14.1.i, %bb.el ], [ %.sroa.26.sroa.14.1.i, %bb.ek ], [ %.sroa.26.sroa.14.0.copyload.i, %bb.gf ], [ %.sroa.26.sroa.14.24.copyload233.i, %bb.ep ], [ %.sroa.26.sroa.14.24.copyload.i, %bb.dy ] ; 2 uses
  %.sroa.26.sroa.13.0.i = phi double [ %.sroa.26.sroa.13.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.26.sroa.13.1.i, %bb.el ], [ %.sroa.26.sroa.13.1.i, %bb.ek ], [ %.sroa.26.sroa.13.0.copyload.i, %bb.gf ], [ %.sroa.6.i.sroa.7.sroa.8.0.copyload269.i, %bb.ep ], [ %.sroa.67.i.sroa.7.sroa.8.0.copyload263.i, %bb.dy ] ; 2 uses
  %.sroa.26.sroa.12.0.i = phi i64 [ %.sroa.26.sroa.12.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.26.sroa.12.1.i, %bb.el ], [ %.sroa.26.sroa.12.1.i, %bb.ek ], [ %.sroa.26.sroa.12.0.copyload.i, %bb.gf ], [ %.sroa.6.i.sroa.7.sroa.7.0.copyload267.i, %bb.ep ], [ %.sroa.67.i.sroa.7.sroa.7.0.copyload261.i, %bb.dy ] ; 2 uses
  %.sroa.26.sroa.0.0.i = phi i64 [ %.sroa.26.sroa.0.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.26.sroa.0.1.i, %bb.el ], [ %.sroa.26.sroa.0.1.i, %bb.ek ], [ %.sroa.26.sroa.0.0.copyload.i, %bb.gf ], [ %.sroa.6.i.sroa.7.sroa.0.0.copyload265.i, %bb.ep ], [ %.sroa.67.i.sroa.7.sroa.0.0.copyload259.i, %bb.dy ] ; 2 uses
  %.sroa.37.sroa.5.sroa.9.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.12.i.sroa.8.sroa.12.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.37.sroa.5.sroa.8.0.i = phi double [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.12.i.sroa.8.sroa.11.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.37.sroa.5.sroa.7.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.12.i.sroa.8.sroa.10.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.37.sroa.5.sroa.6.0.i = phi double [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.12.i.sroa.8.sroa.9.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.37.sroa.5.sroa.5.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.12.i.sroa.8.sroa.8.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.37.sroa.5.sroa.0.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.12.i.sroa.8.sroa.0.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.39.sroa.6.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.5177.i.sroa.9.sroa.5.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.39.sroa.5.0.i = phi double [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.5177.i.sroa.9.sroa.4.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.39.sroa.0.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.5177.i.sroa.9.sroa.0.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.37.sroa.0.0.i = phi double [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.12.i.sroa.0.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.38.sroa.5.0.i = phi double [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.14.i.sroa.8.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.38.sroa.0.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.14.i.sroa.0.0.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.42.0.i = phi i8 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %i.ee, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.36.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.8128.0.i.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.35.0.i = phi i64 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ undef, %bb.el ], [ undef, %bb.ek ], [ %.sroa.0127.0.i.i, %bb.gf ], [ undef, %bb.ep ], [ undef, %bb.dy ]
  %.sroa.33.0.i = phi double [ %.sroa.33.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.33.1.i, %bb.el ], [ %.sroa.33.1.i, %bb.ek ], [ %.sroa.33.0.copyload.i, %bb.gf ], [ %.sroa.33.48.copyload109.i, %bb.ep ], [ %.sroa.33.48.copyload.i, %bb.dy ] ; 2 uses
  %.sroa.20.0.i = phi double [ %.sroa.20.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.20.1.i, %bb.el ], [ %.sroa.20.1.i, %bb.ek ], [ %.sroa.20.0.copyload.i, %bb.gf ], [ %.sroa.6.i.sroa.0.0.copyload140.i, %bb.ep ], [ %.sroa.67.i.sroa.0.0.copyload143.i, %bb.dy ] ; 2 uses
  %.sroa.12.0.i = phi i64 [ %.sroa.12.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %.sroa.12.1.i, %bb.el ], [ %.sroa.12.1.i, %bb.ek ], [ %.sroa.12.0.copyload.i, %bb.gf ], [ %i.ma, %bb.ep ], [ %i.lk, %bb.dy ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ 2, %bb.el ], [ 2, %bb.ek ], [ %.sroa.0.0.copyload.i, %bb.gf ], [ 2, %bb.ep ], [ 2, %bb.dy ] ; 2 uses
  %21 = phi <2 x i64> [ %17, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i.i85.i ], [ %17, %bb.el ], [ %17, %bb.ek ], [ %20, %bb.gf ], [ %18, %bb.ep ], [ %15, %bb.dy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !25584
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ba)
          to label %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block3new.exit.i unwind label %.loopexit.i, !noalias !25430

bb.gg:                                            ; preds = %bb.ge, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i
  %.sroa.26.sroa.20.2.i = phi i64 [ %.sroa.12.i.sroa.8.sroa.12.0.i, %bb.ge ], [ %.sroa.16.sroa.0.sroa.0.i.sroa.16.0.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ]
  %.sroa.26.sroa.19.2.i = phi double [ %.sroa.12.i.sroa.8.sroa.11.0.i, %bb.ge ], [ %.sroa.16.sroa.0.sroa.0.i.sroa.14.0.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  %.sroa.26.sroa.14.2.i = phi i64 [ %.sroa.12.i.sroa.8.sroa.10.0.i, %bb.ge ], [ %.sroa.16.sroa.0.sroa.0.i.sroa.12.0.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  %.sroa.26.sroa.13.2.i = phi double [ %.sroa.12.i.sroa.8.sroa.9.0.i, %bb.ge ], [ %.sroa.16.sroa.0.sroa.0.i.sroa.10.0.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  %.sroa.26.sroa.12.2.i = phi i64 [ %.sroa.12.i.sroa.8.sroa.8.0.i, %bb.ge ], [ %.sroa.16.sroa.0.sroa.0.i.sroa.8.0.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  %.sroa.26.sroa.0.2.i = phi i64 [ %.sroa.12.i.sroa.8.sroa.0.0.i, %bb.ge ], [ %.sroa.16.sroa.0.sroa.0.i.sroa.0.0.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  %.sroa.33.2.i = phi double [ %.sroa.14.i.sroa.8.0.i, %bb.ge ], [ %.sroa.16.sroa.10.0.i.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  %.sroa.31.2.i = phi i64 [ %.sroa.14.i.sroa.0.0.i, %bb.ge ], [ %.sroa.16.sroa.0.sroa.8.0.i.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ]
  %.sroa.20.2.i = phi double [ %.sroa.12.i.sroa.0.0.i, %bb.ge ], [ %.sroa.13.0.i.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.8128.0.i.i, %bb.ge ], [ %.sroa.8121.0.i.i, %_RNvMs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_13SelfAttention3new.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25584
  call void @llvm.experimental.noalias.scope.decl(metadata !25606)
  call void @llvm.experimental.noalias.scope.decl(metadata !25607)
  call void @llvm.experimental.noalias.scope.decl(metadata !25608)
  call void @llvm.experimental.noalias.scope.decl(metadata !25609)
  %i.mx = load ptr, ptr %i.r, align 8, !alias.scope !25610, !noalias !25584, !nonnull !4, !noundef !4
  %i.my = atomicrmw sub ptr %i.mx, i64 1 release, align 8, !noalias !25611
  %i.mz = icmp eq i64 %i.my, 1
  br i1 %i.mz, label %bb.gh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i

bb.gh:                                            ; preds = %bb.gg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i unwind label %bb.gi, !noalias !25585

bb.gi:                                            ; preds = %bb.gh
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25612)
  %i.nb = load ptr, ptr %.sroa.625.i.sroa.7.0..sroa_idx151.i, align 8, !alias.scope !25613, !noalias !25584, !noundef !4 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %.body117.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.nd = atomicrmw sub ptr %i.nb, i64 1 release, align 8, !noalias !25614
  %i.ne = icmp eq i64 %i.nd, 1
  br i1 %i.ne, label %bb.gk, label %.body117.i.i

bb.gk:                                            ; preds = %bb.gj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.625.i.sroa.7.0..sroa_idx151.i) #26
          to label %.body117.i.i unwind label %bb.gn, !noalias !25585

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i: ; preds = %bb.gh, %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !25615)
  %i.nf = load ptr, ptr %.sroa.625.i.sroa.7.0..sroa_idx151.i, align 8, !alias.scope !25616, !noalias !25584, !noundef !4 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  %22 = insertelement <2 x i64> poison, i64 %.sroa.26.sroa.20.2.i, i64 0
  %23 = insertelement <2 x i64> %22, i64 %.sroa.31.2.i, i64 1 ; 3 uses
  br i1 %i.ng, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i, label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i114.i.i
  %i.nh = atomicrmw sub ptr %i.nf, i64 1 release, align 8, !noalias !25617
  %i.ni = icmp eq i64 %i.nh, 1
  br i1 %i.ni, label %bb.gm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.625.i.sroa.7.0..sroa_idx151.i) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit119.i.i unwind label %bb.ea, !noalias !25585

bb.gn:                                            ; preds = %bb.gk
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25585
  unreachable

bb.go:                                            ; preds = %.body112.i.i, %.body106.i.i, %.body117.i.i, %.body.i.i
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25585
  unreachable

_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block3new.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECs1dZk1kIfPhr_19candle_transformers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !25429
  %i.nl = icmp eq i64 %.sroa.0.0.i, 2
  br i1 %i.nl, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block3new.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i)
  %i.nm = bitcast double %.sroa.20.0.i to i64
  %i.nn = bitcast double %.sroa.33.0.i to i64
  br label %bb.do

bb.gq:                                            ; preds = %_RNvMs4_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Block3new.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.34.i, i64 96, i1 false), !noalias !25429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx4.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.i, i64 32, i1 false), !noalias !25429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx4.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.41.i, i64 32, i1 false), !noalias !25429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i)
  store i64 %.sroa.0.0.i, ptr %i.az, align 8, !noalias !25429
  store i64 %.sroa.12.0.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !25429
  store double %.sroa.20.0.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.26.sroa.0.0.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.26.sroa.12.0.i, ptr %.sroa.6.sroa.8.sroa.7.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.26.sroa.13.0.i, ptr %.sroa.6.sroa.8.sroa.8.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.26.sroa.14.0.i, ptr %.sroa.6.sroa.8.sroa.9.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.26.sroa.19.0.i, ptr %.sroa.6.sroa.8.sroa.10.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store <2 x i64> %21, ptr %.sroa.6.sroa.8.sroa.11.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.33.0.i, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.35.0.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx4.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.36.0.i, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx4.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.37.sroa.0.0.i, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.37.sroa.5.sroa.0.0.i, ptr %.sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.37.sroa.5.sroa.5.0.i, ptr %.sroa.8.sroa.7.sroa.5.sroa.5.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.37.sroa.5.sroa.6.0.i, ptr %.sroa.8.sroa.7.sroa.5.sroa.6.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.37.sroa.5.sroa.7.0.i, ptr %.sroa.8.sroa.7.sroa.5.sroa.7.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.37.sroa.5.sroa.8.0.i, ptr %.sroa.8.sroa.7.sroa.5.sroa.8.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.37.sroa.5.sroa.9.0.i, ptr %.sroa.8.sroa.7.sroa.5.sroa.9.0..sroa.8.sroa.7.sroa.5.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.38.sroa.0.0.i, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx4.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.38.sroa.5.0.i, ptr %.sroa.8.sroa.8.sroa.5.0..sroa.8.sroa.8.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.39.sroa.0.0.i, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx.i, align 8, !noalias !25429
  store double %.sroa.39.sroa.5.0.i, ptr %.sroa.8.sroa.9.sroa.5.0..sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i64 %.sroa.39.sroa.6.0.i, ptr %.sroa.8.sroa.9.sroa.6.0..sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx.sroa_idx.i, align 8, !noalias !25429
  store i8 %.sroa.42.0.i, ptr %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx4.sroa_idx.i, align 8, !noalias !25429
  %i.no = load i64, ptr %i.ct, align 8, !alias.scope !25618, !noalias !25619, !noundef !4 ; 3 uses
  %i.np = load i64, ptr %i.bb, align 8, !range !7, !alias.scope !25618, !noalias !25619, !noundef !4
  %i.nq = icmp eq i64 %i.no, %i.np
  br i1 %i.nq, label %bb.gr, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockE8push_mutBL_.exit.i

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockE8push_mutBL_.exit.i unwind label %bb.gs, !noalias !25620

bb.gs:                                            ; preds = %bb.gr
  %i.nr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %i.az) #29
          to label %.body79.i unwind label %bb.gt, !noalias !25430

bb.gt:                                            ; preds = %bb.gs
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !25430
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockE8push_mutBL_.exit.i: ; preds = %bb.gr, %bb.gq
  %i.nt = load ptr, ptr %i.cs, align 8, !alias.scope !25618, !noalias !25619, !nonnull !4, !noundef !4
  %i.nu = getelementptr inbounds nuw [368 x i8], ptr %i.nt, i64 %i.no
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.nu, ptr noundef nonnull align 8 dereferenceable(368) %i.az, i64 368, i1 false), !noalias !25430
  %i.nv = add i64 %i.no, 1
  store i64 %i.nv, ptr %i.ct, align 8, !noalias !25429
  %exitcond.not.i = icmp eq i64 %i.ei, %i.ci
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm5BlockEEB1e_.exit.invoke.i: ; preds = %bb.dq, %bb.dl
  %.sroa.25.2 = phi i64 [ undef, %bb.dl ], [ %.sroa.25.1, %bb.dq ]
  %.sroa.24.2 = phi double [ %.sroa.032.i.sroa.9.24.copyload, %bb.dl ], [ %.sroa.24.1, %bb.dq ] ; 2 uses
  %.sroa.21.2 = phi i64 [ %.sroa.032.i.sroa.8.24.copyload, %bb.dl ], [ %.sroa.21.1, %bb.dq ] ; 2 uses
  %.sroa.20.2 = phi double [ %.sroa.032.i.sroa.6.24.copyload, %bb.dl ], [ %.sroa.20.1, %bb.dq ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %.sroa.032.i.sroa.5.0.copyload, %bb.dl ], [ %.sroa.19.1, %bb.dq ] ; 2 uses
  %.sroa.17.2 = phi i64 [ %.sroa.032.i.sroa.4.0.copyload, %bb.dl ], [ %.sroa.17.1, %bb.dq ] ; 2 uses
  %.sroa.10.2 = phi i64 [ %.sroa.032.i.sroa.0.0.copyload, %bb.dl ], [ %.sroa.10.1, %bb.dq ] ; 2 uses
  %.sroa.069.2 = phi i64 [ -1, %bb.dl ], [ %.sroa.069.1, %bb.dq ] ; 2 uses
  %i.nw = phi <2 x i64> [ %i.ld, %bb.dl ], [ %i.lg, %bb.dq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !25429
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bc)
          to label %bb.dm unwind label %bb.t, !noalias !25430

bb.gu:                                            ; preds = %bb.x
  unreachable

bb.gv:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %.not52 = icmp eq i64 %.sroa.069.2, -1
  br i1 %.not52, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.069.2, ptr %i.nx, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.2, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.17.2, ptr %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx, align 8
  %.sroa.440.sroa.5.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.19.2, ptr %.sroa.440.sroa.5.0..sroa.440.0..sroa_idx.sroa_idx, align 8
  %.sroa.440.sroa.6.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.20.2, ptr %.sroa.440.sroa.6.0..sroa.440.0..sroa_idx.sroa_idx, align 8
  %.sroa.440.sroa.7.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.21.2, ptr %.sroa.440.sroa.7.0..sroa.440.0..sroa_idx.sroa_idx, align 8
  %.sroa.440.sroa.8.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.24.2, ptr %.sroa.440.sroa.8.0..sroa.440.0..sroa_idx.sroa_idx, align 8
  %.sroa.440.sroa.9.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.nw, ptr %.sroa.440.sroa.9.0..sroa.440.0..sroa_idx.sroa_idx, align 8
  %.sroa.440.sroa.10.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.25.2, ptr %.sroa.440.sroa.10.0..sroa.440.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.he

bb.gx:                                            ; preds = %bb.gv
  store i64 %.sroa.10.2, ptr %i.bj, align 8
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.sroa.17.2, ptr %.sroa.4135.0..sroa_idx, align 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %.sroa.19.2, ptr %.sroa.5136.0..sroa_idx, align 8
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store double %.sroa.20.2, ptr %.sroa.6137.0..sroa_idx, align 8
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 %.sroa.21.2, ptr %.sroa.7138.0..sroa_idx, align 8
  %.sroa.8139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store double %.sroa.24.2, ptr %.sroa.8139.0..sroa_idx, align 8
  %.sroa.9140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store <2 x i64> %i.nw, ptr %.sroa.9140.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 12)
          to label %bb.gz unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gz, %bb.gx
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm11TransformerEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bj) #29
          to label %.body61 unwind label %bb.hg

bb.gz:                                            ; preds = %bb.gx
  invoke void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing8linear_b(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bh, i64 noundef %i.bs, i64 noundef %i.bq, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bg)
          to label %bb.ha unwind label %bb.gy

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.nz = load i64, ptr %i.bh, align 8, !range !22, !noundef !4 ; 2 uses
  %.not53 = icmp eq i64 %i.nz, -1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, ptr noundef nonnull align 8 dereferenceable(56) %i.oa, i64 56, i1 false)
  br i1 %.not53, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.550.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, i64 56, i1 false)
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nz, ptr %i.ob, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm11TransformerEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bj)
          to label %bb.he unwind label %bb.q

bb.hc:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oc, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.od = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.od, ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.bf, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm9EmbeddingEBH_.exit64.invoke

bb.hd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm9EmbeddingEBH_.exit64.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

bb.he:                                            ; preds = %bb.hb, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.experimental.noalias.scope.decl(metadata !25621)
  call void @llvm.experimental.noalias.scope.decl(metadata !25622)
  call void @llvm.experimental.noalias.scope.decl(metadata !25623)
  call void @llvm.experimental.noalias.scope.decl(metadata !25624)
  call void @llvm.experimental.noalias.scope.decl(metadata !25625)
  %i.oe = load ptr, ptr %i.bl, align 8, !alias.scope !25626, !nonnull !4, !noundef !4
  %i.of = atomicrmw sub ptr %i.oe, i64 1 release, align 8, !noalias !25626
  %i.og = icmp eq i64 %i.of, 1
  br i1 %i.og, label %bb.hf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm9EmbeddingEBH_.exit64.invoke

bb.hf:                                            ; preds = %bb.he
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm9EmbeddingEBH_.exit64.invoke unwind label %bb.e

bb.hg:                                            ; preds = %bb.p, %bb.gy, %.body, %bb.b
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglm9EmbeddingEBH_.exit64.invoke: ; preds = %bb.n, %bb.hf, %bb.he, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bm)
          to label %bb.hd unwind label %bb.c

bb.hh:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn57
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtNtCs1dZk1kIfPhr_19candle_transformers6models7chatglmNtB5_5Model7forward(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 13 uses
  %i.i = alloca [80 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [80 x i8], align 8                ; 11 uses
  %i.l = alloca [80 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 9 uses
  %i.q = alloca [8 x i8], align 8                 ; 13 uses
  %i.r = alloca [80 x i8], align 8                ; 10 uses
  %i.s = alloca [8 x i8], align 8                 ; 11 uses
  %i.t = alloca [80 x i8], align 8                ; 11 uses
  %i.u = alloca [80 x i8], align 8                ; 9 uses
  %i.v = alloca [8 x i8], align 8                 ; 11 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [80 x i8], align 8                ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [80 x i8], align 8                ; 9 uses
  %i.aa = alloca [8 x i8], align 8                ; 9 uses
  %i.ab = alloca [8 x i8], align 8                ; 14 uses
  %i.ac = alloca [8 x i8], align 8                ; 13 uses
  %i.ad = alloca [80 x i8], align 8               ; 9 uses
  %i.ae = alloca [8 x i8], align 8                ; 12 uses
  %i.af = alloca [80 x i8], align 8               ; 9 uses
  %i.ag = alloca [8 x i8], align 8                ; 14 uses
  %i.ah = alloca [80 x i8], align 8               ; 9 uses
  %i.ai = alloca [80 x i8], align 8               ; 9 uses
  %i.aj = alloca [80 x i8], align 8               ; 9 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = alloca [80 x i8], align 8               ; 11 uses
  %i.am = alloca [8 x i8], align 8                ; 12 uses
  %i.an = alloca [80 x i8], align 8               ; 9 uses
  %i.ao = alloca [80 x i8], align 8               ; 9 uses
  %i.ap = alloca [32 x i8], align 8               ; 9 uses
  %i.aq = alloca [80 x i8], align 8               ; 11 uses
  %i.ar = alloca [8 x i8], align 8                ; 11 uses
  %i.as = alloca [80 x i8], align 8               ; 9 uses
  %i.at = alloca [80 x i8], align 8               ; 9 uses
  %i.au = alloca [32 x i8], align 8               ; 9 uses
  %i.av = alloca [80 x i8], align 8               ; 11 uses
  %i.aw = alloca [8 x i8], align 8                ; 11 uses
  %i.ax = alloca [80 x i8], align 8               ; 9 uses
  %i.ay = alloca [8 x i8], align 8                ; 13 uses
  %i.az = alloca [80 x i8], align 8               ; 9 uses
  %i.ba = alloca [8 x i8], align 8                ; 13 uses
  %i.bb = alloca [80 x i8], align 8               ; 9 uses
  %i.bc = alloca [8 x i8], align 8                ; 13 uses
  %i.bd = alloca [80 x i8], align 8               ; 7 uses
  %i.be = alloca [80 x i8], align 8               ; 8 uses
  %i.bf = alloca [80 x i8], align 8               ; 9 uses
  %i.bg = alloca [8 x i8], align 8                ; 14 uses
  %i.bh = alloca [80 x i8], align 8               ; 7 uses
  %i.bi = alloca [80 x i8], align 8               ; 7 uses
  %i.bj = alloca [8 x i8], align 8                ; 11 uses
  %i.bk = alloca [80 x i8], align 8               ; 7 uses
  %i.bl = alloca [8 x i8], align 8                ; 12 uses
  %.sroa.99.i.i = alloca [40 x i8], align 8       ; 33 uses
  %i.bm = alloca [80 x i8], align 8               ; 7 uses
  %i.bn = alloca [8 x i8], align 8                ; 11 uses
  %i.bo = alloca [80 x i8], align 8               ; 13 uses
  %i.bp = alloca [8 x i8], align 8                ; 16 uses
  %i.bq = alloca [88 x i8], align 8               ; 8 uses
  %i.br = alloca [24 x i8], align 8               ; 9 uses
  %i.bs = alloca [8 x i8], align 8                ; 5 uses
  %i.bt = alloca [80 x i8], align 8               ; 7 uses
  %i.bu = alloca [8 x i8], align 8                ; 11 uses
  %i.bv = alloca [80 x i8], align 8               ; 8 uses
  %i.bw = alloca [8 x i8], align 8                ; 7 uses
  %i.bx = alloca [80 x i8], align 8               ; 10 uses
  %i.by = alloca [8 x i8], align 8                ; 11 uses
  %i.bz = alloca [80 x i8], align 8               ; 7 uses
  %i.ca = alloca [8 x i8], align 8                ; 12 uses
  %i.cb = alloca [80 x i8], align 8               ; 7 uses
  %i.cc = alloca [8 x i8], align 8                ; 11 uses
  %i.cd = alloca [80 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @_RNvMsZ_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB7_6tensor6Tensor5dims2(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.ce = load i64, ptr %i.cd, align 8, !range !22, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ce, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.666.0..sroa_idx, i64 56, i1 false)
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load <2 x i64>, ptr %.sroa.464.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  store i64 %i.ce, ptr %0, align 8
  store <2 x i64> %i.cf, ptr %.sroa.468.0..sroa_idx, align 8
  br label %bb.jf

bb.c:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 120
end_hunk_0
