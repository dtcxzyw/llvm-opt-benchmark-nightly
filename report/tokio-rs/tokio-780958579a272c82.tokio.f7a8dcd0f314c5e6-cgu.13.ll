Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.13?download=true
inline.NumInlined: 395
inline.NumDeleted: 111
begin_hunk_0_@_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp6orphanINtB5_15OrphanQueueImplNtNtCsaL1QbXo9JQH_3std7process5ChildE11push_orphanBb_:bb.a
bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !418, !noalias !421, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw [28 x i8], ptr %i.m, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(28) %1, i64 28, i1 false)
  %i.o = add i64 %i.f, 1
  store i64 %i.o, ptr %i.e, align 8, !alias.scope !418, !noalias !421
  %i.p = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.q = extractvalue { i8, i1 } %i.p, 1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit5, label %bb.g, !prof !4

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit5: ; preds = %bb.g, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread:                                          ; preds = %bb.i, %bb.e, %.body
  %.pn8 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.s, %bb.i ], [ %i.i, %.body ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 4 dereferenceable(28) %1) #15
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp6orphanINtB5_15OrphanQueueImplNtNtCsaL1QbXo9JQH_3std7process5ChildE12reap_orphansBb_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load atomic i8, ptr %i.b monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i = phi i8 [ %i.c, %bb.a ], [ %i.i, %bb.c ] ; 3 uses
  %i.d = and i8 %.sroa.03.0.i, 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i8 %.sroa.03.0.i, 1
  %i.g = cmpxchg weak ptr %i.b, i8 %.sroa.03.0.i, i8 %i.f acquire monotonic, align 1 ; 2 uses
  %i.h = extractvalue { i8, i1 } %i.g, 1
  %i.i = extractvalue { i8, i1 } %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.e

_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit: ; preds = %bb.b, %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit
  ret void

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = invoke noundef i8 @_RINvNtNtCslghKHtsL3a4_5tokio4sync5watch13maybe_changeduEB6_(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.aj unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20: ; preds = %bb.ag, %bb.ah, %.split, %bb.n, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.q, %bb.g ], [ %lpad.thr_comm.split-lp, %.split ], [ %.pn, %bb.n ], [ %.pn924, %bb.ah ], [ %.pn924, %bb.ag ]
  %i.o = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtBK_4sync5watch8ReceiveruEEEEBK_.exit, label %bb.f, !prof !4

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtBK_4sync5watch8ReceiveruEEEEBK_.exit unwind label %bb.ad

bb.g:                                             ; preds = %bb.m, %bb.am, %bb.al, %bb.i, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20

bb.h:                                             ; preds = %bb.d
  %i.r = cmpxchg weak ptr %0, i8 0, i8 1 acquire monotonic, align 1
  %i.s = extractvalue { i8, i1 } %i.r, 1
  br i1 %i.s, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %0, i64 undef, i32 noundef -1)
          to label %bb.j unwind label %bb.g       ; 0 uses

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.w = icmp ult i64 %i.v, 329406144173384851
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtCslghKHtsL3a4_5tokio6signal4unix18signal_with_handle(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i32 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.o unwind label %.split.thread

bb.l:                                             ; preds = %bb.af, %bb.j
  %i.y = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.z = extractvalue { i8, i1 } %i.y, 1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit, label %bb.m, !prof !4

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit unwind label %bb.g

bb.n:                                             ; preds = %bb.ac, %bb.x
  br i1 %.sroa.03.2, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20

.split.thread:                                    ; preds = %bb.ae, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.split:                                           ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20

bb.o:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !12 ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !alias.scope !423, !noundef !12
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.ah = load ptr, ptr %i.j, align 8, !alias.scope !432, !nonnull !12, !noundef !12
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !435
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #14
          to label %.body unwind label %bb.v

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.ak = load ptr, ptr %i.j, align 8, !alias.scope !442, !nonnull !12, !noundef !12
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !443
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #14
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.w ], [ %i.ag, %bb.s ], [ %i.ag, %bb.r ]
  store ptr %i.aa, ptr %i.j, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ap, align 8
  br label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit: ; preds = %bb.t, %bb.p, %bb.u
  store ptr %i.aa, ptr %i.j, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.aq, align 8
  invoke fastcc void @_RINvNtNtNtCslghKHtsL3a4_5tokio7process3imp6orphan18drain_orphan_queueNtNtCsaL1QbXo9JQH_3std7process5ChildEB8_(ptr noundef nonnull align 8 %0)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.y, %.body
  %.pn = phi { ptr, i32 } [ %i.as, %bb.y ], [ %eh.lpad-body, %.body ] ; 2 uses
  %.sroa.03.2 = phi i1 [ false, %bb.y ], [ true, %.body ]
  %i.ar = load ptr, ptr %i.a, align 8, !noundef !12
  %.not8 = icmp eq ptr %i.ar, null
  br i1 %.not8, label %bb.ac, label %bb.n

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEEB14_.exit
  %i.at = load ptr, ptr %i.a, align 8, !noundef !12
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
          to label %bb.ab unwind label %.split

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit

bb.ac:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #15
          to label %bb.n unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.f, %bb.ac
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ae:                                            ; preds = %bb.o
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
          to label %bb.af unwind label %.split.thread

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.ag:                                            ; preds = %.split.thread, %bb.n
  %.pn924 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.n ] ; 2 uses
  %i.aw = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.ax = extractvalue { i8, i1 } %i.aw, 1
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20, label %bb.ah, !prof !4

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20 unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit: ; preds = %bb.ab, %bb.m, %bb.l, %bb.aj, %bb.am
  %i.ay = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.az = extractvalue { i8, i1 } %i.ay, 1
  br i1 %i.az, label %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit, label %bb.ai, !prof !4

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit
  call void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RNvXNtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCshr7Cxz41BpA_8lock_api5mutex8RawMutex8try_lock.exit

bb.aj:                                            ; preds = %bb.e
  %cond = icmp eq i8 %i.n, 0
  br i1 %cond, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ba = cmpxchg weak ptr %0, i8 0, i8 1 acquire monotonic, align 1
  %i.bb = extractvalue { i8, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.am, label %bb.al, !prof !4

bb.al:                                            ; preds = %bb.ak
  %i.bc = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %0, i64 undef, i32 noundef -1)
          to label %bb.am unwind label %bb.g      ; 0 uses

bb.am:                                            ; preds = %bb.al, %bb.ak
  invoke fastcc void @_RINvNtNtNtCslghKHtsL3a4_5tokio7process3imp6orphan18drain_orphan_queueNtNtCsaL1QbXo9JQH_3std7process5ChildEB8_(ptr noundef nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtB4_6option6OptionINtNtNtBK_4sync5watch8ReceiveruEEEEBK_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std7process5ChildEEEBK_.exit20, %bb.f
  resume { ptr, i32 } %.pn12
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io6driverNtB5_6Handle6unpark(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = tail call noundef ptr @_RNvMNtCsbPfeiB6icZG_3mio5wakerNtB2_5Waker4wake(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b) ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCslghKHtsL3a4_5tokio.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #17
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6expectCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7process3sysNtB7_11ChildStdout13into_owned_fd(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMsd_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdio13into_owned_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs3_NtCslghKHtsL3a4_5tokio7processNtB5_5Child10start_kill(ptr noalias nofree noundef align 8 dereferenceable(168) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !444, !noundef !12
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RNvXs5_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5ChildNtNtB7_4kill4Kill4kill(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs3_NtCslghKHtsL3a4_5tokio7processNtB5_5Child2id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !444, !noundef !12
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_RNvMs4_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5Child2id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCslghKHtsL3a4_5tokio7processNtB5_5Child8try_wait(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !range !444, !noundef !12
  %i.d = icmp eq i64 %i.c, -2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.h, align 8
  store i32 0, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_5Child8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.i = load i32, ptr %i.a, align 8, !range !219, !noundef !12
  %i.j = trunc nuw i32 %i.i to i1
  %.not = xor i1 %i.j, true
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = load i32, ptr %i.k, align 4, !range !219
  %i.m = trunc nuw i32 %i.l to i1
  %or.cond = select i1 %.not, i1 %i.m, i1 false
end_hunk_0
