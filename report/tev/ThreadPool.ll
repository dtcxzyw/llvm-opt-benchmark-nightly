Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ThreadPool?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1282
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@"_ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEEPvSB_":bb.a
  %i.bi = trunc i8 %i.bh to i1
  br i1 %i.bi, label %.split.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !114
  %i.bl = load i64, ptr %4, align 8
  %i.bm = and i64 %i.bl, -2
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.017.i.i.i, label %bb.k, label %bb.v

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.017.i.i.i, label %bb.k, label %bb.v

bb.k:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i, %.split.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread.i.i.i
  %.pn2230.i.i.i = phi { ptr, i32 } [ %i.bf, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread.i.i.i ], [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i ], [ %i.bg, %.split.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ba) #26
  br label %bb.v

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEE3popEv(ptr dead_on_unwind nonnull writable sret(%"struct.tev::ThreadPool::QueuedTask") align 16 %5, ptr noundef nonnull align 8 dereferenceable(25) %i.n)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.g, align 16, !tbaa !109 ; 4 uses
  store ptr null, ptr %i.g, align 16, !tbaa !109
  %i.bo = icmp eq ptr %i.bn, %3
  br i1 %i.bo, label %.sink.split.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__110__function12__value_funcIFvvEEaSB8ne180100EDn.exit.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.n, %bb.m
  %.sink6.i.i.i.i.i.i.i = phi i64 [ 32, %bb.m ], [ 40, %bb.n ]
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sink6.i.i.i.i.i.i.i
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #26, !inline_history !307
  br label %_ZNSt3__110__function12__value_funcIFvvEEaSB8ne180100EDn.exit.i.i.i.i.i.i

_ZNSt3__110__function12__value_funcIFvvEEaSB8ne180100EDn.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.n
  %i.bs = load ptr, ptr %i.p, align 16, !tbaa !109 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.thread84.i.i.i, label %bb.o

.thread84.i.i.i:                                  ; preds = %_ZNSt3__110__function12__value_funcIFvvEEaSB8ne180100EDn.exit.i.i.i.i.i.i
  store ptr null, ptr %i.g, align 16, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.h, ptr noundef nonnull align 16 dereferenceable(5) %i.q, i64 5, i1 false)
  br label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit.i.i.i

bb.o:                                             ; preds = %_ZNSt3__110__function12__value_funcIFvvEEaSB8ne180100EDn.exit.i.i.i.i.i.i
  %i.bu = icmp eq ptr %i.bs, %5
  br i1 %i.bu, label %bb.p, label %.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  store ptr %3, ptr %i.g, align 16, !tbaa !109
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 16 dereferenceable(53) %3)
          to label %_ZN3tev10ThreadPool10QueuedTaskaSEOS1_.exit.i.i.i unwind label %bb.q, !inline_history !4

bb.q:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #30
  unreachable

_ZN3tev10ThreadPool10QueuedTaskaSEOS1_.exit.i.i.i: ; preds = %bb.p
  %.pr.i.i.i = load ptr, ptr %i.p, align 16, !tbaa !109 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.h, ptr noundef nonnull align 16 dereferenceable(5) %i.q, i64 5, i1 false)
  %i.ca = icmp eq ptr %.pr.i.i.i, %5
  br i1 %i.ca, label %.sink.split.i.i.i.i.i.i, label %bb.r

.thread.i.i.i:                                    ; preds = %bb.o
  store ptr %i.bs, ptr %i.g, align 16, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.h, ptr noundef nonnull align 16 dereferenceable(5) %i.q, i64 5, i1 false)
  br label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit.i.i.i

bb.r:                                             ; preds = %_ZN3tev10ThreadPool10QueuedTaskaSEOS1_.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit.i.i.i, label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.r, %_ZN3tev10ThreadPool10QueuedTaskaSEOS1_.exit.i.i.i
  %.sink2.i.i.i.i.i.i = phi i64 [ 32, %_ZN3tev10ThreadPool10QueuedTaskaSEOS1_.exit.i.i.i ], [ 40, %bb.r ]
  %i.cb = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink2.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i.i.i) #26, !inline_history !308
  br label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit.i.i.i

_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit.i.i.i:   ; preds = %.sink.split.i.i.i.i.i.i, %bb.r, %.thread.i.i.i, %.thread84.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #26
  %i.ce = load ptr, ptr %i.g, align 16, !tbaa !109 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.s, label %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i.i.i.i

bb.s:                                             ; preds = %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit.i.i.i
  invoke void @_ZNSt3__125__throw_bad_function_callB8ne180100Ev() #27
          to label %.noexc35.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i

.noexc35.i.i.i:                                   ; preds = %bb.s
  unreachable

_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i.i.i.i: ; preds = %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit.i.i.i
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %_ZNKSt3__18functionIFvvEEclEv.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !inline_history !6

_ZNKSt3__18functionIFvvEEclEv.exit.i.i.i:         ; preds = %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i.i.i.i
  %i.cj = atomicrmw sub ptr %i.r, i64 1 seq_cst, align 8 ; 0 uses
  %i.ck = load i8, ptr %i.i, align 4, !tbaa !117, !range !85, !noundef !86
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load ptr, ptr %i.g, align 16, !tbaa !109 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, %3
  br i1 %i.cn, label %.sink.split.i.i.i38.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNKSt3__18functionIFvvEEclEv.exit.i.i.i
  %.not.i.i.i37.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i37.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit40.i.i.i, label %.sink.split.i.i.i38.i.i.i

.sink.split.i.i.i38.i.i.i:                        ; preds = %bb.t, %_ZNKSt3__18functionIFvvEEclEv.exit.i.i.i
  %.sink2.i.i.i39.i.i.i = phi i64 [ 32, %_ZNKSt3__18functionIFvvEEclEv.exit.i.i.i ], [ 40, %bb.t ]
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sink2.i.i.i39.i.i.i
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #26, !inline_history !308
  br label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit40.i.i.i

_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit40.i.i.i: ; preds = %.sink.split.i.i.i38.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.cl, label %bb.x, label %bb.c

bb.u:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.k, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i, %.split.i.i.i
  %.pn22.pn.i.i.i = phi { ptr, i32 } [ %i.cr, %bb.u ], [ %.pn2230.i.i.i, %bb.k ], [ %i.bg, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i ], [ %i.bg, %.split.i.i.i ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #26
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.v, %bb.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit40.i.i.i
  %.pn22.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.be, %bb.i ], [ %.pn22.pn.i.i.i, %bb.v ], [ %lpad.loopexit.i.i.i, %.loopexit40.i.i.i ], [ %lpad.loopexit45.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp46.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  %i.cs = load ptr, ptr %i.g, align 16, !tbaa !109 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, %3
  br i1 %i.ct, label %.sink.split.i.i.i42.i.i.i, label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.i.i.i
  %.not.i.i.i41.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i41.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit44.i.i.i, label %.sink.split.i.i.i42.i.i.i

.sink.split.i.i.i42.i.i.i:                        ; preds = %bb.w, %.loopexit.split-lp.i.i.i
  %.sink2.i.i.i43.i.i.i = phi i64 [ 32, %.loopexit.split-lp.i.i.i ], [ 40, %bb.w ]
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sink2.i.i.i43.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #26, !inline_history !308
  br label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit44.i.i.i

_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit44.i.i.i: ; preds = %.sink.split.i.i.i42.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.x:                                             ; preds = %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit40.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.val3, i64 160 ; 3 uses
  invoke void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cx)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %.val.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !88 ; 5 uses
  %i.cz = getelementptr i8, ptr %.val3, i64 24    ; 2 uses
  %.val29.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !87 ; 7 uses
  %.not2.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, %.val29.i.i.i
  br i1 %.not2.i.i.i.i.i.i, label %.loopexit38.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc, %bb.y
  %.03.i.i.i.i.i.i = phi ptr [ %i.da, %bb.y ], [ %.val.i.i.i, %.noexc ] ; 3 uses
  %.0.val.i.i.i.i.i.i = load i64, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !125
  %.0.i.i.i.i.i.i.i = icmp eq i64 %i.f, %.0.val.i.i.i.i.i.i
  br i1 %.0.i.i.i.i.i.i.i, label %.loopexit38.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i45.i.i.i = icmp eq ptr %i.da, %.val29.i.i.i
  br i1 %.not.i.i.i45.i.i.i, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit53.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !309

.loopexit38.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.val.i.i.i, %.noexc ], [ %.03.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.db = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.dc = ptrtoint ptr %.val.i.i.i to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.dd ; 5 uses
  %.not.i.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i, %.val29.i.i.i
  br i1 %.not.i.i.i, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit53.i.i.i, label %bb.ad, !prof !316

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit53.i.i.i: ; preds = %bb.y, %.loopexit38.i.i.i
  %i.df = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !317
  store ptr @.str, ptr %2, align 16, !tbaa !114, !noalias !317
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 84, ptr %i.dg, align 16, !tbaa !114, !noalias !317
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 80, ptr %i.dh, align 16, !tbaa !114, !noalias !317
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.6, ptr %i.di, align 16, !tbaa !114, !noalias !317
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %6, ptr nonnull @.str.10, i64 48, i64 49708, ptr nonnull %2)
          to label %bb.z unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.thread.i.i.i

bb.z:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit53.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !317
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
          to label %bb.ah unwind label %bb.ab

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.thread.i.i.i: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit53.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.08.i.i.i = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dl = load i8, ptr %6, align 8
  %i.dm = trunc i8 %i.dl to i1
  br i1 %i.dm, label %.split36.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.i.i.i

.split36.i.i.i:                                   ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !114
  %i.dp = load i64, ptr %6, align 8
  %i.dq = and i64 %i.dp, -2
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.08.i.i.i, label %bb.ac, label %bb.ag

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.08.i.i.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.i.i.i, %.split36.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.thread.i.i.i
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.dj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.thread.i.i.i ], [ %i.dk, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.i.i.i ], [ %i.dk, %.split36.i.i.i ]
  call void @__cxa_free_exception(ptr %i.df) #26
  br label %bb.ag

bb.ad:                                            ; preds = %.loopexit38.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.dr = load i64, ptr %i.de, align 8, !tbaa !102
  store i64 %i.dr, ptr %7, align 8, !tbaa !102
  store i64 0, ptr %i.de, align 8, !tbaa !102
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, %.val29.i.i.i
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.i.i.i.i, label %_ZNSt3__16threadaSB8ne180100EOS0_.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.ithread-pre-split.i.i.i:         ; preds = %_ZNSt3__16threadaSB8ne180100EOS0_.exit.i.i.i.i.i.i.i.i.i
  %.pr37.i.i.i = load i64, ptr %i.dw, align 8, !tbaa !125
  %i.dt = icmp eq i64 %.pr37.i.i.i, 0
  br i1 %i.dt, label %_ZNSt3__16threadaSB8ne180100EOS0_.exit.i.i.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.ithread-pre-split.i.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt3__16threadaSB8ne180100EOS0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.ithread-pre-split.i.i.i
  %.010.i.i.i.i.i.i64.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.ithread-pre-split.i.i.i ], [ %i.ds, %bb.ad ] ; 3 uses
  %storemerge11.i.i.i.i.i.i63.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.ithread-pre-split.i.i.i ], [ %i.de, %bb.ad ] ; 2 uses
  %i.du = load i64, ptr %.010.i.i.i.i.i.i64.i.i.i, align 8, !tbaa !102
  store i64 %i.du, ptr %storemerge11.i.i.i.i.i.i63.i.i.i, align 8, !tbaa !102
  store i64 0, ptr %.010.i.i.i.i.i.i64.i.i.i, align 8, !tbaa !102
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i64.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge11.i.i.i.i.i.i63.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %.val29.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.ithread-pre-split.i.i.i, !llvm.loop !312

_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.loopexit.i.i.i.i: ; preds = %_ZNSt3__16threadaSB8ne180100EOS0_.exit.i.i.i.i.i.i.i.i.i
  %9 = ptrtoint ptr %i.dw to i64
  br label %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.i.i.i.i

_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.i.i.i.i: ; preds = %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.loopexit.i.i.i.i, %bb.ad
  %storemerge.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.ad ], [ %9, %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.loopexit.i.i.i.i ]
  %i.dx = sub i64 %storemerge.lcssa.i.i.i.i.i.i.i.i.i, %i.db
  %i.dy = getelementptr inbounds i8, ptr %i.de, i64 %i.dx ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.dy, %.val29.i.i.i
  br i1 %.not6.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i55.i.i.i

.lr.ph.i.i.i55.i.i.i:                             ; preds = %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.i.i.i.i, %.lr.ph.i.i.i55.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i55.i.i.i ], [ %.val29.i.i.i, %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.i.i.i.i ]
  %i.dz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dz) #26
  %.not.i.i.i56.i.i.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i.i56.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i55.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i55.i.i.i, %_ZNSt3__14moveB8ne180100IPNS_6threadES2_EET0_T_S4_S3_.exit.i.i.i.i
  store ptr %i.dy, ptr %i.cz, align 8, !tbaa !87
  invoke void @_ZNSt3__16thread6detachEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.i.i.i, %.split36.i.i.i
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dk, %.split36.i.i.i ], [ %i.ea, %bb.af ], [ %.pn35.i.i.i, %bb.ac ], [ %i.dk, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit54.i.i.i ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cx) #26
  br label %.body

bb.ah:                                            ; preds = %bb.aa, %bb.h
  unreachable

bb.ai:                                            ; preds = %.loopexit.i.i.i
  call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cx) #26
  %i.eb = load ptr, ptr %8, align 8, !tbaa !126   ; 4 uses
  %.not.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i, label %"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEED2B8ne180100Ev.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !119 ; 3 uses
  store ptr null, ptr %i.eb, align 8, !tbaa !119
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i4, label %"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i.i", label %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.aj
  call void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ec) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 8) #29
  br label %"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i.i"

"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i.i": ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i, %bb.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 16) #29
  br label %"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEED2B8ne180100Ev.exit"

"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEED2B8ne180100Ev.exit": ; preds = %bb.ai, %"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr null

bb.ak:                                            ; preds = %bb.x, %bb.a
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit44.i.i.i, %bb.ag, %bb.ak
  %eh.lpad-body = phi { ptr, i32 } [ %i.ed, %bb.ak ], [ %.pn22.pn.pn.pn.i.i.i, %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit44.i.i.i ], [ %.pn.pn.i.i.i, %bb.ag ]
  call fastcc void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEED2B8ne180100Ev"(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEED2B8ne180100Ev"(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126    ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !126
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEE5resetB8ne180100EPS9_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !119
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i", label %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #29
  br label %"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i"

"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i": ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  br label %"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEE5resetB8ne180100EPS9_.exit"

"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEENS3_IS9_EEE5resetB8ne180100EPS9_.exit": ; preds = %bb.a, %"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN3tev10ThreadPool12startThreadsEmE3$_0EEEEclB8ne180100EPS9_.exit.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !119
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_.exit, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #29
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_.exit

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNSt3__16thread6detachEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #12

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @sem_trywait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not2.i.i.i, label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !98
  tail call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #26
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i.i, label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !97     ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.11) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #26
end_hunk_0
