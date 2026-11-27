Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.09?download=true
inline.NumInlined: 528
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker3run:bb.a
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.l = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !622, !nonnull !7, !noundef !7
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !622
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
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
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
  %i.v = load i64, ptr %i.u, align 8, !range !623, !noundef !7
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.t, i64 noundef %i.v)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !624
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.l, label %.thread18

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %.thread18 unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.z = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !625
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9 unwind label %.thread26

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !7, !noundef !7
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit9
  %i.ag = load ptr, ptr %i.ac, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8
  store i64 1, ptr %i.a, align 8
  %i.ai = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
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
  %i.ak = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !626
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
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !627
  br label %bb.u

.thread22:                                        ; preds = %bb.u, %bb.v, %bb.q
  %.pn.pn16 = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %.pn.pn.ph, %bb.u ], [ %.pn.pn.ph, %bb.v ]
  resume { ptr, i32 } %.pn.pn16

bb.u:                                             ; preds = %.thread18._crit_edge, %bb.b
  %i.an = phi ptr [ %0, %bb.b ], [ %.pre, %.thread18._crit_edge ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn21, %.thread18._crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !627
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
  %i.ac = alloca [128 x i8], align 128            ; 5 uses
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
  %.sroa.029.0 = phi i8 [ %.sroa.029.2, %.thread167.thread ], [ %.sroa.032.1, %bb.b ]
  %.sroa.030.0 = phi i8 [ %.sroa.030.2, %.thread167.thread ], [ %.sroa.032.1, %bb.b ]
  %.sroa.032.0 = phi i8 [ %.sroa.032.2, %.thread167.thread ], [ %.sroa.032.1, %bb.b ]
  %.pn103 = phi { ptr, i32 } [ %.pn101, %.thread167.thread ], [ %i.an, %bb.b ] ; 2 uses
  %i.am = trunc nuw i8 %.sroa.029.0 to i1
  br i1 %i.am, label %bb.cs, label %.body117.thread

bb.b:                                             ; preds = %bb.ap, %bb.d, %bb.a
  %.sroa.032.1 = phi i8 [ 1, %bb.d ], [ 0, %bb.ap ], [ 1, %bb.a ] ; 3 uses
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body117

bb.c:                                             ; preds = %bb.a
  %i.ao = load i64, ptr %i.g, align 8, !range !11, !noundef !7
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !17, !noundef !7 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.at = load i64, ptr %i.as, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #26
          to label %bb.cq unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !7, !noundef !7
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

.thread167.thread:                                ; preds = %.body, %bb.ai, %bb.be, %bb.bd, %bb.cr, %.thread167, %bb.f
  %.sroa.029.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.cr ], [ 0, %.thread167 ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.ai ], [ 0, %.body ]
  %.sroa.030.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.cr ], [ 1, %.thread167 ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.ai ], [ 0, %.body ]
  %.sroa.032.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.cr ], [ 1, %.thread167 ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.ai ], [ 1, %.body ]
  %.pn101 = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %.pn99155, %bb.cr ], [ %.pn95.pn.pn.ph, %.thread167 ], [ %.pn91.pn, %bb.bd ], [ %.pn91.pn, %bb.be ], [ %i.dq, %bb.ai ], [ %.pn.pn, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #23
          to label %.body117 unwind label %bb.bc

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.thread167.thread

bb.g:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.f, align 8, !range !11, !noundef !7
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !17, !noundef !7 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.be = load i64, ptr %i.bd, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.be) #26
          to label %bb.cq unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.bd, align 8, !nonnull !7, !noundef !7
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

.thread167:                                       ; preds = %.loopexit.split-lp
  br i1 %.sroa.029.4.ph, label %bb.cr, label %.thread167.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %i.e, align 8, !range !11, !noundef !7
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !17, !noundef !7 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.bp = load i64, ptr %i.bo, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #26
          to label %bb.cq unwind label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bo, align 8, !nonnull !7, !noundef !7
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
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 95
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %i.aa, i64 113
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 117
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %i.aa, i64 108
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.ch, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idleNtB2_4Idle3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.t, i64 noundef %1)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph, %bb.ch
  %.sroa.084.0266 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.ch ]
  %i.cg = add nuw i64 %.sroa.084.0266, 1          ; 2 uses
  %i.ch = invoke { ptr, ptr } @_RINvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5localINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB4_6handle6HandleEEBa_()
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 94
  %i.ck = load i8, ptr %i.cj, align 2, !range !8, !noundef !7
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.x unwind label %.body.thread ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.x
  %.sroa.3.0 = phi i32 [ %i.da, %bb.x ], [ -1, %bb.n ]
  %.sroa.0.0 = phi i64 [ %i.cz, %bb.x ], [ undef, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !714, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = atomicrmw add ptr %i.co, i64 1 monotonic, align 8, !noalias !714
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.cr = phi <2 x ptr> [ %i.cu, %bb.s ], [ <ptr null, ptr undef>, %bb.p ]
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !714, !noundef !7 ; 2 uses
  %.not3.i = icmp eq ptr %i.ct, null
  br i1 %.not3.i, label %bb.z, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cu = load <2 x ptr>, ptr %i.cn, align 8, !noalias !714
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cv = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !714
  %i.cw = icmp slt i64 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load <2 x ptr>, ptr %i.cs, align 8, !noalias !714
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.y
  br i1 %.sroa.030.8, label %bb.bj, label %.thread167.thread

.body.thread:                                     ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.x:                                             ; preds = %bb.o
  %i.cz = extractvalue { i64, i32 } %i.cm, 0
  %i.da = extractvalue { i64, i32 } %i.cm, 1
  br label %bb.p

bb.y:                                             ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #23
          to label %.body unwind label %bb.bc

bb.z:                                             ; preds = %bb.v, %bb.r
  %i.db = phi <2 x ptr> [ %i.cx, %bb.v ], [ <ptr null, ptr undef>, %bb.r ]
  store <2 x ptr> %i.cr, ptr %i.q, align 16, !alias.scope !714
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %i.db, ptr %i.dc, align 16, !alias.scope !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.dd = invoke { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteE16into_boxed_sliceBO_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit, %bb.ab
  %.sroa.030.8 = phi i1 [ %.sroa.030.9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit ], [ true, %bb.ab ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit ], [ %i.de, %bb.ab ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks9TaskHooksEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #23
          to label %bb.y unwind label %bb.bc

bb.ab:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.df = extractvalue { ptr, i64 } %i.dd, 0      ; 4 uses
  %i.dg = extractvalue { ptr, i64 } %i.dd, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE3newB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, i64 noundef %1)
          to label %bb.ae unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit: ; preds = %bb.bi, %bb.bh, %bb.ad
  %.sroa.030.9 = phi i1 [ true, %bb.ad ], [ false, %bb.bh ], [ false, %bb.bi ]
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.ad ], [ %i.dj, %bb.bh ], [ %i.dj, %bb.bi ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteEEB1l_(ptr nonnull %i.df, i64 %i.dg) #23
          to label %bb.aa unwind label %bb.bc

bb.ad:                                            ; preds = %bb.ac
  %i.dh = landingpad { ptr, i32 }
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
  %i.di = invoke { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6worker13WorkerMetricsE16into_boxed_sliceBM_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.l) #23
          to label %bb.bf unwind label %bb.bc

bb.ag:                                            ; preds = %bb.ae
  %i.dk = extractvalue { ptr, i64 } %i.di, 0
  %i.dl = extractvalue { ptr, i64 } %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
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
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6create:bb.a
bb.at:                                            ; preds = %bb.an
  %i.em = ptrtoint ptr %i.eb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  store i64 1, ptr %i.dx, align 8
  store ptr %i.do, ptr %i.dy, align 8
  store i64 %i.ec, ptr %.sroa.419.0..sroa_idx, align 8
  store i64 %i.em, ptr %.sroa.520.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !724
  %i.en = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 40, 617) 40, i64 noundef 8) #21, !noalias !724 ; 5 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.au, label %bb.ax, !prof !12

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #26
          to label %.noexc120 unwind label %bb.av, !noalias !724

.noexc120:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEEB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #23
          to label %.body105 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ax:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.en, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.en, ptr %i.b, align 8, !noalias !725
  %i.er = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !725, !noundef !7 ; 3 uses
  %i.es = load i64, ptr %i.j, align 8, !range !13, !alias.scope !725, !noundef !7
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.ay, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8grow_oneB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = atomicrmw add ptr %i.en, i64 -1 release, align 8, !noalias !726
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ba, label %.body105

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %.body105 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6WorkerEE8push_mutB16_.exit: ; preds = %bb.ax, %bb.ay
  %i.ey = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !725, !nonnull !7, !noundef !7
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.er
  store ptr %i.en, ptr %i.ez, align 8
  %i.fa = add i64 %i.er, 1
  store i64 %i.fa, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fb = load ptr, ptr %i.h, align 8, !alias.scope !727, !nonnull !7, !noundef !7 ; 2 uses
  %i.fc = load ptr, ptr %i.dt, align 8, !alias.scope !727, !nonnull !7, !noundef !7
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %._crit_edge269, label %bb.an

bb.bc:                                            ; preds = %bb.cx, %bb.cw, %bb.cp, %bb.cm, %bb.ck, %bb.cj, %bb.br, %bb.be, %.body105, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit, %.noexc143, %bb.cu, %bb.cs, %bb.cr, %.loopexit.split-lp, %bb.cn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit, %bb.bj, %bb.bg, %bb.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit, %bb.af, %bb.aa, %bb.y, %.thread167.thread
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1s_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEEB2v_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.ff = load ptr, ptr %i.s, align 8, !alias.scope !730, !nonnull !7, !noundef !7
  %i.fg = atomicrmw add ptr %i.ff, i64 -1 release, align 8, !noalias !730
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.be, label %.thread167.thread

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
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val111 = load i64, ptr %i.fi, align 8, !noundef !7 ; 2 uses
  %i.fj = icmp eq i64 %.val111, 0
  br i1 %i.fj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val110 = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  %i.fk = mul nuw nsw i64 %.val111, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val110, i64 noundef range(i64 1, -9223372036854775808) %i.fk, i64 noundef 8) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4list10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEEBK_.exit

bb.bj:                                            ; preds = %.body.thread, %.body
  %.pn91.pn.pn240 = phi { ptr, i32 } [ %i.cy, %.body.thread ], [ %.pn.pn, %.body ]
  %.sroa.028.2237 = phi i1 [ true, %.body.thread ], [ false, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4idle6SyncedEBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #23
          to label %.loopexit.split-lp unwind label %bb.bc

bb.bk:                                            ; preds = %bb.m
  %i.fl = extractvalue { ptr, ptr } %i.ch, 0      ; 3 uses
  %i.fm = extractvalue { ptr, ptr } %i.ch, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.fl, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.fm, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.fn = invoke noundef nonnull ptr @_RNvXs_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4parkNtB4_6ParkerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bm unwind label %bb.bl     ; 8 uses

bb.bl:                                            ; preds = %bb.bk
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bm:                                            ; preds = %bb.bk
  store ptr %i.fn, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.fp = atomicrmw add ptr %i.fn, i64 1 monotonic, align 8
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.fn, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats3new(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noundef nonnull align 128 %i.ac)
          to label %bb.bp unwind label %.thread208

.thread208:                                       ; preds = %bb.bn
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.thread196

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.cg, %._crit_edge
  %lpad.loopexit.split-lp314 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr null, ptr %i.z, align 8
  %i.fs = load i8, ptr %i.bu, align 4, !range !8, !noundef !7
  %i.ft = xor i8 %i.fs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.fm, ptr %i.y, align 8
  %i.fu = load i8, ptr %i.bv, align 1, !range !8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.fn, ptr %i.x, align 8
  %i.fv = invoke noundef i32 @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5statsNtB2_5Stats27tuned_global_queue_interval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab, ptr noundef nonnull align 8 %6)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bs
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = atomicrmw add ptr %i.fn, i64 -1 release, align 8, !noalias !731
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit unwind label %bb.bc

bb.bs:                                            ; preds = %bb.bp
  %i.fz = invoke { i32, i32 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.bw)
          to label %bb.bt unwind label %bb.bq     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ga = extractvalue { i32, i32 } %i.fz, 0
  %i.gb = extractvalue { i32, i32 } %i.fz, 1
  store i32 0, ptr %i.bx, align 8
  store ptr null, ptr %i.aa, align 8
  store i8 %i.ft, ptr %i.by, align 8
  store ptr %i.fm, ptr %i.bz, align 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %8, align 1
  store i8 %i.fu, ptr %i.ca, align 1
  store ptr %i.fn, ptr %i.cb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i64 72, i1 false)
  store i32 %i.fv, ptr %9, align 4
  store i32 %i.ga, ptr %i.cd, align 8
  store i32 %i.gb, ptr %i.ce, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !732
  %i.gc = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 40, 617) 120, i64 noundef 8) #21, !noalias !732 ; 4 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.bu, label %bb.bx, !prof !12

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #26
          to label %.noexc127 unwind label %bb.bv, !noalias !732

.noexc127:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.aa) #23
          to label %.thread196 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.bx:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.gc, ptr noundef nonnull align 8 dereferenceable(120) %i.aa, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gg = load i64, ptr %i.ax, align 8, !alias.scope !733, !noundef !7 ; 3 uses
  %i.gh = load i64, ptr %i.aj, align 8, !range !13, !alias.scope !733, !noundef !7
  %i.gi = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEE8grow_oneB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.cb unwind label %bb.bz, !noalias !734

bb.bz:                                            ; preds = %bb.by
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker4CoreEEB1k_(ptr nonnull align 8 %i.gc) #23
          to label %.thread196 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.gl = load ptr, ptr %i.aw, align 8, !alias.scope !733, !nonnull !7, !noundef !7
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gg
  store ptr %i.gc, ptr %i.gm, align 8, !noalias !734
  %i.gn = add i64 %i.gg, 1
  store i64 %i.gn, ptr %i.ax, align 8, !alias.scope !733
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fl, ptr %i.a, align 8, !noalias !735
  store ptr %i.fn, ptr %i.cf, align 8, !noalias !735
  %i.go = load i64, ptr %i.bi, align 8, !alias.scope !735, !noundef !7 ; 3 uses
  %i.gp = load i64, ptr %i.ai, align 8, !range !13, !alias.scope !735, !noundef !7
  %i.gq = icmp eq i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.cf unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteEBL_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #23
          to label %.loopexit.split-lp unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  %i.gt = load ptr, ptr %i.bh, align 8, !alias.scope !735, !nonnull !7, !noundef !7
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.go ; 2 uses
  store ptr %i.fl, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.fn, ptr %i.gv, align 8
  %i.gw = add i64 %i.go, 1
  store i64 %i.gw, ptr %i.bi, align 8, !alias.scope !735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.w, ptr noundef nonnull align 128 dereferenceable(128) %i.ac, i64 128, i1 false)
  %i.gx = load i64, ptr %i.bt, align 8, !alias.scope !736, !noundef !7 ; 3 uses
  %i.gy = load i64, ptr %i.ah, align 8, !range !13, !alias.scope !736, !noundef !7
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6worker13WorkerMetricsE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #24
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !737

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.ha = load ptr, ptr %i.bs, align 8, !alias.scope !736, !nonnull !7, !noundef !7
  %i.hb = getelementptr inbounds nuw [128 x i8], ptr %i.ha, i64 %i.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.hb, ptr noundef nonnull readonly align 128 dereferenceable(128) %i.w, i64 128, i1 false)
  %i.hc = add i64 %i.gx, 1
  store i64 %i.hc, ptr %i.bt, align 8, !alias.scope !736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %exitcond.not = icmp eq i64 %i.cg, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit: ; preds = %bb.bq, %bb.br
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.y) #23
          to label %bb.ci unwind label %bb.bc

bb.ci:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park6ParkerEEB17_.exit
  %i.hd = load ptr, ptr %i.z, align 8, !alias.scope !738, !noundef !7
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %.thread196, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvXsd_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.thread196 unwind label %bb.bc

.thread204:                                       ; preds = %bb.ck, %.thread196
  br i1 %.sroa.024.0191, label %bb.cl, label %bb.co

.thread196:                                       ; preds = %bb.cj, %bb.ci, %bb.bz, %bb.bv, %.thread208
  %.pn95195 = phi { ptr, i32 } [ %i.gj, %bb.bz ], [ %i.fr, %.thread208 ], [ %i.ge, %bb.bv ], [ %i.fw, %bb.ci ], [ %i.fw, %bb.cj ] ; 3 uses
  %.sroa.024.0191 = phi i1 [ false, %bb.bz ], [ true, %.thread208 ], [ false, %bb.bv ], [ false, %bb.ci ], [ false, %bb.cj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.hf = load ptr, ptr %i.ad, align 8, !alias.scope !742, !nonnull !7, !noundef !7
  %i.hg = atomicrmw add ptr %i.hf, i64 -1 release, align 8, !noalias !742
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.ck, label %.thread204

bb.ck:                                            ; preds = %.thread196
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #24
          to label %.thread204 unwind label %bb.bc

bb.cl:                                            ; preds = %.thread204
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.hi = load ptr, ptr %i.ae, align 8, !alias.scope !746, !nonnull !7, !noundef !7
  %i.hj = atomicrmw add ptr %i.hi, i64 -1 release, align 8, !noalias !746
  %i.hk = icmp eq i64 %i.hj, 1
  br i1 %i.hk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #24
          to label %bb.cn unwind label %bb.bc

bb.cn:                                            ; preds = %bb.bl, %bb.cm, %bb.cl
  %.pn95.pn.ph = phi { ptr, i32 } [ %i.fo, %bb.bl ], [ %.pn95195, %bb.cm ], [ %.pn95195, %bb.cl ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6handle6HandleEEEBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.af) #23
          to label %bb.co unwind label %bb.bc

bb.co:                                            ; preds = %bb.cn, %.thread204
  %.pn95.pn184.ph = phi { ptr, i32 } [ %.pn95195, %.thread204 ], [ %.pn95.pn.ph, %bb.cn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.hl = load ptr, ptr %i.ag, align 8, !alias.scope !750, !nonnull !7, !noundef !7
  %i.hm = atomicrmw add ptr %i.hl, i64 -1 release, align 8, !noalias !750
  %i.hn = icmp eq i64 %i.hm, 1
  br i1 %i.hn, label %bb.cp, label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #24
          to label %.loopexit.split-lp unwind label %bb.bc

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bj, %bb.cd, %bb.cp, %bb.co
  %.sroa.029.4.ph = phi i1 [ %.sroa.028.2237, %bb.bj ], [ true, %bb.co ], [ true, %bb.cd ], [ true, %bb.cp ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn95.pn.pn.ph = phi { ptr, i32 } [ %.pn91.pn.pn240, %bb.bj ], [ %.pn95.pn184.ph, %bb.co ], [ %i.gr, %bb.cd ], [ %.pn95.pn184.ph, %bb.cp ], [ %lpad.loopexit.split-lp314, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6worker13WorkerMetricsEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #23
          to label %.thread167 unwind label %bb.bc

bb.cq:                                            ; preds = %bb.k, %bb.h, %bb.d
  unreachable

bb.cr:                                            ; preds = %.thread, %.thread167
  %.pn99155 = phi { ptr, i32 } [ %i.bj, %.thread ], [ %.pn95.pn.pn.ph, %.thread167 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6worker6RemoteEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #23
          to label %.thread167.thread unwind label %bb.bc

end_hunk_1
