Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.12?download=true
inline.NumInlined: 7127
inline.NumDeleted: 3581
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN17crossbeam_channel5waker9SyncWaker10disconnect17ha0d3862cbfbec15eE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bk = load ptr, ptr %i.c, align 8, !noalias !5972, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !5972, !nonnull !3, !noundef !3
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN17crossbeam_channel5waker5Waker6notify17h36f9e685f183c04cE.exit.i, label %bb.h

bb.n:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit.i.i", %bb.g
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

_ZN17crossbeam_channel5waker5Waker6notify17h36f9e685f183c04cE.exit.i: ; preds = %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit4.i.i", %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7f101813adbfc79eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.q unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph.i
  %i.bo = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !5961, !nonnull !3, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !5961, !nonnull !3, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40 ; 2 uses
  %i.bs = atomicrmw xchg ptr %i.br, i32 1 release, align 4, !noalias !5961
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %bb.p, label %.noexc6

bb.p:                                             ; preds = %bb.o
  %i.bu = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17he22b95dd57336362E(ptr noundef nonnull align 4 %i.br)
          to label %.noexc6 unwind label %.loopexit ; 0 uses

.noexc6:                                          ; preds = %bb.p, %bb.o, %.lr.ph.i
  %i.bv = icmp eq ptr %i.z, %i.x
  br i1 %i.bv, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge.i, %_ZN17crossbeam_channel5waker5Waker6notify17h36f9e685f183c04cE.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit.i.i"
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i.i, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit.i.i" ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E"(ptr nonnull %i.p, i8 %i.r) #35
          to label %common.resume unwind label %bb.x

bb.q:                                             ; preds = %_ZN17crossbeam_channel5waker5Waker6notify17h36f9e685f183c04cE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5972
  %i.bw = load i64, ptr %i.v, align 8, !noundef !3 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, 384307168202282326
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = load i64, ptr %i.ac, align 8, !noundef !3 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 384307168202282326
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %i.bz, 0
  %i.cc = zext i1 %i.cb to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0 = phi i8 [ %i.cc, %bb.r ], [ 0, %bb.q ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.cd seq_cst, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br i1 %i.s, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.cg = and i64 %i.cf, 9223372036854775807
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.u, !prof !77

bb.u:                                             ; preds = %bb.t
  %i.ci = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.ci, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.ce monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.cj = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.w, label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E.exit", !prof !121

bb.w:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.p)
  br label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E.exit"

"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.w
  ret void

bb.x:                                             ; preds = %.body
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN17crossbeam_channel5waker9SyncWaker10unregister17hacb1e2894949e2e4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 3, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hfbf156822ad00b5aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !5999)
  %i.c = load i64, ptr %i.b, align 8, !range !4, !alias.scope !5999, !noalias !6002, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit", !prof !121

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6004
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5999, !noalias !6002, !nonnull !3, !align !50, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !322, !alias.scope !5999, !noalias !6002, !noundef !3
  store ptr %i.f, ptr %i.a, align 8, !noalias !6004
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !6004
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #37
          to label %bb.d unwind label %bb.c, !noalias !5999

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr134drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$$GT$17h22edc783f6cb661fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %common.resume unwind label %bb.e, !noalias !5999

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !5999
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.am, %bb.h ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit": ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5999, !noalias !6002, !nonnull !3, !align !50, !noundef !3 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !322, !alias.scope !5999, !noalias !6002, !noundef !3 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !6005)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !6005, !noalias !6008, !nonnull !3, !noundef !3 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !6005, !noalias !6008, !noundef !3 ; 9 uses
  %.idx = mul nuw nsw i64 %i.t, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.x = add nuw nsw i64 %i.aa, 1
  %i.y = icmp eq ptr %i.w, %i.u
  br i1 %i.y, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit", %bb.f
  %i.z = phi ptr [ %i.w, %bb.f ], [ %i.r, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit" ] ; 2 uses
  %i.aa = phi i64 [ %i.x, %bb.f ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit" ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6010, !noalias !6015, !noundef !3
  %.not.i.i = icmp eq i64 %i.ac, %2
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !6020)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6023)
  %i.ad = icmp ult i64 %i.t, 384307168202282326
  call void @llvm.assume(i1 %i.ad)
  %.not.i.i.i = icmp samesign ult i64 %i.aa, %i.t
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.i.i": ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.aa ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.ae, align 8, !noalias !6026 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6026
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = xor i64 %i.aa, -1
  %i.ah = add nsw i64 %i.t, %i.ag
  %i.ai = mul nsw i64 %i.ah, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.af, i64 %i.ai, i1 false), !noalias !6029
  %i.aj = add nsw i64 %i.t, -1                    ; 3 uses
  store i64 %i.aj, ptr %i.s, align 8, !alias.scope !6031, !noalias !6032
  %.not.i5.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hfbfdaf6d4b97a818E.exit.i", !prof !6033

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.i.i", %bb.g
  %i.ak = phi i64 [ %i.t, %bb.g ], [ %i.aj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.i.i" ] ; 2 uses
  %i.al = icmp samesign ult i64 %i.ak, 384307168202282326
  call void @llvm.assume(i1 %i.al)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %i.aa, i64 noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #37
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread.i.i"
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hfbfdaf6d4b97a818E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !6005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %.loopexit

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread.i.i"
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E"(ptr nonnull %i.m, i8 %i.o) #35
          to label %common.resume unwind label %bb.o

.loopexit:                                        ; preds = %bb.f, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hfbfdaf6d4b97a818E.exit.i"
  %i.an = phi i64 [ %i.aj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hfbfdaf6d4b97a818E.exit.i" ], [ %i.t, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit" ], [ %i.t, %bb.f ] ; 2 uses
  %.sink.i = phi ptr [ %.sroa.0.0.copyload1.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hfbfdaf6d4b97a818E.exit.i" ], [ null, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit" ], [ null, %bb.f ]
  %i.ao = icmp ult i64 %i.an, 384307168202282326
  call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 384307168202282326
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0
  %i.au = zext i1 %i.at to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.sroa.0.0 = phi i8 [ %i.au, %bb.i ], [ 0, %.loopexit ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.av seq_cst, align 8
  store ptr %.sink.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.l, !prof !77

bb.l:                                             ; preds = %bb.k
  %i.ba = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.ba, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.aw monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bb = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %bb.n, label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E.exit", !prof !121

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.m)
  br label %"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E.exit"

"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN17crossbeam_channel5waker9SyncWaker8register17hf1eacfea22425f6cE(ptr noundef nonnull align 8 %0, i64 noundef range(i64 3, 0) %1, ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hfbf156822ad00b5aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !6034)
  %i.d = load i64, ptr %i.c, align 8, !range !4, !alias.scope !6034, !noalias !6037, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit", !prof !121

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6039
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !6034, !noalias !6037, !nonnull !3, !align !50, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !322, !alias.scope !6034, !noalias !6037, !noundef !3
  store ptr %i.g, ptr %i.a, align 8, !noalias !6039
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.i, ptr %i.j, align 8, !noalias !6039
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #37
          to label %bb.d unwind label %bb.c, !noalias !6034

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr134drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$$GT$17h22edc783f6cb661fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %common.resume unwind label %bb.e, !noalias !6034

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6034
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.aa, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit": ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !6034, !noalias !6037, !nonnull !3, !align !50, !noundef !3 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !322, !alias.scope !6034, !noalias !6037, !noundef !3 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.v, align 8
  store ptr %.0.val, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6040, !noalias !6043, !noundef !3 ; 4 uses
  %i.y = load i64, ptr %i.t, align 8, !range !133, !alias.scope !6040, !noalias !6043, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5f1c2ec8cf5f72c5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.l unwind label %bb.h, !noalias !6043

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !6045
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8846951ad5e46f84E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1be2cbda7d0047bfE.exit"
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$crossbeam_channel..waker..Waker$GT$$GT$17haf735b7c3f265801E"(ptr nonnull %i.n, i8 %i.p) #35
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !6040, !noalias !6043, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ah = add nsw i64 %i.x, 1                     ; 2 uses
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !6040, !noalias !6043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp slt i64 %i.x, 384307168202282325
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.m, label %bb.n
end_hunk_0
begin_hunk_1_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17h9094cde02ba1dafcE":bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.az = atomicrmw xchg ptr %i.ay, i32 1 release, align 4, !noalias !6358
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.j, label %.noexc12

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17he22b95dd57336362E(ptr noundef nonnull align 4 %i.ay)
          to label %.noexc12 unwind label %.loopexit ; 0 uses

.noexc12:                                         ; preds = %bb.j, %bb.i, %.lr.ph.i7
  %i.bc = icmp eq ptr %i.as, %i.aq
  br i1 %i.bc, label %._crit_edge.i11, label %.lr.ph.i7

_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit13: ; preds = %._crit_edge.i11, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit"
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit13
  %i.be = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.bf = and i64 %i.be, 9223372036854775807
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.l, !prof !77

bb.l:                                             ; preds = %bb.k
  %i.bh = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.bh, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.bd monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit13
  %i.bi = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.n, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", !prof !121

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.m)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.n
  %.sroa.0.0 = xor i1 %i.s, true
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4recv17h446cc9c89cd30b13E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [128 x i8], align 16              ; 7 uses
  %.sroa.6.i = alloca [112 x i8], align 8         ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.937 = alloca [112 x i8], align 8         ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  store i64 %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %3, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  %i.p = load i64, ptr %i.k, align 8, !range !4, !alias.scope !6361, !noalias !6364, !noundef !3
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit", !prof !121

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6366
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6361, !noalias !6364, !nonnull !3, !align !50, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !322, !alias.scope !6361, !noalias !6364, !noundef !3
  store ptr %i.s, ptr %i.i, align 8, !noalias !6366
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.u, ptr %i.v, align 8, !noalias !6366
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #37
          to label %bb.d unwind label %bb.c, !noalias !6361

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #35
          to label %common.resume unwind label %bb.e, !noalias !6361

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6361
  unreachable

common.resume:                                    ; preds = %bb.bh, %bb.q, %bb.r, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %lpad.phi, %bb.r ], [ %lpad.thr_comm, %bb.bh ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit": ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6361, !noalias !6364, !nonnull !3, !align !50, !noundef !3 ; 19 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !322, !alias.scope !6361, !noalias !6364, !noundef !3 ; 5 uses
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !6367)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !6367, !noalias !6370, !noundef !3 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 384307168202282326
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.loopexit75, label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit"
  %i.ah = invoke noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9e37a3c07093f192E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @116)
          to label %.noexc unwind label %bb.bh

.noexc:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !6367, !noalias !6370, !nonnull !3, !noundef !3 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ae, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", %.noexc
  %.sroa.02.011.i.i = phi i64 [ %i.be, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i" ], [ 0, %.noexc ] ; 5 uses
  %i.al = phi ptr [ %i.am, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i" ], [ %i.aj, %.noexc ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6372)
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !6372, !noalias !6375, !nonnull !3, !noundef !3 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !6379, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.ap, %i.ah
  br i1 %.not.i.i.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !6372, !noalias !6375, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = cmpxchg ptr %i.as, i64 0, i64 %i.ar acq_rel acquire, align 8, !noalias !6379
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.h, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i"

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !6372, !noalias !6375, !noundef !3 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store atomic ptr %i.av, ptr %i.ax release, align 8, !noalias !6379
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !6379, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 2 uses
  %i.bb = atomicrmw xchg ptr %i.ba, i32 1 release, align 4, !noalias !6379
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"

bb.k:                                             ; preds = %bb.j
  %i.bd = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17he22b95dd57336362E(ptr noundef nonnull align 4 %i.ba)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i" unwind label %bb.bh ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i": ; preds = %bb.g, %.lr.ph.i.i
  %i.be = add nuw nsw i64 %.sroa.02.011.i.i, 1
  %i.bf = icmp eq ptr %i.am, %i.ak
  br i1 %i.bf, label %.loopexit75, label %.lr.ph.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i": ; preds = %bb.k, %bb.j
  %i.bg = icmp samesign ult i64 %.sroa.02.011.i.i, %i.ae
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !6380)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6383)
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.sroa.02.011.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.bh, align 8, !noalias !6386 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6386
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = xor i64 %.sroa.02.011.i.i, -1
  %i.bk = add nsw i64 %i.ae, %i.bj
  %i.bl = mul nsw i64 %i.bk, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false), !noalias !6389
  %i.bm = add nsw i64 %i.ae, -1                   ; 2 uses
  store i64 %i.bm, ptr %i.ad, align 8, !alias.scope !6391, !noalias !6392
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", label %bb.l, !prof !6033

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %.sroa.02.011.i.i, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #37
          to label %.noexc11 unwind label %bb.bh

.noexc11:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"
  unreachable

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.j, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noundef !3
  store ptr %i.bo, ptr %i.o, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br i1 %i.ac, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.n, !prof !77

bb.n:                                             ; preds = %bb.m
  %i.bt = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.n
  br i1 %i.bt, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc12
  store atomic i8 1, ptr %i.bp monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.o, %.noexc12, %bb.m, %bb.l
  %i.bu = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.p, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", !prof !121

bb.p:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.z)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit" unwind label %.loopexit.split-lp

.loopexit75:                                      ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.bx = load i8, ptr %i.bw, align 8, !range !322, !noundef !3
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.bb, label %bb.ae

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %.invoke, %bb.n, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6393)
  call void @llvm.experimental.noalias.scope.decl(metadata !6396)
  call void @llvm.experimental.noalias.scope.decl(metadata !6399)
  call void @llvm.experimental.noalias.scope.decl(metadata !6402)
  %i.bz = load ptr, ptr %i.j, align 8, !alias.scope !6405, !nonnull !3, !noundef !3
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !6405
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.r, label %common.resume

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ad

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.p
  %.val9 = load ptr, ptr %i.o, align 8, !noundef !3 ; 11 uses
  %i.cc = icmp eq ptr %.val9, null
  br i1 %i.cc, label %bb.z, label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit"
  %i.cd = getelementptr inbounds nuw i8, ptr %.val9, i64 129
  %i.ce = load i8, ptr %i.cd, align 1, !range !322, !noalias !6406, !noundef !3
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.val9, i64 128 ; 2 uses
  %i.ch = load atomic i8, ptr %i.cg acquire, align 1, !noalias !6406
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i15, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"

.lr.ph.i.i15:                                     ; preds = %bb.t, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cm, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.t ] ; 6 uses
  %i.cj = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i15
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i unwind label %.loopexit

bb.v:                                             ; preds = %.lr.ph.i.i15
  %.not.i.i.i16 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i16, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.v
  %i.ck = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ck, 7                    ; 3 uses
  %i.cl = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.cl, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ck, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #26, !noalias !6406
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6409

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.u, %bb.v
  %i.cm = add i32 %.sroa.0.02.i.i, 1
  %i.cn = load atomic i8, ptr %i.cg acquire, align 1, !noalias !6406
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i15, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, %bb.t
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !6406
  %i.cp = load <2 x i64>, ptr %.val9, align 8, !noalias !6406
  store i64 -9223372036854775807, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !6406
  %.not.i = icmp eq i64 %.sroa.49.0.copyload.i, -9223372036854775807
  br i1 %.not.i, label %.invoke, label %bb.x, !prof !121

bb.w:                                             ; preds = %bb.s
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !6406
  %i.cq = load <2 x i64>, ptr %.val9, align 8, !noalias !6406
  store i64 -9223372036854775807, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !6406
  %.not20.i = icmp eq i64 %.sroa.4.0.copyload.i, -9223372036854775807
  br i1 %.not20.i, label %.invoke, label %bb.y, !prof !121

.invoke:                                          ; preds = %bb.w, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"
  %i.cr = phi ptr [ @98, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i" ], [ @99, %bb.w ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.937, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.512.0..sroa_idx.i, i64 112, i1 false)
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 136, i64 noundef 8) #26, !noalias !6406
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.937, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx.i, i64 112, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.val9, i64 128
  store atomic i8 1, ptr %i.cs release, align 8, !noalias !6406
  br label %bb.aa

bb.z:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit"
  store i8 1, ptr %0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.ct, align 8
end_hunk_1
begin_hunk_2_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17hfc63614bf9b94d90E":bb.a

.split.i:                                         ; preds = %.noexc46
  %i.bg = icmp ult i32 %i.be, 1000000000
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.assume(i1 %i.ay)
  %i.bh = icmp samesign ult i32 %i.be, %i.aw
  br i1 %i.bh, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.noexc46
  %i.bi = icmp slt i64 %i.bd, %i.au
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.bj = cmpxchg ptr %i.ax, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bj, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread16, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bk = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc47:                                         ; preds = %bb.t
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hc0e8a0d3add8dc16E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bj, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread20 [
    i64 0, label %bb.v
    i64 1, label %.thread16
    i64 2, label %.thread23
  ], !prof !6497

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #37
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread16:                                        ; preds = %.split8.i, %.split8.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread23:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread20:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  %i.br = load atomic i8, ptr %i.l acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit"

.lr.ph.i:                                         ; preds = %.thread20, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bw, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 0, %.thread20 ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bu = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bu, 7                    ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bu, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #26
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !6498

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i, 1
  %i.bx = load atomic i8, ptr %i.l acquire, align 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit"

bb.y:                                             ; preds = %.thread16
  call void @llvm.experimental.noalias.scope.decl(metadata !6499)
  %i.bz = load i64, ptr %i.f, align 8, !range !4, !alias.scope !6499, !noalias !6502, !noundef !3
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %bb.ad, !prof !121

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6504
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !6499, !noalias !6502, !nonnull !3, !align !50, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !322, !alias.scope !6499, !noalias !6502, !noundef !3
  store ptr %i.cc, ptr %i.a, align 8, !noalias !6504
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ce, ptr %i.cf, align 8, !noalias !6504
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #37
          to label %bb.ab unwind label %bb.aa, !noalias !6499

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %.body unwind label %bb.ac, !noalias !6499

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6499
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !6499, !noalias !6502, !nonnull !3, !align !50, !noundef !3 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !322, !alias.scope !6499, !noalias !6502, !noundef !3 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !6505)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !6505, !noalias !6508, !nonnull !3, !noundef !3 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 72 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !6505, !noalias !6508, !noundef !3 ; 7 uses
  %.idx67 = mul nuw nsw i64 %i.cq, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx67
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %._crit_edge66, label %.lr.ph65

bb.ae:                                            ; preds = %.lr.ph65
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cu = add nuw nsw i64 %i.cx, 1
  %i.cv = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cv, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ad, %bb.ae
  %i.cw = phi ptr [ %i.ct, %bb.ae ], [ %i.co, %bb.ad ] ; 2 uses
  %i.cx = phi i64 [ %i.cu, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !6510, !noalias !6515, !noundef !3
  %.not.i.i50 = icmp eq i64 %i.cz, %i.j
  br i1 %.not.i.i50, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph65
  call void @llvm.experimental.noalias.scope.decl(metadata !6520)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6523)
  %i.da = icmp ult i64 %i.cq, 384307168202282326
  call void @llvm.assume(i1 %i.da)
  %.not.i.i.i = icmp samesign ult i64 %i.cx, %i.cq
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i": ; preds = %bb.af
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cx ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.db, align 8, !noalias !6526 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6526
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = xor i64 %i.cx, -1
  %i.de = add nsw i64 %i.cq, %i.dd
  %i.df = mul nsw i64 %i.de, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull align 8 %i.dc, i64 %i.df, i1 false), !noalias !6529
  %i.dg = add nsw i64 %i.cq, -1                   ; 2 uses
  store i64 %i.dg, ptr %i.cp, align 8, !alias.scope !6531, !noalias !6532
  %.not.i5.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", label %bb.ah, !prof !6033

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", %bb.af
  %i.dh = phi i64 [ %i.cq, %bb.af ], [ %i.dg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i" ] ; 2 uses
  %i.di = icmp samesign ult i64 %i.dh, 384307168202282326
  call void @llvm.assume(i1 %i.di)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %i.cx, i64 noundef %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #37
          to label %.noexc51 unwind label %bb.ag

.noexc51:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"
  unreachable

bb.ag:                                            ; preds = %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", %._crit_edge66
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.cj, i8 %i.cl) #35
          to label %.body unwind label %bb.ap

bb.ah:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.g, align 8
  %i.dk = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !6533
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ai, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit" unwind label %bb.ag

._crit_edge66:                                    ; preds = %bb.ae, %bb.ad
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #37
          to label %bb.b unwind label %bb.ag

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.ah, %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  br i1 %i.cm, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.dn = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.do = and i64 %i.dn, 9223372036854775807
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, label %bb.ak, !prof !77

bb.ak:                                            ; preds = %bb.aj
  %i.dq = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.ak
  br i1 %i.dq, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, label %bb.al

bb.al:                                            ; preds = %.noexc54
  store atomic i8 1, ptr %i.dm monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53: ; preds = %bb.al, %.noexc54, %bb.aj, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.dr = atomicrmw xchg ptr %i.cj, i32 0 release, align 4
  %i.ds = icmp eq i32 %i.dr, 2
  br i1 %i.ds, label %bb.am, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56", !prof !121

bb.am:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.cj)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 0, ptr %0, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bf, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit77", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56"
  %.sroa.4.0.copyload.sink = phi i64 [ %.sroa.4.0.copyload, %bb.bf ], [ -9223372036854775807, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit77" ], [ -9223372036854775807, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56" ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.sink, ptr %.sroa.46.0..sroa_idx, align 8
  %i.dt = load i64, ptr %.sroa.416.0..sroa_idx, align 8, !range !65, !alias.scope !6542, !noundef !3
  %i.du = icmp eq i64 %i.dt, -9223372036854775807
  br i1 %i.du, label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit58", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$GT$17h401136a7b363d140E"(ptr noalias noundef align 8 dereferenceable(120) %.sroa.416.0..sroa_idx)
  br label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit58"

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bi
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.aq:                                            ; preds = %.thread23
  call void @llvm.experimental.noalias.scope.decl(metadata !6549)
  %i.dw = load i64, ptr %i.d, align 8, !range !4, !alias.scope !6549, !noalias !6552, !noundef !3
  %i.dx = trunc nuw i64 %i.dw to i1
  br i1 %i.dx, label %bb.ar, label %bb.av, !prof !121

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6554
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !6549, !noalias !6552, !nonnull !3, !align !50, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eb = load i8, ptr %i.ea, align 8, !range !322, !alias.scope !6549, !noalias !6552, !noundef !3
  store ptr %i.dz, ptr %i.b, align 8, !noalias !6554
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.eb, ptr %i.ec, align 8, !noalias !6554
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #37
          to label %bb.at unwind label %bb.as, !noalias !6549

bb.as:                                            ; preds = %bb.ar
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #35
          to label %.body unwind label %bb.au, !noalias !6549

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6549
  unreachable

bb.av:                                            ; preds = %bb.aq
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !6549, !noalias !6552, !nonnull !3, !align !50, !noundef !3 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ei = load i8, ptr %i.eh, align 8, !range !322, !alias.scope !6549, !noalias !6552, !noundef !3 ; 2 uses
  %i.ej = trunc nuw i8 %i.ei to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !6555)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !6555, !noalias !6558, !nonnull !3, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 72 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !6555, !noalias !6558, !noundef !3 ; 7 uses
  %.idx = mul nuw nsw i64 %i.en, 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx
  %i.ep = icmp eq i64 %i.en, 0
  br i1 %i.ep, label %._crit_edge, label %.lr.ph

bb.aw:                                            ; preds = %.lr.ph
  %i.eq = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %i.er = add nuw nsw i64 %i.eu, 1
  %i.es = icmp eq ptr %i.eq, %i.eo
  br i1 %i.es, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av, %bb.aw
  %i.et = phi ptr [ %i.eq, %bb.aw ], [ %i.el, %bb.av ] ; 2 uses
  %i.eu = phi i64 [ %i.er, %bb.aw ], [ 0, %bb.av ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !6560, !noalias !6565, !noundef !3
  %.not.i.i60 = icmp eq i64 %i.ew, %i.j
  br i1 %.not.i.i60, label %bb.ax, label %bb.aw

bb.ax:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !6570)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i59)
  call void @llvm.experimental.noalias.scope.decl(metadata !6573)
  %i.ex = icmp ult i64 %i.en, 384307168202282326
  call void @llvm.assume(i1 %i.ex)
  %.not.i.i.i61 = icmp samesign ult i64 %i.eu, %i.en
  br i1 %.not.i.i.i61, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i63", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i62"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i63": ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.eu ; 4 uses
  %.sroa.0.0.copyload1.i.i64 = load ptr, ptr %i.ey, align 8, !noalias !6576 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i65 = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i59, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i65, i64 16, i1 false), !noalias !6576
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = xor i64 %i.eu, -1
  %i.fb = add nsw i64 %i.en, %i.fa
  %i.fc = mul nsw i64 %i.fb, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr nonnull align 8 %i.ez, i64 %i.fc, i1 false), !noalias !6579
  %i.fd = add nsw i64 %i.en, -1                   ; 2 uses
  store i64 %i.fd, ptr %i.em, align 8, !alias.scope !6581, !noalias !6582
  %.not.i5.i66 = icmp eq ptr %.sroa.0.0.copyload1.i.i64, null
  br i1 %.not.i5.i66, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i62", label %bb.az, !prof !6033

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i62": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i63", %bb.ax
  %i.fe = phi i64 [ %i.en, %bb.ax ], [ %i.fd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i63" ] ; 2 uses
  %i.ff = icmp samesign ult i64 %i.fe, 384307168202282326
  call void @llvm.assume(i1 %i.ff)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %i.eu, i64 noundef %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #37
          to label %.noexc70 unwind label %bb.ay

.noexc70:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i62"
  unreachable

bb.ay:                                            ; preds = %bb.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i62", %._crit_edge
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.eg, i8 %i.ei) #35
          to label %.body unwind label %bb.ap

bb.az:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i63"
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i59, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i59)
  store ptr %.sroa.0.0.copyload1.i.i64, ptr %i.e, align 8
  %i.fh = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i64, i64 1 release, align 8, !noalias !6583
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.ba, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit73"

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit73" unwind label %bb.ay

._crit_edge:                                      ; preds = %bb.aw, %bb.av
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #37
          to label %bb.b unwind label %bb.ay

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit73": ; preds = %bb.az, %bb.ba
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  br i1 %i.ej, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i74, label %bb.bb

bb.bb:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit73"
  %i.fk = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.fl = and i64 %i.fk, 9223372036854775807
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i74, label %bb.bc, !prof !77

bb.bc:                                            ; preds = %bb.bb
  %i.fn = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  br i1 %i.fn, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i74, label %bb.bd

bb.bd:                                            ; preds = %.noexc75
  store atomic i8 1, ptr %i.fj monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i74

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i74: ; preds = %bb.bd, %.noexc75, %bb.bb, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit73"
  %i.fo = atomicrmw xchg ptr %i.eg, i32 0 release, align 4
  %i.fp = icmp eq i32 %i.fo, 2
  br i1 %i.fp, label %bb.be, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit77", !prof !121

bb.be:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i74
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.eg)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit77" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit77": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i74, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 1, ptr %0, align 8
  br label %bb.an

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, %.thread20
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8 ; 2 uses
  store i64 -9223372036854775807, ptr %.sroa.416.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775807
  br i1 %.not, label %bb.bg, label %bb.bf, !prof !121

bb.bf:                                            ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit"
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.517.0..sroa_idx, i64 112, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.an

bb.bg:                                            ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit"
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #37
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit58": ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.bh:                                            ; preds = %bb.bi, %.noexc
  resume { ptr, i32 } %.pn

bb.bi:                                            ; preds = %.noexc
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val28 = load i8, ptr %i.fq, align 8, !range !322, !noundef !3
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.n, i8 %.val28) #35
          to label %bb.bh unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17h84b3b3353e4ee658E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [168 x i8], align 16              ; 5 uses
  %i.c = alloca [168 x i8], align 16              ; 5 uses
  %i.d = alloca [136 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [136 x i8], align 8               ; 6 uses
  %.sroa.6.i = alloca [128 x i8], align 8         ; 4 uses
  %i.h = alloca [168 x i8], align 16              ; 17 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  store i64 %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %4, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %.split

.body:                                            ; preds = %bb.t, %bb.s
  br i1 %.sroa.04.4, label %.body.thread66, label %"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE.exit"

.split:                                           ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread66

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6592)
  %i.q = load i64, ptr %i.l, align 8, !range !4, !alias.scope !6592, !noalias !6595, !noundef !3
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.g, !prof !121

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6597
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !6592, !noalias !6595, !nonnull !3, !align !50, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !322, !alias.scope !6592, !noalias !6595, !noundef !3
  store ptr %i.t, ptr %i.i, align 8, !noalias !6597
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.v, ptr %i.w, align 8, !noalias !6597
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #37
          to label %bb.e unwind label %bb.d, !noalias !6592

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #35
          to label %.body.thread66 unwind label %bb.f, !noalias !6592

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6592
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !6592, !noalias !6595, !nonnull !3, !align !50, !noundef !3 ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !322, !alias.scope !6592, !noalias !6595, !noundef !3 ; 3 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !6598)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !6598, !noalias !6601, !noundef !3 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 384307168202282326
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = invoke noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9e37a3c07093f192E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @116)
          to label %.noexc unwind label %bb.bi

.noexc:                                           ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !6598, !noalias !6601, !nonnull !3, !noundef !3 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.af, 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", %.noexc
  %.sroa.02.011.i.i = phi i64 [ %i.bf, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i" ], [ 0, %.noexc ] ; 5 uses
  %i.am = phi ptr [ %i.an, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i" ], [ %i.ak, %.noexc ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6603)
  %i.ao = load ptr, ptr %i.am, align 8, !alias.scope !6603, !noalias !6606, !nonnull !3, !noundef !3 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !6610, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.aq, %i.ai
  br i1 %.not.i.i.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !6603, !noalias !6606, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.au = cmpxchg ptr %i.at, i64 0, i64 %i.as acq_rel acquire, align 8, !noalias !6610
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !6603, !noalias !6606, !noundef !3 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store atomic ptr %i.aw, ptr %i.ay release, align 8, !noalias !6610
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !6610, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bc = atomicrmw xchg ptr %i.bb, i32 1 release, align 4, !noalias !6610
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.m, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"

bb.m:                                             ; preds = %bb.l
  %i.be = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17he22b95dd57336362E(ptr noundef nonnull align 4 %i.bb)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i" unwind label %bb.bi ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i
  %i.bf = add nuw nsw i64 %.sroa.02.011.i.i, 1
  %i.bg = icmp eq ptr %i.an, %i.al
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i": ; preds = %bb.m, %bb.l
  %i.bh = icmp samesign ult i64 %.sroa.02.011.i.i, %i.af
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.experimental.noalias.scope.decl(metadata !6611)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6614)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.02.011.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.bi, align 8, !noalias !6617 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6617
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = xor i64 %.sroa.02.011.i.i, -1
  %i.bl = add nsw i64 %i.af, %i.bk
  %i.bm = mul nsw i64 %i.bl, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bj, i64 %i.bm, i1 false), !noalias !6620
  %i.bn = add nsw i64 %i.af, -1                   ; 2 uses
  store i64 %i.bn, ptr %i.ae, align 8, !alias.scope !6622, !noalias !6623
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", label %bb.n, !prof !6033

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %.sroa.02.011.i.i, i64 noundef %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #37
          to label %.noexc18 unwind label %bb.bi

.noexc18:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"
  unreachable

bb.n:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.k, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !3
  store ptr %i.bp, ptr %i.p, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.p, !prof !77

bb.p:                                             ; preds = %bb.o
  %i.bu = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc19 unwind label %bb.s

.noexc19:                                         ; preds = %bb.p
  br i1 %i.bu, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.bq monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.q, %.noexc19, %bb.o, %bb.n
  %i.bv = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %bb.r, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", !prof !121

bb.r:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.aa)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit" unwind label %bb.s

.loopexit:                                        ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.by = load i8, ptr %i.bx, align 8, !range !322, !noundef !3
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.bd, label %bb.z

bb.s:                                             ; preds = %bb.w, %bb.r, %bb.p, %"_ZN4core3ptr161drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17h679dd31c09014e7eE.exit"
  %.sroa.04.4 = phi i1 [ false, %"_ZN4core3ptr161drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17h679dd31c09014e7eE.exit" ], [ false, %bb.w ], [ true, %bb.r ], [ true, %bb.p ]
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6624)
  call void @llvm.experimental.noalias.scope.decl(metadata !6627)
  call void @llvm.experimental.noalias.scope.decl(metadata !6630)
  call void @llvm.experimental.noalias.scope.decl(metadata !6633)
  %i.cb = load ptr, ptr %i.k, align 8, !alias.scope !6636, !nonnull !3, !noundef !3
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !6636
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.y

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.val16 = load ptr, ptr %i.p, align 8, !noundef !3 ; 3 uses
  %i.ce = icmp eq ptr %.val16, null
  br i1 %i.ce, label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$5write17h61af7609f523b426E.exit", label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$5write17h61af7609f523b426E.exit.thread"

"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$5write17h61af7609f523b426E.exit.thread": ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.val16, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val16, i64 128
  store atomic i8 1, ptr %i.cf release, align 8, !noalias !6637
  br label %bb.u

"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$5write17h61af7609f523b426E.exit": ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !65
  %i.cg = icmp eq i64 %.pre, -9223372036854775807
  br i1 %i.cg, label %bb.u, label %bb.w

bb.u:                                             ; preds = %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$5write17h61af7609f523b426E.exit.thread", %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$5write17h61af7609f523b426E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 2, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6641)
  call void @llvm.experimental.noalias.scope.decl(metadata !6644)
  call void @llvm.experimental.noalias.scope.decl(metadata !6647)
  call void @llvm.experimental.noalias.scope.decl(metadata !6650)
  %i.ch = load ptr, ptr %i.k, align 8, !alias.scope !6653, !nonnull !3, !noundef !3
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !6653
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.v, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit23"

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit23"

bb.w:                                             ; preds = %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$5write17h61af7609f523b426E.exit"
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$GT$17h401136a7b363d140E"(ptr noalias noundef align 8 dereferenceable(120) %i.ck)
          to label %"_ZN4core3ptr161drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17h679dd31c09014e7eE.exit" unwind label %bb.s

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit23": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit33"

"_ZN4core3ptr161drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17h679dd31c09014e7eE.exit": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #37
          to label %bb.x unwind label %bb.s

bb.x:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17h679dd31c09014e7eE.exit"
  unreachable

bb.y:                                             ; preds = %.body.thread66, %bb.t, %bb.bi
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.z:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6658)
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 3 uses
  store ptr %i.aa, ptr %.sroa.444.0..sroa_idx, align 16, !noalias !6658
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 3 uses
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6658
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store ptr %i.m, ptr %.sroa.646.0..sroa_idx, align 16, !noalias !6658
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store ptr %i.n, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6658
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr %1, ptr %.sroa.847.0..sroa_idx, align 16, !noalias !6658
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cm = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h5dfd234b3fbb79b8E") ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !range !3365, !noalias !6659, !noundef !3
  %i.cp = icmp eq i8 %i.co, 1
  br i1 %i.cp, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !77

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.z
  %i.cq = invoke noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.cm, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.at, !noalias !6654 ; 2 uses

.noexc.i:                                         ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hdac0f3ac88d8f721E.exit.thread.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %.noexc.i, %bb.z
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cq, %.noexc.i ], [ %i.cm, %bb.z ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6668
  %i.cs = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6669, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6669
  %.not.i.i.i25 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i25, label %bb.aa, label %bb.aj, !prof !121

bb.aa:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6669
  %i.ct = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E()
          to label %.noexc2.i unwind label %bb.at, !noalias !6654 ; 2 uses

.noexc2.i:                                        ; preds = %bb.aa
  store ptr %i.ct, ptr %i.f, align 8, !noalias !6669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6669
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6669
  %i.cu = load <2 x i64>, ptr %i.h, align 16, !noalias !6669
  store i64 -9223372036854775807, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6669
  %.not21.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i, -9223372036854775807
  br i1 %.not21.i.i.i, label %bb.ac, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %.noexc2.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.cu, ptr %i.c, align 16, !noalias !6669
  %.sroa.5.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %.sroa.5.0..sroa_idx7.i.i.i, ptr noundef nonnull align 16 dereferenceable(152) %.sroa.5.0..sroa_idx.i.i.i, i64 152, i1 false), !noalias !6669
  invoke fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h9b6d0770e390459dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.c, ptr nonnull %i.ct)
          to label %bb.ag unwind label %bb.ad, !noalias !6668

bb.ac:                                            ; preds = %.noexc2.i
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #37
          to label %bb.af unwind label %bb.ad, !noalias !6669

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cv = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h9b6d0770e390459dE":bb.a

.split.i:                                         ; preds = %.noexc61
  %i.bi = icmp ult i32 %i.bg, 1000000000
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.ba)
  %i.bj = icmp samesign ult i32 %i.bg, %i.ay
  br i1 %i.bj, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.noexc61
  %i.bk = icmp slt i64 %i.bf, %i.aw
  br i1 %i.bk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.bl = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bl, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bm = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.aw, i32 noundef range(i32 0, 1000000001) %i.ay, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc62:                                         ; preds = %bb.t
  %i.bn = extractvalue { i64, i32 } %i.bm, 0
  %i.bo = extractvalue { i64, i32 } %i.bm, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hc0e8a0d3add8dc16E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, i64 noundef %i.bn, i32 noundef %i.bo)
          to label %.split8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bl, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread16 [
    i64 0, label %bb.v
    i64 1, label %.thread
    i64 2, label %.thread19
  ], !prof !6497

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #37
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split8.i, %.split8.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.bq)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread19:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bs)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread16:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  %i.bt = load atomic i8, ptr %i.m acquire, align 16
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit"

.lr.ph.i:                                         ; preds = %.thread16, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.02.i = phi i32 [ %i.by, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 0, %.thread16 ] ; 6 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bw = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bw, 7                    ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bw, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #26
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !6743

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.by = add i32 %.sroa.0.02.i, 1
  %i.bz = load atomic i8, ptr %i.m acquire, align 16
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit"

bb.y:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !6744)
  %i.cb = load i64, ptr %i.f, align 8, !range !4, !alias.scope !6744, !noalias !6747, !noundef !3
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.z, label %bb.ad, !prof !121

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6749
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !6744, !noalias !6747, !nonnull !3, !align !50, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cg = load i8, ptr %i.cf, align 8, !range !322, !alias.scope !6744, !noalias !6747, !noundef !3
  store ptr %i.ce, ptr %i.a, align 8, !noalias !6749
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cg, ptr %i.ch, align 8, !noalias !6749
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #37
          to label %bb.ab unwind label %bb.aa, !noalias !6744

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %.body unwind label %bb.ac, !noalias !6744

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6744
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !6744, !noalias !6747, !nonnull !3, !align !50, !noundef !3 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !322, !alias.scope !6744, !noalias !6747, !noundef !3 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !6750)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !6750, !noalias !6753, !nonnull !3, !noundef !3 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !6750, !noalias !6753, !noundef !3 ; 7 uses
  %.idx67 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx67
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %._crit_edge66, label %.lr.ph65

bb.ae:                                            ; preds = %.lr.ph65
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ad, %bb.ae
  %i.cy = phi ptr [ %i.cv, %bb.ae ], [ %i.cq, %bb.ad ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !6755, !noalias !6760, !noundef !3
  %.not.i.i65 = icmp eq i64 %i.db, %i.k
  br i1 %.not.i.i65, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph65
  call void @llvm.experimental.noalias.scope.decl(metadata !6765)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6768)
  %i.dc = icmp ult i64 %i.cs, 384307168202282326
  call void @llvm.assume(i1 %i.dc)
  %.not.i.i.i = icmp samesign ult i64 %i.cz, %i.cs
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i": ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cz ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.dd, align 8, !noalias !6771 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6771
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = xor i64 %i.cz, -1
  %i.dg = add nsw i64 %i.cs, %i.df
  %i.dh = mul nsw i64 %i.dg, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.de, i64 %i.dh, i1 false), !noalias !6774
  %i.di = add nsw i64 %i.cs, -1                   ; 2 uses
  store i64 %i.di, ptr %i.cr, align 8, !alias.scope !6776, !noalias !6777
  %.not.i5.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", label %bb.ah, !prof !6033

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", %bb.af
  %i.dj = phi i64 [ %i.cs, %bb.af ], [ %i.di, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i" ] ; 2 uses
  %i.dk = icmp samesign ult i64 %i.dj, 384307168202282326
  call void @llvm.assume(i1 %i.dk)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %i.cz, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #37
          to label %.noexc66 unwind label %bb.ag

.noexc66:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"
  unreachable

bb.ag:                                            ; preds = %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", %._crit_edge66
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.cl, i8 %i.cn) #35
          to label %.body unwind label %bb.ap

bb.ah:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.g, align 8
  %i.dm = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !6778
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ai, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit" unwind label %bb.ag

._crit_edge66:                                    ; preds = %bb.ae, %bb.ad
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #37
          to label %bb.b unwind label %bb.ag

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.ah, %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br i1 %i.co, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.dp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.dq = and i64 %i.dp, 9223372036854775807
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, label %bb.ak, !prof !77

bb.ak:                                            ; preds = %bb.aj
  %i.ds = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.ak
  br i1 %i.ds, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, label %bb.al

bb.al:                                            ; preds = %.noexc69
  store atomic i8 1, ptr %i.do monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68: ; preds = %bb.al, %.noexc69, %bb.aj, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.dt = atomicrmw xchg ptr %i.cl, i32 0 release, align 4
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %bb.am, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71", !prof !121

bb.am:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.cl)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.dv = load <2 x i64>, ptr %i.h, align 16
  store i64 -9223372036854775807, ptr %.sroa.4.0..sroa_idx, align 8
  %.not36 = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775807
  br i1 %.not36, label %.invoke, label %bb.an, !prof !121

bb.an:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71"
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5.0..sroa_idx, i64 112, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.dv, ptr %.sroa.410.0..sroa_idx, align 8
  br label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73"

.invoke:                                          ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71"
  %i.dw = phi ptr [ @112, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71" ], [ @115, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92" ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, %.thread16
  store i64 2, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !65, !alias.scope !6787
  %i.dx = icmp eq i64 %.pre, -9223372036854775807
  br i1 %i.dx, label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73", label %bb.ao

bb.ao:                                            ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit"
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$GT$17h401136a7b363d140E"(ptr noalias noundef align 8 dereferenceable(120) %i.dy)
  br label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73"

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bh
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.aq:                                            ; preds = %.thread19
  call void @llvm.experimental.noalias.scope.decl(metadata !6794)
  %i.ea = load i64, ptr %i.d, align 8, !range !4, !alias.scope !6794, !noalias !6797, !noundef !3
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %bb.ar, label %bb.av, !prof !121

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6799
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !6794, !noalias !6797, !nonnull !3, !align !50, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ef = load i8, ptr %i.ee, align 8, !range !322, !alias.scope !6794, !noalias !6797, !noundef !3
  store ptr %i.ed, ptr %i.b, align 8, !noalias !6799
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.ef, ptr %i.eg, align 8, !noalias !6799
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #37
          to label %bb.at unwind label %bb.as, !noalias !6794

bb.as:                                            ; preds = %bb.ar
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #35
          to label %.body unwind label %bb.au, !noalias !6794

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6794
  unreachable

bb.av:                                            ; preds = %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !6794, !noalias !6797, !nonnull !3, !align !50, !noundef !3 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.em = load i8, ptr %i.el, align 8, !range !322, !alias.scope !6794, !noalias !6797, !noundef !3 ; 2 uses
  %i.en = trunc nuw i8 %i.em to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !6800)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !6800, !noalias !6803, !nonnull !3, !noundef !3 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !6800, !noalias !6803, !noundef !3 ; 7 uses
  %.idx = mul nuw nsw i64 %i.er, 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx
  %i.et = icmp eq i64 %i.er, 0
  br i1 %i.et, label %._crit_edge, label %.lr.ph

bb.aw:                                            ; preds = %.lr.ph
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %i.ev = add nuw nsw i64 %i.ey, 1
  %i.ew = icmp eq ptr %i.eu, %i.es
  br i1 %i.ew, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av, %bb.aw
  %i.ex = phi ptr [ %i.eu, %bb.aw ], [ %i.ep, %bb.av ] ; 2 uses
  %i.ey = phi i64 [ %i.ev, %bb.aw ], [ 0, %bb.av ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !6805, !noalias !6810, !noundef !3
  %.not.i.i75 = icmp eq i64 %i.fa, %i.k
  br i1 %.not.i.i75, label %bb.ax, label %bb.aw

bb.ax:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !6815)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i74)
  call void @llvm.experimental.noalias.scope.decl(metadata !6818)
  %i.fb = icmp ult i64 %i.er, 384307168202282326
  call void @llvm.assume(i1 %i.fb)
  %.not.i.i.i76 = icmp samesign ult i64 %i.ey, %i.er
  br i1 %.not.i.i.i76, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i78", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i77"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i78": ; preds = %bb.ax
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %i.ey ; 4 uses
  %.sroa.0.0.copyload1.i.i79 = load ptr, ptr %i.fc, align 8, !noalias !6821 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i80 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i74, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i80, i64 16, i1 false), !noalias !6821
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = xor i64 %i.ey, -1
  %i.ff = add nsw i64 %i.er, %i.fe
  %i.fg = mul nsw i64 %i.ff, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr nonnull align 8 %i.fd, i64 %i.fg, i1 false), !noalias !6824
  %i.fh = add nsw i64 %i.er, -1                   ; 2 uses
  store i64 %i.fh, ptr %i.eq, align 8, !alias.scope !6826, !noalias !6827
  %.not.i5.i81 = icmp eq ptr %.sroa.0.0.copyload1.i.i79, null
  br i1 %.not.i5.i81, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i77", label %bb.az, !prof !6033

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i77": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i78", %bb.ax
  %i.fi = phi i64 [ %i.er, %bb.ax ], [ %i.fh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i78" ] ; 2 uses
  %i.fj = icmp samesign ult i64 %i.fi, 384307168202282326
  call void @llvm.assume(i1 %i.fj)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %i.ey, i64 noundef %i.fi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #37
          to label %.noexc85 unwind label %bb.ay

.noexc85:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i77"
  unreachable

bb.ay:                                            ; preds = %bb.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i77", %._crit_edge
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.ek, i8 %i.em) #35
          to label %.body unwind label %bb.ap

bb.az:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i78"
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i74, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i74)
  store ptr %.sroa.0.0.copyload1.i.i79, ptr %i.e, align 8
  %i.fl = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i79, i64 1 release, align 8, !noalias !6828
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.ba, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit88"

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit88" unwind label %bb.ay

._crit_edge:                                      ; preds = %bb.aw, %bb.av
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #37
          to label %bb.b unwind label %bb.ay

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit88": ; preds = %bb.az, %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  br i1 %i.en, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i89, label %bb.bb

bb.bb:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit88"
  %i.fo = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.fp = and i64 %i.fo, 9223372036854775807
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i89, label %bb.bc, !prof !77

bb.bc:                                            ; preds = %bb.bb
  %i.fr = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.bc
  br i1 %i.fr, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i89, label %bb.bd

bb.bd:                                            ; preds = %.noexc90
  store atomic i8 1, ptr %i.fn monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i89

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i89: ; preds = %bb.bd, %.noexc90, %bb.bb, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit88"
  %i.fs = atomicrmw xchg ptr %i.ek, i32 0 release, align 4
  %i.ft = icmp eq i32 %i.fs, 2
  br i1 %i.ft, label %bb.be, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92", !prof !121

bb.be:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i89
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.ek)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i89, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %i.fu = load <2 x i64>, ptr %i.h, align 16
  store i64 -9223372036854775807, ptr %.sroa.414.0..sroa_idx, align 8
  %.not34 = icmp eq i64 %.sroa.414.0.copyload, -9223372036854775807
  br i1 %.not34, label %.invoke, label %bb.bf, !prof !121

bb.bf:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92"
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.628.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.517.0..sroa_idx, i64 112, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.fu, ptr %.sroa.426.0..sroa_idx, align 8
  br label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73"

"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73": ; preds = %bb.an, %bb.bf, %bb.ao, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit": ; preds = %.body, %bb.i
  br i1 %.sroa.029.2, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit"
  resume { ptr, i32 } %.pn

bb.bh:                                            ; preds = %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit"
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val43 = load i8, ptr %i.fv, align 8, !range !322, !noundef !3
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.o, i8 %.val43) #35
          to label %bb.bg unwind label %bb.ap
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17ha7ba72a62be85c43E(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6837)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6837, !noalias !6840, !noundef !3 ; 3 uses
  %i.f = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call { i64, i64 } @_ZN4core5slice5index5range17h6e2437ea50f45974E(i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167), !noalias !6842 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 4 uses
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !6837, !noalias !6840
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !6837, !noalias !6840, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.h ; 2 uses
  %i.m = sub i64 %i.e, %i.i
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.o = icmp samesign eq i64 %i.h, %i.i
  br i1 %i.o, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit.thread", label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit.lr.ph"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit.lr.ph": ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.c, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  invoke void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9d626b28e2d5837E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core3ptr82drop_in_place$LT$alloc..vec..drain..Drain$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h22fb70b362ef503dE.exit" unwind label %bb.j

bb.b:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit": ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit.lr.ph", %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit4"
  %i.q = phi ptr [ %i.l, %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit.lr.ph" ], [ %i.aj, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit4" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6843)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.b, align 8, !alias.scope !6843, !noalias !6846
  %.sroa.05.0.copyload6 = load ptr, ptr %i.q, align 8, !noalias !6843 ; 3 uses
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7, i64 16, i1 false), !noalias !6843
  %.not = icmp eq ptr %.sroa.05.0.copyload6, null
  br i1 %.not, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit.thread", label %bb.e

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit.thread": ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit", %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit4", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9d626b28e2d5837E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6848)
  call void @llvm.experimental.noalias.scope.decl(metadata !6851)
  call void @llvm.experimental.noalias.scope.decl(metadata !6854)
  call void @llvm.experimental.noalias.scope.decl(metadata !6857)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !6860, !nonnull !3, !noundef !3
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !6860
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.d, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit" unwind label %bb.j

bb.e:                                             ; preds = %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb12b875c27898f1aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.05.0.copyload6, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.w = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload6, i64 24
  %i.y = cmpxchg ptr %i.x, i64 0, i64 %i.w acq_rel acquire, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.y, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
end_hunk_3
begin_hunk_4_@"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h0810d1445524eae3E":bb.a
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h2093e0bc85433c08E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_ZN4core5slice5index5range17h6e2437ea50f45974E(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h223af69f314703b9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_ZN4core5slice5index5range17hb90893884515c516E(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h5f2113bcfb8ce1adE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_ZN4core5slice5index5range17hb90893884515c516E(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h8076eecbd7bfb23bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_ZN4core5slice5index5range17hb90893884515c516E(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h947602da0a8ca0ceE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 768614336404564651
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_ZN4core5slice5index5range17hb90893884515c516E(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17he77ba8eea9761413E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_ZN4core5slice5index5range17hb90893884515c516E(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h282fc55680b51578E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9303)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9303, !noalias !9306, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9303, !noalias !9306, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !9303 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !9303
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9308
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9303, !noalias !9306
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread", label %bb.b, !prof !6033

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit"
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread": ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit"
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit" ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h62dfa990169fd33fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [64 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9309)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9309, !noalias !9312, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 128102389400760776
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9309, !noalias !9312, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !9309 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx2, i64 64, i1 false), !noalias !9309
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9314
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9309, !noalias !9312
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -9223372036854775778
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit.thread", label %bb.b, !prof !6033

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit"
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit.thread": ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit"
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb886d809177a5f0bE.exit" ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h7408d75d889ea55cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [96 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9315)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9315, !noalias !9318, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9315, !noalias !9318, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !9315 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx2, i64 96, i1 false), !noalias !9315
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9320
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9315, !noalias !9318
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -9223372036854775808
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit.thread", label %bb.b, !prof !6033

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit"
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit.thread": ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit"
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17ha87bc38608cb09cdE.exit" ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 88686269585142076
  tail call void @llvm.assume(i1 %i.m)
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17had9896ec005460daE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [248 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9321)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9321, !noalias !9324, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 36028797018963968
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9321, !noalias !9324, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !9321 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx2, i64 248, i1 false), !noalias !9321
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = shl nsw i64 %i.i, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9326
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9321, !noalias !9324
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 2
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit.thread", label %bb.b, !prof !6033

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit"
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit.thread": ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit"
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h75cc4878823e44dbE.exit" ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 36028797018963968
  tail call void @llvm.assume(i1 %i.m)
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hd09bba5a823ed879E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9327)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9327, !noalias !9330, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h7e51eec47ad5c7ceE.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9327, !noalias !9330, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !9332, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noalias !9332, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = xor i64 %1, -1
  %i.l = add nsw i64 %i.b, %i.k
  %i.m = shl nsw i64 %i.l, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.j, i64 %i.m, i1 false), !noalias !9332
  %i.n = add nsw i64 %i.b, -1
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !9327, !noalias !9330
  %i.o = insertvalue { i32, i32 } poison, i32 %i.g, 0
  %i.p = insertvalue { i32, i32 } %i.o, i32 %i.i, 1
  ret { i32, i32 } %i.p

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17h7e51eec47ad5c7ceE.exit": ; preds = %bb.a
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hfbfdaf6d4b97a818E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9333)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9333, !noalias !9336, !noundef !3 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9333, !noalias !9336, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !noalias !9333 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !9333
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9338
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9333, !noalias !9336
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread", label %bb.b, !prof !6033

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit"
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit.thread": ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit"
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hb760d4f0dda5a01fE.exit" ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h36ae454d6cb972f3E"(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, float noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h55eb8ce8004be76bE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !133, !alias.scope !9339, !noundef !3
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E.exit.i", !prof !121

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 4, i64 noundef 4)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !9344
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E.exit.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !9344, !nonnull !3, !noundef !3
  %i.l = icmp ult i64 %i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E.exit.i"
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -8                       ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4
  store <4 x float> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !9345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.w = add i64 %i.e, -1
  %i.x = add i64 %i.w, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E.exit.i", %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E.exit.i" ]
  %storemerge.lcssa27.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E.exit.i" ]
  store float %2, ptr %.sroa.0.0.lcssa28.i, align 4
  %i.y = add i64 %storemerge.lcssa27.i, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h55eb8ce8004be76bE.exit"

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.03.020.i, 1           ; 2 uses
  store float %2, ptr %.sroa.0.021.i, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !9346

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h55eb8ce8004be76bE.exit": ; preds = %bb.a, %._crit_edge.i
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.y, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h7139ec9883633a64E"(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h5c4d21add3a91b92E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !133, !alias.scope !9347, !noundef !3
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE.exit.i", !prof !121

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !9352
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE.exit.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !9352, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE.exit.i"
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE.exit.i", %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE.exit.i" ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE.exit.i" ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h5c4d21add3a91b92E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h5c4d21add3a91b92E.exit": ; preds = %bb.a, %._crit_edge.i
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17hc892742515968d8fE"(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h70029754f70fb2bdE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !133, !alias.scope !9353, !noundef !3
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h224a91c7b9c5ac44E.exit.i", !prof !121

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !9358
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h224a91c7b9c5ac44E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h224a91c7b9c5ac44E.exit.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !9358, !nonnull !3, !noundef !3
  %i.l = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

end_hunk_4
