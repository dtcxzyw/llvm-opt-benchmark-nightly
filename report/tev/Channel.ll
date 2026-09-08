Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Channel?download=true
inline.NumInlined: 5200
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3tev7Channel13divideByAsyncERKS0_i:.from.
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !416
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !416
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !95
  %.not = icmp eq i32 %i.v, 7
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !95
  %.not16 = icmp eq i32 %i.z, 7
  br i1 %.not16, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.13)
          to label %bb.h unwind label %.from.84

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.ad unwind label %.from.86

.from.86:                                         ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.83

.from.84:                                         ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.aa) #32
  br label %.from.83

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !76, !noalias !417
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102, !noalias !417
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !101, !noalias !417
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.ai, align 8, !tbaa !58, !noalias !417
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  store ptr %i.aj, ptr %.reload.addr100, align 8, !tbaa !117, !alias.scope !417
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !118, !alias.scope !417
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.sroa.0.0.copyload.i, ptr %i.al, align 8, !tbaa !58, !alias.scope !417
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !76, !noalias !418
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !102, !noalias !418
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !101, !noalias !418
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.ar, align 8, !tbaa !58, !noalias !418
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.as, ptr %.reload.addr101, align 8, !tbaa !120, !alias.scope !418
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.ao, ptr %i.at, align 8, !tbaa !121, !alias.scope !418
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %.sroa.0.0.copyload.i27, ptr %i.au, align 8, !tbaa !58, !alias.scope !418
  %i.av = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.j, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !122

bb.j:                                             ; preds = %bb.i
  %i.ax = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i31 = icmp eq i32 %i.ax, 0
  br i1 %.not.i31, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.l unwind label %.from.79

bb.l:                                             ; preds = %bb.k
  %i.ay = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.from.79:                                         ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.from.83

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.l, %bb.j, %bb.i
  %i.ba = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
          to label %_ZNK3tev7Channel9numPixelsEv.exit unwind label %.from.77

_ZNK3tev7Channel9numPixelsEv.exit:                ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.bb = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
          to label %_ZNK3tev7Channel9numPixelsEv.exit36 unwind label %.from.77

_ZNK3tev7Channel9numPixelsEv.exit36:              ; preds = %_ZNK3tev7Channel9numPixelsEv.exit
  store ptr %.reload.addr101, ptr %5, align 8, !tbaa !124
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.reload.addr100, ptr %i.bc, align 8, !tbaa !126
  invoke fastcc void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull byval(%class.anon) align 8 %5, i32 noundef %3)
          to label %bb.m unwind label %.from.77

bb.m:                                             ; preds = %_ZNK3tev7Channel9numPixelsEv.exit36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load atomic i32, ptr %i.bf acquire, align 4
  %i.bh = icmp slt i32 %i.bg, 2
  br i1 %i.bh, label %bb.n, label %AfterCoroSave

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.o
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !128 ; 7 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !135
  %i.bp = and i32 %i.bo, 8
  %.not.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %.thread.sink.split

bb.p:                                             ; preds = %.noexc.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !136 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.br, %.from..lr.ph.i.i.i.i.i ], [ %i.cj, %.noexc2.i.i ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.bz = load i8, ptr %i.bu, align 8             ; 2 uses
  %i.ca = trunc i8 %i.bz to i1                    ; 2 uses
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.bw
  %i.cd = load i64, ptr %i.bx, align 8
  %i.ce = lshr i8 %i.bz, 1
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = select i1 %i.ca, i64 %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !99
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr %i.cc, i64 %i.cg, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bt
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

.from..loopexit.split-lp.i.i:                     ; preds = %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ck = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ck) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.m
  %index.addr104 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i1 false, ptr %index.addr104, align 8
  %i.cl = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.cl, label %AfterCoroEnd, label %bb.r

.from.77:                                         ; preds = %_ZNK3tev7Channel9numPixelsEv.exit36, %_ZN3tev10ThreadPool6globalEv.exit, %_ZNK3tev7Channel9numPixelsEv.exit
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.83

bb.r:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i37, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.81, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.s, %bb.p, %.noexc.i.i, %bb.n
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.t unwind label %.from.81

bb.t:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr103)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #35
  unreachable

.from.81:                                         ; preds = %bb.s, %.thread
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.from.83

.from.83:                                         ; preds = %.from.77, %.from.79, %.from.81, %.from.84, %.from.86
  %.pn17 = phi { ptr, i32 } [ %i.ab, %.from.86 ], [ %i.ac, %.from.84 ], [ %i.cs, %.from.81 ], [ %i.cm, %.from.77 ], [ %i.az, %.from.79 ]
  %.3 = extractvalue { ptr, i32 } %.pn17, 0
  %i.ct = call ptr @__cxa_begin_catch(ptr %.3) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %.from.83
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.94

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.t, %bb.v
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = atomicrmw add ptr %i.cv, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %bb.w, label %_ZN3tev5Latch9countDownEv.exit.i40

bb.w:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i44 unwind label %.from..loopexit.split-lp.i.i41

.noexc.i.i44:                                     ; preds = %bb.w
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !128 ; 7 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !135
  %i.db = and i32 %i.da, 8
  %.not.i.i.i.i45 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i.i45, label %bb.x, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.x:                                             ; preds = %.noexc.i.i44
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !136 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i46 = icmp eq ptr %i.dd, %i.df
  br i1 %.not12.i.i.i.i.i46, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i47

.from..lr.ph.i.i.i.i.i47:                         ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  br label %.from..noexc2.i.i51

.from..noexc2.i.i51:                              ; preds = %.noexc2.i.i51, %.from..lr.ph.i.i.i.i.i47
  %.sroa.09.013.i.i.i.i.i48 = phi ptr [ %i.dd, %.from..lr.ph.i.i.i.i.i47 ], [ %i.dv, %.noexc2.i.i51 ] ; 2 uses
  %i.dk = load ptr, ptr %.sroa.09.013.i.i.i.i.i48, align 8, !tbaa !140 ; 2 uses
  %i.dl = load i8, ptr %i.dg, align 8             ; 2 uses
  %i.dm = trunc i8 %i.dl to i1                    ; 2 uses
  %i.dn = load ptr, ptr %i.dh, align 8
  %i.do = select i1 %i.dm, ptr %i.dn, ptr %i.di
  %i.dp = load i64, ptr %i.dj, align 8
  %i.dq = lshr i8 %i.dl, 1
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = select i1 %i.dm, i64 %i.dp, i64 %i.dr
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !99
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr %i.do, i64 %i.ds, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i51 unwind label %.from..loopexit.i.i49, !inline_history !4

.noexc2.i.i51:                                    ; preds = %.from..noexc2.i.i51
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i48, i64 16 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.dv, %i.df
  br i1 %.not.i.i.i.i.i52, label %_ZN3tev5Latch9countDownEv.exit.i40, label %.from..noexc2.i.i51

.from..loopexit.i.i49:                            ; preds = %.from..noexc2.i.i51
  %lpad.loopexit.i.i50 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

.from..loopexit.split-lp.i.i41:                   ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i42 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.from..loopexit.split-lp.i.i41, %.from..loopexit.i.i49
  %lpad.phi.i.i43 = phi { ptr, i32 } [ %lpad.loopexit.i.i50, %.from..loopexit.i.i49 ], [ %lpad.loopexit.split-lp.i.i42, %.from..loopexit.split-lp.i.i41 ]
  %i.dw = extractvalue { ptr, i32 } %lpad.phi.i.i43, 0
  call void @__clang_call_terminate(ptr %i.dw) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i40:               ; preds = %.noexc2.i.i51, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dx = icmp slt i32 %i.cw, 2
  br i1 %i.dx, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i44, %bb.x, %_ZN3tev5Latch9countDownEv.exit.i40
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !76 ; 2 uses
  %i.ea = inttoptr i64 %i.dz to ptr               ; 3 uses
  store ptr %i.ea, ptr %.reload.addr, align 8
  %.not.i53 = icmp eq i64 %i.dz, 0
  br i1 %.not.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend70

AfterCoroSuspend70:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr105 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i1 true, ptr %index.addr105, align 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr nonnull %i.ea)
  br label %AfterCoroEnd

bb.z:                                             ; preds = %.from.83
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.98 unwind label %bb.ac

.from.94:                                         ; preds = %bb.v
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.98

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i40
  %i.ee = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = atomicrmw add ptr %i.ef, i64 -1 acq_rel, align 8
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.ab, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !99
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.aa, %bb.ab
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend70, %AfterCoroSave
  ret void

.body.from.98:                                    ; preds = %bb.z, %.from.94
  %.pn18 = phi { ptr, i32 } [ %i.ed, %.from.94 ], [ %i.ec, %bb.z ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr103) #32
  br label %.body

.body:                                            ; preds = %.body.from.98, %.body.from.96, %.body.from.
  %.merged21 = phi { ptr, i32 } [ %.pn18, %.body.from.98 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.96 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #32
  resume { ptr, i32 } %.merged21

bb.ac:                                            ; preds = %bb.z
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #35
  unreachable

bb.ad:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 16 uses
  store ptr @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr77, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !427
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.73 ; 5 uses

.body.from.73:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !430
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !430
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !430
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !430
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !431
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !432
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.b unwind label %bb.d, !noalias !432

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !432
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !114, !noalias !432
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !432
  store ptr null, ptr %7, align 8, !tbaa !114, !noalias !432
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !432 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !432
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !432
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !432 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !432
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !432
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !432
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr77, i32 noundef %6)
          to label %bb.f unwind label %.from.63

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !135
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i1 false, ptr %index.addr80, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.63:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.61, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.61

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35
  unreachable

.from.61:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.61, %.from.63
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.61 ], [ %i.bb, %.from.63 ]
  %.013 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.013) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.71

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i24

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i28 unwind label %.from..loopexit.split-lp.i.i25

.noexc.i.i28:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !128 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !135
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i29 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i29, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i30 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i30, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i31

.from..lr.ph.i.i.i.i.i31:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i35

.from..noexc2.i.i35:                              ; preds = %.noexc2.i.i35, %.from..lr.ph.i.i.i.i.i31
  %.sroa.09.013.i.i.i.i.i32 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i31 ], [ %i.ck, %.noexc2.i.i35 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i32, align 8, !tbaa !140 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !99
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i35 unwind label %.from..loopexit.i.i33, !inline_history !4

.noexc2.i.i35:                                    ; preds = %.from..noexc2.i.i35
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i36, label %_ZN3tev5Latch9countDownEv.exit.i24, label %.from..noexc2.i.i35

.from..loopexit.i.i33:                            ; preds = %.from..noexc2.i.i35
  %lpad.loopexit.i.i34 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i25:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i26 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i25, %.from..loopexit.i.i33
  %lpad.phi.i.i27 = phi { ptr, i32 } [ %lpad.loopexit.i.i34, %.from..loopexit.i.i33 ], [ %lpad.loopexit.split-lp.i.i26, %.from..loopexit.split-lp.i.i25 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i27, 0
  call void @__clang_call_terminate(ptr %i.cl) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i24:               ; preds = %.noexc2.i.i35, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i28, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i24
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !76 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i37 = icmp eq i64 %i.co, 0
  br i1 %.not.i37, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend54

AfterCoroSuspend54:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i1 true, ptr %index.addr81, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.75 unwind label %bb.w

.from.71:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.75

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i24
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend54, %AfterCoroSave
  ret void

.body.from.75:                                    ; preds = %bb.t, %.from.71
  %.pn18 = phi { ptr, i32 } [ %i.cs, %.from.71 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr79) #32
  br label %.body

.body:                                            ; preds = %.body.from.75, %.body.from.73, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.75 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.73 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #32
  resume { ptr, i32 } %.merged20

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.102, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #35
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  store ptr %1, ptr %i.c, align 8, !tbaa !76
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !135
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not12.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.noexc2.i, %.lr.ph.i.i.i.i
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ae, %.noexc2.i ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !4

.noexc2.i:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.af = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.af) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !142
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !135
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_0
begin_hunk_1_@_ZN3tev7Channel17multiplyWithAsyncERKS0_i:.from.
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !449
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !449
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !95
  %.not = icmp eq i32 %i.v, 7
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !95
  %.not16 = icmp eq i32 %i.z, 7
  br i1 %.not16, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.14)
          to label %bb.h unwind label %.from.84

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.ad unwind label %.from.86

.from.86:                                         ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.83

.from.84:                                         ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.aa) #32
  br label %.from.83

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !76, !noalias !450
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102, !noalias !450
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !101, !noalias !450
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.ai, align 8, !tbaa !58, !noalias !450
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  store ptr %i.aj, ptr %.reload.addr100, align 8, !tbaa !117, !alias.scope !450
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !118, !alias.scope !450
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.sroa.0.0.copyload.i, ptr %i.al, align 8, !tbaa !58, !alias.scope !450
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !76, !noalias !451
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !102, !noalias !451
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !101, !noalias !451
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.ar, align 8, !tbaa !58, !noalias !451
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.as, ptr %.reload.addr101, align 8, !tbaa !120, !alias.scope !451
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.ao, ptr %i.at, align 8, !tbaa !121, !alias.scope !451
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %.sroa.0.0.copyload.i27, ptr %i.au, align 8, !tbaa !58, !alias.scope !451
  %i.av = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.j, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !122

bb.j:                                             ; preds = %bb.i
  %i.ax = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i31 = icmp eq i32 %i.ax, 0
  br i1 %.not.i31, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.l unwind label %.from.79

bb.l:                                             ; preds = %bb.k
  %i.ay = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.from.79:                                         ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.from.83

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.l, %bb.j, %bb.i
  %i.ba = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
          to label %_ZNK3tev7Channel9numPixelsEv.exit unwind label %.from.77

_ZNK3tev7Channel9numPixelsEv.exit:                ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.bb = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ar)
          to label %_ZNK3tev7Channel9numPixelsEv.exit36 unwind label %.from.77

_ZNK3tev7Channel9numPixelsEv.exit36:              ; preds = %_ZNK3tev7Channel9numPixelsEv.exit
  store ptr %.reload.addr100, ptr %5, align 8, !tbaa !126
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.reload.addr101, ptr %i.bc, align 8, !tbaa !124
  invoke fastcc void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull byval(%class.anon.29) align 8 %5, i32 noundef %3)
          to label %bb.m unwind label %.from.77

bb.m:                                             ; preds = %_ZNK3tev7Channel9numPixelsEv.exit36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load atomic i32, ptr %i.bf acquire, align 4
  %i.bh = icmp slt i32 %i.bg, 2
  br i1 %i.bh, label %bb.n, label %AfterCoroSave

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.o
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !128 ; 7 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !135
  %i.bp = and i32 %i.bo, 8
  %.not.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %.thread.sink.split

bb.p:                                             ; preds = %.noexc.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !136 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.br, %.from..lr.ph.i.i.i.i.i ], [ %i.cj, %.noexc2.i.i ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.bz = load i8, ptr %i.bu, align 8             ; 2 uses
  %i.ca = trunc i8 %i.bz to i1                    ; 2 uses
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.bw
  %i.cd = load i64, ptr %i.bx, align 8
  %i.ce = lshr i8 %i.bz, 1
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = select i1 %i.ca, i64 %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !99
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr %i.cc, i64 %i.cg, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bt
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

.from..loopexit.split-lp.i.i:                     ; preds = %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ck = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ck) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.m
  %index.addr104 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i1 false, ptr %index.addr104, align 8
  %i.cl = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.cl, label %AfterCoroEnd, label %bb.r

.from.77:                                         ; preds = %_ZNK3tev7Channel9numPixelsEv.exit36, %_ZN3tev10ThreadPool6globalEv.exit, %_ZNK3tev7Channel9numPixelsEv.exit
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.83

bb.r:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i37, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.81, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.s, %bb.p, %.noexc.i.i, %bb.n
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.t unwind label %.from.81

bb.t:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr103)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #35
  unreachable

.from.81:                                         ; preds = %bb.s, %.thread
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.from.83

.from.83:                                         ; preds = %.from.77, %.from.79, %.from.81, %.from.84, %.from.86
  %.pn17 = phi { ptr, i32 } [ %i.ab, %.from.86 ], [ %i.ac, %.from.84 ], [ %i.cs, %.from.81 ], [ %i.cm, %.from.77 ], [ %i.az, %.from.79 ]
  %.3 = extractvalue { ptr, i32 } %.pn17, 0
  %i.ct = call ptr @__cxa_begin_catch(ptr %.3) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %.from.83
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.94

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.t, %bb.v
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = atomicrmw add ptr %i.cv, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %bb.w, label %_ZN3tev5Latch9countDownEv.exit.i40

bb.w:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i44 unwind label %.from..loopexit.split-lp.i.i41

.noexc.i.i44:                                     ; preds = %bb.w
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !128 ; 7 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !135
  %i.db = and i32 %i.da, 8
  %.not.i.i.i.i45 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i.i45, label %bb.x, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.x:                                             ; preds = %.noexc.i.i44
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !136 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i46 = icmp eq ptr %i.dd, %i.df
  br i1 %.not12.i.i.i.i.i46, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i47

.from..lr.ph.i.i.i.i.i47:                         ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  br label %.from..noexc2.i.i51

.from..noexc2.i.i51:                              ; preds = %.noexc2.i.i51, %.from..lr.ph.i.i.i.i.i47
  %.sroa.09.013.i.i.i.i.i48 = phi ptr [ %i.dd, %.from..lr.ph.i.i.i.i.i47 ], [ %i.dv, %.noexc2.i.i51 ] ; 2 uses
  %i.dk = load ptr, ptr %.sroa.09.013.i.i.i.i.i48, align 8, !tbaa !140 ; 2 uses
  %i.dl = load i8, ptr %i.dg, align 8             ; 2 uses
  %i.dm = trunc i8 %i.dl to i1                    ; 2 uses
  %i.dn = load ptr, ptr %i.dh, align 8
  %i.do = select i1 %i.dm, ptr %i.dn, ptr %i.di
  %i.dp = load i64, ptr %i.dj, align 8
  %i.dq = lshr i8 %i.dl, 1
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = select i1 %i.dm, i64 %i.dp, i64 %i.dr
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !99
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr %i.do, i64 %i.ds, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i51 unwind label %.from..loopexit.i.i49, !inline_history !4

.noexc2.i.i51:                                    ; preds = %.from..noexc2.i.i51
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i48, i64 16 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.dv, %i.df
  br i1 %.not.i.i.i.i.i52, label %_ZN3tev5Latch9countDownEv.exit.i40, label %.from..noexc2.i.i51

.from..loopexit.i.i49:                            ; preds = %.from..noexc2.i.i51
  %lpad.loopexit.i.i50 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

.from..loopexit.split-lp.i.i41:                   ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i42 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.from..loopexit.split-lp.i.i41, %.from..loopexit.i.i49
  %lpad.phi.i.i43 = phi { ptr, i32 } [ %lpad.loopexit.i.i50, %.from..loopexit.i.i49 ], [ %lpad.loopexit.split-lp.i.i42, %.from..loopexit.split-lp.i.i41 ]
  %i.dw = extractvalue { ptr, i32 } %lpad.phi.i.i43, 0
  call void @__clang_call_terminate(ptr %i.dw) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i40:               ; preds = %.noexc2.i.i51, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dx = icmp slt i32 %i.cw, 2
  br i1 %i.dx, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i44, %bb.x, %_ZN3tev5Latch9countDownEv.exit.i40
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !76 ; 2 uses
  %i.ea = inttoptr i64 %i.dz to ptr               ; 3 uses
  store ptr %i.ea, ptr %.reload.addr, align 8
  %.not.i53 = icmp eq i64 %i.dz, 0
  br i1 %.not.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend70

AfterCoroSuspend70:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr105 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i1 true, ptr %index.addr105, align 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr nonnull %i.ea)
  br label %AfterCoroEnd

bb.z:                                             ; preds = %.from.83
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.98 unwind label %bb.ac

.from.94:                                         ; preds = %bb.v
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.98

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i40
  %i.ee = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = atomicrmw add ptr %i.ef, i64 -1 acq_rel, align 8
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.ab, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !99
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.aa, %bb.ab
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend70, %AfterCoroSave
  ret void

.body.from.98:                                    ; preds = %bb.z, %.from.94
  %.pn18 = phi { ptr, i32 } [ %i.ed, %.from.94 ], [ %i.ec, %bb.z ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr103) #32
  br label %.body

.body:                                            ; preds = %.body.from.98, %.body.from.96, %.body.from.
  %.merged21 = phi { ptr, i32 } [ %.pn18, %.body.from.98 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.96 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #32
  resume { ptr, i32 } %.merged21

bb.ac:                                            ; preds = %bb.z
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #35
  unreachable

bb.ad:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon.29) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 16 uses
  store ptr @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr77, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !460
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.73 ; 5 uses

.body.from.73:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !463
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !463
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !463
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !463
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !464
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !465
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.b unwind label %bb.d, !noalias !465

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !465
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !114, !noalias !465
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !465
  store ptr null, ptr %7, align 8, !tbaa !114, !noalias !465
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !465 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !465
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !465
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !465 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !465
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !465
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr77, i32 noundef %6)
          to label %bb.f unwind label %.from.63

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !135
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i1 false, ptr %index.addr80, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.63:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.61, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.61

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35
  unreachable

.from.61:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.61, %.from.63
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.61 ], [ %i.bb, %.from.63 ]
  %.013 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.013) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.71

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i24

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i28 unwind label %.from..loopexit.split-lp.i.i25

.noexc.i.i28:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !128 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !135
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i29 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i29, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i30 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i30, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i31

.from..lr.ph.i.i.i.i.i31:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i35

.from..noexc2.i.i35:                              ; preds = %.noexc2.i.i35, %.from..lr.ph.i.i.i.i.i31
  %.sroa.09.013.i.i.i.i.i32 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i31 ], [ %i.ck, %.noexc2.i.i35 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i32, align 8, !tbaa !140 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !99
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i35 unwind label %.from..loopexit.i.i33, !inline_history !4

.noexc2.i.i35:                                    ; preds = %.from..noexc2.i.i35
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i36, label %_ZN3tev5Latch9countDownEv.exit.i24, label %.from..noexc2.i.i35

.from..loopexit.i.i33:                            ; preds = %.from..noexc2.i.i35
  %lpad.loopexit.i.i34 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i25:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i26 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i25, %.from..loopexit.i.i33
  %lpad.phi.i.i27 = phi { ptr, i32 } [ %lpad.loopexit.i.i34, %.from..loopexit.i.i33 ], [ %lpad.loopexit.split-lp.i.i26, %.from..loopexit.split-lp.i.i25 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i27, 0
  call void @__clang_call_terminate(ptr %i.cl) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i24:               ; preds = %.noexc2.i.i35, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i28, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i24
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !76 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i37 = icmp eq i64 %i.co, 0
  br i1 %.not.i37, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend54

AfterCoroSuspend54:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i1 true, ptr %index.addr81, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.75 unwind label %bb.w

.from.71:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.75

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i24
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend54, %AfterCoroSave
  ret void

.body.from.75:                                    ; preds = %bb.t, %.from.71
  %.pn18 = phi { ptr, i32 } [ %i.cs, %.from.71 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr79) #32
  br label %.body

.body:                                            ; preds = %.body.from.75, %.body.from.73, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.75 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.73 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #32
  resume { ptr, i32 } %.merged20

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev7Channel10updateTileENS_3BoxIiLj2EEENSt3__14spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::Box", align 8         ; 3 uses
  %6 = alloca %"struct.nanogui::Array.3", align 8 ; 4 uses
  store i64 %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = trunc i64 %2 to i32                      ; 3 uses
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %2, 32                          ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 3 uses
  %i.g = lshr i64 %1, 32                          ; 3 uses
  %i.h = trunc nuw i64 %i.g to i32                ; 3 uses
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.d, i32 0)
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 0)
  %i.l = zext nneg i32 %i.j to i64
  %i.m = zext nneg i32 %i.k to i64
  %i.n = mul nuw nsw i64 %i.m, %i.l
  %i.o = icmp ult i64 %4, %i.n
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #32
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8, !tbaa !58 ; 3 uses
  %.sroa.5.8.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.s = icmp sge i32 %.sroa.5.8.extract.trunc, %i.c
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32 ; 2 uses
  %i.t = icmp sge i32 %.sroa.5.12.extract.trunc, %i.h
  %i.u = and i64 %1, -9223372034707292160
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i1 %i.s, i1 false
  %i.x = select i1 %i.w, i1 %i.t, i1 false
  br i1 %i.x, label %_ZNK3tev3BoxIiLj2EE8containsES1_.exit, label %_ZNK3tev3BoxIiLj2EE8containsES1_.exit.thread

_ZNK3tev3BoxIiLj2EE8containsES1_.exit:            ; preds = %bb.e
  %i.y = icmp sge i32 %.sroa.5.8.extract.trunc, %i.b
  %i.z = icmp sge i32 %.sroa.5.12.extract.trunc, %i.f
  %i.aa = and i64 %2, -9223372034707292160
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i1 %i.z, i1 false
  br i1 %i.ad, label %bb.f, label %_ZNK3tev3BoxIiLj2EE8containsES1_.exit.thread

_ZNK3tev3BoxIiLj2EE8containsES1_.exit.thread:     ; preds = %bb.e, %_ZNK3tev3BoxIiLj2EE8containsES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !128
  call void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIiLm2EEES6_S4_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i32 noundef 8, ptr nonnull @.str.16, i64 50, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.loopexit

bb.f:                                             ; preds = %_ZNK3tev3BoxIiLj2EE8containsES1_.exit
  %i.ag = sext i32 %i.d to i64
  %i.ah = icmp slt i32 %i.h, %i.f
  %i.ai = icmp slt i32 %i.c, %i.b
  %or.cond = and i1 %i.ah, %i.ai
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.aj = and i64 %1, 2147483647                  ; 2 uses
  %wide.trip.count = and i64 %2, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv24 = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next25, %._crit_edge ] ; 3 uses
  %i.ak = sub nsw i64 %indvars.iv24, %i.g
  %i.al = mul nsw i64 %i.ak, %i.ag
  %i.am = getelementptr [4 x i8], ptr %3, i64 %i.al
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %i.e
  br i1 %exitcond28.not, label %.loopexit, label %.lr.ph, !llvm.loop !466

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.an = sub nsw i64 %indvars.iv, %i.aj
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !144
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !104
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %indvars.iv24, %i.ar
  %i.at = add nsw i64 %i.as, %indvars.iv
  tail call void @_ZN3tev7Channel12dynamicSetAtEmf(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.at, float noundef %i.ap)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !467

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %_ZNK3tev3BoxIiLj2EE8containsES1_.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12out_of_rangeC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
end_hunk_1
begin_hunk_2_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.ac unwind label %.thread185

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.138.sink.split

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.av = load i8, ptr %8, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %.split, label %.from.138.sink.split

.thread185:                                       ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ay = load i8, ptr %8, align 8
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135

.split:                                           ; preds = %.thread185, %bb.i
  %i.ba = phi { ptr, i32 } [ %i.ax, %.thread185 ], [ %i.au, %bb.i ] ; 2 uses
  %.0187 = phi i1 [ false, %.thread185 ], [ true, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bd = load i64, ptr %8, align 8
  %i.be = and i64 %i.bd, -2
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %.0187, label %.from.138, label %.from.157

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135: ; preds = %.thread185
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.157

.from.138.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.at, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.138

.from.138:                                        ; preds = %.from.138.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.ba, %.split ], [ %.pn4284.ph, %.from.138.sink.split ]
  call void @__cxa_free_exception(ptr %i.ap) #32
  br label %.from.157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.bf = phi i64 [ %i.ao, %bb.f ], [ %i.ai, %.lr.ph.preheader ]
  %i.bg = phi i64 [ %i.am, %bb.f ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.bh = phi i64 [ %i.al, %bb.f ], [ 0, %.lr.ph.preheader ]
  %i.bi = add i64 %i.bf, %2
  %i.bj = add i64 %i.bh, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store i64 %i.bj, ptr %10, align 8, !tbaa !302
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !303
  store ptr %.reload.addr180, ptr %i.ad, align 8, !tbaa !76
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.133

bb.j:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !308 ; 6 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !309
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %i.bo = load i64, ptr %9, align 8, !tbaa !76
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !76
  %i.bp = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !76
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !97
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !97
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bt = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr179, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.130

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bs, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bt, %bb.k ]
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !308
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %exitcond.not = icmp eq i64 %i.bg, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1106

.from.133:                                        ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.142

.from.130:                                        ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  br label %.from.142

.from.142:                                        ; preds = %.from.133, %.from.130
  %.pn43 = phi { ptr, i32 } [ %i.bv, %.from.130 ], [ %i.bu, %.from.133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.from.157

.from.157:                                        ; preds = %.from.142, %.from.138, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.142 ], [ %.pn4284, %.from.138 ], [ %i.ax, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135 ], [ %i.ba, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #32
  br label %.from.159

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load atomic i32, ptr %i.by acquire, align 4
  %i.ca = icmp slt i32 %i.bz, 2
  br i1 %i.ca, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !128 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !135
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !136 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc2.i.i ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.cm
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.from..loopexit.split-lp.i.i:                     ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dd) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 false, ptr %index.addr183, align 8
  %i.de = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.de, label %AfterCoroEnd, label %bb.q

.from.151:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.159

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.148, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.148

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %i.dj = load ptr, ptr %.reload.addr179, align 8, !tbaa !310 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !308 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dl, %bb.s ]
  %i.dm = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dm) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !310
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dn = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dj, %bb.s ] ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !308
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !309
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.ds) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #35
  unreachable

.from.148:                                        ; preds = %bb.r, %.thread
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.from.159

.from.159:                                        ; preds = %.from.148, %.from.151, %.from.154, %.from.157
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %.from.154 ], [ %.pn43.pn, %.from.157 ], [ %i.dv, %.from.148 ], [ %i.df, %.from.151 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dw = call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.159
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw add ptr %i.dy, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !128 ; 7 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !135
  %i.ee = and i32 %i.ed, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !136 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 33
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.eg, %.from..lr.ph.i.i.i.i.i65 ], [ %i.ey, %.noexc2.i.i69 ] ; 2 uses
  %i.en = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !140 ; 2 uses
  %i.eo = load i8, ptr %i.ej, align 8             ; 2 uses
  %i.ep = trunc i8 %i.eo to i1                    ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8
  %i.er = select i1 %i.ep, ptr %i.eq, ptr %i.el
  %i.es = load i64, ptr %i.em, align 8
  %i.et = lshr i8 %i.eo, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = select i1 %i.ep, i64 %i.es, i64 %i.eu
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !99
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr %i.er, i64 %i.ev, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.ey, %i.ei
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.ez = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  call void @__clang_call_terminate(ptr %i.ez) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fa = icmp slt i32 %i.dz, 2
  br i1 %i.fa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !76 ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr               ; 3 uses
  store ptr %i.fd, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.fc, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend110

AfterCoroSuspend110:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr184 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 true, ptr %index.addr184, align 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr nonnull %i.fd)
  br label %AfterCoroEnd

bb.y:                                             ; preds = %.from.159
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.175 unwind label %bb.ab

.from.168:                                        ; preds = %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.175

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 acq_rel, align 8
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !99
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend110, %AfterCoroSave
  ret void

.body.from.175:                                   ; preds = %bb.y, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.fg, %.from.168 ], [ %i.ff, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr182) #32
  br label %.body

.body:                                            ; preds = %.body.from.175, %.body.from.172, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.175 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.172 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #35
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1125
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !1125
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1125
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !1125
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !1126
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !1126
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1127
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1127

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !1127
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !114, !noalias !1127
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !1127
  store ptr null, ptr %4, align 8, !tbaa !114, !noalias !1127
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !1127 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !1127
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !1127
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1127 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !1127
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1127
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr nonnull align 1 poison, ptr noundef nonnull byval(%class.anon.215) align 8 %2, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !135
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 false, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !128 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !135
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i26 ], [ %i.ck, %.noexc2.i.i30 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !140 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !99
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  call void @__clang_call_terminate(ptr %i.cl) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !76 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.co, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend49

AfterCoroSuspend49:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.70 unwind label %bb.w

.from.66:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.70

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #32
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #36 ; 20 uses
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy, ptr %destroy.addr, align 8
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 8 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.126 ; 5 uses

.body.from.126:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1138
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !1138
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1138
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !1138
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !1139
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !1139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1140
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1140

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !1140
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !114, !noalias !1140
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !1140
  store ptr null, ptr %2, align 8, !tbaa !114, !noalias !1140
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !1140 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !1140
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !1140
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1140 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !1140
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !310    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !308  ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr %i.u, ptr %.spill.addr, align 8
  %.not51.not63 = icmp eq ptr %i.s, %i.u
  br i1 %.not51.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.sroa.041.064.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 5 uses
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.041.064 = phi ptr [ %i.bo, %bb.o ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  store ptr %.sroa.041.064, ptr %.sroa.041.064.spill.addr, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.041.064, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %AfterCoroSave

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !110
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !128 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !135
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.aj, %.from..lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc2.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ar = load i8, ptr %i.am, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.ao
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bc = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bc) #35
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !312
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #32
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !312 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !312 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i32 } %i.bh, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %.loopexit52

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #32 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #32
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %.from.104

bb.o:                                             ; preds = %bb.n, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !312
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !312
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.bo, %.reload
  br i1 %.not51.not, label %._crit_edge.from.._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.af

.from.104:                                        ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bq, %.from.104 ], [ %i.bp, %bb.p ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge.from.._crit_edge.loopexit:            ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !317
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !318
  %i.br = ptrtoint ptr %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.from.._crit_edge.loopexit
  %i.bs = phi ptr [ %.pre70, %._crit_edge.from.._crit_edge.loopexit ], [ null, %bb.e ] ; 2 uses
  %i.bt = phi i64 [ %i.br, %._crit_edge.from.._crit_edge.loopexit ], [ 0, %bb.e ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bt, %i.bv                    ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 8
  br i1 %i.bx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #32
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #31
          to label %bb.r unwind label %.loopexit52.from.115

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit52.from.115:                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #32
  br label %.loopexit52

bb.s:                                             ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.bw, 8
  br i1 %i.ca, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !318 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !317
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr %i.cc, i64 %i.ch)
          to label %bb.u unwind label %.loopexit52.from.113

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #31
          to label %bb.ag unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__cxa_free_exception(ptr nonnull %i.cb) #32
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  br label %.loopexit52

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #35
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.v
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !318 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !317 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !318
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !317
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !319
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cw) #34
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.l, %.loopexit52.from.110, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115
  %.213 = phi ptr [ %i.bz, %.loopexit52.from.115 ], [ %i.cl, %.loopexit52.from.111 ], [ %i.cj, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.bi, %bb.l ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #32
  %i.cx = call ptr @__cxa_begin_catch(ptr %.213) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.y
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4 ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.z, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.z:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.z
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !128 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !135
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !136 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.dh, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dz, %.noexc2.i.i36 ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !140 ; 2 uses
  %i.dp = load i8, ptr %i.dk, align 8             ; 2 uses
  %i.dq = trunc i8 %i.dp to i1                    ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8
  %i.ds = select i1 %i.dq, ptr %i.dr, ptr %i.dm
  %i.dt = load i64, ptr %i.dn, align 8
  %i.du = lshr i8 %i.dp, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = select i1 %i.dq, i64 %i.dt, i64 %i.dv
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !99
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !4

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.z
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.ea = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  call void @__clang_call_terminate(ptr %i.ea) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.eb = icmp slt i32 %i.da, 2
  br i1 %i.eb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i29, %bb.aa, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !76 ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  store ptr %i.ee, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.ed, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend91

AfterCoroSuspend91:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i1 true, ptr %index.addr144, align 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr nonnull %i.ee)
  br label %AfterCoroEnd

bb.ac:                                            ; preds = %.loopexit52
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.128 unwind label %bb.af

.from.124:                                        ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.128

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !99
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ad, %bb.ae
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91
  ret void

.body.from.128:                                   ; preds = %bb.ac, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.eh, %.from.124 ], [ %i.eg, %bb.ac ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #32
  br label %.body

.body:                                            ; preds = %.body.from.128, %.body.from.126, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.128 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.126 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %.merged20

bb.af:                                            ; preds = %bb.ac, %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #35
  unreachable

bb.ag:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !310    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !308  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !310
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !308
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !309
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #3

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.d = load ptr, ptr %0, align 8, !tbaa !310
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !309
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775776
  %i.n = ashr exact i64 %i.m, 4
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 576460752303423487 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 576460752303423487
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #31
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !76
  store i64 %i.v, ptr %i.s, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !76
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !97
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !308 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !310   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !76
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !76
  store ptr null, ptr %i.ag, align 8, !tbaa !76
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !76
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !76
  store ptr null, ptr %i.aj, align 8, !tbaa !1142
  store ptr null, ptr %i.ak, align 8, !tbaa !1143
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !97
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !97
  store ptr null, ptr %i.an, align 8, !tbaa !97
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1141

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !309
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !309
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !309
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !309
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !309
  store ptr %i.t, ptr %i.a, align 8, !tbaa !309
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #32
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #34
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.94) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef readonly byval(%class.anon.215) align 8 captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %5 = alloca %"struct.std::__1::coroutine_handle.8", align 8 ; 4 uses
  %6 = alloca %"class.std::__1::future", align 8  ; 4 uses
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #36 ; 12 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.spill.addr, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1154
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !1154
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1154
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !1154
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !1155
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !1155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1156
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.b unwind label %bb.d, !noalias !1156

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !1156
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !114, !noalias !1156
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !1156
  store ptr null, ptr %7, align 8, !tbaa !114, !noalias !1156
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !1156 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !1156
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !1156
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1156 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !1156
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !1156
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1156
  store ptr %3, ptr %.reload.addr76, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i2 0, ptr %index.addr80, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.a, ptr %5, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %4, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #35
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

.body:                                            ; preds = %.body.from.72, %.body.from.
  %.merged14 = phi { ptr, i32 } [ %i.c, %.body.from.72 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %.merged14
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr45 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.39 ; 5 uses

.body.from.39:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1173
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !1173
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1173
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !1173
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !1174
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !1174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1175
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %bb.b unwind label %bb.d, !noalias !1175

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !1175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !114, !noalias !1175
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !1175
  store ptr null, ptr %2, align 8, !tbaa !114, !noalias !1175
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !1175 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !1175
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !1175
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1175 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !1175
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1175
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1176, !nonnull !103, !align !186
  %i.u = load i64, ptr %1, align 8, !tbaa !302    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !303  ; 8 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !1178 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8        ; 4 uses
  %i.x = getelementptr i8, ptr %.val, i64 8
  %.val.val12 = load ptr, ptr %i.x, align 8       ; 4 uses
  %i.y = add i64 %i.u, 4                          ; 2 uses
  %.not1.i.i = icmp ugt i64 %i.y, %i.w
  br i1 %.not1.i.i, label %.preheader.i.i, label %.from..lr.ph.i.i

.from..lr.ph.i.i:                                 ; preds = %bb.e
  %.val.val.i.i = load ptr, ptr %.val.val, align 8, !tbaa !120 ; 4 uses
  %i.z = getelementptr i8, ptr %.val.val, i64 8
  %.val.val12.i.i = load i64, ptr %i.z, align 8, !tbaa !121 ; 4 uses
  %.val11.val.i.i = load ptr, ptr %.val.val12, align 8, !tbaa !117 ; 4 uses
  %i.aa = getelementptr i8, ptr %.val.val12, i64 8
  %.val11.val13.i.i = load i64, ptr %i.aa, align 8, !tbaa !118 ; 4 uses
  br label %.from.30

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i.from.
  %.0.lcssa.i.i = phi i64 [ %i.bb, %.preheader.i.i.from. ], [ %i.u, %bb.e ] ; 8 uses
  %i.ab = icmp ult i64 %.0.lcssa.i.i, %i.w
  br i1 %i.ab, label %.from..lr.ph4.i.i, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit"

.from..lr.ph4.i.i:                                ; preds = %.preheader.i.i
  %.val14.val.i.i = load ptr, ptr %.val.val, align 8, !tbaa !120 ; 6 uses
  %i.ac = getelementptr i8, ptr %.val.val, i64 8
  %.val14.val16.i.i = load i64, ptr %i.ac, align 8, !tbaa !121 ; 4 uses
  %.val15.val.i.i = load ptr, ptr %.val.val12, align 8, !tbaa !117 ; 6 uses
  %i.ad = getelementptr i8, ptr %.val.val12, i64 8
  %.val15.val17.i.i = load i64, ptr %i.ad, align 8, !tbaa !118 ; 4 uses
  %i.ae = sub nuw i64 %i.w, %.0.lcssa.i.i         ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.from.35.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.from..lr.ph4.i.i
  %ident.check = icmp ne i64 %.val15.val17.i.i, 1
  %ident.check55 = icmp ne i64 %.val14.val16.i.i, 1
  %i.af = or i1 %ident.check, %ident.check55
  br i1 %i.af, label %.from.35.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ag = shl i64 %.0.lcssa.i.i, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.val15.val.i.i, i64 %i.ag
  %i.ah = shl i64 %i.w, 2                         ; 2 uses
  %scevgep56 = getelementptr i8, ptr %.val15.val.i.i, i64 %i.ah
  %scevgep57 = getelementptr i8, ptr %.val14.val.i.i, i64 %i.ag
  %scevgep58 = getelementptr i8, ptr %.val14.val.i.i, i64 %i.ah
  %bound0 = icmp ult ptr %scevgep, %scevgep58
  %bound1 = icmp ult ptr %scevgep57, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.from.35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -4                      ; 3 uses
  %i.ai = add i64 %.0.lcssa.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %.0.lcssa.i.i, %index       ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.aj
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !144, !alias.scope !1179 ; 2 uses
  %i.al = fcmp une <4 x float> %wide.load, zeroinitializer
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.aj ; 2 uses
  %wide.load59 = load <4 x float>, ptr %i.am, align 4, !tbaa !144, !alias.scope !1180, !noalias !1179
  %i.an = fdiv <4 x float> %wide.load59, %wide.load
  %i.ao = select <4 x i1> %i.al, <4 x float> %i.an, <4 x float> zeroinitializer
  store <4 x float> %i.ao, ptr %i.am, align 4, !tbaa !144, !alias.scope !1180, !noalias !1179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit", label %.from.35.preheader

.from.35.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %.from..lr.ph4.i.i, %middle.block
  %.13.i.i.ph = phi i64 [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %vector.scevcheck ], [ %.0.lcssa.i.i, %.from..lr.ph4.i.i ], [ %i.ai, %middle.block ] ; 6 uses
  %i.aq = sub i64 %i.w, %.13.i.i.ph
  %.neg = add i64 %.13.i.i.ph, 1
  %xtraiter = and i64 %i.aq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.from.35.prol.loopexit, label %.from.35.prol

.from.35.prol:                                    ; preds = %.from.35.preheader
  %i.ar = mul i64 %.13.i.i.ph, %.val14.val16.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !144 ; 2 uses
  %i.au = fcmp une float %i.at, 0.000000e+00
  %i.av = mul i64 %.13.i.i.ph, %.val15.val17.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.av ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !144
  %i.ay = fdiv float %i.ax, %i.at
  %.sroa.speculated.i.i.i.prol = select i1 %i.au, float %i.ay, float 0.000000e+00
  store float %.sroa.speculated.i.i.i.prol, ptr %i.aw, align 4, !tbaa !144
  %i.az = add nuw i64 %.13.i.i.ph, 1
  br label %.from.35.prol.loopexit

.from.35.prol.loopexit:                           ; preds = %.from.35.prol, %.from.35.preheader
  %.13.i.i.unr = phi i64 [ %.13.i.i.ph, %.from.35.preheader ], [ %i.az, %.from.35.prol ]
  %i.ba = icmp eq i64 %i.w, %.neg
  br i1 %i.ba, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit", label %.from.35

.from.30:                                         ; preds = %.from.30, %.from..lr.ph.i.i
  %i.bb = phi i64 [ %i.y, %.from..lr.ph.i.i ], [ %i.cg, %.from.30 ] ; 3 uses
  %.02.i.i = phi i64 [ %i.u, %.from..lr.ph.i.i ], [ %i.bb, %.from.30 ] ; 5 uses
  %i.bc = mul i64 %.02.i.i, %.val.val12.i.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !144
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bf = add i64 %.02.i.i, 1                     ; 2 uses
  %i.bg = mul i64 %i.bf, %.val.val12.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !144
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.bi, i64 1
  %i.bj = add i64 %.02.i.i, 2                     ; 2 uses
  %i.bk = mul i64 %i.bj, %.val.val12.i.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !144
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i.i, float %i.bm, i64 2
  %i.bn = add i64 %.02.i.i, 3                     ; 2 uses
  %i.bo = mul i64 %i.bn, %.val.val12.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !144
  %.sroa.0.12.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i.i, float %i.bq, i64 3 ; 2 uses
  %i.br = fcmp une <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, zeroinitializer
  %i.bs = mul i64 %.02.i.i, %.val11.val13.i.i
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.bs ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !144
  %.sroa.0.0.vec.insert.i3.i.i.i = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bv = mul i64 %i.bf, %.val11.val13.i.i
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.bv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !144
  %.sroa.0.4.vec.insert.i4.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i3.i.i.i, float %i.bx, i64 1
  %i.by = mul i64 %i.bj, %.val11.val13.i.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.by ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !144
  %.sroa.0.8.vec.insert.i5.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i4.i.i.i, float %i.ca, i64 2
  %i.cb = mul i64 %i.bn, %.val11.val13.i.i
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.cb ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !144
  %.sroa.0.12.vec.insert.i6.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i5.i.i.i, float %i.cd, i64 3
  %i.ce = fdiv <4 x float> %.sroa.0.12.vec.insert.i6.i.i.i, %.sroa.0.12.vec.insert.i.i.i.i
  %i.cf = select <4 x i1> %i.br, <4 x float> %i.ce, <4 x float> zeroinitializer ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <4 x float> %i.cf, i64 0
  store float %.sroa.0.0.vec.extract.i.i.i.i, ptr %i.bt, align 4, !tbaa !144
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <4 x float> %i.cf, i64 1
  store float %.sroa.0.4.vec.extract.i.i.i.i, ptr %i.bw, align 4, !tbaa !144
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <4 x float> %i.cf, i64 2
  store float %.sroa.0.8.vec.extract.i.i.i.i, ptr %i.bz, align 4, !tbaa !144
  %.sroa.0.12.vec.extract.i.i.i.i = extractelement <4 x float> %i.cf, i64 3
  store float %.sroa.0.12.vec.extract.i.i.i.i, ptr %i.cc, align 4, !tbaa !144
  %i.cg = add i64 %i.bb, 4                        ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cg, %i.w
  br i1 %.not.i.i, label %.preheader.i.i.from., label %.from.30, !llvm.loop !1169

.preheader.i.i.from.:                             ; preds = %.from.30
  br label %.preheader.i.i, !llvm.loop !1169

.from.35:                                         ; preds = %.from.35.prol.loopexit, %.from.35
  %.13.i.i = phi i64 [ %i.cy, %.from.35 ], [ %.13.i.i.unr, %.from.35.prol.loopexit ] ; 4 uses
  %i.ch = mul i64 %.13.i.i, %.val14.val16.i.i
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !144 ; 2 uses
  %i.ck = fcmp une float %i.cj, 0.000000e+00
  %i.cl = mul i64 %.13.i.i, %.val15.val17.i.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !144
  %i.co = fdiv float %i.cn, %i.cj
  %.sroa.speculated.i.i.i = select i1 %i.ck, float %i.co, float 0.000000e+00
  store float %.sroa.speculated.i.i.i, ptr %i.cm, align 4, !tbaa !144
  %i.cp = add nuw i64 %.13.i.i, 1                 ; 2 uses
  %i.cq = mul i64 %i.cp, %.val14.val16.i.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !144 ; 2 uses
  %i.ct = fcmp une float %i.cs, 0.000000e+00
  %i.cu = mul i64 %i.cp, %.val15.val17.i.i
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.cu ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !144
  %i.cx = fdiv float %i.cw, %i.cs
  %.sroa.speculated.i.i.i.1 = select i1 %i.ct, float %i.cx, float 0.000000e+00
  store float %.sroa.speculated.i.i.i.1, ptr %i.cv, align 4, !tbaa !144
  %i.cy = add nuw i64 %.13.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cy, %i.w
  br i1 %exitcond.not.i.i.1, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit", label %.from.35, !llvm.loop !1170

"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit": ; preds = %.from.35.prol.loopexit, %.from.35, %middle.block, %.preheader.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr45)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit"
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #35
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit"
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = atomicrmw add ptr %i.dc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.de = icmp slt i32 %i.dd, 1
  br i1 %i.de, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !128 ; 7 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !135
  %i.di = and i32 %i.dh, 8
  %.not.i.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !136 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.dk, %i.dm
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.dk, %.from..lr.ph.i.i.i.i.i ], [ %i.ec, %.noexc2.i.i ] ; 2 uses
  %i.dr = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ds = load i8, ptr %i.dn, align 8             ; 2 uses
  %i.dt = trunc i8 %i.ds to i1                    ; 2 uses
  %i.du = load ptr, ptr %i.do, align 8
  %i.dv = select i1 %i.dt, ptr %i.du, ptr %i.dp
  %i.dw = load i64, ptr %i.dq, align 8
  %i.dx = lshr i8 %i.ds, 1
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = select i1 %i.dt, i64 %i.dw, i64 %i.dy
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !99
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr %i.dv, i64 %i.dz, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ec, %i.dm
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ed = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ed) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ee = icmp slt i32 %i.dd, 2
  br i1 %i.ee, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !76 ; 2 uses
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  store ptr %i.eh, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr46 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i1 false, ptr %index.addr46, align 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr nonnull %i.eh)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i13 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i13, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = atomicrmw add ptr %i.ek, i64 -1 acq_rel, align 8
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !99
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(24) %i.ej) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ej) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.39, %.body.from.
  %.merged10 = phi { ptr, i32 } [ %i.c, %.body.from.39 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  resume { ptr, i32 } %.merged10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.229", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future", align 8  ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.230, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33, !noalias !1191 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1191
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !99, !noalias !1191
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !99, !noalias !1191
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !76, !noalias !1191
  store i64 %i.g, ptr %i.f, align 8, !tbaa !76, !noalias !1191
  store ptr %i.d, ptr %i.e, align 16, !tbaa !323, !noalias !1191
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1191

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #32, !noalias !1191
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #32, !noalias !1191
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #34, !noalias !1191
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !326, !alias.scope !1192
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !327, !alias.scope !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1213, !range !187, !noundef !103
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN10moodycamel20LightweightSemaphore6signalEl.exit, label %bb.c

bb.b:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.c:                                             ; preds = %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr %i.d, ptr %9, align 8, !tbaa !326
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !327
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !326
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !327
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !334
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !337
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1214
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !338  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !339
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !334
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !334 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #35
  unreachable

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.ak, ptr noundef nonnull align 16 dereferenceable(5) %i.w, i64 5, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  br label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.am = invoke noundef ptr @_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE21__push_back_slow_pathIS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 16 dereferenceable(53) %8)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i unwind label %bb.m

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i: ; preds = %bb.g, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i
  %.0.i.i = phi ptr [ %i.al, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i ], [ %i.am, %bb.g ] ; 3 uses
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !338
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !340 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !334 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
  %.sink2.i.i.i = phi i64 [ 32, %bb.h ], [ 40, %bb.i ]
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sink2.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #32, !inline_history !45
  br label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit

_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit:         ; preds = %.sink.split.i.i.i, %bb.i
  %i.ax = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev.exit

bb.j:                                             ; preds = %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit
  %i.az = load ptr, ptr %i.b, align 16, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !1187
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev.exit

_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev.exit: ; preds = %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #32
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 208
end_hunk_2
begin_hunk_3_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.ac unwind label %.thread185

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.138.sink.split

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.av = load i8, ptr %8, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %.split, label %.from.138.sink.split

.thread185:                                       ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ay = load i8, ptr %8, align 8
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135

.split:                                           ; preds = %.thread185, %bb.i
  %i.ba = phi { ptr, i32 } [ %i.ax, %.thread185 ], [ %i.au, %bb.i ] ; 2 uses
  %.0187 = phi i1 [ false, %.thread185 ], [ true, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bd = load i64, ptr %8, align 8
  %i.be = and i64 %i.bd, -2
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %.0187, label %.from.138, label %.from.157

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135: ; preds = %.thread185
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.157

.from.138.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.at, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.138

.from.138:                                        ; preds = %.from.138.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.ba, %.split ], [ %.pn4284.ph, %.from.138.sink.split ]
  call void @__cxa_free_exception(ptr %i.ap) #32
  br label %.from.157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.bf = phi i64 [ %i.ao, %bb.f ], [ %i.ai, %.lr.ph.preheader ]
  %i.bg = phi i64 [ %i.am, %bb.f ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.bh = phi i64 [ %i.al, %bb.f ], [ 0, %.lr.ph.preheader ]
  %i.bi = add i64 %i.bf, %2
  %i.bj = add i64 %i.bh, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store i64 %i.bj, ptr %10, align 8, !tbaa !346
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !347
  store ptr %.reload.addr180, ptr %i.ad, align 8, !tbaa !76
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.133

bb.j:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !308 ; 6 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !309
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %i.bo = load i64, ptr %9, align 8, !tbaa !76
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !76
  %i.bp = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !76
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !97
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !97
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bt = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr179, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.130

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bs, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bt, %bb.k ]
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !308
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %exitcond.not = icmp eq i64 %i.bg, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1252

.from.133:                                        ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.142

.from.130:                                        ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  br label %.from.142

.from.142:                                        ; preds = %.from.133, %.from.130
  %.pn43 = phi { ptr, i32 } [ %i.bv, %.from.130 ], [ %i.bu, %.from.133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.from.157

.from.157:                                        ; preds = %.from.142, %.from.138, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.142 ], [ %.pn4284, %.from.138 ], [ %i.ax, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135 ], [ %i.ba, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #32
  br label %.from.159

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load atomic i32, ptr %i.by acquire, align 4
  %i.ca = icmp slt i32 %i.bz, 2
  br i1 %i.ca, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !128 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !135
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !136 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc2.i.i ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.cm
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.from..loopexit.split-lp.i.i:                     ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dd) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 false, ptr %index.addr183, align 8
  %i.de = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.de, label %AfterCoroEnd, label %bb.q

.from.151:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.159

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.148, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.148

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %i.dj = load ptr, ptr %.reload.addr179, align 8, !tbaa !310 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !308 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dl, %bb.s ]
  %i.dm = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dm) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !310
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dn = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dj, %bb.s ] ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !308
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !309
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.ds) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #35
  unreachable

.from.148:                                        ; preds = %bb.r, %.thread
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.from.159

.from.159:                                        ; preds = %.from.148, %.from.151, %.from.154, %.from.157
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %.from.154 ], [ %.pn43.pn, %.from.157 ], [ %i.dv, %.from.148 ], [ %i.df, %.from.151 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dw = call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.159
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw add ptr %i.dy, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !128 ; 7 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !135
  %i.ee = and i32 %i.ed, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !136 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 33
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.eg, %.from..lr.ph.i.i.i.i.i65 ], [ %i.ey, %.noexc2.i.i69 ] ; 2 uses
  %i.en = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !140 ; 2 uses
  %i.eo = load i8, ptr %i.ej, align 8             ; 2 uses
  %i.ep = trunc i8 %i.eo to i1                    ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8
  %i.er = select i1 %i.ep, ptr %i.eq, ptr %i.el
  %i.es = load i64, ptr %i.em, align 8
  %i.et = lshr i8 %i.eo, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = select i1 %i.ep, i64 %i.es, i64 %i.eu
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !99
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr %i.er, i64 %i.ev, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.ey, %i.ei
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.ez = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  call void @__clang_call_terminate(ptr %i.ez) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fa = icmp slt i32 %i.dz, 2
  br i1 %i.fa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !76 ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr               ; 3 uses
  store ptr %i.fd, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.fc, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend110

AfterCoroSuspend110:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr184 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 true, ptr %index.addr184, align 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr nonnull %i.fd)
  br label %AfterCoroEnd

bb.y:                                             ; preds = %.from.159
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.175 unwind label %bb.ab

.from.168:                                        ; preds = %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.175

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 acq_rel, align 8
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !99
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend110, %AfterCoroSave
  ret void

.body.from.175:                                   ; preds = %bb.y, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.fg, %.from.168 ], [ %i.ff, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr182) #32
  br label %.body

.body:                                            ; preds = %.body.from.175, %.body.from.172, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.175 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.172 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #35
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1271
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !1271
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1271
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !1271
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !1272
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !1272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1273
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1273

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !1273
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !114, !noalias !1273
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !1273
  store ptr null, ptr %4, align 8, !tbaa !114, !noalias !1273
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !1273 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !1273
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !1273
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1273 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !1273
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1273
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1273
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr, ptr nonnull align 1 poison, ptr noundef nonnull byval(%class.anon.317) align 8 %2, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !135
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #35
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 false, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !128 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !135
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i26 ], [ %i.ck, %.noexc2.i.i30 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !140 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !99
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  call void @__clang_call_terminate(ptr %i.cl) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !76 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.co, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend49

AfterCoroSuspend49:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.70 unwind label %bb.w

.from.66:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.70

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #32
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef readonly byval(%class.anon.317) align 8 captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %5 = alloca %"struct.std::__1::coroutine_handle.8", align 8 ; 4 uses
  %6 = alloca %"class.std::__1::future", align 8  ; 4 uses
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #36 ; 12 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.spill.addr, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !1284
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1284
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !1284
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !1285
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !1285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1286
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.b unwind label %bb.d, !noalias !1286

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !1286
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !114, !noalias !1286
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !1286
  store ptr null, ptr %7, align 8, !tbaa !114, !noalias !1286
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !1286 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !1286
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !1286
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1286 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !1286
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1286
  store ptr %3, ptr %.reload.addr76, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i2 0, ptr %index.addr80, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.a, ptr %5, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %4, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #35
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

.body:                                            ; preds = %.body.from.72, %.body.from.
  %.merged14 = phi { ptr, i32 } [ %i.c, %.body.from.72 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %.merged14
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr45 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.39 ; 5 uses

.body.from.39:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1303
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !99, !noalias !1303
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1303
  store i32 2, ptr %i.g, align 8, !tbaa !107, !noalias !1303
  store ptr %i.f, ptr %i.d, align 8, !tbaa !110, !alias.scope !1304
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !111, !alias.scope !1304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1305
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %bb.b unwind label %bb.d, !noalias !1305

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76, !alias.scope !1305
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !114, !noalias !1305
  store ptr %i.j, ptr %i.i, align 8, !tbaa !114, !alias.scope !1305
  store ptr null, ptr %2, align 8, !tbaa !114, !noalias !1305
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !111, !noalias !1305 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !76, !noalias !1305
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !76, !alias.scope !1305
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1305 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35, !noalias !1305
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1305
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1306, !nonnull !103, !align !186
  %i.u = load i64, ptr %1, align 8, !tbaa !346    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !347  ; 8 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !1308 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8        ; 4 uses
  %i.x = getelementptr i8, ptr %.val, i64 8
  %.val.val12 = load ptr, ptr %i.x, align 8       ; 4 uses
  %i.y = add i64 %i.u, 4                          ; 2 uses
  %.not1.i.i = icmp ugt i64 %i.y, %i.w
  br i1 %.not1.i.i, label %.preheader.i.i, label %.from..lr.ph.i.i

.from..lr.ph.i.i:                                 ; preds = %bb.e
  %.val.val.i.i = load ptr, ptr %.val.val, align 8, !tbaa !117 ; 4 uses
  %i.z = getelementptr i8, ptr %.val.val, i64 8
  %.val.val12.i.i = load i64, ptr %i.z, align 8, !tbaa !118 ; 4 uses
  %.val11.val.i.i = load ptr, ptr %.val.val12, align 8, !tbaa !120 ; 4 uses
  %i.aa = getelementptr i8, ptr %.val.val12, i64 8
  %.val11.val13.i.i = load i64, ptr %i.aa, align 8, !tbaa !121 ; 4 uses
  br label %.from.30

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i.from.
  %.0.lcssa.i.i = phi i64 [ %i.bb, %.preheader.i.i.from. ], [ %i.u, %bb.e ] ; 8 uses
  %i.ab = icmp ult i64 %.0.lcssa.i.i, %i.w
  br i1 %i.ab, label %.from..lr.ph4.i.i, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit"

.from..lr.ph4.i.i:                                ; preds = %.preheader.i.i
  %.val14.val.i.i = load ptr, ptr %.val.val, align 8, !tbaa !117 ; 6 uses
  %i.ac = getelementptr i8, ptr %.val.val, i64 8
  %.val14.val16.i.i = load i64, ptr %i.ac, align 8, !tbaa !118 ; 4 uses
  %.val15.val.i.i = load ptr, ptr %.val.val12, align 8, !tbaa !120 ; 6 uses
  %i.ad = getelementptr i8, ptr %.val.val12, i64 8
  %.val15.val17.i.i = load i64, ptr %i.ad, align 8, !tbaa !121 ; 4 uses
  %i.ae = sub nuw i64 %i.w, %.0.lcssa.i.i         ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 12
  br i1 %min.iters.check, label %.from.35.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.from..lr.ph4.i.i
  %ident.check = icmp ne i64 %.val14.val16.i.i, 1
  %ident.check55 = icmp ne i64 %.val15.val17.i.i, 1
  %i.af = or i1 %ident.check, %ident.check55
  br i1 %i.af, label %.from.35.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ag = shl i64 %.0.lcssa.i.i, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.val14.val.i.i, i64 %i.ag
  %i.ah = shl i64 %i.w, 2                         ; 2 uses
  %scevgep56 = getelementptr i8, ptr %.val14.val.i.i, i64 %i.ah
  %scevgep57 = getelementptr i8, ptr %.val15.val.i.i, i64 %i.ag
  %scevgep58 = getelementptr i8, ptr %.val15.val.i.i, i64 %i.ah
  %bound0 = icmp ult ptr %scevgep, %scevgep58
  %bound1 = icmp ult ptr %scevgep57, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.from.35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ai = add i64 %.0.lcssa.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %.0.lcssa.i.i, %index       ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !144, !alias.scope !1309, !noalias !1310
  %wide.load59 = load <4 x float>, ptr %i.al, align 4, !tbaa !144, !alias.scope !1309, !noalias !1310
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.aj ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load60 = load <4 x float>, ptr %i.am, align 4, !tbaa !144, !alias.scope !1310
  %wide.load61 = load <4 x float>, ptr %i.an, align 4, !tbaa !144, !alias.scope !1310
  %i.ao = fmul <4 x float> %wide.load, %wide.load60
  %i.ap = fmul <4 x float> %wide.load59, %wide.load61
  store <4 x float> %i.ao, ptr %i.ak, align 4, !tbaa !144, !alias.scope !1309, !noalias !1310
  store <4 x float> %i.ap, ptr %i.al, align 4, !tbaa !144, !alias.scope !1309, !noalias !1310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit", label %.from.35.preheader

.from.35.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %.from..lr.ph4.i.i, %middle.block
  %.13.i.i.ph = phi i64 [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %vector.scevcheck ], [ %.0.lcssa.i.i, %.from..lr.ph4.i.i ], [ %i.ai, %middle.block ] ; 6 uses
  %i.ar = sub i64 %i.w, %.13.i.i.ph
  %.neg = add i64 %.13.i.i.ph, 1
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.from.35.prol.loopexit, label %.from.35.prol

.from.35.prol:                                    ; preds = %.from.35.preheader
  %i.as = mul i64 %.13.i.i.ph, %.val14.val16.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !144
  %i.av = mul i64 %.13.i.i.ph, %.val15.val17.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !144
  %i.ay = fmul float %i.au, %i.ax
  store float %i.ay, ptr %i.at, align 4, !tbaa !144
  %i.az = add nuw i64 %.13.i.i.ph, 1
  br label %.from.35.prol.loopexit

.from.35.prol.loopexit:                           ; preds = %.from.35.prol, %.from.35.preheader
  %.13.i.i.unr = phi i64 [ %.13.i.i.ph, %.from.35.preheader ], [ %i.az, %.from.35.prol ]
  %i.ba = icmp eq i64 %i.w, %.neg
  br i1 %i.ba, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit", label %.from.35

.from.30:                                         ; preds = %.from.30, %.from..lr.ph.i.i
  %i.bb = phi i64 [ %i.y, %.from..lr.ph.i.i ], [ %i.ce, %.from.30 ] ; 3 uses
  %.02.i.i = phi i64 [ %i.u, %.from..lr.ph.i.i ], [ %i.bb, %.from.30 ] ; 5 uses
  %i.bc = mul i64 %.02.i.i, %.val.val12.i.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bc ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !144
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bf = add i64 %.02.i.i, 1                     ; 2 uses
  %i.bg = mul i64 %i.bf, %.val.val12.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bg ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !144
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.bi, i64 1
  %i.bj = add i64 %.02.i.i, 2                     ; 2 uses
  %i.bk = mul i64 %i.bj, %.val.val12.i.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bk ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !144
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i.i, float %i.bm, i64 2
  %i.bn = add i64 %.02.i.i, 3                     ; 2 uses
  %i.bo = mul i64 %i.bn, %.val.val12.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !144
  %.sroa.0.12.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i.i, float %i.bq, i64 3
  %i.br = mul i64 %.02.i.i, %.val11.val13.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !144
  %.sroa.0.0.vec.insert.i3.i.i.i = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.bu = mul i64 %i.bf, %.val11.val13.i.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !144
  %.sroa.0.4.vec.insert.i4.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i3.i.i.i, float %i.bw, i64 1
  %i.bx = mul i64 %i.bj, %.val11.val13.i.i
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !144
  %.sroa.0.8.vec.insert.i5.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i4.i.i.i, float %i.bz, i64 2
  %i.ca = mul i64 %i.bn, %.val11.val13.i.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val11.val.i.i, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !144
  %.sroa.0.12.vec.insert.i6.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i5.i.i.i, float %i.cc, i64 3
  %i.cd = fmul <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, %.sroa.0.12.vec.insert.i6.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <4 x float> %i.cd, i64 0
  store float %.sroa.0.0.vec.extract.i.i.i.i, ptr %i.bd, align 4, !tbaa !144
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <4 x float> %i.cd, i64 1
  store float %.sroa.0.4.vec.extract.i.i.i.i, ptr %i.bh, align 4, !tbaa !144
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <4 x float> %i.cd, i64 2
  store float %.sroa.0.8.vec.extract.i.i.i.i, ptr %i.bl, align 4, !tbaa !144
  %.sroa.0.12.vec.extract.i.i.i.i = extractelement <4 x float> %i.cd, i64 3
  store float %.sroa.0.12.vec.extract.i.i.i.i, ptr %i.bp, align 4, !tbaa !144
  %i.ce = add i64 %i.bb, 4                        ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ce, %i.w
  br i1 %.not.i.i, label %.preheader.i.i.from., label %.from.30, !llvm.loop !1299

.preheader.i.i.from.:                             ; preds = %.from.30
  br label %.preheader.i.i, !llvm.loop !1299

.from.35:                                         ; preds = %.from.35.prol.loopexit, %.from.35
  %.13.i.i = phi i64 [ %i.cu, %.from.35 ], [ %.13.i.i.unr, %.from.35.prol.loopexit ] ; 4 uses
  %i.cf = mul i64 %.13.i.i, %.val14.val16.i.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !144
  %i.ci = mul i64 %.13.i.i, %.val15.val17.i.i
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !144
  %i.cl = fmul float %i.ch, %i.ck
  store float %i.cl, ptr %i.cg, align 4, !tbaa !144
  %i.cm = add nuw i64 %.13.i.i, 1                 ; 2 uses
  %i.cn = mul i64 %i.cm, %.val14.val16.i.i
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val14.val.i.i, i64 %i.cn ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !144
  %i.cq = mul i64 %i.cm, %.val15.val17.i.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val15.val.i.i, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !144
  %i.ct = fmul float %i.cp, %i.cs
  store float %i.ct, ptr %i.co, align 4, !tbaa !144
  %i.cu = add nuw i64 %.13.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cu, %i.w
  br i1 %exitcond.not.i.i.1, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit", label %.from.35, !llvm.loop !1300

"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit": ; preds = %.from.35.prol.loopexit, %.from.35, %middle.block, %.preheader.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr45)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit"
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #35
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iENKUlmmE_clEmm.exit"
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = atomicrmw add ptr %i.cy, i32 -1 acq_rel, align 4 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !128 ; 7 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !135
  %i.de = and i32 %i.dd, 8
  %.not.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !136 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.dg, %i.di
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.dg, %.from..lr.ph.i.i.i.i.i ], [ %i.dy, %.noexc2.i.i ] ; 2 uses
  %i.dn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.do = load i8, ptr %i.dj, align 8             ; 2 uses
  %i.dp = trunc i8 %i.do to i1                    ; 2 uses
  %i.dq = load ptr, ptr %i.dk, align 8
  %i.dr = select i1 %i.dp, ptr %i.dq, ptr %i.dl
  %i.ds = load i64, ptr %i.dm, align 8
  %i.dt = lshr i8 %i.do, 1
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = select i1 %i.dp, i64 %i.ds, i64 %i.du
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !99
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr %i.dr, i64 %i.dv, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dy, %i.di
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.dz = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dz) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ea = icmp slt i32 %i.cz, 2
  br i1 %i.ea, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !76 ; 2 uses
  %i.ed = inttoptr i64 %i.ec to ptr               ; 3 uses
  store ptr %i.ed, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr46 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i1 false, ptr %index.addr46, align 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr nonnull %i.ed)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ef = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %.not.i.i13 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i13, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = atomicrmw add ptr %i.eg, i64 -1 acq_rel, align 8
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !99
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(24) %i.ef) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ef) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.39, %.body.from.
  %.merged10 = phi { ptr, i32 } [ %i.c, %.body.from.39 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  resume { ptr, i32 } %.merged10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIiLm2EEES6_S4_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %8 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.320", align 16 ; 10 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !135
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !1318
  store ptr %4, ptr %11, align 16, !tbaa !58, !noalias !1318
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm2EEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.d, align 8, !tbaa !58, !noalias !1318
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %5, ptr %i.e, align 16, !tbaa !58, !noalias !1318
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm2EEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.f, align 8, !tbaa !58, !noalias !1318
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %6, ptr %i.g, align 16, !tbaa !58, !noalias !1318
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm2EEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.h, align 8, !tbaa !58, !noalias !1318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !1319
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !1319
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.j, align 8, !tbaa !66, !noalias !1319
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store ptr %i.l, ptr %10, align 8, !tbaa !67, !noalias !1319
  store i64 500, ptr %i.i, align 8, !tbaa !68, !noalias !1319
  %i.m = icmp eq i64 %3, 2
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %2, align 1
  %i.o = icmp ne i16 %i.n, 32123
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %11, align 16, !tbaa !58, !noalias !1319 ; 2 uses
  %i.r = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.s = lshr i128 %.sroa.0.0.copyload.sink66.i, 64
  %i.t = trunc nuw i128 %i.s to i64
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.r to ptr
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i.i = inttoptr i64 %i.t to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1319
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1319
  store ptr %10, ptr %8, align 8, !tbaa !73, !noalias !1319
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !noalias !1319
  invoke void %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i.i(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc12 unwind label %bb.j, !inline_history !1320

.noexc12:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1319
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !1319
  store ptr %2, ptr %9, align 8, !tbaa !62, !noalias !1319
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !64, !noalias !1319
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !71, !noalias !1319
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %10, ptr %i.w, align 8, !tbaa !73, !noalias !1319
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 4095, ptr %i.x, align 8, !tbaa !75, !noalias !1319
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %11, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !58, !noalias !1319
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr null, ptr %i.y, align 8, !tbaa !76, !noalias !1319
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %.noexc13 unwind label %bb.j

.noexc13:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !1319
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %.noexc13, %.noexc12
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.z = load i64, ptr %i.k, align 8, !tbaa !77, !noalias !1322 ; 8 uses
  %i.aa = icmp ult i64 %i.z, -9
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load ptr, ptr %10, align 8, !tbaa !67, !noalias !1322
  %i.ac = icmp ult i64 %i.z, 23
  br i1 %i.ac, label %bb.f, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.ad = or i64 %i.z, 7                          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 23
  %i.af = add nuw i64 %i.ad, 1
  %i.ag = select i1 %i.ae, i64 25, i64 %i.af      ; 2 uses
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #33
          to label %.noexc.i unwind label %bb.j, !noalias !1319 ; 2 uses

.noexc.i:                                         ; preds = %.thread.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !58, !alias.scope !1322
  %i.aj = or i64 %i.ag, 1
  store i64 %i.aj, ptr %12, align 8, !alias.scope !1322
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.z, ptr %i.ak, align 8, !tbaa !58, !alias.scope !1322
  br label %bb.g

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.al = trunc nuw nsw i64 %i.z to i8
  %i.am = shl nuw nsw i8 %i.al, 1
  store i8 %i.am, ptr %12, align 8, !alias.scope !1322
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i
  %.017.i.i.i.i = phi ptr [ %i.ah, %.noexc.i ], [ %i.an, %bb.f ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.ab, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018.i.i.i.i = phi ptr [ %i.an, %bb.f ], [ %.017.i.i.i.i, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.z
  store i8 0, ptr %i.ao, align 1, !tbaa !58
  %i.ap = load ptr, ptr %10, align 8, !tbaa !67, !noalias !1319 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.l
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ap) #32, !noalias !1319
  br label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.j:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %10, align 8, !tbaa !67, !noalias !1319 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ar, %i.l
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ar) #32, !noalias !1319
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.cf, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !1319
  br label %common.resume

_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !1319
end_hunk_3
begin_hunk_4_@_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIiLm2EEES6_S4_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_:bb.a

_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit, %bb.l, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ca = phi i8 [ %.pre, %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit ], [ %i.as, %bb.l ], [ %i.as, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit ]
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.n:                                             ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.cd = load i64, ptr %12, align 8
  %i.ce = and i64 %i.cd, -2
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.ce) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.p:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load i8, ptr %12, align 8
  %i.ch = trunc i8 %i.cg to i1
  br i1 %i.ch, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.cj = load i64, ptr %12, align 8
  %i.ck = and i64 %i.cj, -2
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.ck) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %common.resume
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #0 personality ptr @__gxx_personality_v0 {
resume.0:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.041.064.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %index.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.j
  store ptr %i.at, ptr %.sroa.041.064.reload.addr136, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !135
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !136  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.o, %.from..lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc2.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !99
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.from..loopexit.split-lp.i.i:                     ; preds = %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #35
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !312
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #32
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !312 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !312 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #32 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #32
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !312 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !312
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.ac

.from.104:                                        ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %.from.104 ], [ %i.au, %bb.k ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !317
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !318 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #32
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #31
          to label %bb.m unwind label %.loopexit52.from.115

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit52.from.115:                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #32
  br label %.loopexit52

bb.n:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.ay, 8
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !318 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !317
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.be, i64 %i.bj)
          to label %bb.p unwind label %.loopexit52.from.113

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #31
          to label %bb.ad unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #32
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  br label %.loopexit52

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.q
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !318 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !317 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !318
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !317
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !319
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #34
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.g, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115, %.loopexit52.from.110
  %.213 = phi ptr [ %i.bb, %.loopexit52.from.115 ], [ %i.bn, %.loopexit52.from.111 ], [ %i.bl, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.an, %bb.g ]
  tail call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #32
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.213) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !110
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.u:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !128 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !135
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !136 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dc, %.noexc2.i.i36 ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !140 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !4

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dc, %i.cm
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.de = icmp slt i32 %i.cd, 2
  br i1 %i.de, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %bb.v, %.noexc.i.i29
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !110
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !76 ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  store ptr %i.dh, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.dg, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i1 true, ptr %index.addr143, align 8
  %i.di = load ptr, ptr %i.dh, align 8
  musttail call void %i.di(ptr nonnull %i.dh)
  ret void

bb.y:                                             ; preds = %.loopexit52
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

.from.124:                                        ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !111 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !99
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aa, %bb.z, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.y, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.dk, %.from.124 ], [ %i.dj, %bb.y ]
  store ptr null, ptr %0, align 8
  store i1 true, ptr %index.addr143, align 8
  resume { ptr, i32 } %.pn18

bb.ac:                                            ; preds = %bb.y, %bb.k
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  tail call void @__clang_call_terminate(ptr %i.du) #35
  unreachable

bb.ad:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #5 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1323

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !318 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !318
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !317
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !319
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %resume.entry
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111  ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.l, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #29 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #30 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i13 = icmp eq ptr %i.b, null
  br i1 %.not.i.i13, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr45 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.resume"(ptr noundef nonnull align 8 dereferenceable(104) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend49, !prof !348

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr)
          to label %bb.a unwind label %.from.62

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave47

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread33.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !135
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread33.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !136  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not12.i.i.i.i.i, label %.thread33.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.p, %.from..lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc2.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread33.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

.from..loopexit.split-lp.i.i:                     ; preds = %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

bb.e:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #35
  unreachable

AfterCoroSave47:                                  ; preds = %bb.a
  store i2 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %0) #32
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend49

.from.62:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend49:                               ; preds = %resume.entry, %AfterCoroSave47
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread33, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend49
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread33.sink.split unwind label %.from.60, !inline_history !5

.thread33.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !142
  br label %.thread33

.thread33:                                        ; preds = %.thread33.sink.split, %AfterCoroSuspend49
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.60

bb.g:                                             ; preds = %.thread33
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

.from.60:                                         ; preds = %bb.f, %.thread33
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %bb.i

bb.i:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.60 ], [ %i.ak, %.from.62 ]
  %.07 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.07) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i18

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i22 unwind label %.from..loopexit.split-lp.i.i19

.noexc.i.i22:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !128 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !135
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i23 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i23, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i24 = icmp eq ptr %i.bc, %i.be
  br i1 %.not12.i.i.i.i.i24, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i25

.from..lr.ph.i.i.i.i.i25:                         ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  br label %.from..noexc2.i.i29

.from..noexc2.i.i29:                              ; preds = %.noexc2.i.i29, %.from..lr.ph.i.i.i.i.i25
  %.sroa.09.013.i.i.i.i.i26 = phi ptr [ %i.bc, %.from..lr.ph.i.i.i.i.i25 ], [ %i.bu, %.noexc2.i.i29 ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i26, align 8, !tbaa !140 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !99
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i29 unwind label %.from..loopexit.i.i27, !inline_history !4

.noexc2.i.i29:                                    ; preds = %.from..noexc2.i.i29
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i26, i64 16 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i30, label %_ZN3tev5Latch9countDownEv.exit.i18, label %.from..noexc2.i.i29

.from..loopexit.i.i27:                            ; preds = %.from..noexc2.i.i29
  %lpad.loopexit.i.i28 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i19:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i20 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i19, %.from..loopexit.i.i27
  %lpad.phi.i.i21 = phi { ptr, i32 } [ %lpad.loopexit.i.i28, %.from..loopexit.i.i27 ], [ %lpad.loopexit.split-lp.i.i20, %.from..loopexit.split-lp.i.i19 ]
  %i.bv = extractvalue { ptr, i32 } %lpad.phi.i.i21, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i18:               ; preds = %.noexc2.i.i29, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %bb.l, %.noexc.i.i22
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !76 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr76, align 8
  %.not.i31 = icmp eq i64 %i.by, 0
  br i1 %.not.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  musttail call void %i.ca(ptr nonnull %i.bz)
  ret void

bb.o:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

.from.70:                                         ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave47
  ret void

bb.r:                                             ; preds = %bb.o, %.from.70
  %.pn12 = phi { ptr, i32 } [ %i.cc, %.from.70 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn12

bb.s:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !349

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !135
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i26 ], [ %i.aj, %.noexc2.i.i30 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !140 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.an = load i64, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.an, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.66:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.ar, %.from.66 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel13divideByAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !350

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr178, align 16, !tbaa !142 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr178, align 16, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.d = load ptr, ptr %.reload.addr179, align 8, !tbaa !310 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !308 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !310
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !308
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !309
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !135
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.ab, %.from..lr.ph.i.i.i.i.i65 ], [ %i.at, %.noexc2.i.i69 ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !140 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.au = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  tail call void @__clang_call_terminate(ptr %i.au) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !76 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  store ptr %i.ay, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.ax, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr184 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr184, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  musttail call void %i.az(ptr nonnull %i.ay)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.168:                                        ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !111 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !99
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.bb, %.from.168 ], [ %i.ba, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn44

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !351

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.a = load ptr, ptr %.reload.addr179, align 8, !tbaa !310 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !308 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !310
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !308
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !309
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !111 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.013 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.013) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.71

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i24

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i28 unwind label %.from..loopexit.split-lp.i.i25

.noexc.i.i28:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !135
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i29 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i29, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i28
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i30 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i30, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i31

.from..lr.ph.i.i.i.i.i31:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i35

.from..noexc2.i.i35:                              ; preds = %.noexc2.i.i35, %.from..lr.ph.i.i.i.i.i31
  %.sroa.09.013.i.i.i.i.i32 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i31 ], [ %i.aj, %.noexc2.i.i35 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i32, align 8, !tbaa !140 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i35 unwind label %.from..loopexit.i.i33, !inline_history !4

.noexc2.i.i35:                                    ; preds = %.from..noexc2.i.i35
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i36, label %_ZN3tev5Latch9countDownEv.exit.i24, label %.from..noexc2.i.i35

.from..loopexit.i.i33:                            ; preds = %.from..noexc2.i.i35
  %lpad.loopexit.i.i34 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i25:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i26 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i25, %.from..loopexit.i.i33
  %lpad.phi.i.i27 = phi { ptr, i32 } [ %lpad.loopexit.i.i34, %.from..loopexit.i.i33 ], [ %lpad.loopexit.split-lp.i.i26, %.from..loopexit.split-lp.i.i25 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i27, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i24:               ; preds = %.noexc2.i.i35, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i24, %bb.h, %.noexc.i.i28
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.an = load i64, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i37 = icmp eq i64 %i.an, 0
  br i1 %.not.i37, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i1 true, ptr %index.addr81, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.71:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i24, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.71
  %.pn18 = phi { ptr, i32 } [ %i.ar, %.from.71 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn18

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(96) %0) #5 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !350

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev7Channel13divideByAsyncERKS0_i.resume(ptr noundef nonnull align 8 dereferenceable(128) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr103 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i37, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr103)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.3 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.3) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.94

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i40

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i44 unwind label %.from..loopexit.split-lp.i.i41

.noexc.i.i44:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !135
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i45 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i45, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i44
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i46 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i46, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i47

.from..lr.ph.i.i.i.i.i47:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i51

.from..noexc2.i.i51:                              ; preds = %.noexc2.i.i51, %.from..lr.ph.i.i.i.i.i47
  %.sroa.09.013.i.i.i.i.i48 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i47 ], [ %i.aj, %.noexc2.i.i51 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i48, align 8, !tbaa !140 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i51 unwind label %.from..loopexit.i.i49, !inline_history !4

.noexc2.i.i51:                                    ; preds = %.from..noexc2.i.i51
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i48, i64 16 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i52, label %_ZN3tev5Latch9countDownEv.exit.i40, label %.from..noexc2.i.i51

.from..loopexit.i.i49:                            ; preds = %.from..noexc2.i.i51
  %lpad.loopexit.i.i50 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i41:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i42 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i41, %.from..loopexit.i.i49
  %lpad.phi.i.i43 = phi { ptr, i32 } [ %lpad.loopexit.i.i50, %.from..loopexit.i.i49 ], [ %lpad.loopexit.split-lp.i.i42, %.from..loopexit.split-lp.i.i41 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i43, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i40:               ; preds = %.noexc2.i.i51, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i40, %bb.h, %.noexc.i.i44
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.an = load i64, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i53 = icmp eq i64 %i.an, 0
  br i1 %.not.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr105 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i1 true, ptr %index.addr105, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.94:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i40, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.94
  %.pn18 = phi { ptr, i32 } [ %i.ar, %.from.94 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn18

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev7Channel13divideByAsyncERKS0_i.destroy(ptr noundef nonnull align 8 dereferenceable(128) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !352

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr103 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #29 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #30 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i13 = icmp eq ptr %i.b, null
  br i1 %.not.i.i13, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr45 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.resume"(ptr noundef nonnull align 8 dereferenceable(104) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend49, !prof !348

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr)
          to label %bb.a unwind label %.from.62

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave47

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread33.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !135
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread33.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !136  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not12.i.i.i.i.i, label %.thread33.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.p, %.from..lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc2.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread33.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

.from..loopexit.split-lp.i.i:                     ; preds = %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

bb.e:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #35
  unreachable

AfterCoroSave47:                                  ; preds = %bb.a
  store i2 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %0) #32
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend49

.from.62:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend49:                               ; preds = %resume.entry, %AfterCoroSave47
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread33, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend49
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread33.sink.split unwind label %.from.60, !inline_history !5

.thread33.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !142
  br label %.thread33

.thread33:                                        ; preds = %.thread33.sink.split, %AfterCoroSuspend49
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.60

bb.g:                                             ; preds = %.thread33
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

.from.60:                                         ; preds = %bb.f, %.thread33
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %bb.i

bb.i:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.60 ], [ %i.ak, %.from.62 ]
  %.07 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.07) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i18

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i22 unwind label %.from..loopexit.split-lp.i.i19

.noexc.i.i22:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !128 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !135
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i23 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i23, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i24 = icmp eq ptr %i.bc, %i.be
  br i1 %.not12.i.i.i.i.i24, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i25

.from..lr.ph.i.i.i.i.i25:                         ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  br label %.from..noexc2.i.i29

.from..noexc2.i.i29:                              ; preds = %.noexc2.i.i29, %.from..lr.ph.i.i.i.i.i25
  %.sroa.09.013.i.i.i.i.i26 = phi ptr [ %i.bc, %.from..lr.ph.i.i.i.i.i25 ], [ %i.bu, %.noexc2.i.i29 ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i26, align 8, !tbaa !140 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !99
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i29 unwind label %.from..loopexit.i.i27, !inline_history !4

.noexc2.i.i29:                                    ; preds = %.from..noexc2.i.i29
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i26, i64 16 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i30, label %_ZN3tev5Latch9countDownEv.exit.i18, label %.from..noexc2.i.i29

.from..loopexit.i.i27:                            ; preds = %.from..noexc2.i.i29
  %lpad.loopexit.i.i28 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i19:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i20 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i19, %.from..loopexit.i.i27
  %lpad.phi.i.i21 = phi { ptr, i32 } [ %lpad.loopexit.i.i28, %.from..loopexit.i.i27 ], [ %lpad.loopexit.split-lp.i.i20, %.from..loopexit.split-lp.i.i19 ]
  %i.bv = extractvalue { ptr, i32 } %lpad.phi.i.i21, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i18:               ; preds = %.noexc2.i.i29, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %bb.l, %.noexc.i.i22
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !76 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr76, align 8
  %.not.i31 = icmp eq i64 %i.by, 0
  br i1 %.not.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  musttail call void %i.ca(ptr nonnull %i.bz)
  ret void

bb.o:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

.from.70:                                         ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave47
  ret void

bb.r:                                             ; preds = %bb.o, %.from.70
  %.pn12 = phi { ptr, i32 } [ %i.cc, %.from.70 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn12

bb.s:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSG_PS0_iE_clESG_SL_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !349

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !135
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i26 ], [ %i.aj, %.noexc2.i.i30 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !140 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.an = load i64, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.an, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.66:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.ar, %.from.66 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS_15simdParallelForITkNS3_8integralEmZNS_7Channel17multiplyWithAsyncERKS7_iE3$_0EENS_4TaskIvEERS0_S5_S5_mT0_iEUlmmE_EESC_S5_S5_mSE_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !350

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr178, align 16, !tbaa !142 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr178, align 16, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.d = load ptr, ptr %.reload.addr179, align 8, !tbaa !310 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !308 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !310
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !308
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !309
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !135
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !137 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.ab, %.from..lr.ph.i.i.i.i.i65 ], [ %i.at, %.noexc2.i.i69 ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !140 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.au = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  tail call void @__clang_call_terminate(ptr %i.au) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !76 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  store ptr %i.ay, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.ax, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr184 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr184, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  musttail call void %i.az(ptr nonnull %i.ay)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.168:                                        ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !111 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !99
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.bb, %.from.168 ], [ %i.ba, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn44

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !351

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.a = load ptr, ptr %.reload.addr179, align 8, !tbaa !310 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !308 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !310
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !308
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !309
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #34
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !111 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.013 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.013) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.71

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i24

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i28 unwind label %.from..loopexit.split-lp.i.i25

.noexc.i.i28:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !135
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i29 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i29, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i28
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i30 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i30, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i31

.from..lr.ph.i.i.i.i.i31:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i35

.from..noexc2.i.i35:                              ; preds = %.noexc2.i.i35, %.from..lr.ph.i.i.i.i.i31
  %.sroa.09.013.i.i.i.i.i32 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i31 ], [ %i.aj, %.noexc2.i.i35 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i32, align 8, !tbaa !140 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i35 unwind label %.from..loopexit.i.i33, !inline_history !4

.noexc2.i.i35:                                    ; preds = %.from..noexc2.i.i35
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i36, label %_ZN3tev5Latch9countDownEv.exit.i24, label %.from..noexc2.i.i35

.from..loopexit.i.i33:                            ; preds = %.from..noexc2.i.i35
  %lpad.loopexit.i.i34 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i25:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i26 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i25, %.from..loopexit.i.i33
  %lpad.phi.i.i27 = phi { ptr, i32 } [ %lpad.loopexit.i.i34, %.from..loopexit.i.i33 ], [ %lpad.loopexit.split-lp.i.i26, %.from..loopexit.split-lp.i.i25 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i27, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i24:               ; preds = %.noexc2.i.i35, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i24, %bb.h, %.noexc.i.i28
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.an = load i64, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i37 = icmp eq i64 %i.an, 0
  br i1 %.not.i37, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i1 true, ptr %index.addr81, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.71:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i24, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.71
  %.pn18 = phi { ptr, i32 } [ %i.ar, %.from.71 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn18

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(96) %0) #5 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !350

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev7Channel17multiplyWithAsyncERKS0_i.resume(ptr noundef nonnull align 8 dereferenceable(128) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr103 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !142 ; 3 uses
  %.not.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i37, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !5

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !142
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr103)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #35
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.3 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.3) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.94

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i40

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i44 unwind label %.from..loopexit.split-lp.i.i41

.noexc.i.i44:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !135
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i45 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i45, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i44
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %.not12.i.i.i.i.i46 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i46, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i47

.from..lr.ph.i.i.i.i.i47:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i51

.from..noexc2.i.i51:                              ; preds = %.noexc2.i.i51, %.from..lr.ph.i.i.i.i.i47
  %.sroa.09.013.i.i.i.i.i48 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i47 ], [ %i.aj, %.noexc2.i.i51 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i48, align 8, !tbaa !140 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.66, i64 36)
          to label %.noexc2.i.i51 unwind label %.from..loopexit.i.i49, !inline_history !4

.noexc2.i.i51:                                    ; preds = %.from..noexc2.i.i51
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i48, i64 16 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i52, label %_ZN3tev5Latch9countDownEv.exit.i40, label %.from..noexc2.i.i51

.from..loopexit.i.i49:                            ; preds = %.from..noexc2.i.i51
  %lpad.loopexit.i.i50 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i41:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i42 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i41, %.from..loopexit.i.i49
  %lpad.phi.i.i43 = phi { ptr, i32 } [ %lpad.loopexit.i.i50, %.from..loopexit.i.i49 ], [ %lpad.loopexit.split-lp.i.i42, %.from..loopexit.split-lp.i.i41 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i43, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN3tev5Latch9countDownEv.exit.i40:               ; preds = %.noexc2.i.i51, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i40, %bb.h, %.noexc.i.i44
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.an = load i64, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i53 = icmp eq i64 %i.an, 0
  br i1 %.not.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr105 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i1 true, ptr %index.addr105, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.94:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i40, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.94
  %.pn18 = phi { ptr, i32 } [ %i.ar, %.from.94 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn18

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev7Channel17multiplyWithAsyncERKS0_i.destroy(ptr noundef nonnull align 8 dereferenceable(128) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !352

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr103 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #32
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind memory(none) }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn }
attributes #32 = { nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { allocsize(0) }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!48, !49, !50, !51}
!llvm.ident = !{!52}
!llvm.errno.tbaa = !{!57}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !59}
!10 = distinct !{!10, !59}
!11 = distinct !{!11, !59}
!12 = distinct !{null, null}
!13 = distinct !{null, null, null}
!14 = distinct !{null, null}
!15 = distinct !{!15, !59}
!16 = distinct !{!16, !59}
!17 = distinct !{!17, !59}
!18 = distinct !{!18, !59}
!19 = distinct !{null, null}
!20 = distinct !{null, null}
!21 = distinct !{!21, !59}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{!24, !59}
!25 = distinct !{!25, !59}
!26 = distinct !{!26, !59}
!27 = distinct !{null, null, null, null}
!28 = distinct !{!28, !59}
!29 = distinct !{null, null}
!30 = distinct !{null}
!31 = distinct !{null, null}
!32 = distinct !{!32, !59}
!33 = distinct !{!33, !59}
!34 = distinct !{!34, !59}
!35 = distinct !{null}
!36 = distinct !{null, null, null, null}
!37 = distinct !{null, null, null}
!38 = distinct !{null}
!39 = distinct !{!39, !59}
!40 = distinct !{!40, !59}
!41 = distinct !{null, null, null, null}
!42 = distinct !{null, null, null, null, null}
!43 = distinct !{!43, !59}
!44 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!45 = distinct !{null, null, null}
!46 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!47 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!48 = !{i32 1, !"long-double-type", !"x86_fp80"}
!49 = !{i32 8, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 2}
!52 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!"omnipotent char", !53, i64 0}
!55 = !{!"int", !54, i64 0}
!56 = !{!"__libc_errno", !55, i64 0}
!57 = !{!56, !55, i64 0}
!58 = !{!54, !54, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"any pointer", !54, i64 0}
!61 = !{!"p1 omnipotent char", !60, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"long", !54, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !61, i64 0, !63, i64 8, !63, i64 16, !60, i64 24}
!66 = !{!65, !60, i64 24}
!67 = !{!65, !61, i64 0}
!68 = !{!65, !63, i64 16}
!69 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !61, i64 0, !63, i64 8}
!70 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !69, i64 0, !55, i64 16}
!71 = !{!70, !55, i64 16}
!72 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !60, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"long long", !54, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!60, !60, i64 0}
!77 = !{!65, !63, i64 8}
!78 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !54, i64 0}
!79 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !78, i64 0}
!80 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !79, i64 0}
!81 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !80, i64 0}
!82 = !{!"_ZTSN7nanogui5ArrayIiLm2EEE", !54, i64 0}
!83 = !{!"_ZTSN3tev12EPixelFormatE", !54, i64 0}
!84 = !{!"p1 _ZTSN3tev11PixelBufferE", !60, i64 0}
!85 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !60, i64 0}
!86 = !{!"_ZTSNSt3__110shared_ptrIN3tev11PixelBufferEEE", !84, i64 0, !85, i64 8}
!87 = !{!"_ZTSN3tev7ChannelE", !81, i64 0, !82, i64 24, !83, i64 32, !86, i64 40, !63, i64 56, !63, i64 64}
!88 = !{!86, !84, i64 0}
!89 = !{!"_ZTSNSt3__122__compressed_pair_elemIPvLi0ELb0EEE", !60, i64 0}
!90 = !{!"_ZTSN3tev11PixelBuffer7DeleterE", !60, i64 0}
!91 = !{!"_ZTSNSt3__122__compressed_pair_elemIN3tev11PixelBuffer7DeleterELi1ELb0EEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__117__compressed_pairIPvN3tev11PixelBuffer7DeleterEEE", !89, i64 0, !91, i64 8}
!93 = !{!"_ZTSNSt3__110unique_ptrIvN3tev11PixelBuffer7DeleterEEE", !92, i64 0}
!94 = !{!"_ZTSN3tev11PixelBufferE", !93, i64 0, !63, i64 16, !63, i64 24, !83, i64 32}
!95 = !{!94, !83, i64 32}
!96 = !{!86, !85, i64 8}
!97 = !{!85, !85, i64 0}
!98 = !{!"vtable pointer", !53, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!90, !60, i64 0}
!101 = !{!87, !63, i64 56}
!102 = !{!87, !63, i64 64}
!103 = !{}
!104 = !{!55, !55, i64 0}
!105 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!106 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIiEE", !54, i64 0}
!107 = !{!106, !54, i64 0}
!108 = !{!"p1 _ZTSN3tev15TaskSharedStateE", !60, i64 0}
!109 = !{!"_ZTSNSt3__110shared_ptrIN3tev15TaskSharedStateEEE", !108, i64 0, !85, i64 8}
!110 = !{!109, !108, i64 0}
!111 = !{!109, !85, i64 8}
!112 = !{!"p1 _ZTSNSt3__117__assoc_sub_stateE", !60, i64 0}
!113 = !{!"_ZTSNSt3__16futureIvEE", !112, i64 0}
!114 = !{!113, !112, i64 0}
!115 = !{!"p1 float", !60, i64 0}
!116 = !{!"_ZTSN3tev11ChannelViewIfEE", !115, i64 0, !63, i64 8, !82, i64 16}
!117 = !{!116, !115, i64 0}
!118 = !{!116, !63, i64 8}
!119 = !{!"_ZTSN3tev11ChannelViewIKfEE", !115, i64 0, !63, i64 8, !82, i64 16}
!120 = !{!119, !115, i64 0}
!121 = !{!119, !63, i64 8}
!122 = !{!"branch_weights", i32 1, i32 1048575}
!123 = !{!"p1 _ZTSN3tev11ChannelViewIKfEE", !60, i64 0}
end_hunk_4
begin_hunk_5_@_ZN3tev7Channel17multiplyWithAsyncERKS0_i.destroy:resume.entry
!150 = !{!149, !55, i64 0}
!151 = !{!"_ZTSN3fmt3v1212format_specsE", !149, i64 0, !55, i64 8, !55, i64 12}
!152 = !{!151, !55, i64 12}
!153 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !63, i64 0, !55, i64 8}
!154 = !{!153, !63, i64 0}
!155 = !{!153, !55, i64 8}
!156 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !60, i64 0}
!157 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !156, i64 0, !55, i64 8}
!158 = !{!157, !55, i64 8}
!159 = !{!"llvm.loop.isvectorized", i32 1}
!160 = !{!"llvm.loop.unroll.runtime.disable"}
!161 = !{!"branch_weights", i32 4, i32 28}
!162 = !{!"llvm.loop.unroll.disable"}
!163 = !{ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED2Ev}
!164 = !{!"bool", !54, i64 0}
!165 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !164, i64 0, !54, i64 1}
!166 = !{!165, !164, i64 0}
!167 = !{!165, !54, i64 1}
!168 = !{!151, !55, i64 8}
!169 = !{!"_ZTSNSt3__114__shared_countE", !63, i64 8}
!170 = !{i64 0, i64 24, !58}
!171 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !60, i64 0}
!172 = !{!171, !171, i64 0}
!173 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !54, i64 0}
!174 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !173, i64 0, !145, i64 16}
!175 = !{!174, !145, i64 16}
!176 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !72, i64 0}
!177 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !176, i64 0, !171, i64 8, !81, i64 16, !81, i64 40, !81, i64 64}
!178 = !{!177, !171, i64 8}
!179 = !{i64 4}
!180 = !{!"p1 int", !60, i64 0}
!181 = !{!180, !180, i64 0}
!182 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !60, i64 0}
!183 = !{!182, !182, i64 0}
!184 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !60, i64 0}
!185 = !{!184, !184, i64 0}
!186 = !{i64 8}
!187 = !{i8 0, i8 2}
!188 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !61, i64 0, !61, i64 8, !55, i64 16}
!189 = !{!188, !61, i64 0}
!190 = !{!188, !61, i64 8}
!191 = !{!188, !55, i64 16}
!192 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !180, i64 0, !63, i64 8, !63, i64 16, !60, i64 24}
!193 = !{!192, !180, i64 0}
!194 = !{!192, !63, i64 16}
!195 = !{!192, !63, i64 8}
!196 = !{!69, !61, i64 0}
!197 = !{!69, !63, i64 8}
!198 = !{!"_ZTSN3fmt3v124signE", !54, i64 0}
!199 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !198, i64 0, !61, i64 8}
!200 = !{!199, !198, i64 0}
!201 = !{!199, !61, i64 8}
!202 = !{!198, !198, i64 0}
!203 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !55, i64 0, !55, i64 4}
!204 = !{!203, !55, i64 4}
!205 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !60, i64 0}
!206 = !{!205, !205, i64 0}
!207 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !60, i64 0}
!208 = !{!207, !207, i64 0}
!209 = !{!164, !164, i64 0}
!210 = !{!"p1 bool", !60, i64 0}
!211 = !{!210, !210, i64 0}
!212 = !{!203, !55, i64 0}
!213 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !63, i64 0, !55, i64 8}
!214 = !{!213, !55, i64 8}
!215 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !60, i64 0}
!216 = !{!215, !215, i64 0}
!217 = !{!213, !63, i64 0}
!218 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !61, i64 0, !55, i64 8, !55, i64 12}
!219 = !{!218, !61, i64 0}
!220 = !{!218, !55, i64 8}
!221 = !{!218, !55, i64 12}
!222 = !{!"__int128", !54, i64 0}
!223 = !{!222, !222, i64 0}
!224 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !180, i64 0, !63, i64 8, !63, i64 16, !60, i64 24}
!225 = !{!224, !60, i64 24}
!226 = !{!224, !180, i64 0}
!227 = !{!224, !63, i64 16}
!228 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !224, i64 0, !54, i64 32}
!229 = !{!"_ZTSN3fmt3v126detail6bigintE", !228, i64 0, !55, i64 160}
!230 = !{!229, !55, i64 160}
!231 = !{!224, !63, i64 8}
!232 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !198, i64 0, !218, i64 8, !55, i64 24, !54, i64 28, !55, i64 32, !54, i64 36, !55, i64 40}
!233 = !{!232, !198, i64 0}
!234 = !{!232, !55, i64 24}
!235 = !{!232, !54, i64 28}
!236 = !{!232, !55, i64 32}
!237 = !{!232, !54, i64 36}
!238 = !{!232, !55, i64 40}
!239 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !60, i64 0}
!240 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !81, i64 0, !54, i64 24}
!241 = !{!240, !54, i64 24}
!242 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !60, i64 0}
!243 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !242, i64 0, !63, i64 8}
!244 = !{!243, !63, i64 8}
!245 = !{!243, !242, i64 0}
!246 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !61, i64 0, !55, i64 8}
!247 = !{!246, !61, i64 0}
!248 = !{!246, !55, i64 8}
!249 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !54, i64 0}
!250 = !{!249, !249, i64 0}
!251 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !60, i64 0}
!252 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !60, i64 0}
!253 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !198, i64 0, !213, i64 8, !55, i64 24, !54, i64 28, !55, i64 32, !54, i64 36, !55, i64 40}
!254 = !{!253, !198, i64 0}
!255 = !{!253, !55, i64 24}
!256 = !{!253, !54, i64 28}
!257 = !{!253, !55, i64 32}
!258 = !{!253, !54, i64 36}
!259 = !{!253, !55, i64 40}
!260 = !{!"p1 long", !60, i64 0}
!261 = !{!260, !260, i64 0}
!262 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !60, i64 0}
!263 = !{!262, !262, i64 0}
!264 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !164, i64 0, !63, i64 8, !69, i64 16}
!265 = !{!264, !164, i64 0}
!266 = !{!264, !63, i64 8}
!267 = !{!"branch_weights", i32 8, i32 24}
!268 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !65, i64 0, !54, i64 32, !63, i64 288}
!269 = !{!268, !63, i64 288}
!270 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !60, i64 0}
!271 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !270, i64 0, !85, i64 8}
!272 = !{!271, !85, i64 8}
!273 = !{!139, !85, i64 8}
!274 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !60, i64 0}
!275 = !{!274, !274, i64 0}
!276 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !274, i64 0}
!277 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !276, i64 0, !164, i64 8}
!278 = !{!277, !164, i64 8}
!279 = !{!130, !130, i64 0}
!280 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !60, i64 0}
!281 = !{!"_ZTSN4tlog7IOutputE"}
!282 = !{!"_ZTSNSt3__15mutexE", !54, i64 0}
!283 = !{!"_ZTSN4tlog13ConsoleOutputE", !281, i64 0, !164, i64 8, !280, i64 16, !282, i64 24}
!284 = !{!283, !164, i64 8}
!285 = !{!"any p2 pointer", !60, i64 0}
!286 = !{!"_ZTSNSt3__18ios_baseE", !55, i64 8, !63, i64 16, !63, i64 24, !55, i64 32, !55, i64 36, !60, i64 40, !60, i64 48, !285, i64 56, !180, i64 64, !63, i64 72, !63, i64 80, !260, i64 88, !63, i64 96, !63, i64 104, !285, i64 112, !63, i64 120, !63, i64 128}
!287 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !286, i64 0, !280, i64 136, !55, i64 144}
!288 = !{!287, !55, i64 144}
!289 = !{!"p1 _ZTSNSt3__16locale5__impE", !60, i64 0}
!290 = !{!"_ZTSNSt3__16localeE", !289, i64 0}
!291 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !290, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56}
!292 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !291, i64 0, !81, i64 64, !61, i64 88, !55, i64 96}
!293 = !{!292, !55, i64 96}
!294 = !{!"short", !54, i64 0}
!295 = !{!292, !61, i64 88}
!296 = !{!291, !61, i64 48}
!297 = !{!291, !61, i64 32}
!298 = !{!"_ZTSSt9type_info", !61, i64 8}
!299 = !{!298, !61, i64 8}
!300 = !{!"branch_weights", i32 127, i32 255873}
!301 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel13divideByAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iEUlvE_", !63, i64 0, !63, i64 8, !60, i64 16}
!302 = !{!301, !63, i64 0}
!303 = !{!301, !63, i64 8}
!304 = !{!"p1 _ZTSN3tev4TaskIvEE", !60, i64 0}
!305 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !304, i64 0}
!306 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !305, i64 0}
!307 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !304, i64 0, !304, i64 8, !306, i64 16}
!308 = !{!307, !304, i64 8}
!309 = !{!304, !304, i64 0}
!310 = !{!307, !304, i64 0}
!311 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !53, i64 0}
!312 = !{!311, !311, i64 0}
!313 = !{!"p1 _ZTSSt13exception_ptr", !60, i64 0}
!314 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !313, i64 0}
!315 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !314, i64 0}
!316 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !313, i64 0, !313, i64 8, !315, i64 16}
!317 = !{!316, !313, i64 8}
!318 = !{!316, !313, i64 0}
!319 = !{!313, !313, i64 0}
!320 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !54, i64 0}
!321 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !60, i64 0}
!322 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !320, i64 0, !321, i64 32}
!323 = !{!322, !321, i64 32}
!324 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !60, i64 0}
!325 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !324, i64 0, !85, i64 8}
!326 = !{!325, !324, i64 0}
!327 = !{!325, !85, i64 8}
!328 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !60, i64 0}
!329 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !328, i64 0}
!330 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !329, i64 0}
!331 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !328, i64 0, !328, i64 8, !330, i64 16}
!332 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !60, i64 0}
!333 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !320, i64 0, !332, i64 32}
!334 = !{!333, !332, i64 32}
!335 = !{!"_ZTSNSt3__18functionIFvvEEE", !333, i64 0}
!336 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !335, i64 0, !55, i64 48, !164, i64 52}
!337 = !{!336, !55, i64 48}
!338 = !{!331, !328, i64 8}
!339 = !{!328, !328, i64 0}
!340 = !{!331, !328, i64 0}
!341 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !60, i64 0}
!342 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !341, i64 0}
!343 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !342, i64 0, !164, i64 8}
!344 = !{!343, !164, i64 8}
!345 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_7Channel17multiplyWithAsyncERKS6_iE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESB_S4_S4_mSD_iEUlvE_", !63, i64 0, !63, i64 8, !60, i64 16}
!346 = !{!345, !63, i64 0}
!347 = !{!345, !63, i64 8}
!348 = !{!"branch_weights", i32 -171659984, i32 343608614}
!349 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!350 = !{!"branch_weights", i32 -693363755, i32 -1546098377}
!351 = !{!"branch_weights", i32 -1751137347, i32 -840054308}
!352 = !{!"branch_weights", i32 -693363755, i32 -1546110960}
!353 = distinct !{!353, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEES7_EEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!354 = distinct !{!354, !353, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEES7_EEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!355 = distinct !{!355, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!356 = distinct !{!356, !355, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!357 = distinct !{!357, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!358 = distinct !{!358, !357, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!359 = !{!354}
!360 = !{!356}
!361 = !{!358}
!362 = !{!358, !356}
!363 = distinct !{!363, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE"}
!364 = distinct !{!364, !363, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE: argument 0"}
!365 = !{!364}
!366 = distinct !{!366, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE"}
!367 = distinct !{!367, !366, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE: argument 0"}
!368 = !{!367}
!369 = distinct !{!369, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE"}
!370 = distinct !{!370, !369, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE: argument 0"}
!371 = distinct !{!371, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!372 = distinct !{!372, !371, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!373 = !{!370}
!374 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!375 = !{!372}
!376 = distinct !{!376, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE"}
!377 = distinct !{!377, !376, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE: argument 0"}
!378 = !{!377}
!379 = distinct !{!379, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE"}
!380 = distinct !{!380, !379, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE: argument 0"}
!381 = !{!380}
!382 = distinct !{!382, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE"}
!383 = distinct !{!383, !382, !"_ZN3tev7Channel5splitENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE: argument 0"}
!384 = !{!383}
!385 = distinct !{null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!386 = distinct !{!386, !"_ZNSt3__111make_sharedB8ne180100IN3tev11PixelBufferEJS2_EvEENS_10shared_ptrIT_EEDpOT0_"}
!387 = distinct !{!387, !386, !"_ZNSt3__111make_sharedB8ne180100IN3tev11PixelBufferEJS2_EvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!388 = distinct !{!388, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev11PixelBufferENS_9allocatorIS2_EEJS2_EvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!389 = distinct !{!389, !388, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev11PixelBufferENS_9allocatorIS2_EEJS2_EvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!390 = distinct !{null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!391 = !{!87, !83, i64 32}
!392 = !{!84, !84, i64 0}
!393 = !{!389, !387}
!394 = !{!89, !60, i64 0}
!395 = !{!94, !63, i64 16}
!396 = !{!94, !63, i64 24}
!397 = distinct !{!397, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!398 = distinct !{!398, !397, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!399 = !{!398}
!400 = distinct !{!400, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!401 = distinct !{!401, !400, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!402 = distinct !{!402, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!403 = distinct !{!403, !402, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!404 = distinct !{!404, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!405 = distinct !{!405, !404, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!406 = distinct !{!406, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!407 = distinct !{!407, !406, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!408 = distinct !{!408, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!409 = distinct !{!409, !408, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!410 = distinct !{!410, !"_ZNKR3tev7Channel4viewIKfEENS_11ChannelViewIT_EEv"}
!411 = distinct !{!411, !410, !"_ZNKR3tev7Channel4viewIKfEENS_11ChannelViewIT_EEv: argument 0"}
!412 = !{!401}
!413 = !{!403}
!414 = !{!403, !401}
!415 = !{!405, !403, !401}
!416 = !{!407}
!417 = !{!409}
!418 = !{!411}
!419 = distinct !{!419, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!420 = distinct !{!420, !419, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!421 = distinct !{!421, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!422 = distinct !{!422, !421, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!423 = distinct !{!423, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!424 = distinct !{!424, !423, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!425 = distinct !{!425, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!426 = distinct !{!426, !425, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!427 = !{i64 0, i64 8, !124, i64 8, i64 8, !126}
!428 = !{!420}
!429 = !{!422}
!430 = !{!422, !420}
!431 = !{!424, !422, !420}
!432 = !{!426}
!433 = distinct !{!433, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!434 = distinct !{!434, !433, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!435 = distinct !{!435, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!436 = distinct !{!436, !435, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!437 = distinct !{!437, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!438 = distinct !{!438, !437, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!439 = distinct !{!439, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!440 = distinct !{!440, !439, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!441 = distinct !{!441, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!442 = distinct !{!442, !441, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!443 = distinct !{!443, !"_ZNKR3tev7Channel4viewIKfEENS_11ChannelViewIT_EEv"}
!444 = distinct !{!444, !443, !"_ZNKR3tev7Channel4viewIKfEENS_11ChannelViewIT_EEv: argument 0"}
!445 = !{!434}
!446 = !{!436}
!447 = !{!436, !434}
!448 = !{!438, !436, !434}
!449 = !{!440}
!450 = !{!442}
!451 = !{!444}
!452 = distinct !{!452, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!453 = distinct !{!453, !452, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!454 = distinct !{!454, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!455 = distinct !{!455, !454, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!456 = distinct !{!456, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!457 = distinct !{!457, !456, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!458 = distinct !{!458, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!459 = distinct !{!459, !458, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!460 = !{i64 0, i64 8, !126, i64 8, i64 8, !124}
!461 = !{!453}
!462 = !{!455}
!463 = !{!455, !453}
!464 = !{!457, !455, !453}
!465 = !{!459}
!466 = distinct !{!466, !59}
!467 = distinct !{!467, !59}
!468 = distinct !{!468, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!469 = distinct !{!469, !468, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!470 = !{!469}
!471 = distinct !{!471, !"_ZNK3fmt3v127context3argEi"}
!472 = distinct !{!472, !471, !"_ZNK3fmt3v127context3argEi: argument 0"}
!473 = distinct !{!473, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!474 = distinct !{!474, !473, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!475 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!476 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!477 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!478 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null, null}
!479 = distinct !{!479, !"_ZNK3fmt3v127context3argEi"}
!480 = distinct !{!480, !479, !"_ZNK3fmt3v127context3argEi: argument 0"}
!481 = distinct !{!481, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!482 = distinct !{!482, !481, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!483 = !{!474, !472}
!484 = !{!156, !156, i64 0}
!485 = !{!482, !480}
!486 = distinct !{null, null, null}
!487 = distinct !{null, null, null}
!488 = distinct !{null, null, null}
!489 = distinct !{null, null, null, null}
!490 = distinct !{!490, !59, !159, !160}
!491 = distinct !{!491, !59, !159, !160}
!492 = distinct !{!492, !162}
!493 = distinct !{!493, !59, !159}
!494 = distinct !{!494, !59}
!495 = distinct !{null, null, null, null}
!496 = distinct !{null, null, null, null, null}
!497 = distinct !{null, null, null}
!498 = distinct !{null, null, null, null}
!499 = distinct !{!499, !59}
!500 = distinct !{!500, !"_ZNKSt3__18numpunctIcE8groupingB8ne180100Ev"}
!501 = distinct !{!501, !500, !"_ZNKSt3__18numpunctIcE8groupingB8ne180100Ev: argument 0"}
!502 = !{!169, !63, i64 8}
!503 = !{!501}
!504 = distinct !{!504, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE"}
!505 = distinct !{!505, !504, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE: argument 0"}
!506 = !{!505}
!507 = distinct !{!507, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE"}
!508 = distinct !{!508, !507, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE: argument 0"}
!509 = !{!508}
!510 = distinct !{!510, !59}
!511 = distinct !{!511, !59}
!512 = distinct !{null, null, null, null}
!513 = distinct !{!513, !59}
!514 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !180, i64 0, !182, i64 8, !184, i64 16}
!515 = !{!514, !180, i64 0}
!516 = !{!514, !182, i64 8}
!517 = !{!514, !184, i64 16}
!518 = distinct !{null, null, null, null}
!519 = distinct !{null, null, null, null}
!520 = distinct !{!520, !59}
!521 = distinct !{!521, !59, !159, !160}
!522 = distinct !{!522, !59, !159, !160}
!523 = distinct !{!523, !162}
!524 = distinct !{!524, !59, !159}
!525 = distinct !{!525, !59}
!526 = distinct !{!526, !59}
!527 = distinct !{!527, !59}
!528 = distinct !{!528, !59}
!529 = distinct !{null}
!530 = distinct !{null}
!531 = distinct !{!531, !59, !159, !160}
!532 = distinct !{!532, !59, !159, !160}
!533 = distinct !{!533, !162}
!534 = distinct !{!534, !59, !159}
!535 = distinct !{null}
!536 = distinct !{!536, !59}
!537 = !{!192, !60, i64 24}
!538 = distinct !{!538, !59}
!539 = distinct !{!539, !59}
!540 = distinct !{!540, !59}
!541 = distinct !{null, null, null, null}
!542 = distinct !{!542, !59}
!543 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !180, i64 0, !182, i64 8, !184, i64 16}
!544 = !{!543, !180, i64 0}
!545 = !{!543, !182, i64 8}
!546 = !{!543, !184, i64 16}
!547 = distinct !{null, null, null}
!548 = distinct !{!548, !59, !159, !160}
!549 = distinct !{!549, !59, !159, !160}
!550 = distinct !{!550, !162}
!551 = distinct !{!551, !59, !159}
!552 = distinct !{null, null, null, null}
end_hunk_5
begin_hunk_6_@_ZN3tev7Channel17multiplyWithAsyncERKS0_i.destroy:resume.entry
!1123 = !{!1116}
!1124 = !{!1118}
!1125 = !{!1118, !1116}
!1126 = !{!1120, !1118, !1116}
!1127 = !{!1122}
!1128 = distinct !{!1128, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1129 = distinct !{!1129, !1128, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1130 = distinct !{!1130, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1131 = distinct !{!1131, !1130, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1132 = distinct !{!1132, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1133 = distinct !{!1133, !1132, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1134 = distinct !{!1134, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1135 = distinct !{!1135, !1134, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1136 = !{!1129}
!1137 = !{!1131}
!1138 = !{!1131, !1129}
!1139 = !{!1133, !1131, !1129}
!1140 = !{!1135}
!1141 = distinct !{!1141, !59}
!1142 = !{!112, !112, i64 0}
!1143 = !{!108, !108, i64 0}
!1144 = distinct !{!1144, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1145 = distinct !{!1145, !1144, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1146 = distinct !{!1146, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1147 = distinct !{!1147, !1146, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1148 = distinct !{!1148, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1149 = distinct !{!1149, !1148, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1150 = distinct !{!1150, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1151 = distinct !{!1151, !1150, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1152 = !{!1145}
!1153 = !{!1147}
!1154 = !{!1147, !1145}
!1155 = !{!1149, !1147, !1145}
!1156 = !{!1151}
!1157 = distinct !{!1157, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1158 = distinct !{!1158, !1157, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1159 = distinct !{!1159, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1160 = distinct !{!1160, !1159, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1161 = distinct !{!1161, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1162 = distinct !{!1162, !1161, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1163 = distinct !{!1163, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1164 = distinct !{!1164, !1163, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1165 = distinct !{!1165, !"LVerDomain"}
!1166 = distinct !{!1166, !1165}
!1167 = distinct !{!1167, !1165}
!1168 = distinct !{!1168, !59, !159, !160}
!1169 = distinct !{!1169, !59}
!1170 = distinct !{!1170, !59, !159}
!1171 = !{!1158}
!1172 = !{!1160}
!1173 = !{!1160, !1158}
!1174 = !{!1162, !1160, !1158}
!1175 = !{!1164}
!1176 = !{!301, !60, i64 16}
!1177 = !{!"_ZTSZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel13divideByAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iEUlmmE_", !60, i64 0}
!1178 = !{!1177, !60, i64 0}
!1179 = !{!1166}
!1180 = !{!1167}
!1181 = distinct !{!1181, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1182 = distinct !{!1182, !1181, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1183 = distinct !{!1183, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1184 = distinct !{!1184, !1183, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1185 = distinct !{!1185, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1186 = distinct !{!1186, !1185, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1187 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1188 = distinct !{!1188, !59}
!1189 = !{!1182}
!1190 = !{!1184}
!1191 = !{!1184, !1182}
!1192 = !{!1186, !1184, !1182}
!1193 = !{!"p1 _ZTSNSt3__16threadE", !60, i64 0}
!1194 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1193, i64 0}
!1195 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1194, i64 0}
!1196 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1193, i64 0, !1193, i64 8, !1195, i64 16}
!1197 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1198 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !331, i64 0, !1197, i64 24}
!1199 = !{!"_ZTSNSt3__115recursive_mutexE", !54, i64 0}
!1200 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !54, i64 0}
!1201 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1200, i64 0}
!1202 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1201, i64 0}
!1203 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1202, i64 0}
!1204 = !{!"_ZTSNSt3__16atomicIlEE", !1203, i64 0}
!1205 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !54, i64 0}
!1206 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1204, i64 0, !1205, i64 8, !55, i64 40}
!1207 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !54, i64 0}
!1208 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1207, i64 0}
!1209 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1208, i64 0}
!1210 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1209, i64 0}
!1211 = !{!"_ZTSNSt3__16atomicImEE", !1210, i64 0}
!1212 = !{!"_ZTSN3tev10ThreadPoolE", !164, i64 8, !1196, i64 16, !1198, i64 40, !1199, i64 72, !1206, i64 112, !1199, i64 160, !1211, i64 200, !1211, i64 208}
!1213 = !{!1212, !164, i64 8}
!1214 = !{!336, !164, i64 52}
!1215 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1216 = distinct !{null, null, null}
!1217 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !60, i64 0}
!1218 = !{!1217, !60, i64 0}
!1219 = distinct !{!1219, !59}
!1220 = distinct !{null, null, null, null, null, null, null, null, null}
!1221 = distinct !{null, null, null, null}
!1222 = distinct !{null}
!1223 = distinct !{!1223, !59}
!1224 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1225 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1226 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1227 = distinct !{null}
!1228 = !{!"_ZTSNSt3__17promiseIvEE", !112, i64 0}
!1229 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !322, i64 0, !1228, i64 48}
!1230 = !{!1229, !112, i64 48}
!1231 = !{!"_ZTSSt13exception_ptr", !60, i64 0}
!1232 = !{!"_ZTSNSt3__118condition_variableE", !54, i64 0}
!1233 = !{!"_ZTSNSt3__117__assoc_sub_stateE", !169, i64 0, !1231, i64 16, !282, i64 24, !1232, i64 64, !55, i64 112}
!1234 = !{!1233, !55, i64 112}
!1235 = !{!1231, !60, i64 0}
!1236 = distinct !{!1236, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1237 = distinct !{!1237, !1236, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1238 = distinct !{!1238, !59}
!1239 = !{!341, !341, i64 0}
!1240 = !{!1237}
!1241 = distinct !{!1241, !59}
!1242 = !{!342, !341, i64 0}
!1243 = distinct !{null, null}
!1244 = distinct !{!1244, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1245 = distinct !{!1245, !1244, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1246 = distinct !{!1246, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1247 = distinct !{!1247, !1246, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1248 = distinct !{!1248, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1249 = distinct !{!1249, !1248, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1250 = distinct !{!1250, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1251 = distinct !{!1251, !1250, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1252 = distinct !{!1252, !59}
!1253 = distinct !{!1253, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1254 = distinct !{!1254, !1253, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1255 = !{!1245}
!1256 = !{!1247}
!1257 = !{!1247, !1245}
!1258 = !{!1249, !1247, !1245}
!1259 = !{!1251}
!1260 = !{!1254}
!1261 = distinct !{!1261, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1262 = distinct !{!1262, !1261, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1263 = distinct !{!1263, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1264 = distinct !{!1264, !1263, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1265 = distinct !{!1265, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1266 = distinct !{!1266, !1265, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1267 = distinct !{!1267, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1268 = distinct !{!1268, !1267, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1269 = !{!1262}
!1270 = !{!1264}
!1271 = !{!1264, !1262}
!1272 = !{!1266, !1264, !1262}
!1273 = !{!1268}
!1274 = distinct !{!1274, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1275 = distinct !{!1275, !1274, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1276 = distinct !{!1276, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1277 = distinct !{!1277, !1276, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1278 = distinct !{!1278, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1279 = distinct !{!1279, !1278, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1280 = distinct !{!1280, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1281 = distinct !{!1281, !1280, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1282 = !{!1275}
!1283 = !{!1277}
!1284 = !{!1277, !1275}
!1285 = !{!1279, !1277, !1275}
!1286 = !{!1281}
!1287 = distinct !{!1287, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1288 = distinct !{!1288, !1287, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1289 = distinct !{!1289, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1290 = distinct !{!1290, !1289, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1291 = distinct !{!1291, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1292 = distinct !{!1292, !1291, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1293 = distinct !{!1293, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1294 = distinct !{!1294, !1293, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1295 = distinct !{!1295, !"LVerDomain"}
!1296 = distinct !{!1296, !1295}
!1297 = distinct !{!1297, !1295}
!1298 = distinct !{!1298, !59, !159, !160}
!1299 = distinct !{!1299, !59}
!1300 = distinct !{!1300, !59, !159}
!1301 = !{!1288}
!1302 = !{!1290}
!1303 = !{!1290, !1288}
!1304 = !{!1292, !1290, !1288}
!1305 = !{!1294}
!1306 = !{!345, !60, i64 16}
!1307 = !{!"_ZTSZN3tev15simdParallelForITkNSt3__18integralEmZNS_7Channel17multiplyWithAsyncERKS2_iE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SA_mT0_iEUlmmE_", !60, i64 0}
!1308 = !{!1307, !60, i64 0}
!1309 = !{!1296}
!1310 = !{!1297}
!1311 = distinct !{!1311, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEES6_S4_EEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!1312 = distinct !{!1312, !1311, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEES6_S4_EEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!1313 = distinct !{!1313, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1314 = distinct !{!1314, !1313, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1315 = distinct !{!1315, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1316 = distinct !{!1316, !1315, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1317 = distinct !{null}
!1318 = !{!1312}
!1319 = !{!1314}
!1320 = !{ptr @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE}
!1321 = !{!1316}
!1322 = !{!1316, !1314}
!1323 = !{!"branch_weights", i32 118691432, i32 -2004248167}
end_hunk_6
