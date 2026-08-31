Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h24123f6f0327b277E":bb.a
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.v, i64 1000
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !37831
  %i.w = add nuw i64 %i.o, 8                      ; 2 uses
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.x, i64 1144
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !37831
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.z = add nuw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.y
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !37831
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !37848

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf89b4bd38d5a052aE.exit.i.i.i.i.i.i.i.i"
  %i.ab = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { ptr, i1 } %i.ab, 0
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h21305d096b039e44E"(ptr nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.h)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.a, %.loopexit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !14
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0, i64 %i.af ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ag, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  store atomic i8 1, ptr %i.ah release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aj = atomicrmw add ptr %i.ai, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ag

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$17hfe77ade7e580bff7E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %2)
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h536ced744d1317c0E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 10 uses
  %i.i = shl i64 %i.h, 5                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 576460752303423487
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h49777caec3b89b61E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !37849
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #79, !noalias !37849 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h49777caec3b89b61E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h49777caec3b89b61E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h49777caec3b89b61E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 576460752303423480
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !37862
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !37862
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !37862
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !37862
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !37862
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !37862
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !37862
  %i.y = add nuw i64 %i.q, 8                      ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !37862
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h49777caec3b89b61E.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !37862
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !37879

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.g, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37880)
  br label %bb.g

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h260543ac31eb9eb8E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.al, %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h260543ac31eb9eb8E.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.010.i.i, 1     ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %.val9.i.i = load i8, ptr %i.am, align 8, !range !1313, !alias.scope !37880, !noundef !14
  %i.an = trunc nuw i8 %.val9.i.i to i1
  br i1 %i.an, label %bb.f, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h260543ac31eb9eb8E.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val8.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !37880, !nonnull !14, !noundef !14 ; 2 uses
  %i.ap = icmp eq ptr %.val8.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ap, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h260543ac31eb9eb8E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i, %bb.f ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !37880, !nonnull !14, !noundef !14 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !37880, !nonnull !14, !noundef !14
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 16, !noalias !37880, !noundef !14
  %i.aw = load i64, ptr %i.at, align 8, !range !8336, !noalias !37880, !noundef !14
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.av, i64 noundef %i.aw) #79, !noalias !37880
  %i.ax = icmp eq ptr %i.ar, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ax, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h260543ac31eb9eb8E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h260543ac31eb9eb8E.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i
  %i.ay = icmp eq i64 %i.al, %i.h
  br i1 %i.ay, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h260543ac31eb9eb8E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #79
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !14
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.ba ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store atomic i8 1, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.be = atomicrmw add ptr %i.bd, i64 1 release, align 8 ; 0 uses
  ret ptr %i.bb

bb.h:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.bg, align 8, !nonnull !14, !noundef !14
  tail call fastcc void @"_ZN4core3ptr168drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h44740471d5f6301aE"(ptr nonnull %.val) #81
  resume { ptr, i32 } %i.bf
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h60bba56d86c59345E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 10 uses
  %i.i = shl i64 %i.h, 6                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 288230376151711743
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4d28de671f0003b2E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !37883
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #79, !noalias !37883 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4d28de671f0003b2E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4d28de671f0003b2E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4d28de671f0003b2E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 288230376151711736
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.thread:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4d28de671f0003b2E.exit.i.i.i.i.i.i.i.i"
  %i.q = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.r = extractvalue { ptr, i1 } %i.q, 1
  %i.s = extractvalue { ptr, i1 } %i.q, 0
  %.sroa.10.0.i.i.i.i.i.i.i.mux14 = select i1 %i.r, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.s
  br label %bb.f

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.t = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !37896
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !37896
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !37896
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !37896
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.y, i64 312
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !37896
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.z, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !37896
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !37896
  %i.ab = add nuw i64 %i.t, 8                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.ac, i64 504
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !37896
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.unr-lcssa:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ad = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ae = add nuw i64 %i.ad, 1
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ad
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !37896
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !37913

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.unr-lcssa
  %i.ag = icmp samesign ult i64 %i.h, 144115188075855872
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1       ; 2 uses
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i.i.mux = select i1 %i.ai, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.aj
  br i1 %i.ai, label %bb.f, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17hca1a35fcdb478cf3E.exit.i.i"
  %.sroa.0.08.i.i = phi i64 [ %i.al, %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17hca1a35fcdb478cf3E.exit.i.i" ], [ 0, %.loopexit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.08.i.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.08.i.i, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.an = load i8, ptr %i.am, align 8, !range !1313, !alias.scope !37914, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17hca1a35fcdb478cf3E.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call fastcc void @"_ZN4core3ptr167drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h1e8951c4e4804918E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ak)
  br label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17hca1a35fcdb478cf3E.exit.i.i"

"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17hca1a35fcdb478cf3E.exit.i.i": ; preds = %bb.e, %.lr.ph.i.i
  %i.ap = icmp eq i64 %i.al, %i.h
  br i1 %i.ap, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17hca1a35fcdb478cf3E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #79
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux, %.loopexit ], [ %i.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux14, %.loopexit.thread ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !14
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0, i64 %i.ar ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store atomic i8 1, ptr %i.at release, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.av = atomicrmw add ptr %i.au, i64 1 release, align 8 ; 0 uses
  ret ptr %i.as

bb.g:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr167drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h1e8951c4e4804918E"(ptr noalias noundef align 8 dereferenceable(56) %2) #81
  resume { ptr, i32 } %i.aw
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h78c8cdbccd334983E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 10 uses
  %i.i = shl i64 %i.h, 6                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 288230376151711743
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe6ff8bb5af31947E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !37921
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #79, !noalias !37921 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe6ff8bb5af31947E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe6ff8bb5af31947E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe6ff8bb5af31947E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 288230376151711736
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !37934
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !37934
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !37934
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !37934
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !37934
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !37934
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !37934
  %i.y = add nuw i64 %i.q, 8                      ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 504
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !37934
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe6ff8bb5af31947E.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.i, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !37934
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !37951

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 144115188075855872
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37952)
  br label %bb.i

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h77d458a1d41d2b2aE.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.al, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h77d458a1d41d2b2aE.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i ; 5 uses
  %i.al = add nuw nsw i64 %.sroa.0.07.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37958)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.an = load i8, ptr %i.am, align 8, !range !1313, !alias.scope !37961, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h77d458a1d41d2b2aE.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37962)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37968)
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !37971 ; 2 uses
  %i.aq = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !37971, !nonnull !14, !noundef !14
  %i.as = shl nuw i64 %.val4.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !37971
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !37971 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h77d458a1d41d2b2aE.exit.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit.i.i.i.i.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !37971, !nonnull !14, !noundef !14
  %i.aw = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !37971
  br label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h77d458a1d41d2b2aE.exit.i.i"

"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h77d458a1d41d2b2aE.exit.i.i": ; preds = %bb.h, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit.i.i.i.i.i.i.i", %.lr.ph.i.i
  %i.ax = icmp eq i64 %i.al, %i.h
  br i1 %i.ax, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h77d458a1d41d2b2aE.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #79
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !noundef !14
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0, i64 %i.az ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store atomic i8 1, ptr %i.bb release, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bd = atomicrmw add ptr %i.bc, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ba

bb.j:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$17h2dcedad4bd136c50E"(ptr noalias noundef align 8 dereferenceable(56) %2) #81
  resume { ptr, i32 } %i.be
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h885449cbd7515eb4E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(664) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 9 uses
  %i.i = mul i64 %i.h, 672                        ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 13725256007224368
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1fcb0bc47a6f5605E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !37972
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #79, !noalias !37972 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1fcb0bc47a6f5605E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1fcb0bc47a6f5605E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 12 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1fcb0bc47a6f5605E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 18014398509481976
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !37985
  %i.q = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 1336
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !37985
  %i.r = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 2008
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !37985
  %i.s = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.s, i64 2680
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !37985
  %i.t = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 3352
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !37985
  %i.u = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.u, i64 4024
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !37985
  %i.v = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.v, i64 4696
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !37985
  %i.w = add nuw i64 %i.o, 8                      ; 2 uses
  %i.x = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.x, i64 5368
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !37985
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.z = add nuw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.y
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !37985
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !38002

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1fcb0bc47a6f5605E.exit.i.i.i.i.i.i.i.i"
  %i.ab = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { ptr, i1 } %i.ab, 0
  invoke fastcc void @"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h399148690ccc9e5cE"(ptr nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.h)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.a, %.loopexit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !14
  %i.ag = getelementptr inbounds nuw [672 x i8], ptr %.sroa.0.0, i64 %i.af ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.ag, ptr noundef nonnull align 8 dereferenceable(664) %2, i64 664, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 664
  store atomic i8 1, ptr %i.ah release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aj = atomicrmw add ptr %i.ai, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ag

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.al)
end_hunk_0
begin_hunk_1_@"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17heeacb725ac2a0aa7E":bb.a
.loopexit.unr-lcssa:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ac = add nuw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ab
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !38147
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !38164

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.unr-lcssa
  %i.ae = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.af = extractvalue { ptr, i1 } %i.ae, 1       ; 2 uses
  %i.ag = extractvalue { ptr, i1 } %i.ae, 0       ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i.i.mux = select i1 %i.af, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.ag
  br i1 %i.af, label %bb.f, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h1da8e78bd8efaf0fE.exit.i.i"
  %.sroa.0.08.i.i = phi i64 [ %i.ai, %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h1da8e78bd8efaf0fE.exit.i.i" ], [ 0, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.08.i.i ; 2 uses
  %i.ai = add nuw i64 %.sroa.0.08.i.i, 1          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !range !1313, !alias.scope !38165, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h1da8e78bd8efaf0fE.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  tail call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17hc0aff3977e932696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.am)
  br label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h1da8e78bd8efaf0fE.exit.i.i"

"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h1da8e78bd8efaf0fE.exit.i.i": ; preds = %bb.e, %.lr.ph.i.i
  %i.an = icmp eq i64 %i.ai, %i.h
  br i1 %i.an, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h1da8e78bd8efaf0fE.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #79
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux, %.loopexit ], [ %i.ag, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux14, %.loopexit.thread ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !14
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0, i64 %i.ap ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store atomic i8 1, ptr %i.ar release, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.at = atomicrmw add ptr %i.as, i64 1 release, align 8 ; 0 uses
  ret ptr %i.aq

bb.g:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17hc0aff3977e932696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.av)
  resume { ptr, i32 } %i.au
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17hf0dd515212c71f11E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 10 uses
  %i.i = shl i64 %i.h, 5                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 576460752303423487
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35fcaa91fe4715ebE.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !38172
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #79, !noalias !38172 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35fcaa91fe4715ebE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35fcaa91fe4715ebE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35fcaa91fe4715ebE.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 576460752303423480
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38185
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !38185
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !38185
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !38185
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !38185
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !38185
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !38185
  %i.y = add nuw i64 %i.q, 8                      ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !38185
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35fcaa91fe4715ebE.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !38185
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !38202

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.g, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38203)
  br label %bb.g

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h4d3095520da56899E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.al, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h4d3095520da56899E.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.010.i.i, 1     ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %.val9.i.i = load i8, ptr %i.am, align 8, !range !1313, !alias.scope !38203, !noundef !14
  %i.an = trunc nuw i8 %.val9.i.i to i1
  br i1 %i.an, label %bb.f, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h4d3095520da56899E.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val8.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !38203, !nonnull !14, !noundef !14 ; 2 uses
  %i.ap = icmp eq ptr %.val8.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ap, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h4d3095520da56899E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val8.i.i, %bb.f ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !38203, !nonnull !14, !noundef !14 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, align 16, !noalias !38203, !nonnull !14, !noundef !14
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 16, !noalias !38203, !noundef !14
  %i.aw = load i64, ptr %i.at, align 8, !range !8336, !noalias !38203, !noundef !14
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.av, i64 noundef %i.aw) #79, !noalias !38203
  %i.ax = icmp eq ptr %i.ar, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ax, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h4d3095520da56899E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h4d3095520da56899E.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i
  %i.ay = icmp eq i64 %i.al, %i.h
  br i1 %i.ay, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h4d3095520da56899E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #79
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !14
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.ba ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store atomic i8 1, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.be = atomicrmw add ptr %i.bd, i64 1 release, align 8 ; 0 uses
  ret ptr %i.bb

bb.h:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.bg, align 8, !nonnull !14, !noundef !14
  tail call fastcc void @"_ZN4core3ptr144drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17h21f9d610f5d27394E"(ptr nonnull %.val) #81
  resume { ptr, i32 } %i.bf
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN12tracing_core10dispatcher11get_default17h0487c2a28cd0d0bdE(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  %i.f = load atomic i64, ptr @_ZN12tracing_core10dispatcher12SCOPED_COUNT17h69b30b7e1ce41d2cE acquire, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr @_ZN12tracing_core10dispatcher11GLOBAL_INIT17h05c27f98ff567685E seq_cst, align 8
  %.not = icmp eq i64 %i.h, 2
  %.sroa.0.0 = select i1 %.not, ptr @_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E, ptr @_ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38206)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !38206, !noalias !38209, !noundef !14 ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  %..i = select i1 %.not.i, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38212
  store i64 %..i, ptr %i.e, align 8, !noalias !38212
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !38212
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load <2 x ptr>, ptr %1, align 8, !alias.scope !38206, !noalias !38209
  %i.l = load ptr, ptr %1, align 8, !alias.scope !38206, !noalias !38209, !nonnull !14, !align !240, !noundef !14
  store <2 x ptr> %i.k, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !38212
  call void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0), !noalias !38206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38212
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38213)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN12tracing_core10dispatcher13CURRENT_STATE29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h4527d513e435cb79E") ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !585, !noalias !38216, !noundef !14
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread"
  ], !prof !8382

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h9a363479c8f4ef5cE), !noalias !38216
  store i8 1, ptr %i.n, align 8, !noalias !38216
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38218)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.q = load i8, ptr %i.p, align 8, !range !1313, !noalias !38221, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !noalias !38221
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38223)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !38226, !noalias !38227, !noundef !14 ; 2 uses
  store i64 0, ptr %i.s, align 8, !alias.scope !38226, !noalias !38227
  %i.u = load ptr, ptr %1, align 8, !alias.scope !38226, !noalias !38227, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !38226, !noalias !38227, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.t, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38230
  store i64 %..i.i.i, ptr %i.c, align 8, !noalias !38230
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !38230
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !38230
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.w, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !38230
  call void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E), !noalias !38231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38230
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit"

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.m, align 8, !noalias !38221, !noundef !14 ; 2 uses
  %i.y = icmp ult i64 %i.x, 9223372036854775807
  br i1 %i.y, label %bb.i, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @475) #80
          to label %.noexc.i.i unwind label %bb.k, !noalias !38221

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = add nuw nsw i64 %i.x, 1
  store i64 %i.z, ptr %i.m, align 8, !noalias !38221
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38232)
  %i.ab = load i64, ptr %i.aa, align 8, !range !802, !alias.scope !38232, !noalias !38221, !noundef !14
  %.not.i.i.i.i.i = icmp eq i64 %i.ab, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = load atomic i64, ptr @_ZN12tracing_core10dispatcher11GLOBAL_INIT17h05c27f98ff567685E seq_cst, align 8, !noalias !38235
  %.not2.i.i.i.i.i = icmp eq i64 %i.ac, 2
  %_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E._ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E.i.i.i.i.i = select i1 %.not2.i.i.i.i.i, ptr @_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E, ptr @_ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E._ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E.i.i.i.i.i, %bb.j ], [ %i.aa, %bb.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38236)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !38239, !noalias !38240, !noundef !14 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !alias.scope !38239, !noalias !38240
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !38239, !noalias !38240, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !38239, !noalias !38240, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.not.i7.i.i = icmp eq i64 %i.af, 0
  %..i8.i.i = select i1 %.not.i7.i.i, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38243
  store i64 %..i8.i.i, ptr %i.b, align 8, !noalias !38243
  %.sroa.5.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx.i9.i.i, align 8, !noalias !38243
  %.sroa.7.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ag, ptr %.sroa.7.0..sroa_idx.i10.i.i, align 8, !noalias !38243
  %.sroa.9.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ai, ptr %.sroa.9.0..sroa_idx.i11.i.i, align 8, !noalias !38243
  invoke void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i.i.i.i.i)
          to label %bb.n unwind label %bb.m, !noalias !38244

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i64, ptr %i.m, align 8, !noalias !38221, !noundef !14
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.m, align 8, !noalias !38221
  br label %bb.o

end_hunk_1
begin_hunk_2_@_ZN4core4iter8adapters5chain17and_then_or_clear17ha5a8971e737b6198E:bb.a
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !131022, !noalias !131025
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !131022, !noalias !131025
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !131022, !noalias !131025
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !131022, !noalias !131025
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !131022, !noalias !131025
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !131022, !noalias !131025
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbe7ab3ad3e84159eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbe7ab3ad3e84159eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sink23.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink23.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !131022, !noalias !131025
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !131022, !noalias !131025
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !alias.scope !131022, !noalias !131025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131027
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !130997

.noexc.i.i.i:                                     ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbe7ab3ad3e84159eE.exit.i.i.i.i.i.i.i.i.i"
  %i.l = load ptr, ptr %i.a, align 8, !noalias !131027, !noundef !14
  %.not3.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr266drop_in_place$LT$core..iter..sources..from_fn..FromFn$LT$$LT$milli..update..new..document..MergedDocument$LT$$RF$milli..fields_ids_map..FieldsIdsMap$GT$$u20$as$u20$milli..update..new..document..Document$GT$..iter_top_level_fields..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3dda66ed2455ef95E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc.i.i.i, %.noexc7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131027
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc7.i.i.i unwind label %.loopexit.i.i.i, !noalias !130997

.noexc7.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.a, align 8, !noalias !131027, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr266drop_in_place$LT$core..iter..sources..from_fn..FromFn$LT$$LT$milli..update..new..document..MergedDocument$LT$$RF$milli..fields_ids_map..FieldsIdsMap$GT$$u20$as$u20$milli..update..new..document..Document$GT$..iter_top_level_fields..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3dda66ed2455ef95E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr266drop_in_place$LT$core..iter..sources..from_fn..FromFn$LT$$LT$milli..update..new..document..MergedDocument$LT$$RF$milli..fields_ids_map..FieldsIdsMap$GT$$u20$as$u20$milli..update..new..document..Document$GT$..iter_top_level_fields..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3dda66ed2455ef95E.exit.i.i.i.i": ; preds = %.noexc7.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131020
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h3ba228a50c5b74fdE.exit.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i.i.i:                         ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbe7ab3ad3e84159eE.exit.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  store i64 2, ptr %1, align 8, !alias.scope !131032, !noalias !130999
  invoke fastcc void @"_ZN4core3ptr146drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$C$milli..error..Error$GT$$GT$$GT$17h2cd29dbbd6138fc3E"(ptr noalias noundef align 8 dereferenceable(320) %i.c) #81
          to label %common.resume unwind label %bb.h, !noalias !130997

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !130997
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.g ], [ %i.q, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter8adapters5chain17and_then_or_clear17h3ba228a50c5b74fdE.exit.i.i: ; preds = %"_ZN4core3ptr266drop_in_place$LT$core..iter..sources..from_fn..FromFn$LT$$LT$milli..update..new..document..MergedDocument$LT$$RF$milli..fields_ids_map..FieldsIdsMap$GT$$u20$as$u20$milli..update..new..document..Document$GT$..iter_top_level_fields..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3dda66ed2455ef95E.exit.i.i.i.i", %bb.d
  store i64 2, ptr %1, align 8, !alias.scope !131032, !noalias !130999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131038)
  br label %bb.i

_ZN4core3ops8function6FnOnce9call_once17h1ce535f4f1a130d6E.exit.thread: ; preds = %bb.c
  %.sroa.6.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6.0..sroa_idx3.i.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6.0..sroa_idx8.i.i, i64 312, i1 false), !noalias !131040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130997
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !131041, !noalias !131042
  br label %bb.n

bb.i:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h3ba228a50c5b74fdE.exit.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h3ba228a50c5b74fdE.exit.thread.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131043)
  %i.p = load i64, ptr %i.o, align 8, !range !38758, !alias.scope !131046, !noalias !131048, !noundef !14
  %.not.i.i.i.i = icmp eq i64 %i.p, 99
  br i1 %.not.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1ce535f4f1a130d6E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.d, ptr noundef nonnull align 8 dereferenceable(320) %i.o, i64 320, i1 false), !alias.scope !131049, !noalias !131036
  br label %_ZN4core3ops8function6FnOnce9call_once17h1ce535f4f1a130d6E.exit

_ZN4core3ops8function6FnOnce9call_once17h1ce535f4f1a130d6E.exit: ; preds = %bb.i, %bb.j
  %.sink.i.i.i.i = phi ptr [ %i.o, %bb.j ], [ %i.d, %bb.i ]
  store i64 98, ptr %.sink.i.i.i.i, align 8, !alias.scope !131053, !noalias !131036
  %.pr = load i64, ptr %i.d, align 8
  %.not6 = icmp eq i64 %.pr, 98
  br i1 %.not6, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.a
  store i64 98, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1ce535f4f1a130d6E.exit
  invoke fastcc void @"_ZN4core3ptr466drop_in_place$LT$core..option..Option$LT$core..iter..adapters..chain..Chain$LT$core..iter..sources..from_fn..FromFn$LT$$LT$milli..update..new..document..MergedDocument$LT$$RF$milli..fields_ids_map..FieldsIdsMap$GT$$u20$as$u20$milli..update..new..document..Document$GT$..iter_top_level_fields..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..option..IntoIter$LT$core..result..Result$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$C$milli..error..Error$GT$$GT$$GT$$GT$$GT$17hdea215ef6f65e31cE"(ptr noalias noundef align 8 dereferenceable(440) %1)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1ce535f4f1a130d6E.exit.thread, %_ZN4core3ops8function6FnOnce9call_once17h1ce535f4f1a130d6E.exit, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.d, i64 320, i1 false)
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  invoke fastcc void @"_ZN4core3ptr146drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$C$milli..error..Error$GT$$GT$$GT$17h2cd29dbbd6138fc3E"(ptr noalias noundef align 8 dereferenceable(320) %i.d) #81
          to label %common.resume unwind label %bb.q

bb.p:                                             ; preds = %bb.m
  store i64 3, ptr %1, align 8
  br label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter8adapters5chain17and_then_or_clear17he004f696e7f8de58E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !range !131054, !noundef !14
  %.not = icmp eq i32 %i.b, 1114112
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131058)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131067)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !131070, !noalias !131071, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !131070, !noalias !131071, !noundef !14 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !131070, !noalias !131071 ; 2 uses
  %i.h = icmp ult i64 %i.g, %.promoted.i.i.i.i.i
  br i1 %i.h, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !131070, !noalias !131071, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !131070, !noalias !131071 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 5 uses
  %i.o = icmp ult i8 %i.m, 5
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  tail call void @llvm.assume(i1 %i.o)
  %.pre.i.i.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !131070, !noalias !131071 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i.i.i.i.i
  %i.r = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %i.ae, %bb.e ] ; 4 uses
  %i.s = sub nuw i64 %i.g, %i.r                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.y, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !131077, !noalias !131080, !noundef !14
  %i.x = icmp eq i8 %i.w, %.pre.i.i.i.i.i
  br i1 %i.x, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.y, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i: ; preds = %bb.c
  %i.z = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.s), !noalias !131080 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i.i = phi i64 [ %i.ab, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ad = add i64 %i.r, 1
  %i.ae = add i64 %i.ad, %.sroa.4.0.i27.i.i.i.i.i ; 7 uses
  store i64 %i.ae, ptr %i.e, align 8, !alias.scope !131070, !noalias !131071
  %.not20.i.i.i.i.i = icmp ult i64 %i.ae, %i.n
  %.not21.i.i.i.i.i = icmp ugt i64 %i.ae, %i.j
  %or.cond.i.i.i.i.i = or i1 %.not20.i.i.i.i.i, %.not21.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.f

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.d
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !131070, !noalias !131071
  br label %.loopexit

bb.e:                                             ; preds = %bb.f, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  %i.af = icmp ult i64 %i.g, %i.ae
  br i1 %i.af, label %.loopexit, label %bb.c

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  %i.ag = sub nuw i64 %i.ae, %i.n                 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.k, i64 %i.n), !noalias !131071
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ai, label %"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d98fdbe030ab9a3E.exit.i.i", label %bb.e

"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d98fdbe030ab9a3E.exit.i.i": ; preds = %bb.f
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !131081, !noalias !131082, !nonnull !14, !align !584, !noundef !14 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.aj, align 8, !alias.scope !131081, !noalias !131082, !noundef !14 ; 9 uses
  %i.ak = icmp eq i64 %i.ae, %i.n
  br i1 %i.ak, label %.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d98fdbe030ab9a3E.exit.i.i"
  %.not.i.i.i.i = icmp ult i64 %i.ag, %.val1.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.g
  %i.al = icmp eq i64 %i.ag, %.val1.i.i
  br i1 %i.al, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !131083, !noalias !131086, !noundef !14
  %i.ao = icmp sgt i8 %i.an, -65
  br i1 %i.ao, label %.thread.i.i.i, label %bb.l

.thread.i.i.i:                                    ; preds = %bb.h, %"_ZN97_$LT$core..str..iter..MatchIndices$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6d98fdbe030ab9a3E.exit.i.i"
  %i.ap = add nuw i64 %i.ag, 1
  br label %bb.j

bb.i:                                             ; preds = %.split.i.i.i.i
  %i.aq = add i64 %i.ag, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i.i.i
  %i.as = phi i64 [ %i.ap, %.thread.i.i.i ], [ %i.aq, %bb.i ] ; 5 uses
  %.not.i8.i.i.i = icmp ult i64 %i.as, %.val1.i.i
  br i1 %.not.i8.i.i.i, label %bb.k, label %.split.i9.i.i.i

.split.i9.i.i.i:                                  ; preds = %bb.j
  %i.at = icmp eq i64 %i.as, %.val1.i.i
  br i1 %i.at, label %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit.thread.i.i.i"

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !131089, !noalias !131086, !noundef !14
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit.thread.i.i.i"

bb.l:                                             ; preds = %bb.h, %.split.i.i.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 0, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2715) #80, !noalias !131086
  unreachable

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit.thread.i.i.i": ; preds = %bb.k, %.split.i9.i.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %i.as, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2716) #80, !noalias !131086
  unreachable

_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit: ; preds = %bb.i, %.split.i9.i.i.i, %bb.k
  %i.ax = phi i64 [ %i.as, %bb.k ], [ %.val1.i.i, %.split.i9.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ax
  %i.az = sub nuw i64 %.val1.i.i, %i.ax
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  ret void

.loopexit:                                        ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.b
  store i32 1114112, ptr %i.a, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit, %.loopexit
  %.sroa.0.015 = phi ptr [ %.val.i.i, %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit ], [ null, %.loopexit ]
  %.sroa.7.013 = phi i64 [ %i.ag, %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit ], [ undef, %.loopexit ]
  %.sroa.8.011 = phi ptr [ %i.ay, %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit ], [ undef, %.loopexit ]
  %.sroa.9.09 = phi i64 [ %i.az, %_ZN4core3ops8function6FnOnce9call_once17ha1a51c0fa803dcc3E.exit ], [ undef, %.loopexit ]
  store ptr %.sroa.0.015, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.013, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.011, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.09, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter8adapters5chain17and_then_or_clear17he6daea094dc3774eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull align 8 dereferenceable(336) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !range !101627, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.b, 100
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131100)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131102)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !131105, !noalias !131106, !noundef !14 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5851b8beab249049E.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131120)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !131123, !noalias !131126, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5851b8beab249049E.exit.thread6.i.i, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i.i.i"

"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %bb.g
  %i.h = phi ptr [ %i.i, %bb.g ], [ %i.d, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131133)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %.sroa.04.0.copyload5.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !131134 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.04.0.copyload5.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5851b8beab249049E.exit.thread6.i.i, label %bb.d

bb.d:                                             ; preds = %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx6.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx6.i.i.i.i.i.i.i.i, align 8, !noalias !131134 ; 2 uses
  switch i64 %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h078e962e66b8581fE.exit.thread [
    i64 8, label %bb.e
    i64 4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %.sroa.04.0.copyload5.i.i.i.i.i.i.i.i, align 1
  %i.k = icmp ne i64 %i.j, 8318834007381210719
  %i.l = zext i1 %i.k to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = load i32, ptr %.sroa.04.0.copyload5.i.i.i.i.i.i.i.i, align 1
  %i.n = icmp ne i32 %i.m, 1868916575
  %i.o = zext i1 %i.n to i32
  %.not11.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN4core3ops8function6FnOnce9call_once17h078e962e66b8581fE.exit.thread

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.e
  %i.p = load i64, ptr %.sroa.04.0.copyload5.i.i.i.i.i.i.i.i, align 1
  %i.q = icmp ne i64 %i.p, 7957705967559599967
  %i.r = zext i1 %i.q to i32
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN4core3ops8function6FnOnce9call_once17h078e962e66b8581fE.exit.thread

bb.g:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i.i.i.i", %bb.f, %bb.e
  %i.s = icmp eq ptr %i.i, %i.f
  br i1 %i.s, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5851b8beab249049E.exit.thread6.i.i, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i.i.i"

_ZN4core4iter8adapters5chain17and_then_or_clear17h5851b8beab249049E.exit.thread6.i.i: ; preds = %bb.g, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i.i.i", %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !131105, !noalias !131106
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5851b8beab249049E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h078e962e66b8581fE.exit.thread: ; preds = %bb.d, %bb.f, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx6.sroa_idx.le.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.c, align 8, !alias.scope !131123, !noalias !131126
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_2
