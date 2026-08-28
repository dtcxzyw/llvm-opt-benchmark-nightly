Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.09?download=true
inline.NumInlined: 528
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker3run:bb.a
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = invoke noundef align 8 ptr @_RNvMs0_NtNtCslghKHtsL3a4_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtNtB9_7runtime9scheduler12multi_thread6worker4CoreE4swapB9_(ptr noundef nonnull align 8 %i.d, ptr noalias noundef align 8 null)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !596, !nonnull !5, !noundef !5
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !596
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit: ; preds = %bb.f, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
  ret void

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = invoke noundef nonnull ptr @_RNvNtNtCsaL1QbXo9JQH_3std6thread7current7current()
          to label %bb.j unwind label %.thread26  ; 4 uses

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #26
          to label %bb.i unwind label %.thread26

.thread26:                                        ; preds = %bb.n, %bb.g, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread18

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.r, i64 %i.j
  store ptr %i.s, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !597, !noundef !5
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.t, i64 noundef %i.v)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !598
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.l, label %.thread18

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %.thread18 unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.z = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !607
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9 unwind label %.thread26

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9
  %i.ag = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8
  store i64 1, ptr %i.a, align 8
  %i.ai = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  invoke void @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime7context7runtime13enter_runtimeNCNvNtNtNtB6_9scheduler12multi_thread6worker3run0uEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i1 noundef zeroext true, ptr noundef nonnull %i.ai, ptr noalias noundef nonnull align 8 %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #23
          to label %.thread22 unwind label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ak = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !616
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1j_.exit

bb.t:                                             ; preds = %bb.v, %bb.l, %.thread18, %bb.q
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread18:                                        ; preds = %bb.l, %bb.k, %.thread26
  %.pn21 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread26 ], [ %i.w, %bb.k ], [ %i.w, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr %i.e) #23
          to label %.thread18._crit_edge unwind label %bb.t

.thread18._crit_edge:                             ; preds = %.thread18
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !623
  br label %bb.u

.thread22:                                        ; preds = %bb.u, %bb.v, %bb.q
  %.pn.pn16 = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %.pn.pn.ph, %bb.u ], [ %.pn.pn.ph, %bb.v ]
  resume { ptr, i32 } %.pn.pn16

bb.u:                                             ; preds = %.thread18._crit_edge, %bb.b
  %i.an = phi ptr [ %0, %bb.b ], [ %.pre, %.thread18._crit_edge ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn21, %.thread18._crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !623
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.v, label %.thread22

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %.thread22 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6create(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %6, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [616 x i8], align 8               ; 22 uses
  %.sroa.066.sroa.4 = alloca [31 x i8], align 1   ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [96 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 16               ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.01.sroa.0 = alloca [120 x i8], align 8   ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [128 x i8], align 128             ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [120 x i8], align 8              ; 15 uses
  %i.ab = alloca [72 x i8], align 8               ; 5 uses
  %i.ac = alloca [128 x i8], align 128            ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [24 x i8], align 8               ; 12 uses
  %i.ak = alloca [8 x i8], align 8                ; 3 uses
  %i.al = alloca [8 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.al, align 8
  store ptr %4, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.c unwind label %bb.b

.body117:                                         ; preds = %bb.b, %.thread167.thread
  %.sroa.029.0.a = phi i8 [ %.sroa.029.2.a, %.thread167.thread ], [ %.sroa.032.1, %bb.b ]
  %.sroa.030.0 = phi i8 [ %.sroa.030.2, %.thread167.thread ], [ %.sroa.032.1, %bb.b ]
  %.sroa.032.0 = phi i8 [ %.sroa.032.2, %.thread167.thread ], [ %.sroa.032.1, %bb.b ]
  %.pn103 = phi { ptr, i32 } [ %.pn101, %.thread167.thread ], [ %i.an, %bb.b ] ; 2 uses
  %i.am = trunc nuw i8 %.sroa.032.0 to i1
  br i1 %i.am, label %bb.cu, label %.body117.thread

bb.b:                                             ; preds = %bb.ap, %bb.d, %bb.a
  %.sroa.032.1 = phi i8 [ 1, %bb.d ], [ 0, %bb.ap ], [ 1, %bb.a ] ; 3 uses
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body117

bb.c:                                             ; preds = %bb.a
  %i.ao = load i64, ptr %i.g, align 8, !range !236, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !630, !noundef !5 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.e, !prof !407

bb.d:                                             ; preds = %bb.c
  %i.at = load i64, ptr %i.as, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #26
          to label %bb.cs unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  %i.av = icmp ule i64 %1, %i.ar
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.ar, ptr %i.aj, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store i64 0, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.g unwind label %bb.f

.thread167.thread:                                ; preds = %.body, %bb.ai, %bb.be, %bb.bd, %bb.ct, %.thread167, %bb.f
  %.sroa.029.2.a = phi i8 [ 1, %bb.f ], [ 1, %bb.ct ], [ 1, %.thread167 ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.ai ], [ 1, %.body ]
  %.sroa.030.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.ct ], [ 1, %.thread167 ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.ai ], [ 0, %.body ]
  %.sroa.032.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.ct ], [ 0, %.thread167 ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.ai ], [ 0, %.body ]
  %.pn101 = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %.pn99155, %bb.ct ], [ %.pn95.pn.pn.ph, %.thread167 ], [ %.pn91.pn, %bb.bd ], [ %.pn91.pn, %bb.be ], [ %i.ds, %bb.ai ], [ %.pn.pn, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #23
          to label %.body117 unwind label %bb.bc

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.thread167.thread

bb.g:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.f, align 8, !range !236, !noundef !5
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !630, !noundef !5 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.h, label %bb.i, !prof !407

bb.h:                                             ; preds = %bb.g
  %i.be = load i64, ptr %i.bd, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.be) #26
          to label %bb.cs unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  %i.bg = icmp ule i64 %1, %i.bc
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.bc, ptr %i.ai, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store i64 0, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %1, i1 noundef zeroext false, i64 noundef 128, i64 noundef 128)
          to label %bb.j unwind label %.thread

.thread167:                                       ; preds = %bb.cr
  br i1 %.sroa.029.4.ph, label %bb.ct, label %.thread167.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %i.e, align 8, !range !236, !noundef !5
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !630, !noundef !5 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !407

bb.k:                                             ; preds = %bb.j
  %i.bp = load i64, ptr %i.bo, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #26
          to label %bb.cs unwind label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5
  %i.br = icmp ule i64 %1, %i.bn
  tail call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.bn, ptr %i.ah, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.bt, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 95
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 113
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aa, i64 117
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 108
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.ci, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.t, i64 noundef %1)
          to label %bb.n unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph, %bb.ci
  %.sroa.084.0267 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %bb.ci ]
  %i.ci = add nuw i64 %.sroa.084.0267, 1          ; 2 uses
  %i.cj = invoke { ptr, ptr } @_RINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5localINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_6handle6HandleEEBa_()
          to label %bb.bk unwind label %.loopexit ; 2 uses

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 94
  %i.cm = load i8, ptr %i.cl, align 2, !range !128, !noundef !5
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.x unwind label %.body.thread ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.x
  %.sroa.3.0 = phi i32 [ %i.dc, %bb.x ], [ -1, %bb.n ]
  %.sroa.0.0 = phi i64 [ %i.db, %bb.x ], [ undef, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !631, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = atomicrmw add ptr %i.cq, i64 1 monotonic, align 8, !noalias !631
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.ct = phi <2 x ptr> [ %i.cw, %bb.s ], [ <ptr null, ptr undef>, %bb.p ]
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !631, !noundef !5 ; 2 uses
  %.not3.i = icmp eq ptr %i.cv, null
  br i1 %.not3.i, label %bb.z, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cw = load <2 x ptr>, ptr %i.cp, align 8, !noalias !631
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cx = atomicrmw add ptr %i.cv, i64 1 monotonic, align 8, !noalias !631
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = load <2 x ptr>, ptr %i.cu, align 8, !noalias !631
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.y
  br i1 %.sroa.030.8, label %bb.bj, label %.thread167.thread

.body.thread:                                     ; preds = %bb.o
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.x:                                             ; preds = %bb.o
  %i.db = extractvalue { i64, i32 } %i.co, 0
  %i.dc = extractvalue { i64, i32 } %i.co, 1
  br label %bb.p

bb.y:                                             ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #23
          to label %.body unwind label %bb.bc

bb.z:                                             ; preds = %bb.v, %bb.r
  %i.dd = phi <2 x ptr> [ %i.cz, %bb.v ], [ <ptr null, ptr undef>, %bb.r ]
  store <2 x ptr> %i.ct, ptr %i.q, align 16, !alias.scope !631
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %i.dd, ptr %i.de, align 16, !alias.scope !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.df = invoke { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteE16into_boxed_sliceBO_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit, %bb.ab
  %.sroa.030.8 = phi i1 [ %.sroa.030.9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit ], [ true, %bb.ab ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit ], [ %i.dg, %bb.ab ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks9TaskHooksEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #23
          to label %bb.y unwind label %bb.bc

bb.ab:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.dh = extractvalue { ptr, i64 } %i.df, 0      ; 4 uses
  %i.di = extractvalue { ptr, i64 } %i.df, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE3newB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, i64 noundef %1)
          to label %bb.ae unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit: ; preds = %bb.bi, %bb.bh, %bb.ad
  %.sroa.030.9 = phi i1 [ true, %bb.ad ], [ false, %bb.bh ], [ false, %bb.bi ]
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.ad ], [ %i.dl, %bb.bh ], [ %i.dl, %bb.bi ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteEEB1l_(ptr nonnull %i.dh, i64 %i.di) #23
          to label %bb.aa unwind label %bb.bc

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.066.sroa.4)
  %.sroa.066.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.066.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.066.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i8 0, ptr %i.n, align 8
  %.sroa.066.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.066.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.066.sroa.4, i64 31, i1 false)
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.567.0..sroa_idx, i8 0, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.066.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.576.0..sroa_idx, align 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %.sroa.677.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.dk = invoke { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6worker13WorkerMetricsE16into_boxed_sliceBM_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.l) #23
          to label %bb.bf unwind label %bb.bc

bb.ag:                                            ; preds = %bb.ae
  %i.dm = extractvalue { ptr, i64 } %i.dk, 0
  %i.dn = extractvalue { ptr, i64 } %i.dk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  %.sroa.01.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %.sroa.01.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.01.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  %.sroa.01.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.01.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  %.sroa.01.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %.sroa.01.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.01.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.01.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 1, ptr %i.d, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.01.sroa.0, i64 120, i1 false)
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 %.sroa.0.0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i32 %.sroa.3.0, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.01.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.dh, ptr %.sroa.01.sroa.8.0..sroa_idx, align 8
  %.sroa.01.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i64 %i.di, ptr %.sroa.01.sroa.9.0..sroa_idx, align 8
  %.sroa.01.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr %i.dm, ptr %.sroa.01.sroa.11.0..sroa_idx, align 8
  %.sroa.01.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i64 %i.dn, ptr %.sroa.01.sroa.12.0..sroa_idx, align 8
  %.sroa.01.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i64 0, ptr %.sroa.01.sroa.13.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !634
  %i.dq = call noundef align 8 dereferenceable_or_null(616) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 40, 617) 616, i64 noundef 8) #21, !noalias !634 ; 6 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ah, label %bb.ak, !prof !407

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 616) #26
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleEEB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(616) %i.d) #23
          to label %.thread167.thread unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.dq, ptr noundef nonnull align 8 dereferenceable(616) %i.d, i64 616, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.dq, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB17_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.am unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit: ; preds = %.body105, %bb.al
  %.pn91.pn = phi { ptr, i32 } [ %i.du, %bb.al ], [ %.pn91, %.body105 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6LaunchEBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #23
          to label %bb.bd unwind label %bb.bc

bb.al:                                            ; preds = %._crit_edge270, %bb.ak
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.h, align 8, !alias.scope !637, !nonnull !5, !noundef !5 ; 2 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !alias.scope !637, !nonnull !5, !noundef !5
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.am
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.an

.body105:                                         ; preds = %bb.az, %bb.ba, %bb.av
  %.pn91 = phi { ptr, i32 } [ %i.ev, %bb.ba ], [ %i.eq, %bb.av ], [ %i.ev, %bb.az ]
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit unwind label %bb.bc

bb.an:                                            ; preds = %.lr.ph269, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit
  %i.eb = phi ptr [ %i.dw, %.lr.ph269 ], [ %i.fc, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ec, ptr %i.h, align 8, !alias.scope !646
  %i.ed = load ptr, ptr %i.eb, align 8, !noalias !646, !nonnull !5, !align !129, !noundef !5
  %i.ee = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !642, !noundef !5 ; 2 uses
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !642
  %i.eg = atomicrmw add ptr %i.dq, i64 1 monotonic, align 8
  %i.eh = icmp slt i64 %i.eg, 0
  br i1 %i.eh, label %bb.as, label %bb.at

._crit_edge270:                                   ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit, %bb.am
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit115 unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit115: ; preds = %._crit_edge270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store ptr %i.dq, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit115
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.thread252 unwind label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit115
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1A_.exit unwind label %bb.b

bb.aq:                                            ; preds = %bb.ao
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1A_.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.el = load ptr, ptr %i.al, align 8, !alias.scope !656, !nonnull !5, !noundef !5
  %i.em = atomicrmw sub ptr %i.el, i64 1 release, align 8, !noalias !656
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1A_.exit
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1A_.exit, %bb.ar
  ret void

bb.as:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  store i64 1, ptr %i.dz, align 8
  store ptr %i.dq, ptr %i.ea, align 8
  store i64 %i.ee, ptr %.sroa.419.0..sroa_idx, align 8
  store ptr %i.ed, ptr %.sroa.520.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !657
  %i.eo = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 40, 617) 40, i64 noundef 8) #21, !noalias !657 ; 5 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.au, label %bb.ax, !prof !407

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #26
          to label %.noexc120 unwind label %bb.av

.noexc120:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #23
          to label %.body105 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ax:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eo, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.eo, ptr %i.b, align 8, !noalias !660
  %i.es = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !660, !noundef !5 ; 3 uses
  %i.et = load i64, ptr %i.j, align 8, !range !519, !alias.scope !660, !noundef !5
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.ay, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8grow_oneB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !663
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.ba, label %.body105

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %.body105 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit: ; preds = %bb.ax, %bb.ay
  %i.ez = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !660, !nonnull !5, !noundef !5
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.es
  store ptr %i.eo, ptr %i.fa, align 8
  %i.fb = add i64 %i.es, 1
  store i64 %i.fb, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fc = load ptr, ptr %i.h, align 8, !alias.scope !668, !nonnull !5, !noundef !5 ; 2 uses
  %i.fd = load ptr, ptr %i.dv, align 8, !alias.scope !668, !nonnull !5, !noundef !5
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %._crit_edge270, label %bb.an

bb.bc:                                            ; preds = %bb.cz, %bb.cy, %bb.cq, %bb.cn, %bb.cl, %bb.ck, %bb.bs, %bb.be, %.body105, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit, %.noexc143, %bb.cw, %bb.cu, %bb.ct, %bb.cr, %bb.co, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit, %bb.bj, %bb.bg, %bb.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit, %bb.af, %bb.aa, %bb.y, %.thread167.thread
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.fg = load ptr, ptr %i.s, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.fh = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !677
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.be, label %.thread167.thread

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #24
          to label %.thread167.thread unwind label %bb.bc

bb.bf:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker4CoreEEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #23
          to label %bb.bg unwind label %bb.bc

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtNtBK_7runtime9scheduler12multi_thread6worker6SyncedEEBK_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.n) #23
          to label %bb.bh unwind label %bb.bc

bb.bh:                                            ; preds = %bb.bg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val111 = load i64, ptr %i.fj, align 8, !noundef !5 ; 2 uses
  %i.fk = icmp eq i64 %.val111, 0
  br i1 %i.fk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val110 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.fl = mul nuw nsw i64 %.val111, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val110, i64 noundef range(i64 1, -9223372036854775808) %i.fl, i64 noundef 8) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit

bb.bj:                                            ; preds = %.body.thread, %.body
  %.pn91.pn.pn240 = phi { ptr, i32 } [ %i.da, %.body.thread ], [ %.pn.pn, %.body ]
  %.sroa.028.2237 = phi i1 [ true, %.body.thread ], [ false, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idle6SyncedEBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #23
          to label %bb.cr unwind label %bb.bc

bb.bk:                                            ; preds = %bb.m
  %i.fm = extractvalue { ptr, ptr } %i.cj, 0      ; 3 uses
  %i.fn = extractvalue { ptr, ptr } %i.cj, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.fm, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.fn, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.fo = invoke noundef nonnull ptr @_RNvXs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB4_6ParkerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bm unwind label %bb.bl     ; 8 uses

bb.bl:                                            ; preds = %bb.bk
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bm:                                            ; preds = %bb.bk
  store ptr %i.fo, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.fq = atomicrmw add ptr %i.fo, i64 1 monotonic, align 8
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.fo, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i32 0, ptr %i.ac, align 128
  store i8 0, ptr %.sroa.032.sroa.4.0..sroa_idx, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.533.0..sroa_idx, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats3new(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noundef nonnull align 128 %i.ac)
          to label %bb.bq unwind label %.thread208

.thread208:                                       ; preds = %bb.bn
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.thread196

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.ch
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr null, ptr %i.z, align 8
  %i.fu = load i8, ptr %i.bu, align 4, !range !128, !noundef !5
  %i.fv = xor i8 %i.fu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.fn, ptr %i.y, align 8
  %i.fw = load i8, ptr %i.bv, align 1, !range !128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.fo, ptr %i.x, align 8
  %i.fx = invoke noundef i32 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats27tuned_global_queue_interval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab, ptr noundef nonnull align 8 %6)
          to label %bb.bt unwind label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bt
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !678
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit unwind label %bb.bc

bb.bt:                                            ; preds = %bb.bq
  %i.gb = invoke { i32, i32 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.bw)
          to label %bb.bu unwind label %bb.br     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.gc = extractvalue { i32, i32 } %i.gb, 0
  %i.gd = extractvalue { i32, i32 } %i.gb, 1
  store i32 0, ptr %i.bx, align 8
  store ptr null, ptr %i.aa, align 8
  store i8 %i.fv, ptr %i.by, align 8
  store ptr %i.fn, ptr %i.bz, align 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.ca, align 1
  store i8 %i.fw, ptr %i.cb, align 1
  store ptr %i.fo, ptr %i.cc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i64 72, i1 false)
  store i32 %i.fx, ptr %i.ce, align 4
  store i32 %i.gc, ptr %i.cf, align 8
  store i32 %i.gd, ptr %i.cg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !687
  %i.ge = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 40, 617) 120, i64 noundef 8) #21, !noalias !687 ; 4 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.bv, label %bb.by, !prof !407

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #26
          to label %.noexc127 unwind label %bb.bw

.noexc127:                                        ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.aa) #23
          to label %.thread196 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.by:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ge, ptr noundef nonnull align 8 dereferenceable(120) %i.aa, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gi = load i64, ptr %i.ax, align 8, !alias.scope !690, !noalias !693, !noundef !5 ; 3 uses
  %i.gj = load i64, ptr %i.aj, align 8, !range !519, !alias.scope !690, !noalias !693, !noundef !5
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEE8grow_oneB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.cc unwind label %bb.ca, !noalias !693

bb.ca:                                            ; preds = %bb.bz
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr nonnull align 8 %i.ge) #23
          to label %.thread196 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cc:                                            ; preds = %bb.bz, %bb.by
  %i.gn = load ptr, ptr %i.aw, align 8, !alias.scope !690, !noalias !693, !nonnull !5, !noundef !5
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gi
  store ptr %i.ge, ptr %i.go, align 8, !noalias !693
  %i.gp = add i64 %i.gi, 1
  store i64 %i.gp, ptr %i.ax, align 8, !alias.scope !690, !noalias !693
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fm, ptr %i.a, align 8, !noalias !695
  store ptr %i.fo, ptr %i.ch, align 8, !noalias !695
  %i.gq = load i64, ptr %i.bi, align 8, !alias.scope !695, !noundef !5 ; 3 uses
  %i.gr = load i64, ptr %i.ai, align 8, !range !519, !alias.scope !695, !noundef !5
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.cg unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteEBL_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #23
          to label %bb.cr unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cg:                                            ; preds = %bb.cd, %bb.cc
  %i.gv = load ptr, ptr %i.bh, align 8, !alias.scope !695, !nonnull !5, !noundef !5
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gq ; 2 uses
  store ptr %i.fm, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.fo, ptr %i.gx, align 8
  %i.gy = add i64 %i.gq, 1
  store i64 %i.gy, ptr %i.bi, align 8, !alias.scope !695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.w, ptr noundef nonnull align 128 dereferenceable(128) %i.ac, i64 128, i1 false)
  %i.gz = load i64, ptr %i.bt, align 8, !alias.scope !698, !noalias !701, !noundef !5 ; 3 uses
  %i.ha = load i64, ptr %i.ah, align 8, !range !519, !alias.scope !698, !noalias !701, !noundef !5
  %i.hb = icmp eq i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6worker13WorkerMetricsE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #24
          to label %bb.ci unwind label %bb.bp

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.hc = load ptr, ptr %i.bs, align 8, !alias.scope !698, !noalias !701, !nonnull !5, !noundef !5
  %i.hd = getelementptr inbounds nuw [128 x i8], ptr %i.hc, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.hd, ptr noundef nonnull readonly align 128 dereferenceable(128) %i.w, i64 128, i1 false)
  %i.he = add i64 %i.gz, 1
  store i64 %i.he, ptr %i.bt, align 8, !alias.scope !698, !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %exitcond.not = icmp eq i64 %i.ci, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit: ; preds = %bb.br, %bb.bs
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.y) #23
          to label %bb.cj unwind label %bb.bc

bb.cj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit
  %i.hf = load ptr, ptr %i.z, align 8, !alias.scope !703, !noundef !5
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %.thread196, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.thread196 unwind label %bb.bc

.thread204:                                       ; preds = %bb.cl, %.thread196
  br i1 %.sroa.024.0191, label %bb.cm, label %bb.cp

.thread196:                                       ; preds = %bb.ck, %bb.cj, %bb.ca, %bb.bw, %.thread208
  %.pn95195 = phi { ptr, i32 } [ %i.gl, %bb.ca ], [ %i.fs, %.thread208 ], [ %i.gg, %bb.bw ], [ %i.fy, %bb.cj ], [ %i.fy, %bb.ck ] ; 3 uses
  %.sroa.024.0191 = phi i1 [ false, %bb.ca ], [ true, %.thread208 ], [ false, %bb.bw ], [ false, %bb.cj ], [ false, %bb.ck ]
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.hh = load ptr, ptr %i.ad, align 8, !alias.scope !715, !nonnull !5, !noundef !5
  %i.hi = atomicrmw sub ptr %i.hh, i64 1 release, align 8, !noalias !715
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.cl, label %.thread204

bb.cl:                                            ; preds = %.thread196
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #24
          to label %.thread204 unwind label %bb.bc

bb.cm:                                            ; preds = %.thread204
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.hk = load ptr, ptr %i.ae, align 8, !alias.scope !725, !nonnull !5, !noundef !5
  %i.hl = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !noalias !725
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #24
          to label %bb.co unwind label %bb.bc

bb.co:                                            ; preds = %bb.bl, %bb.cn, %bb.cm
  %.pn95.pn.ph = phi { ptr, i32 } [ %i.fp, %bb.bl ], [ %.pn95195, %bb.cn ], [ %.pn95195, %bb.cm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.af) #23
          to label %bb.cp unwind label %bb.bc

bb.cp:                                            ; preds = %bb.co, %.thread204
  %.pn95.pn184.ph = phi { ptr, i32 } [ %.pn95195, %.thread204 ], [ %.pn95.pn.ph, %bb.co ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.hn = load ptr, ptr %i.ag, align 8, !alias.scope !735, !nonnull !5, !noundef !5
  %i.ho = atomicrmw sub ptr %i.hn, i64 1 release, align 8, !noalias !735
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #24
          to label %bb.cr unwind label %bb.bc

bb.cr:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bj, %bb.bp, %bb.ce, %bb.cq, %bb.cp
  %.sroa.029.4.ph = phi i1 [ %.sroa.028.2237, %bb.bj ], [ true, %bb.cp ], [ true, %bb.ce ], [ true, %bb.bp ], [ true, %bb.cq ], [ true, %.loopexit.split-lp ], [ true, %.loopexit ]
  %.pn95.pn.pn.ph = phi { ptr, i32 } [ %.pn91.pn.pn240, %bb.bj ], [ %.pn95.pn184.ph, %bb.cp ], [ %i.gt, %bb.ce ], [ %i.ft, %bb.bp ], [ %.pn95.pn184.ph, %bb.cq ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6worker13WorkerMetricsEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #23
          to label %.thread167 unwind label %bb.bc

bb.cs:                                            ; preds = %bb.k, %bb.h, %bb.d
  unreachable

bb.ct:                                            ; preds = %.thread, %.thread167
  %.pn99155 = phi { ptr, i32 } [ %i.bj, %.thread ], [ %.pn95.pn.pn.ph, %.thread167 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #23
          to label %.thread167.thread unwind label %bb.bc

.body117.thread:                                  ; preds = %bb.cu, %.body117
  %i.hq = trunc nuw i8 %.sroa.030.0 to i1
  br i1 %i.hq, label %bb.cw, label %bb.cv

bb.cu:                                            ; preds = %.body117
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %7) #23
          to label %.body117.thread unwind label %bb.bc

bb.cv:                                            ; preds = %bb.cw, %.body117.thread
  %cond = icmp eq i8 %.sroa.029.0.a, 0
  br i1 %cond, label %.thread252, label %bb.cx

bb.cw:                                            ; preds = %.body117.thread
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %6) #23
          to label %bb.cv unwind label %bb.bc

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.hr = load ptr, ptr %i.ak, align 8, !alias.scope !745, !nonnull !5, !noundef !5
  %i.hs = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !745
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %bb.cy, label %.noexc143

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #24
          to label %.noexc143 unwind label %bb.bc

.thread252:                                       ; preds = %bb.ao, %bb.cv, %.noexc143
  %.pn103225250256 = phi { ptr, i32 } [ %.pn103, %.noexc143 ], [ %.pn103, %bb.cv ], [ %i.ej, %bb.ao ]
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.hu = load ptr, ptr %i.al, align 8, !alias.scope !755, !nonnull !5, !noundef !5
  %i.hv = atomicrmw sub ptr %i.hu, i64 1 release, align 8, !noalias !755
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.cz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit145

bb.cz:                                            ; preds = %.thread252
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit145 unwind label %bb.bc

.noexc143:                                        ; preds = %bb.cy, %bb.cx
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %3) #23
          to label %.thread252 unwind label %bb.bc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEBL_.exit145: ; preds = %.thread252, %bb.cz
  resume { ptr, i32 } %.pn103225250256
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXNtNtCslghKHtsL3a4_5tokio2io5stdinNtB2_5StdinNtNtB4_10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXNtNtCslghKHtsL3a4_5tokio2io8blockingINtB2_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB4_10async_read9AsyncRead9poll_readB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXNtNtNtCslghKHtsL3a4_5tokio2io5stdin3sysNtB4_5StdinNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio5stdin() ; 0 uses
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCINvNtNtNtB4_9scheduler12multi_thread6worker12with_currentuNCNvXNvB12_14block_in_placeNtB20_5ResetNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0E0EB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker3runNtB2_12AbortOnPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readnone captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.b = and i64 %i.a, 9223372036854775807
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !130

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 85 to ptr))
  tail call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_17NotifyWaitersListNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !128, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !129, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 acquire monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %.preheader, label %bb.c, !prof !130

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit4: ; preds = %bb.j, %bb.i, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.f, i64 undef, i32 noundef -1) ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.h
  %i.j = invoke noundef ptr @_RNvMsb_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync6notify6WaiterE8pop_backB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit, label %bb.f, !prof !130

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store atomic i64 2, ptr %i.n release, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.o = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit4, label %bb.j, !prof !130

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit4

bb.k:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListNtNtNtBK_4sync6notify6WaiterEEEBK_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handleNtB5_6HandleNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 28)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionINtNtNtB8_3num7nonzero7NonZeroyEENtB6_5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !129, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !756, !noalias !759, !noundef !5
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !761
  store ptr %i.b, ptr %i.a, align 8, !noalias !761
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !761
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZeroyEENtNtB7_3fmt5Debug3fmtCslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4), !noalias !756
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZeroyEENtNtB7_3fmt5Debug3fmtCslghKHtsL3a4_5tokio.exit

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZeroyEENtNtB7_3fmt5Debug3fmtCslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionINtNtNtB8_3ptr8non_null7NonNullNtNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphore6WaiterEENtB6_5Debug3fmtB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !129, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !762, !noalias !765, !noundef !5
  %.not.i = icmp eq ptr %i.c, null
end_hunk_0
