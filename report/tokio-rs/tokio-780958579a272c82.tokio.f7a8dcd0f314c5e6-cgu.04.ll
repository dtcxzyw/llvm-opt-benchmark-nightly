Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.04?download=true
inline.NumInlined: 435
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE10steal_intoBd_:bb.a

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = sub i32 %i.t, %i.u                       ; 2 uses
  %i.x = lshr i32 %i.w, 1
  %i.y = sub nuw i32 %i.w, %i.x                   ; 6 uses
  %i.z = add i32 %i.y, %i.u
  %i.aa = zext i32 %i.z to i64
  %i.ab = and i64 %.sroa.08.042.i, -4294967296
  %i.ac = or disjoint i64 %i.ab, %i.aa            ; 2 uses
  %i.ad = cmpxchg weak ptr %i.m, i64 %.sroa.08.042.i, i64 %i.ac acq_rel acquire, align 8, !noalias !810 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.ad, 0 ; 3 uses
  %i.ae = lshr i64 %.sroa.01.0.i.i, 32
  %i.af = trunc nuw i64 %i.ae to i32              ; 2 uses
  %i.ag = trunc i64 %.sroa.01.0.i.i to i32
  %i.ah = load atomic i32, ptr %i.o acquire, align 8, !noalias !810
  %.not.i = icmp eq i32 %i.af, %i.ag
  br i1 %.not.i, label %.lr.ph.i, label %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread

bb.e:                                             ; preds = %bb.c
  store i32 %i.y, ptr %i.b, align 4, !noalias !810
  %i.ai = icmp ult i32 %i.y, 129
  br i1 %i.ai, label %.preheader35.i, label %bb.f, !prof !4

.preheader35.i:                                   ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1) ; 3 uses
  %xtraiter = and i32 %umax, 1
  %i.al = icmp ult i32 %i.y, 2
  br i1 %i.al, label %.epil.preheader, label %.preheader35.i.new

.preheader35.i.new:                               ; preds = %.preheader35.i
  %unroll_iter = and i32 %umax, 254
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !810
  store ptr %i.b, ptr %i.a, align 8, !noalias !810
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !810
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !810
  unreachable

bb.g:                                             ; preds = %bb.g, %.preheader35.i.new
  %.sroa.024.044.i = phi i32 [ 0, %.preheader35.i.new ], [ %i.ay, %bb.g ] ; 4 uses
  %niter = phi i32 [ 0, %.preheader35.i.new ], [ %niter.next.1, %bb.g ]
  %i.am = or disjoint i32 %.sroa.024.044.i, 1     ; 2 uses
  %i.an = add i32 %.sroa.024.044.i, %i.e
  %i.ao = and i32 %i.an, 255
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.aj, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.ar = add i32 %.sroa.024.044.i, %i.u
  %i.as = and i32 %i.ar, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.ak, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ap
  store ptr %i.av, ptr %i.ax, align 8, !noalias !810
  %i.ay = add nuw nsw i32 %.sroa.024.044.i, 2     ; 2 uses
  %i.az = add i32 %i.am, %i.e
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = load ptr, ptr %i.aj, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bd = add i32 %i.am, %i.u
  %i.be = and i32 %i.bd, 255
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bi = load ptr, ptr %i.ak, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bb
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !810
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %bb.g

.preheader.i.preheader.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader35.i
  %.sroa.024.044.i.epil.init = phi i32 [ 0, %.preheader35.i ], [ %i.ay, %.preheader.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i32 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.bk = add i32 %.sroa.024.044.i.epil.init, %i.e
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.aj, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bo = add i32 %.sroa.024.044.i.epil.init, %i.u
  %i.bp = and i32 %i.bo, 255
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bt = load ptr, ptr %i.ak, align 8, !noalias !810, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bm
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !810
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.unr-lcssa, %.epil.preheader
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.018.0.i = phi i64 [ %.sroa.01.0.i34.i, %.preheader.i ], [ %i.ac, %.preheader.i.preheader ] ; 2 uses
  %i.bv = and i64 %.sroa.018.0.i, 4294967295
  %i.bw = mul nuw i64 %i.bv, 4294967297
  %i.bx = cmpxchg weak ptr %i.m, i64 %.sroa.018.0.i, i64 %i.bw acq_rel acquire, align 8, !noalias !810 ; 2 uses
  %.sroa.18.0.in.i31.i = extractvalue { i64, i1 } %i.bx, 1
  %.sroa.01.0.i34.i = extractvalue { i64, i1 } %i.bx, 0
  br i1 %.sroa.18.0.in.i31.i, label %bb.h, label %.preheader.i

_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread: ; preds = %bb.d, %.lr.ph.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !810
  br label %bb.j

bb.h:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !810
  %i.by = add nsw i32 %i.y, -1                    ; 2 uses
  %i.bz = add i32 %i.by, %i.e                     ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = icmp eq i32 %i.by, 0
  br i1 %i.cf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i32 %i.bz, ptr %i.d release, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread, %bb.a, %bb.i
  %.sroa.0.0 = phi ptr [ %i.ce, %bb.i ], [ null, %bb.a ], [ null, %_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE11steal_into2Bd_.exit.thread ], [ %i.ce, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_RNvMs1_NtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread5queueINtB5_5StealINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtB7_6handle6HandleEE3lenBd_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load atomic i32, ptr %i.e acquire, align 8
  %i.g = sub i32 %i.f, %i.d
  %i.h = zext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle14worker_metrics(ptr nofree noundef nonnull readnone returned align 128 captures(ret: address, provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @57, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle15num_alive_tasks(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = tail call noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr noundef nonnull align 8 %i.a, i8 noundef 0)
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef i64 @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle21injection_queue_depth(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define { ptr, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB5_6Handle9waker_ref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store atomic i8 1, ptr %i.b release, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.d = insertvalue { ptr, ptr } { ptr @59, ptr poison }, ptr %i.c, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4time8interval11interval_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = icmp ne i64 %3, 0
  %i.c = icmp ne i32 %4, 0
  %spec.select = or i1 %i.b, %i.c
  br i1 %spec.select, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !815
  call void @_RNvNtNtCslghKHtsL3a4_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61), !noalias !815
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !816
  %i.d = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 112, i64 noundef range(i64 8, 129) 8) #24, !noalias !816 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvNtNtCslghKHtsL3a4_5tokio4time8interval20internal_interval_at.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #22
          to label %.noexc.i unwind label %bb.e, !noalias !815

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4time5sleep5SleepEBH_(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #25
          to label %bb.g unwind label %bb.f, !noalias !815

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !815
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f

_RNvNtNtCslghKHtsL3a4_5tokio4time8interval20internal_interval_at.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !815
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.h, align 8, !alias.scope !815
  store i64 %3, ptr %0, align 8, !alias.scope !815
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %i.i, align 8, !alias.scope !815
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8, !alias.scope !815
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4time8interval8interval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = icmp ne i64 %1, 0
  %i.c = icmp ne i32 %2, 0
  %spec.select = or i1 %i.b, %i.c
  br i1 %spec.select, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant3now() ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.d, 0
  %i.f = extractvalue { i64, i32 } %i.d, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !821
  call void @_RNvNtNtCslghKHtsL3a4_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %i.e, i32 noundef range(i32 0, 1000000000) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61), !noalias !821
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !822
  %i.g = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 112, i64 noundef range(i64 8, 129) 8) #24, !noalias !822 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtNtCslghKHtsL3a4_5tokio4time8interval20internal_interval_at.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #22
          to label %.noexc.i unwind label %bb.e, !noalias !821

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4time5sleep5SleepEBH_(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #25
          to label %bb.g unwind label %bb.f, !noalias !821

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !821
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

_RNvNtNtCslghKHtsL3a4_5tokio4time8interval20internal_interval_at.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !821
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.k, align 8, !alias.scope !821
  store i64 %1, ptr %0, align 8, !alias.scope !821
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.l, align 8, !alias.scope !821
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.m, align 8, !alias.scope !821
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context12thread_rng_n(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = call noundef i32 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE4withNCNvBW_12thread_rng_n0mEB10_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @15, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context15current_task_id() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noundef !5
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !4

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_15current_task_id0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBY_4task2id2IdEEB10_.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.e, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.a, %bb.a ]
  %i.g = getelementptr i8, ptr %.sroa.0.0.i.i2.i, i64 48
  %.val.i = load i64, ptr %i.g, align 8, !noundef !5
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_15current_task_id0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBY_4task2id2IdEEB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_15current_task_id0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBY_4task2id2IdEEB10_.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.0.0.i = phi i64 [ %.val.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context19set_current_task_id(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noundef !5
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !4

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_19set_current_task_id0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBY_4task2id2IdEEB10_.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.e, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  store i64 %0, ptr %i.g, align 8
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_19set_current_task_id0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBY_4task2id2IdEEB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_19set_current_task_id0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBY_4task2id2IdEEB10_.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.0.0.i = phi i64 [ %i.h, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noalias !832, !noundef !5
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, !prof !4

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.a), !noalias !832 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvBW_5defer0E0uEB10_.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 70
  %i.h = load i8, ptr %i.g, align 1, !range !13, !noalias !833, !noundef !5
  %.not3.i.i.i = icmp eq i8 %i.h, 2
  br i1 %.not3.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !831, !noalias !834, !nonnull !5, !align !7, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !831, !noalias !834, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !833, !nonnull !5, !noundef !5
  tail call void %i.k(ptr noundef %.val4.i.i.i), !noalias !833, !inline_history !829
  br label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvB2_5defer0EB6_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 40
  tail call void @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE4withNCNvB5_5defer0uEB9_(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !noalias !834
  br label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvB2_5defer0EB6_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvBW_5defer0E0uEB10_.exit.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i.i
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !831, !nonnull !5, !align !7, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.m, align 8, !alias.scope !831, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !831, !nonnull !5, !noundef !5
  tail call void %i.o(ptr noundef %.val3.i), !noalias !831, !inline_history !830
  br label %_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvB2_5defer0EB6_.exit

_RINvNtNtCslghKHtsL3a4_5tokio7runtime7context14with_scheduleruNCNvB2_5defer0EB6_.exit: ; preds = %bb.c, %bb.d, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_scheduleruNCNvBW_5defer0E0uEB10_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context9thread_id() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noundef !5
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, !prof !4

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE16get_or_init_slowB1h_(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_9thread_id0NtNtBY_9thread_id8ThreadIdEB10_.exit, label %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i

_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.e, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_9thread_id0NtNtBY_9thread_id8ThreadIdEB10_.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %i.i = tail call noundef i64 @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime9thread_idNtB2_8ThreadId4next() ; 2 uses
  store i64 %i.i, ptr %i.g, align 8
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_9thread_id0NtNtBY_9thread_id8ThreadIdEB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCNvBW_9thread_id0NtNtBY_9thread_id8ThreadIdEB10_.exit: ; preds = %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ], [ %i.i, %bb.b ], [ %i.h, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread9shutdown2(ptr noalias noundef nonnull returned align 8 %0, ptr noundef nonnull align 128 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
end_hunk_0
