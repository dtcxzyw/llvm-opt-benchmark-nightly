Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.06?download=true
inline.NumInlined: 6037
inline.NumDeleted: 2216
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtCsity1gTxgZvF_18tracing_subscriber8registryINtB4_7SpanRefINtNtNtB6_5layer7layered7LayeredNtNtNtB6_6filter7targets7TargetsNtNtB4_7sharded8RegistryEE6parentCs8K4cjrcxBsw_6hir_ty:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = load ptr, ptr %1, align 8, !nonnull !245, !align !246, !noundef !245 ; 3 uses
  call void @_RNvXs1_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtNtB9_8registry7sharded8RegistryENtB1J_10LookupSpan9span_dataCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  %i.i = load ptr, ptr %i.d, align 8, !noundef !245
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.m, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !245 ; 3 uses
  %.val22 = load ptr, ptr %i.c, align 8, !nonnull !245, !noundef !245 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !245
  %i.n = and i64 %i.m, %i.k
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.n ], [ %i.p, %bb.h ]
  invoke void @_RNvXs6_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded4DataECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.o

bb.h:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded4DataECs8K4cjrcxBsw_6hir_ty.exit17, %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store ptr %i.h, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

.lr.ph:                                           ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded4DataECs8K4cjrcxBsw_6hir_ty.exit17
  %.val23 = phi ptr [ %.val, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded4DataECs8K4cjrcxBsw_6hir_ty.exit17 ], [ %.val22, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val23, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !245
  %.not.i15 = icmp eq i64 %i.r, 0
  br i1 %.not.i15, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs1_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtNtB9_8registry7sharded8RegistryENtB1J_10LookupSpan9span_dataCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.b, align 8, !noundef !245
  %.not11 = icmp eq ptr %i.s, null
  br i1 %.not11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXs6_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded4DataECs8K4cjrcxBsw_6hir_ty.exit17 unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.m:                                             ; preds = %.loopexit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.l
  store ptr null, ptr %0, align 8
  call void @_RNvXs6_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.m

bb.n:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded4DataECs8K4cjrcxBsw_6hir_ty.exit17: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.val = load ptr, ptr %i.c, align 8, !nonnull !245, !noundef !245 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !245
  %i.w = and i64 %i.v, %i.k
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded4DataECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define { ptr, ptr } @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB4_10ValuePairs2ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #6 !guid !11232 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !range !261, !noundef !245
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !245, !noundef !245 ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.e, 2
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr i8, ptr %i.d, i64 %i.h     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !245, !noundef !245 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 3
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n
  %i.p = trunc i64 %i.l to i1                     ; 2 uses
  %spec.select = select i1 %i.p, ptr undef, ptr %i.o
  %spec.select8 = select i1 %i.p, ptr null, ptr %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.3.0 = phi ptr [ undef, %bb.b ], [ undef, %bb.a ], [ %spec.select, %bb.c ]
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %spec.select8, %bb.c ]
  %i.q = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB4_26PickConstraintsForShadowed20candidate_may_shadow(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #7 !guid !11236 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11238)
  %i.c = load i32, ptr %i.a, align 8, !range !264, !alias.scope !11237, !noundef !245 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !range !264, !alias.scope !11238, !noundef !245
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i32 %i.c to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !11237, !noundef !245
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !11238, !noundef !245
  %i.k = icmp eq i32 %i.h, %i.j                   ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.f, label %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.e, label %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4, !range !253, !alias.scope !11237, !noundef !245
  %i.o = load i32, ptr %i.l, align 4, !range !253, !alias.scope !11238, !noundef !245
  %i.p = icmp eq i32 %i.n, %i.o
  br label %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !range !253, !alias.scope !11237, !noundef !245
  %i.t = load i32, ptr %i.q, align 4, !range !253, !alias.scope !11238, !noundef !245
  %i.u = icmp eq i32 %i.s, %i.t
  br label %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.shrunk.i = phi i1 [ %i.u, %bb.f ], [ false, %bb.d ], [ %i.p, %bb.e ], [ false, %bb.a ], [ false, %bb.c ]
  %.not = xor i1 %.sroa.0.0.shrunk.i, true
  %i.v = load i64, ptr %1, align 8, !range !292
  %i.w = icmp eq i64 %i.v, 0
  %or.cond = select i1 %.not, i1 %i.w, i1 false
  %i.x = load i64, ptr %0, align 8, !range !250
  %i.y = trunc nuw i64 %i.x to i1
  %.sroa.0.0.a = select i1 %or.cond, i1 %i.y, i1 false
  br i1 %.sroa.0.0.a, label %3, label %2

2:                                                ; preds = %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %3
  %.sroa.0.0 = phi i1 [ %8, %3 ], [ false, %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ]
  ret i1 %.sroa.0.0

3:                                                ; preds = %_RNvXs9_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_11CandidateIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !noundef !245
  %7 = load i64, ptr %4, align 8, !noundef !245
  %8 = icmp ugt i64 %6, %7
  br label %2
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution7confirmNtB4_14ConfirmContext7confirm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11353 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [64 x i8], align 16               ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 4                 ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [64 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [104 x i8], align 8              ; 12 uses
  %i.ah = alloca [8 x i8], align 4                ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [12 x i8], align 4               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [12 x i8], align 4               ; 6 uses
  %.sroa.6.sroa.5.i = alloca [32 x i8], align 8   ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 7 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 4 uses
  %i.bf = alloca [12 x i8], align 4               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 4 uses
  %i.bh = alloca [16 x i8], align 4               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 9 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [48 x i8], align 8               ; 9 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 5 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [40 x i8], align 8               ; 6 uses
  %i.bw = alloca [96 x i8], align 8               ; 21 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [8 x i8], align 4                ; 5 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [8 x i8], align 4                ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 4 uses
  %i.cd = alloca [16 x i8], align 4               ; 5 uses
  %i.ce = alloca [16 x i8], align 4               ; 6 uses
  %i.cf = alloca [32 x i8], align 8               ; 4 uses
  %i.cg = alloca [12 x i8], align 4               ; 4 uses
  %i.ch = alloca [8 x i8], align 4                ; 6 uses
  %i.ci = alloca [16 x i8], align 4               ; 5 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [32 x i8], align 8               ; 4 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 4 uses
  %i.cq = alloca [72 x i8], align 8               ; 11 uses
  %i.cr = alloca [24 x i8], align 8               ; 7 uses
  %i.cs = alloca [24 x i8], align 8               ; 4 uses
  %i.ct = alloca [16 x i8], align 8               ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 4 uses
  %i.cv = alloca [32 x i8], align 8               ; 7 uses
  %i.cw = alloca [32 x i8], align 8               ; 4 uses
  %i.cx = alloca [16 x i8], align 8               ; 7 uses
  %i.cy = alloca [32 x i8], align 8               ; 4 uses
  %i.cz = alloca [16 x i8], align 8               ; 4 uses
  %i.da = alloca [32 x i8], align 8               ; 4 uses
  %i.db = alloca [16 x i8], align 8               ; 7 uses
  %i.dc = alloca [32 x i8], align 8               ; 4 uses
  %i.dd = alloca [8 x i8], align 8                ; 4 uses
  %i.de = alloca [48 x i8], align 8               ; 12 uses
  %i.df = alloca [24 x i8], align 8               ; 15 uses
  %i.dg = alloca [8 x i8], align 8                ; 4 uses
  %i.dh = alloca [32 x i8], align 8               ; 4 uses
  %i.di = alloca [112 x i8], align 8              ; 22 uses
  %i.dj = alloca [48 x i8], align 8               ; 9 uses
  %i.dk = alloca [16 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 5 uses
  %i.dm = alloca [32 x i8], align 8               ; 7 uses
  %i.dn = alloca [8 x i8], align 8                ; 5 uses
  %i.do = alloca [12 x i8], align 4               ; 5 uses
  %.sroa.5154 = alloca [32 x i8], align 8         ; 4 uses
  %i.dp = alloca [16 x i8], align 4               ; 5 uses
  %i.dq = alloca [32 x i8], align 8               ; 4 uses
  %i.dr = alloca [80 x i8], align 8               ; 11 uses
  %i.ds = alloca [16 x i8], align 8               ; 8 uses
  %i.dt = alloca [32 x i8], align 8               ; 7 uses
  %i.du = alloca [16 x i8], align 8               ; 5 uses
  %i.dv = alloca [16 x i8], align 8               ; 5 uses
  %i.dw = alloca [32 x i8], align 8               ; 7 uses
  %i.dx = alloca [8 x i8], align 8                ; 7 uses
  %i.dy = alloca [8 x i8], align 8                ; 5 uses
  %i.dz = alloca [8 x i8], align 8                ; 5 uses
  %.val60 = load ptr, ptr %1, align 8, !nonnull !245, !align !246, !noundef !245 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %.val61 = load i32, ptr %i.ea, align 8, !noundef !245 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !11355
  %i.eb = getelementptr inbounds nuw i8, ptr %.val60, i64 56 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11356)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val60, i64 720
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !11357, !nonnull !245, !noundef !245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !11360
  store i64 0, ptr %i.cr, align 8, !alias.scope !11361, !noalias !11360
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ee, align 8, !alias.scope !11361, !noalias !11360
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 0, ptr %i.ef, align 8, !alias.scope !11361, !noalias !11360
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sink.i.sroa.gep157 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep247 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eg = invoke noundef nonnull ptr @_RINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB6_9InferCtxt24resolve_vars_if_possibleNtNtB8_2ty2TyEBa_(ptr noundef nonnull align 8 %i.eb, ptr noundef nonnull %2)
          to label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5infer9autoderefNtNtB4_5unify14InferenceTable23autoderef_with_tracking.exit.i unwind label %bb.b, !noalias !11360

bb.b:                                             ; preds = %bb.a
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtNtB1f_9autoderef13AutoderefKindEEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cr) #35
          to label %common.resume unwind label %bb.c, !noalias !11360

bb.c:                                             ; preds = %bb.b
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !11360
  unreachable

common.resume:                                    ; preds = %.body, %bb.b, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.eh, %bb.b ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5infer9autoderefNtNtB4_5unify14InferenceTable23autoderef_with_tracking.exit.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !noalias !11355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !11360
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  store ptr %i.eb, ptr %i.ej, align 8, !alias.scope !11362, !noalias !11355
  %i.ek = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  store ptr %i.ed, ptr %i.ek, align 8, !alias.scope !11362, !noalias !11355
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  store i32 0, ptr %i.el, align 8, !alias.scope !11362, !noalias !11355
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11362, !noalias !11355
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11362, !noalias !11355
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11362, !noalias !11355
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 48 ; 2 uses
  store ptr %i.eg, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11362, !noalias !11355
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11362, !noalias !11355
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 57
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !alias.scope !11362, !noalias !11355
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  store i8 0, ptr %i.em, align 8, !alias.scope !11362, !noalias !11355
end_hunk_0
