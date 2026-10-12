Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.09?download=true
inline.NumInlined: 3626
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMsj_NtNtCs1dZk1kIfPhr_19candle_transformers6models9segformerNtB5_25SemanticSegmentationModel3new:bb.a
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.8, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.1, ptr %i.cr, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.sroa.0.0, ptr %.sroa.440.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.7.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.8)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9segformer14SegformerModelEBH_(ptr noalias nofree noundef align 8 dereferenceable(336) %i.v)
          to label %bb.bj unwind label %bb.c

bb.bi:                                            ; preds = %bb.bg
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.24.sroa.0, i64 48, i1 false)
  %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.24.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.sroa.6)
  %.sroa.514.sroa.4.sroa.4.0..sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.514.sroa.4.sroa.4.0..sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.67.sroa.7.sroa.7, i64 48, i1 false)
  %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.7.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(336) %i.v, i64 336, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %.sroa.0.1, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %.sroa.10.1, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %.sroa.16.sroa.0.0, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 %.sroa.24.sroa.5.0, ptr %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.f, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3)
  ret void

bb.bk:                                            ; preds = %.body, %bb.b
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bl:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsl_NtNtCs1dZk1kIfPhr_19candle_transformers6models9segformerNtB5_24ImageClassificationModel3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([392 x i8]) align 8 captures(none) dereferenceable(392) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [392 x i8], align 8               ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.67 = alloca [56 x i8], align 8           ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [336 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  %i.f = alloca [336 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 9)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.h ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3) #26
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.k, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_RNvMse_NtNtCs1dZk1kIfPhr_19candle_transformers6models9segformerNtB5_14SegformerModel3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(336) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = load i64, ptr %i.e, align 8, !range !31, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.516.0..sroa_idx, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 10)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9segformer14SegformerModelEBH_(ptr noalias nofree noundef align 8 dereferenceable(336) %i.f) #26
          to label %bb.b unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, i64 noundef %i.m, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = load i64, ptr %i.c, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.67, i64 56, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9segformer14SegformerModelEBH_(ptr noalias nofree noundef align 8 dereferenceable(336) %i.f)
          to label %bb.m unwind label %bb.c

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.67, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.r, ptr noundef nonnull align 8 dereferenceable(336) %i.f, i64 336, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(392) %i.a, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3)
  ret void

bb.n:                                             ; preds = %bb.h, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs3NyA1pFSltE_9candle_nn8kv_cache14rope_i_inplace(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %7, 1                           ; 3 uses
  %i.b = icmp ne i64 %6, 0
  %i.c = icmp ne i64 %i.a, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = tail call i64 @llvm.umin.i64(i64 %5, i64 %3)
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.h
  %exitcond41.not = icmp eq i64 %i.f, %6
  br i1 %exitcond41.not, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.sroa.03.025 = phi i64 [ %i.f, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.f = add nuw i64 %.sroa.03.025, 1             ; 2 uses
  %i.g = mul i64 %.sroa.03.025, %7                ; 4 uses
  %i.h = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.g)
  %i.i = mul i64 %7, %.sroa.03.025                ; 2 uses
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 1
  %i.k = lshr i64 %i.j, 1
  %i.l = add i64 %i.g, 1
  %i.m = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.l)
  %i.n = sub i64 %i.m, %i.i
  %i.o = lshr i64 %i.n, 1
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.k)
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.d) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = and i64 %i.s, 3                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 4, i64 %i.t
  %n.vec = sub nsw i64 %i.s, %i.v                 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %.idx = shl nuw nsw i64 %index, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %wide.vec = load <8 x float>, ptr %gep, align 4 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec67 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load = load <4 x float>, ptr %i.w, align 4 ; 2 uses
  %i.x = fmul <4 x float> %strided.vec, %wide.load
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %wide.load68 = load <4 x float>, ptr %i.y, align 4 ; 2 uses
  %i.z = fmul <4 x float> %strided.vec67, %wide.load68
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = fmul <4 x float> %strided.vec67, %wide.load
  %i.ac = fmul <4 x float> %strided.vec, %wide.load68
  %i.ad = fadd <4 x float> %i.ab, %i.ac
  %interleaved.vec = shufflevector <4 x float> %i.aa, <4 x float> %i.ad, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %scalar.ph.preheader, label %vector.body, !llvm.loop !24549

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %.sroa.05.024.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.h
  %.sroa.05.024 = phi i64 [ %i.af, %bb.h ], [ %.sroa.05.024.ph, %scalar.ph.preheader ] ; 6 uses
  %i.af = add nuw nsw i64 %.sroa.05.024, 1        ; 2 uses
  %i.ag = shl nuw nsw i64 %.sroa.05.024, 1
  %i.ah = add nuw nsw i64 %i.ag, %i.g             ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %1
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %scalar.ph
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !noundef !5 ; 2 uses
  %i.al = add nuw nsw i64 %i.ah, 1                ; 3 uses
  %i.am = icmp ult i64 %i.al, %1
  br i1 %i.am, label %bb.d, label %bb.e

bb.c:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @282) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !noundef !5 ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.05.024, %3
  br i1 %exitcond.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %exitcond39.not = icmp eq i64 %.sroa.05.024, %5
  br i1 %exitcond39.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.05.024
  %i.aq = load float, ptr %i.ap, align 4, !noundef !5 ; 2 uses
  %i.ar = fmul float %i.ak, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.05.024
  %i.at = load float, ptr %i.as, align 4, !noundef !5 ; 2 uses
  %i.au = fmul float %i.ao, %i.at
  %i.av = fsub float %i.ar, %i.au
  store float %i.av, ptr %i.aj, align 4
  %i.aw = fmul float %i.ao, %i.aq
  %i.ax = fmul float %i.ak, %i.at
  %i.ay = fadd float %i.aw, %i.ax
  store float %i.ay, ptr %i.an, align 4
  %exitcond40.not = icmp eq i64 %i.af, %i.a
  br i1 %exitcond40.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !24550

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit(i64 noundef range(i64 16, 369) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.a = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 369) %0, i64 noundef 8) #28 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models5hiera11hiera_model(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef range(i64 0, 2) %2, i64 %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 16               ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 16               ; 8 uses
  %i.n = alloca [200 x i8], align 8               ; 10 uses
  %.sroa.041.i.i = alloca [144 x i8], align 8     ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.18133.i.i = alloca [56 x i8], align 8    ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.18.i.i = alloca [56 x i8], align 8       ; 6 uses
  %i.q = alloca [16 x i8], align 16               ; 10 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.67.i.sroa.8.i = alloca [16 x i8], align 8 ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 10 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.6.i.sroa.8.i = alloca [16 x i8], align 8 ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [40 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 10 uses
  %.sroa.22.i = alloca [56 x i8], align 8         ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [80 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [80 x i8], align 8               ; 8 uses
  %i.ag = alloca [40 x i8], align 8               ; 4 uses
  %i.ah = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.6.i124.sroa.8 = alloca [40 x i8], align 8 ; 6 uses
  %i.ai = alloca [56 x i8], align 8               ; 11 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [64 x i8], align 8               ; 8 uses
  %i.al = alloca [40 x i8], align 8               ; 4 uses
  %i.am = alloca [80 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 4 uses
  %i.ao = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.6.i.sroa.8 = alloca [16 x i8], align 8   ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 9 uses
  %i.aq = alloca [80 x i8], align 8               ; 10 uses
  %i.ar = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.15 = alloca [56 x i8], align 8           ; 5 uses
  %i.as = alloca [16 x i8], align 16              ; 10 uses
  %i.at = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.17155 = alloca [56 x i8], align 8        ; 7 uses
  %i.au = alloca [16 x i8], align 16              ; 10 uses
  %i.av = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.17 = alloca [56 x i8], align 8           ; 7 uses
  %i.aw = alloca [16 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ax = trunc nuw i64 %2 to i1
  br i1 %i.ax, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 4)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.aw, align 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.d

end_hunk_0
