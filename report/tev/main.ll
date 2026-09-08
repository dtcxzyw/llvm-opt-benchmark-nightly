Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/main?download=true
inline.NumInlined: 13087
inline.NumDeleted: 5245
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 86
begin_hunk_0_@"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i"
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.1130") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %2, i32 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.1132", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #47 ; 20 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %.reload.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 7 uses
  %.reload.addr83 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr83)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.a unwind label %.body.from.76 ; 5 uses

.body.from.76:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr83) #40
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !2270
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !109, !noalias !2270
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !2270
  store i32 2, ptr %i.g, align 8, !tbaa !772, !noalias !2270
  store ptr %i.f, ptr %i.d, align 8, !tbaa !773, !alias.scope !2271
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !760, !alias.scope !2271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2272
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.1132") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr83)
          to label %bb.b unwind label %bb.d, !noalias !2272

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !263, !alias.scope !2272
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !776, !noalias !2272
  store ptr %i.j, ptr %i.i, align 8, !tbaa !776, !alias.scope !2272
  store ptr null, ptr %4, align 8, !tbaa !776, !noalias !2272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !760, !noalias !2272 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !263, !noalias !2272
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !263, !alias.scope !2272
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !2272 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #44, !noalias !2272
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #40, !noalias !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2272
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !231  ; 2 uses
  %i.v = load <2 x ptr>, ptr %2, align 8, !tbaa !263
  store <2 x ptr> %i.v, ptr %.reload.addr, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !111
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !105
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef %i.ad, i64 noundef %i.af)
          to label %bb.i unwind label %.body17.from.

.body17.from.:                                    ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(76) %.reload.addr) #40
  br label %.body17

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(36) %i.ai, i64 36, i1 false)
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_iENKUlSM_PS0_iE_clESM_SS_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.1130") align 8 %.reload.addr80, ptr nonnull align 1 poison, ptr nofree noundef nonnull align 8 dereferenceable(80) %.reload.addr, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.j unwind label %.from.65

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !773
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load atomic i32, ptr %i.al acquire, align 4
  %i.an = icmp slt i32 %i.am, 2
  br i1 %i.an, label %bb.k, label %AfterCoroSave

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !773
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 -1 acq_rel, align 4
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !122 ; 7 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !130
  %i.av = and i32 %i.au, 8
  %.not.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %.thread.sink.split

bb.m:                                             ; preds = %.noexc.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !131 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ax, %.from..lr.ph.i.i.i.i.i ], [ %i.bp, %.noexc2.i.i ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %i.bf = load i8, ptr %i.ba, align 8             ; 2 uses
  %i.bg = trunc i8 %i.bf to i1                    ; 2 uses
  %i.bh = load ptr, ptr %i.bb, align 8
  %i.bi = select i1 %i.bg, ptr %i.bh, ptr %i.bc
  %i.bj = load i64, ptr %i.bd, align 8
  %i.bk = lshr i8 %i.bf, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = select i1 %i.bg, i64 %i.bj, i64 %i.bl
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr %i.bi, i64 %i.bm, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !72

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, %i.az
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

.from..loopexit.split-lp.i.i:                     ; preds = %bb.l
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bq = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bq) #44
  unreachable

AfterCoroSave:                                    ; preds = %bb.j
  %index.addr84 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %index.addr84, align 8
  %i.br = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr80, ptr nonnull %i.a) #40
  br i1 %i.br, label %AfterCoroEnd, label %bb.o

.from.65:                                         ; preds = %bb.i
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  br label %.body17.from.67

bb.o:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr80, align 8, !tbaa !778 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.63, !inline_history !74

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.p, %bb.m, %.noexc.i.i, %bb.k
  store ptr null, ptr %.reload.addr80, align 8, !tbaa !778
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.63

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr80) #40
  %i.bw = load i8, ptr %i.y, align 8
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.q, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

bb.q:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !105
  %i.ca = load i64, ptr %i.y, align 8
  %i.cb = and i64 %i.ca, -2
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cb) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i: ; preds = %bb.q, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cc = load ptr, ptr %i.s, align 8, !tbaa !231 ; 5 uses
  %.not.i.i21 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i21, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", label %bb.r

bb.r:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = atomicrmw add ptr %i.cd, i64 -1 acq_rel, align 8
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !109
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #40, !inline_history !75
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #40
  br label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit": ; preds = %bb.s, %bb.r, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr83)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #44
  unreachable

.from.63:                                         ; preds = %bb.p, %.thread
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr80) #40
  br label %.body17.from.67

.body17.from.67:                                  ; preds = %.from.65, %.from.63
  %.pn = phi { ptr, i32 } [ %i.cl, %.from.63 ], [ %i.bs, %.from.65 ]
  call fastcc void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %.reload.addr) #40
  br label %.body17

.body17:                                          ; preds = %.body17.from., %.body17.from.67
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body17.from.67 ], [ %i.ag, %.body17.from. ]
  %.19 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.cm = call ptr @__cxa_begin_catch(ptr %.19) #40 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr83)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.body17
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.74

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", %bb.u
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !773
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = atomicrmw add ptr %i.co, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i22

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i26 unwind label %.from..loopexit.split-lp.i.i23

.noexc.i.i26:                                     ; preds = %bb.v
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !122 ; 7 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !130
  %i.cu = and i32 %i.ct, 8
  %.not.i.i.i.i27 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i27, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !131 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i.i28 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not12.i.i.i.i.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i29

.from..lr.ph.i.i.i.i.i29:                         ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 33
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  br label %.from..noexc2.i.i33

.from..noexc2.i.i33:                              ; preds = %.noexc2.i.i33, %.from..lr.ph.i.i.i.i.i29
  %.sroa.09.013.i.i.i.i.i30 = phi ptr [ %i.cw, %.from..lr.ph.i.i.i.i.i29 ], [ %i.do, %.noexc2.i.i33 ] ; 2 uses
  %i.dd = load ptr, ptr %.sroa.09.013.i.i.i.i.i30, align 8, !tbaa !136 ; 2 uses
  %i.de = load i8, ptr %i.cz, align 8             ; 2 uses
  %i.df = trunc i8 %i.de to i1                    ; 2 uses
  %i.dg = load ptr, ptr %i.da, align 8
  %i.dh = select i1 %i.df, ptr %i.dg, ptr %i.db
  %i.di = load i64, ptr %i.dc, align 8
  %i.dj = lshr i8 %i.de, 1
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = select i1 %i.df, i64 %i.di, i64 %i.dk
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !109
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr %i.dh, i64 %i.dl, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i33 unwind label %.from..loopexit.i.i31, !inline_history !72

.noexc2.i.i33:                                    ; preds = %.from..noexc2.i.i33
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.do, %i.cy
  br i1 %.not.i.i.i.i.i34, label %_ZN3tev5Latch9countDownEv.exit.i22, label %.from..noexc2.i.i33

.from..loopexit.i.i31:                            ; preds = %.from..noexc2.i.i33
  %lpad.loopexit.i.i32 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.from..loopexit.split-lp.i.i23:                   ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i24 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.from..loopexit.split-lp.i.i23, %.from..loopexit.i.i31
  %lpad.phi.i.i25 = phi { ptr, i32 } [ %lpad.loopexit.i.i32, %.from..loopexit.i.i31 ], [ %lpad.loopexit.split-lp.i.i24, %.from..loopexit.split-lp.i.i23 ]
  %i.dp = extractvalue { ptr, i32 } %lpad.phi.i.i25, 0
  call void @__clang_call_terminate(ptr %i.dp) #44
  unreachable

_ZN3tev5Latch9countDownEv.exit.i22:               ; preds = %.noexc2.i.i33, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dq = icmp slt i32 %i.cp, 2
  br i1 %i.dq, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i26, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i22
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !773
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !263 ; 2 uses
  %i.dt = inttoptr i64 %i.ds to ptr               ; 3 uses
  store ptr %i.dt, ptr %.reload.addr80, align 8
  %.not.i35 = icmp eq i64 %i.ds, 0
  br i1 %.not.i35, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend55

AfterCoroSuspend55:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr85 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 1, ptr %index.addr85, align 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr nonnull %i.dt)
  br label %AfterCoroEnd

bb.y:                                             ; preds = %.body17
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.78 unwind label %bb.ab

.from.74:                                         ; preds = %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.78

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i22
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !760 ; 5 uses
  %.not.i.i36 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw add ptr %i.dy, i64 -1 acq_rel, align 8
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !109
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(24) %i.dx) #40, !inline_history !76
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dx) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr83) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #40
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend55, %AfterCoroSave
  ret void

.body.from.78:                                    ; preds = %bb.y, %.from.74
  %.pn13 = phi { ptr, i32 } [ %i.dw, %.from.74 ], [ %i.dv, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #40
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr83) #40
  br label %.body

.body:                                            ; preds = %.body.from.78, %.body.from.76, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.78 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.76 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #40
  resume { ptr, i32 } %.merged15

bb.ab:                                            ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #44
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !778
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !130
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.noexc1, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.y, %.noexc1 ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !136 ; 2 uses
  %i.o = load i8, ptr %i.j, align 8               ; 2 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = select i1 %i.p, ptr %i.q, ptr %i.l
  %i.s = load i64, ptr %i.m, align 8
  %i.t = lshr i8 %i.o, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.p, i64 %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !109
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr %i.r, i64 %i.v, i32 noundef 8, ptr nonnull @.str.256, i64 39)
          to label %.noexc1 unwind label %.loopexit, !inline_history !72

.noexc1:                                          ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.d

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %.noexc1, %bb.c, %.noexc, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !760 ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #40, !inline_history !73
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #40
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #40
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #44
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(76) dereferenceable(76) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231  ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 -1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #40, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #40
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !276 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !279   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !263
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !263
  store ptr null, ptr %i.ag, align 8, !tbaa !263
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !263
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !263
  store ptr null, ptr %i.aj, align 8, !tbaa !2371
  store ptr null, ptr %i.ak, align 8, !tbaa !2372
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !278
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !278
  store ptr null, ptr %i.an, align 8, !tbaa !278
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !2370

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !277
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !277
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !277
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !277
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !277
  store ptr %i.t, ptr %i.a, align 8, !tbaa !277
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #40
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #43
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: nounwind
declare void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.7) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress norecurse uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_iENKUlSM_PS0_iE_clESM_SS_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.1130") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(80) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #35 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %5 = alloca %"struct.std::__1::coroutine_handle.1195", align 8 ; 4 uses
  %6 = alloca %"class.std::__1::future.1132", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.1132", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #47 ; 14 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_iENKUlSM_PS0_iE_clESM_SS_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_iENKUlSM_PS0_iE_clESM_SS_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %.reload.addr85 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !263
  store <2 x ptr> %i.d, ptr %.reload.addr, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, label %bb.a

bb.a:                                             ; preds = %.from.
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %bb.a, %.from.
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !111
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !105
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %bb.d unwind label %.body.from.

.body.from.:                                      ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(76) %.reload.addr) #40
  br label %.body

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(36) %i.q, i64 36, i1 false)
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr88)
          to label %.noexc unwind label %.body18.from.

.noexc:                                           ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.e unwind label %.body18.from.81 ; 5 uses

.body18.from.81:                                  ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr88) #40
  br label %.body.from..body18

bb.e:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !noalias !2383
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.r, align 8, !tbaa !109, !noalias !2383
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !2383
  store i32 2, ptr %i.w, align 8, !tbaa !772, !noalias !2383
  store ptr %i.v, ptr %i.t, align 8, !tbaa !773, !alias.scope !2384
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.x, align 8, !tbaa !760, !alias.scope !2384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !2385
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.1132") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr88)
          to label %bb.f unwind label %bb.h, !noalias !2385

bb.f:                                             ; preds = %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !263, !alias.scope !2385
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %7, align 8, !tbaa !776, !noalias !2385
  store ptr %i.z, ptr %i.y, align 8, !tbaa !776, !alias.scope !2385
  store ptr null, ptr %7, align 8, !tbaa !776, !noalias !2385
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !760, !noalias !2385 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.t, align 8, !tbaa !263, !noalias !2385
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !263, !alias.scope !2385
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !2385 ; 0 uses
  br label %AfterCoroSave

bb.h:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #44, !noalias !2385
  unreachable

.body18.from.:                                    ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.from..body18

AfterCoroSave:                                    ; preds = %bb.f, %bb.g
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #40, !noalias !2385
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !2385
  store ptr %3, ptr %.reload.addr85, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr89 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %index.addr89, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.a, ptr %5, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.1132") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %4, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.i

bb.i:                                             ; preds = %AfterCoroSave
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #44
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

.body.from..body18:                               ; preds = %.body18.from.81, %.body18.from.
  %.pn13.pn = phi { ptr, i32 } [ %i.s, %.body18.from.81 ], [ %i.ah, %.body18.from. ]
  tail call fastcc void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %.reload.addr) #40
  br label %.body

.body:                                            ; preds = %.body.from..body18, %.body.from.
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %.body.from..body18 ], [ %i.o, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #40
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !778
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.272, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #44
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !773
  store ptr %1, ptr %i.c, align 8, !tbaa !263
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !773
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !130
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !132  ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !109
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !72

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
  tail call void @__clang_call_terminate(ptr %i.af) #44
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !778
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %1) #40
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #40
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !760  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #40, !inline_history !73
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #40
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #40
  ret void
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !109
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !109
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %0) #40, !inline_history !2386
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #43
end_hunk_1
begin_hunk_2_@"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffENK3$_1clEv":.from.
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %2, align 8, !tbaa !776, !noalias !2399
  store ptr %i.l, ptr %i.k, align 8, !tbaa !776, !alias.scope !2399
  store ptr null, ptr %2, align 8, !tbaa !776, !noalias !2399
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !760, !noalias !2399 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.f, align 8, !tbaa !263, !noalias !2399
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !263, !alias.scope !2399
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !2399 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #44, !noalias !2399
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #40, !noalias !2399
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !2399
  %i.u = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #40
  %.spill.addr132 = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  store i64 %i.u, ptr %.spill.addr132, align 8
  %i.v = load ptr, ptr %1, align 8, !tbaa !253    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 416
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !258  ; 4 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %.from.88

.from.88:                                         ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr136, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !tbaa.struct !111
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !105
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr136, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %.from.._crit_edge unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from.106

.from.._crit_edge:                                ; preds = %bb.f
  %.pre = load ptr, ptr %1, align 8, !tbaa !253
  br label %bb.g

bb.g:                                             ; preds = %.from.._crit_edge, %.from.88
  %i.ae = phi ptr [ %.pre, %.from.._crit_edge ], [ %i.v, %.from.88 ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 376
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !105 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i to i32
  %.sroa.5.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.5.8.extract.shift.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !287
  %i.ai = sub nsw i32 %.sroa.0.0.extract.trunc.i, %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 364
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !287
  %i.al = sub nsw i32 %.sroa.2.0.extract.trunc.i, %i.ak ; 2 uses
  %i.am = add nsw i32 %i.ai, %.sroa.0.0.extract.trunc.i
  %i.an = add nsw i32 %i.al, %.sroa.2.0.extract.trunc.i
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.an to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.am to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ao = add nsw i32 %i.ai, %.sroa.3.8.extract.trunc.i
  %i.ap = add nsw i32 %i.al, %.sroa.5.8.extract.trunc.i
  %.sroa.2.0.insert.ext.i2.i.i = zext i32 %i.ap to i64
  %.sroa.2.0.insert.shift.i3.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i2.i.i, 32
  %.sroa.0.0.insert.ext.i4.i.i = zext i32 %i.ao to i64
  %.sroa.0.0.insert.insert.i5.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i3.i.i, %.sroa.0.0.insert.ext.i4.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr137, i8 0, i64 16, i1 false)
  %i.ar = load i8, ptr %.reload.addr136, align 8  ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 73
  %i.aw = select i1 %i.as, ptr %i.au, ptr %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = lshr i8 %i.ar, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = select i1 %i.as, i64 %i.ay, i64 %i.ba
  store ptr %i.aw, ptr %3, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !269
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.bf, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.24.0.copyload = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !270
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !2400
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !2401
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !271
  invoke void @_ZNK3tev5Image4saveERKNSt3__14__fs10filesystem4pathENS1_10shared_ptrIS0_EENS_3BoxIiLj2EEENS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_12EChannelMaskEN7nanogui5ColorENS_8ETonemapEfffi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.1130") align 8 %.reload.addr135, ptr noundef nonnull align 16 dereferenceable(516) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr nofree noundef nonnull align 8 dereferenceable(16) %.reload.addr137, i64 %.sroa.0.0.insert.insert.i.i.i, i64 %.sroa.0.0.insert.insert.i5.i.i, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %3, i32 noundef %i.be, i8 noundef zeroext 15, <2 x float> %.sroa.03.0.copyload, <2 x float> %.sroa.24.0.copyload, i32 noundef %i.bh, float noundef %i.bj, float noundef %i.bl, float noundef %i.bn, i32 noundef 2147483647)
          to label %bb.h unwind label %.from.99

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !773
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load atomic i32, ptr %i.bq acquire, align 4
  %i.bs = icmp slt i32 %i.br, 2
  br i1 %i.bs, label %bb.i, label %AfterCoroSave

bb.i:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !773
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %i.bw = icmp slt i32 %i.bv, 1
  br i1 %i.bw, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !122 ; 7 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !130
  %i.ca = and i32 %i.bz, 8
  %.not.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %.thread.sink.split

bb.k:                                             ; preds = %.noexc.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !131 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cc, %.from..lr.ph.i.i.i.i.i ], [ %i.cu, %.noexc2.i.i ] ; 2 uses
  %i.cj = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %i.ck = load i8, ptr %i.cf, align 8             ; 2 uses
  %i.cl = trunc i8 %i.ck to i1                    ; 2 uses
  %i.cm = load ptr, ptr %i.cg, align 8
  %i.cn = select i1 %i.cl, ptr %i.cm, ptr %i.ch
  %i.co = load i64, ptr %i.ci, align 8
  %i.cp = lshr i8 %i.ck, 1
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = select i1 %i.cl, i64 %i.co, i64 %i.cq
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !109
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr %i.cn, i64 %i.cr, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !72

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, %i.ce
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.from..loopexit.split-lp.i.i:                     ; preds = %bb.j
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.cv = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.cv) #44
  unreachable

AfterCoroSave:                                    ; preds = %bb.h
  %index.addr140 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 0, ptr %index.addr140, align 8
  %i.cw = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr135, ptr nonnull %i.c) #40
  br i1 %i.cw, label %AfterCoroEnd, label %bb.m

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from.106: ; preds = %bb.f
  %i.cx = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev14ImageSaveErrorE
          catch ptr null
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

.from.99:                                         ; preds = %bb.g
  %i.cy = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev14ImageSaveErrorE
          catch ptr null
  br label %.from.103

bb.m:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr135, align 8, !tbaa !778 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.97, !inline_history !74

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.n, %bb.k, %.noexc.i.i, %bb.i
  store ptr null, ptr %.reload.addr135, align 8, !tbaa !778
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.97

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr135) #40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !231 ; 5 uses
  %.not.i43 = icmp eq ptr %i.dd, null
  br i1 %.not.i43, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = atomicrmw add ptr %i.de, i64 -1 acq_rel, align 8
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.p, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(24) %i.dd) #40, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dd) #40
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.p, %bb.o, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.reload134 = load i64, ptr %.spill.addr132, align 8, !tbaa !796
  %.reload129 = load ptr, ptr %.spill.addr, align 8, !tbaa !796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dk = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #40
  %i.dl = sub nsw i64 %i.dk, %.reload134
  %i.dm = sitofp i64 %i.dl to double
  %i.dn = fdiv double %i.dm, 1.000000e+09
  store double %i.dn, ptr %i.a, align 8, !tbaa !281
  %i.do = load ptr, ptr %.reload129, align 8, !tbaa !253
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc44 unwind label %.from.101

.noexc44:                                         ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !796
  %i.dq = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathES7_RKdEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSE_(ptr noundef nonnull align 8 dereferenceable(56) %i.ds, i32 noundef 32, ptr nonnull @.str.269, i64 39, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.q unwind label %.from.101

bb.q:                                             ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.dt = load i8, ptr %.reload.addr136, align 8
  %i.du = trunc i8 %i.dt to i1
  br i1 %i.du, label %bb.r, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.dv = load ptr, ptr %i.at, align 8, !tbaa !105
  %i.dw = load i64, ptr %.reload.addr136, align 8
  %i.dx = and i64 %i.dw, -2
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dx) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.from.97:                                         ; preds = %bb.n, %.thread
  %i.dy = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev14ImageSaveErrorE
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr135) #40
  br label %.from.103

.from.103:                                        ; preds = %.from.99, %.from.97
  %.pn = phi { ptr, i32 } [ %i.dy, %.from.97 ], [ %i.cy, %.from.99 ]
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr137) #40
  br label %bb.s

.from.101:                                        ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %.noexc44
  %i.dz = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev14ImageSaveErrorE
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.s

bb.s:                                             ; preds = %.from.101, %.from.103
  %.pn27.pn = phi { ptr, i32 } [ %i.dz, %.from.101 ], [ %.pn, %.from.103 ] ; 2 uses
  %i.ea = load i8, ptr %.reload.addr136, align 8
  %i.eb = trunc i8 %i.ea to i1
  br i1 %i.eb, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from., label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from.: ; preds = %bb.s
  %i.ec = load ptr, ptr %i.at, align 8, !tbaa !105
  %i.ed = load i64, ptr %.reload.addr136, align 8
  %i.ee = and i64 %i.ed, -2
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ee) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46: ; preds = %bb.s, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from., %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from.106
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.cx, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from.106 ], [ %.pn27.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from. ], [ %.pn27.pn, %bb.s ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn27.pn.pn, 0 ; 2 uses
  %.319 = extractvalue { ptr, i32 } %.pn27.pn.pn, 1
  %i.ef = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev14ImageSaveErrorE) #40
  %i.eg = icmp eq i32 %.319, %i.ef
  br i1 %i.eg, label %bb.t, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

bb.t:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  %.reload131 = load ptr, ptr %.spill.addr, align 8, !tbaa !796 ; 2 uses
  %i.eh = call ptr @__cxa_begin_catch(ptr %.3) #40
  %i.ei = load ptr, ptr %.reload131, align 8, !tbaa !253
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.reload131, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.el = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #40
  store ptr %i.el, ptr %i.b, align 8, !tbaa !104
  invoke void @_ZN4tlog5errorIJRKNSt3__14__fs10filesystem4pathES6_PKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr nonnull @.str.270, i64 30, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit unwind label %.from.110

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.r, %bb.q, %bb.u
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #44
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  invoke void @__cxa_end_catch()
          to label %.from.112 unwind label %bb.ae

.from.110:                                        ; preds = %bb.u
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.112

.from.112:                                        ; preds = %.from.110, %bb.w
  %.pn31 = phi { ptr, i32 } [ %i.ep, %.from.110 ], [ %i.eo, %bb.w ]
  %.4 = extractvalue { ptr, i32 } %.pn31, 0
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46, %.from.112
  %.5 = phi ptr [ %.4, %.from.112 ], [ %.3, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46 ]
  %i.eq = call ptr @__cxa_begin_catch(ptr %.5) #40 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr139)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.x
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !773
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = atomicrmw add ptr %i.es, i32 -1 acq_rel, align 4 ; 2 uses
  %i.eu = icmp slt i32 %i.et, 1
  br i1 %i.eu, label %bb.y, label %_ZN3tev5Latch9countDownEv.exit.i47

bb.y:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i51 unwind label %.from..loopexit.split-lp.i.i48

.noexc.i.i51:                                     ; preds = %bb.y
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !122 ; 7 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !130
  %i.ey = and i32 %i.ex, 8
  %.not.i.i.i.i52 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i.i.i52, label %bb.z, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.z:                                             ; preds = %.noexc.i.i51
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !131 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i.i53 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not12.i.i.i.i.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i54

.from..lr.ph.i.i.i.i.i54:                         ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 33
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  br label %.from..noexc2.i.i58

.from..noexc2.i.i58:                              ; preds = %.noexc2.i.i58, %.from..lr.ph.i.i.i.i.i54
  %.sroa.09.013.i.i.i.i.i55 = phi ptr [ %i.fa, %.from..lr.ph.i.i.i.i.i54 ], [ %i.fs, %.noexc2.i.i58 ] ; 2 uses
  %i.fh = load ptr, ptr %.sroa.09.013.i.i.i.i.i55, align 8, !tbaa !136 ; 2 uses
  %i.fi = load i8, ptr %i.fd, align 8             ; 2 uses
  %i.fj = trunc i8 %i.fi to i1                    ; 2 uses
  %i.fk = load ptr, ptr %i.fe, align 8
  %i.fl = select i1 %i.fj, ptr %i.fk, ptr %i.ff
  %i.fm = load i64, ptr %i.fg, align 8
  %i.fn = lshr i8 %i.fi, 1
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = select i1 %i.fj, i64 %i.fm, i64 %i.fo
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !109
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr %i.fl, i64 %i.fp, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i58 unwind label %.from..loopexit.i.i56, !inline_history !72

.noexc2.i.i58:                                    ; preds = %.from..noexc2.i.i58
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i55, i64 16 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.fs, %i.fc
  br i1 %.not.i.i.i.i.i59, label %_ZN3tev5Latch9countDownEv.exit.i47, label %.from..noexc2.i.i58

.from..loopexit.i.i56:                            ; preds = %.from..noexc2.i.i58
  %lpad.loopexit.i.i57 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

.from..loopexit.split-lp.i.i48:                   ; preds = %bb.y
  %lpad.loopexit.split-lp.i.i49 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

bb.aa:                                            ; preds = %.from..loopexit.split-lp.i.i48, %.from..loopexit.i.i56
  %lpad.phi.i.i50 = phi { ptr, i32 } [ %lpad.loopexit.i.i57, %.from..loopexit.i.i56 ], [ %lpad.loopexit.split-lp.i.i49, %.from..loopexit.split-lp.i.i48 ]
  %i.ft = extractvalue { ptr, i32 } %lpad.phi.i.i50, 0
  call void @__clang_call_terminate(ptr %i.ft) #44
  unreachable

_ZN3tev5Latch9countDownEv.exit.i47:               ; preds = %.noexc2.i.i58, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fu = icmp slt i32 %i.et, 2
  br i1 %i.fu, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i51, %bb.z, %_ZN3tev5Latch9countDownEv.exit.i47
  %i.fv = load ptr, ptr %i.f, align 8, !tbaa !773
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !263 ; 2 uses
  %i.fx = inttoptr i64 %i.fw to ptr               ; 3 uses
  store ptr %i.fx, ptr %.reload.addr135, align 8
  %.not.i60 = icmp eq i64 %i.fw, 0
  br i1 %.not.i60, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend82

AfterCoroSuspend82:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.c, align 8
  %index.addr141 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 1, ptr %index.addr141, align 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr nonnull %i.fx)
  br label %AfterCoroEnd

bb.ab:                                            ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.124 unwind label %bb.ae

.from.120:                                        ; preds = %bb.x
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.124

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i47
  %i.gb = load ptr, ptr %i.j, align 8, !tbaa !760 ; 5 uses
  %.not.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = atomicrmw add ptr %i.gc, i64 -1 acq_rel, align 8
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.ad, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !109
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(24) %i.gb) #40, !inline_history !76
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gb) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ac, %bb.ad
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr139) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 136) #40
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend82, %AfterCoroSave
  ret void

.body.from.124:                                   ; preds = %bb.ab, %.from.120
  %.pn32 = phi { ptr, i32 } [ %i.ga, %.from.120 ], [ %i.fz, %bb.ab ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #40
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr139) #40
  br label %.body

.body:                                            ; preds = %.body.from.124, %.body.from.122, %.body.from.
  %.merged34 = phi { ptr, i32 } [ %.pn32, %.body.from.124 ], [ %i.t, %.body.from. ], [ %i.e, %.body.from.122 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 136) #40
  resume { ptr, i32 } %.merged34

bb.ae:                                            ; preds = %bb.ab, %bb.w
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future.1132") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.1210", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future.1132", align 8 ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.1212, align 8           ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #42, !noalias !2412 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !2412
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !109, !noalias !2412
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !109, !noalias !2412
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !263, !noalias !2412
  store i64 %i.g, ptr %i.f, align 8, !tbaa !263, !noalias !2412
  store ptr %i.d, ptr %i.e, align 16, !tbaa !799, !noalias !2412
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !2412

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #40, !noalias !2412
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #40, !noalias !2412
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #43, !noalias !2412
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !802, !alias.scope !2413
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !803, !alias.scope !2413
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.1132") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2427, !range !92, !noundef !93
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store ptr %i.d, ptr %9, align 8, !tbaa !802
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !803
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !109
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !802
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !803
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !703
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !810
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !2428
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !811  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !812
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !703
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !703 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #44
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
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !811
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !813 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !703 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_2
begin_hunk_3_@"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffENK3$_1clEv.resume":bb.a
.noexc44:                                         ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %.reload = load ptr, ptr %.reload.addr128, align 8, !tbaa !796
  %i.t = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathES7_RKdEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSE_(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i32 noundef 32, ptr nonnull @.str.269, i64 39, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %.from.101

bb.e:                                             ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.w = load i8, ptr %.reload.addr136, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105
  %i.aa = load i64, ptr %.reload.addr136, align 8
  %i.ab = and i64 %i.aa, -2
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.from.103:                                        ; preds = %bb.b, %.thread
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev14ImageSaveErrorE
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr135) #40
  tail call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr137) #40
  br label %bb.g

.from.101:                                        ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %.noexc44
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev14ImageSaveErrorE
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.g

bb.g:                                             ; preds = %.from.101, %.from.103
  %.pn27.pn = phi { ptr, i32 } [ %i.ad, %.from.101 ], [ %i.ac, %.from.103 ] ; 2 uses
  %i.ae = load i8, ptr %.reload.addr136, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from., label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from.: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.ai = load i64, ptr %.reload.addr136, align 8
  %i.aj = and i64 %i.ai, -2
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46: ; preds = %bb.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46.from.
  %.3 = extractvalue { ptr, i32 } %.pn27.pn, 0    ; 2 uses
  %.319 = extractvalue { ptr, i32 } %.pn27.pn, 1
  %i.ak = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev14ImageSaveErrorE) #40
  %i.al = icmp eq i32 %.319, %i.ak
  br i1 %i.al, label %bb.h, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  %.reload.addr130 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload131 = load ptr, ptr %.reload.addr130, align 8, !tbaa !796 ; 2 uses
  %i.am = call ptr @__cxa_begin_catch(ptr %.3) #40
  %i.an = load ptr, ptr %.reload131, align 8, !tbaa !253
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.reload131, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.aq = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #40
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !104
  invoke void @_ZN4tlog5errorIJRKNSt3__14__fs10filesystem4pathES6_PKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr nonnull @.str.270, i64 30, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit unwind label %.from.110

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.e, %bb.f, %bb.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #44
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  invoke void @__cxa_end_catch()
          to label %.from.112 unwind label %bb.u

.from.110:                                        ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.112

.from.112:                                        ; preds = %.from.110, %bb.k
  %.pn31 = phi { ptr, i32 } [ %i.au, %.from.110 ], [ %i.at, %bb.k ]
  %.4 = extractvalue { ptr, i32 } %.pn31, 0
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46, %.from.112
  %.5 = phi ptr [ %.4, %.from.112 ], [ %.3, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46 ]
  %i.av = call ptr @__cxa_begin_catch(ptr %.5) #40 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr139)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !773
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.m, label %_ZN3tev5Latch9countDownEv.exit.i47

bb.m:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i51 unwind label %.from..loopexit.split-lp.i.i48

.noexc.i.i51:                                     ; preds = %bb.m
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !122 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !130
  %i.be = and i32 %i.bd, 8
  %.not.i.i.i.i52 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i52, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.n:                                             ; preds = %.noexc.i.i51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !131 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i.i53 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not12.i.i.i.i.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i54

.from..lr.ph.i.i.i.i.i54:                         ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  br label %.from..noexc2.i.i58

.from..noexc2.i.i58:                              ; preds = %.noexc2.i.i58, %.from..lr.ph.i.i.i.i.i54
  %.sroa.09.013.i.i.i.i.i55 = phi ptr [ %i.bg, %.from..lr.ph.i.i.i.i.i54 ], [ %i.by, %.noexc2.i.i58 ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.09.013.i.i.i.i.i55, align 8, !tbaa !136 ; 2 uses
  %i.bo = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bp = trunc i8 %i.bo to i1                    ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = select i1 %i.bp, ptr %i.bq, ptr %i.bl
  %i.bs = load i64, ptr %i.bm, align 8
  %i.bt = lshr i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = select i1 %i.bp, i64 %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !109
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr %i.br, i64 %i.bv, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i58 unwind label %.from..loopexit.i.i56, !inline_history !72

.noexc2.i.i58:                                    ; preds = %.from..noexc2.i.i58
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i55, i64 16 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.by, %i.bi
  br i1 %.not.i.i.i.i.i59, label %_ZN3tev5Latch9countDownEv.exit.i47, label %.from..noexc2.i.i58

.from..loopexit.i.i56:                            ; preds = %.from..noexc2.i.i58
  %lpad.loopexit.i.i57 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

.from..loopexit.split-lp.i.i48:                   ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i49 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %.from..loopexit.split-lp.i.i48, %.from..loopexit.i.i56
  %lpad.phi.i.i50 = phi { ptr, i32 } [ %lpad.loopexit.i.i57, %.from..loopexit.i.i56 ], [ %lpad.loopexit.split-lp.i.i49, %.from..loopexit.split-lp.i.i48 ]
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i.i50, 0
  call void @__clang_call_terminate(ptr %i.bz) #44
  unreachable

_ZN3tev5Latch9countDownEv.exit.i47:               ; preds = %.noexc2.i.i58, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ca = icmp slt i32 %i.az, 2
  br i1 %i.ca, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i47, %bb.n, %.noexc.i.i51
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !773
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !263 ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  store ptr %i.cd, ptr %.reload.addr135, align 8
  %.not.i60 = icmp eq i64 %i.cc, 0
  br i1 %.not.i60, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr141 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %index.addr141, align 8
  %i.ce = load ptr, ptr %i.cd, align 8
  musttail call void %i.ce(ptr nonnull %i.cd)
  ret void

bb.q:                                             ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

.from.120:                                        ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i47, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !760 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = atomicrmw add ptr %i.cj, i64 -1 acq_rel, align 8
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(24) %i.ci) #40, !inline_history !76
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ci) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.s, %bb.r, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr139) #40
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #40
  ret void

bb.t:                                             ; preds = %bb.q, %.from.120
  %.pn32 = phi { ptr, i32 } [ %i.cg, %.from.120 ], [ %i.cf, %bb.q ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn32

bb.u:                                             ; preds = %bb.q, %bb.k
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #44
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffENK3$_1clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(136) %0) #39 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, !prof !2508

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr135 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr135) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231  ; 5 uses
  %.not.i43 = icmp eq ptr %i.b, null
  br i1 %.not.i43, label %.from._ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %.from._ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #40, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #40
  br label %.from._ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

.from._ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.b, %bb.a, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.i = load i8, ptr %.reload.addr136, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %.from._ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = load i64, ptr %.reload.addr136, align 8
  %i.n = and i64 %i.m, -2
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %resume.entry, %.from._ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !760  ; 5 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 -1 acq_rel, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #40, !inline_history !76
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.e, %bb.d, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr139) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #40
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_iENKUlSM_PS0_iE_clESM_SS_i.resume"(ptr noundef nonnull align 8 dereferenceable(160) %0) #19 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr85 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend58, !prof !2509

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffENK3$_1clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.1130") align 8 %.reload.addr85, ptr noundef nonnull align 8 dereferenceable(76) %.reload.addr)
          to label %bb.a unwind label %.from.71

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !773
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave56

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !773
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread39.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !130
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread39.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not12.i.i.i.i.i, label %.thread39.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.p, %.from..lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc2.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !72

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread39.sink.split, label %.from..noexc2.i.i

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
  tail call void @__clang_call_terminate(ptr %i.ai) #44
  unreachable

AfterCoroSave56:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr85, ptr nonnull %0) #40
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend58

.from.71:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend58:                               ; preds = %resume.entry, %AfterCoroSave56
  %.pr = load ptr, ptr %.reload.addr85, align 8, !tbaa !778 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread39, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend58
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread39.sink.split unwind label %.from.69, !inline_history !74

.thread39.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr85, align 8, !tbaa !778
  br label %.thread39

.thread39:                                        ; preds = %.thread39.sink.split, %AfterCoroSuspend58
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.69

bb.g:                                             ; preds = %.thread39
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr85) #40
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr88)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #44
  unreachable

.from.69:                                         ; preds = %bb.f, %.thread39
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr85) #40
  br label %bb.i

bb.i:                                             ; preds = %.from.69, %.from.71
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.69 ], [ %i.ak, %.from.71 ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.0) #40 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr88)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.79

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !773
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i22

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i26 unwind label %.from..loopexit.split-lp.i.i23

.noexc.i.i26:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !130
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i27 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i27, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !131 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i.i28 = icmp eq ptr %i.bc, %i.be
  br i1 %.not12.i.i.i.i.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i29

.from..lr.ph.i.i.i.i.i29:                         ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  br label %.from..noexc2.i.i33

.from..noexc2.i.i33:                              ; preds = %.noexc2.i.i33, %.from..lr.ph.i.i.i.i.i29
  %.sroa.09.013.i.i.i.i.i30 = phi ptr [ %i.bc, %.from..lr.ph.i.i.i.i.i29 ], [ %i.bu, %.noexc2.i.i33 ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i30, align 8, !tbaa !136 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !109
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i33 unwind label %.from..loopexit.i.i31, !inline_history !72

.noexc2.i.i33:                                    ; preds = %.from..noexc2.i.i33
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i34, label %_ZN3tev5Latch9countDownEv.exit.i22, label %.from..noexc2.i.i33

.from..loopexit.i.i31:                            ; preds = %.from..noexc2.i.i33
  %lpad.loopexit.i.i32 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i23:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i24 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i23, %.from..loopexit.i.i31
  %lpad.phi.i.i25 = phi { ptr, i32 } [ %lpad.loopexit.i.i32, %.from..loopexit.i.i31 ], [ %lpad.loopexit.split-lp.i.i24, %.from..loopexit.split-lp.i.i23 ]
  %i.bv = extractvalue { ptr, i32 } %lpad.phi.i.i25, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #44
  unreachable

_ZN3tev5Latch9countDownEv.exit.i22:               ; preds = %.noexc2.i.i33, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i22, %bb.l, %.noexc.i.i26
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !773
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !263 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr85, align 8
  %.not.i35 = icmp eq i64 %i.by, 0
  br i1 %.not.i35, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  musttail call void %i.ca(ptr nonnull %i.bz)
  ret void

bb.o:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

.from.79:                                         ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i22, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !760 ; 5 uses
  %.not.i.i36 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !109
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #40, !inline_history !76
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr88) #40
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

bb.r:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !105
  %i.cq = load i64, ptr %i.cl, align 8
  %i.cr = and i64 %i.cq, -2
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cr) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i: ; preds = %bb.r, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !231 ; 5 uses
  %.not.i.i37 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i37, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", label %bb.s

bb.s:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !109
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #40, !inline_history !75
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #40
  br label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit": ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i, %bb.s, %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #40
  br label %CoroEnd

CoroEnd:                                          ; preds = %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", %AfterCoroSave56
  ret void

bb.u:                                             ; preds = %bb.o, %.from.79
  %.pn13 = phi { ptr, i32 } [ %i.cc, %.from.79 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn13

bb.v:                                             ; preds = %bb.o
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  tail call void @__clang_call_terminate(ptr %i.db) #44
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_iENKUlSM_PS0_iE_clESM_SS_i.destroy"(ptr noundef nonnull align 8 dereferenceable(160) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !2510

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr85 = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr85) #40
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !760  ; 5 uses
  %.not.i.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #40, !inline_history !76
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr88) #40
  %i.k = load i8, ptr %i.j, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = load i64, ptr %i.j, align 8
  %i.p = and i64 %i.o, -2
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i: ; preds = %bb.c, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !231  ; 5 uses
  %.not.i.i37 = icmp eq ptr %i.r, null
  br i1 %.not.i.i37, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", label %bb.d

bb.d:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #40, !inline_history !75
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #40
  br label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit": ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i.resume"(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.reload.addr83 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr80, align 8, !tbaa !778 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body17, !inline_history !74

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr80, align 8, !tbaa !778
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.body17

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr80) #40
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.i = load i64, ptr %i.d, align 8
  %i.j = and i64 %i.i, -2
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i: ; preds = %bb.c, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !231  ; 5 uses
  %.not.i.i21 = icmp eq ptr %i.l, null
  br i1 %.not.i.i21, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", label %bb.d

bb.d:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #40, !inline_history !75
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #40
  br label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit": ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i, %bb.d, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr83)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #44
  unreachable

.body17:                                          ; preds = %.thread, %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr80) #40
  tail call fastcc void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %.reload.addr) #40
  %.19 = extractvalue { ptr, i32 } %i.u, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.19) #40 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr83)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %.body17
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.74

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.g, %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !773
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %_ZN3tev5Latch9countDownEv.exit.i22

bb.h:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i26 unwind label %.from..loopexit.split-lp.i.i23

.noexc.i.i26:                                     ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !122 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !130
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i27 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i27, label %bb.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.i:                                             ; preds = %.noexc.i.i26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i.i28 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i29

.from..lr.ph.i.i.i.i.i29:                         ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i33

.from..noexc2.i.i33:                              ; preds = %.noexc2.i.i33, %.from..lr.ph.i.i.i.i.i29
  %.sroa.09.013.i.i.i.i.i30 = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i29 ], [ %i.ay, %.noexc2.i.i33 ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i30, align 8, !tbaa !136 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !109
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.271, i64 36)
          to label %.noexc2.i.i33 unwind label %.from..loopexit.i.i31, !inline_history !72

.noexc2.i.i33:                                    ; preds = %.from..noexc2.i.i33
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i34, label %_ZN3tev5Latch9countDownEv.exit.i22, label %.from..noexc2.i.i33

.from..loopexit.i.i31:                            ; preds = %.from..noexc2.i.i33
  %lpad.loopexit.i.i32 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i23:                   ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i24 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i23, %.from..loopexit.i.i31
  %lpad.phi.i.i25 = phi { ptr, i32 } [ %lpad.loopexit.i.i32, %.from..loopexit.i.i31 ], [ %lpad.loopexit.split-lp.i.i24, %.from..loopexit.split-lp.i.i23 ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i25, 0
  tail call void @__clang_call_terminate(ptr %i.az) #44
  unreachable

_ZN3tev5Latch9countDownEv.exit.i22:               ; preds = %.noexc2.i.i33, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ba = icmp slt i32 %i.z, 2
  br i1 %i.ba, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i22, %bb.i, %.noexc.i.i26
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !773
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !263 ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  store ptr %i.bd, ptr %.reload.addr80, align 8
  %.not.i35 = icmp eq i64 %i.bc, 0
  br i1 %.not.i35, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr85 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %index.addr85, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  musttail call void %i.be(ptr nonnull %i.bd)
  ret void

bb.l:                                             ; preds = %.body17
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.from.74:                                         ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i22, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !760 ; 5 uses
  %.not.i.i36 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 acq_rel, align 8
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !109
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #40, !inline_history !76
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.n, %bb.m, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr83) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #40
  ret void

bb.o:                                             ; preds = %bb.l, %.from.74
  %.pn13 = phi { ptr, i32 } [ %i.bg, %.from.74 ], [ %i.bf, %bb.l ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn13

bb.p:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #44
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i.destroy"(ptr noundef nonnull align 8 dereferenceable(160) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", !prof !2511

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr80) #40
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.a, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i: ; preds = %bb.a, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231  ; 5 uses
  %.not.i.i21 = icmp eq ptr %i.i, null
  br i1 %.not.i.i21, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit", label %bb.b

bb.b:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 -1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #40, !inline_history !75
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #40
  br label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"

"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit": ; preds = %resume.entry, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i, %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !760  ; 5 uses
  %.not.i.i36 = icmp eq ptr %i.q, null
  br i1 %.not.i.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 -1 acq_rel, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #40, !inline_history !76
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.e, %bb.d, %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit"
  %.reload.addr83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr83) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #40
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { inlinehint mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #39 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { noreturn }
attributes #42 = { builtin allocsize(0) }
attributes #43 = { builtin nounwind }
attributes #44 = { noreturn nounwind }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind willreturn memory(none) }
attributes #47 = { allocsize(0) }

!llvm.module.flags = !{!80, !81, !82, !83}
!llvm.ident = !{!84}
!llvm.errno.tbaa = !{!89}

!0 = distinct !{!0, !106}
!1 = distinct !{ptr @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev, null, null}
!2 = distinct !{!2, !106}
!3 = distinct !{!3, !106}
!4 = distinct !{!4, !106}
!5 = distinct !{!5, !106}
!6 = distinct !{!6, !106}
!7 = distinct !{null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !106}
!10 = distinct !{!10, !106}
!11 = distinct !{!11, !106}
!12 = distinct !{null, null}
!13 = distinct !{null, null, null}
!14 = distinct !{null, null}
!15 = distinct !{!15, !106}
!16 = distinct !{!16, !106}
!17 = distinct !{!17, !106}
!18 = distinct !{!18, !106}
!19 = distinct !{null, null}
!20 = distinct !{null, null}
!21 = distinct !{!21, !106}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{!24, !106}
!25 = distinct !{!25, !106}
!26 = distinct !{!26, !106}
!27 = distinct !{null, null, null, null}
!28 = distinct !{!28, !106}
!29 = distinct !{null, null}
!30 = distinct !{null}
!31 = distinct !{null, null}
!32 = distinct !{!32, !106}
!33 = distinct !{!33, !106}
!34 = distinct !{!34, !106}
!35 = distinct !{null}
!36 = distinct !{null, null, null, null}
!37 = distinct !{null, null, null}
!38 = distinct !{null}
!39 = distinct !{!39, !106}
!40 = distinct !{!40, !106}
!41 = distinct !{null, null, null, null}
!42 = distinct !{null, null, null, null, null}
!43 = distinct !{null}
!44 = distinct !{null, null}
!45 = distinct !{!45, !106}
!46 = distinct !{!46, !106}
!47 = distinct !{!47, !106}
!48 = distinct !{ptr @_ZN4args5GroupD2Ev, null, null}
!49 = distinct !{!49, !106}
!50 = distinct !{!50, !106}
!51 = distinct !{!51, !106}
!52 = distinct !{!52, !106}
!53 = distinct !{null}
!54 = distinct !{!54, !106}
!55 = distinct !{!55, !106}
!56 = distinct !{!56, !106}
!57 = distinct !{!57, !106}
!58 = distinct !{!58, !106}
!59 = distinct !{!59, !106}
!60 = distinct !{!60, !106}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = distinct !{!65, !106}
!66 = distinct !{!66, !106}
!67 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!68 = distinct !{null}
!69 = distinct !{null, ptr @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev, null, null}
!70 = distinct !{null, ptr @_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev, null, null}
!71 = distinct !{!71, !106}
!72 = distinct !{null}
!73 = distinct !{null, null, null}
!74 = distinct !{null}
!75 = distinct !{ptr @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev", ptr @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev, null, null}
!76 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!77 = distinct !{null, null, null}
!78 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!79 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v2i64
!2308 = distinct !{!2308, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2309 = distinct !{!2309, !2308, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2310 = distinct !{!2310, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2311 = distinct !{!2311, !2310, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2312 = distinct !{!2312, !"_ZN3fmt3v126formatIJRmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!2313 = distinct !{!2313, !2312, !"_ZN3fmt3v126formatIJRmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!2314 = distinct !{!2314, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2315 = distinct !{!2315, !2314, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2316 = distinct !{!2316, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2317 = distinct !{!2317, !2316, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2318 = distinct !{!2318, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!2319 = distinct !{!2319, !2318, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!2320 = !{!2287}
!2321 = !{!2289}
!2322 = !{!2291}
!2323 = !{!2293}
!2324 = !{!2293, !2291, !2289, !2287}
!2325 = !{!"_ZTSZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_2", !247, i64 0, !260, i64 8}
!2326 = !{!2325, !247, i64 0}
!2327 = !{!2295, !2293, !2291, !2289, !2287}
!2328 = !{!2297, !2293, !2291, !2289, !2287}
!2329 = !{!2299, !2293, !2291, !2289, !2287}
!2330 = !{!2325, !260, i64 8}
!2331 = !{!2301, !2293, !2291, !2289, !2287}
!2332 = !{!2303}
!2333 = !{!2303, !2293, !2291, !2289, !2287}
!2334 = !{!2305}
!2335 = !{!2305, !2303, !2293, !2291, !2289, !2287}
!2336 = !{!2307, !2293, !2291, !2289, !2287}
!2337 = !{!"_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE", !103, i64 0, !137, i64 8}
!2338 = !{!2337, !103, i64 0}
!2339 = !{!2337, !137, i64 8}
!2340 = !{!2309}
!2341 = !{!2309, !2293, !2291, !2289, !2287}
!2342 = !{!2311}
!2343 = !{!2311, !2309, !2293, !2291, !2289, !2287}
!2344 = !{!2311, !2309}
!2345 = !{!2313, !2293, !2291, !2289, !2287}
!2346 = !{!2315}
!2347 = !{!2315, !2293, !2291, !2289, !2287}
!2348 = !{!2317}
!2349 = !{!2317, !2315, !2293, !2291, !2289, !2287}
!2350 = !{!2319, !2293, !2291, !2289, !2287}
!2351 = distinct !{!2351, !106}
!2352 = distinct !{!2352, !"_ZN3fmt3v126formatIJRKNSt3__14__fs10filesystem4pathES7_EEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!2353 = distinct !{!2353, !2352, !"_ZN3fmt3v126formatIJRKNSt3__14__fs10filesystem4pathES7_EEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!2354 = distinct !{!2354, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2355 = distinct !{!2355, !2354, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2356 = distinct !{!2356, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2357 = distinct !{!2357, !2356, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2358 = !{!2353}
!2359 = !{!2355}
!2360 = !{!2357}
!2361 = !{!2357, !2355}
!2362 = distinct !{!2362, !106}
!2363 = distinct !{!2363, !"_ZNSt3__112__hash_tableINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE21__construct_node_hashIRKS3_JEEENS_10unique_ptrINS_11__hash_nodeIS3_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEmOT_DpOT0_"}
!2364 = distinct !{!2364, !2363, !"_ZNSt3__112__hash_tableINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE21__construct_node_hashIRKS3_JEEENS_10unique_ptrINS_11__hash_nodeIS3_PvEENS_22__hash_node_destructorINS8_ISH_EEEEEEmOT_DpOT0_: argument 0"}
!2365 = !{!2364}
!2366 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_11__hash_nodeINS_4__fs10filesystem4pathEPvEELi0ELb0EEE", !790, i64 0}
!2367 = !{!2366, !790, i64 0}
!2368 = !{!791, !791, i64 0}
!2369 = distinct !{!2369, !106}
!2370 = distinct !{!2370, !106}
!2371 = !{!774, !774, i64 0}
!2372 = !{!758, !758, i64 0}
!2373 = distinct !{!2373, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!2374 = distinct !{!2374, !2373, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!2375 = distinct !{!2375, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!2376 = distinct !{!2376, !2375, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!2377 = distinct !{!2377, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!2378 = distinct !{!2378, !2377, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!2379 = distinct !{!2379, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!2380 = distinct !{!2380, !2379, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!2381 = !{!2374}
!2382 = !{!2376}
!2383 = !{!2376, !2374}
!2384 = !{!2378, !2376, !2374}
!2385 = !{!2380}
!2386 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev}
!2387 = distinct !{!2387, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!2388 = distinct !{!2388, !2387, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!2389 = distinct !{!2389, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!2390 = distinct !{!2390, !2389, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!2391 = distinct !{!2391, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!2392 = distinct !{!2392, !2391, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!2393 = distinct !{!2393, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!2394 = distinct !{!2394, !2393, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!2395 = !{!2388}
!2396 = !{!2390}
!2397 = !{!2390, !2388}
!2398 = !{!2392, !2390, !2388}
!2399 = !{!2394}
!2400 = !{!268, !90, i64 64}
!2401 = !{!268, !90, i64 68}
!2402 = distinct !{!2402, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!2403 = distinct !{!2403, !2402, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!2404 = distinct !{!2404, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!2405 = distinct !{!2405, !2404, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!2406 = distinct !{!2406, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!2407 = distinct !{!2407, !2406, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!2408 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!2409 = distinct !{!2409, !106}
!2410 = !{!2403}
!2411 = !{!2405}
!2412 = !{!2405, !2403}
!2413 = !{!2407, !2405, !2403}
!2414 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !306, i64 0}
!2415 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !225, i64 0, !225, i64 8, !2414, i64 16}
!2416 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!2417 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !807, i64 0, !2416, i64 24}
!2418 = !{!"_ZTSNSt3__115recursive_mutexE", !86, i64 0}
!2419 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !86, i64 0}
!2420 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !2419, i64 0}
!2421 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !2420, i64 0}
!2422 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !2421, i64 0}
!2423 = !{!"_ZTSNSt3__16atomicIlEE", !2422, i64 0}
!2424 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !86, i64 0}
!2425 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !2423, i64 0, !2424, i64 8, !87, i64 40}
!2426 = !{!"_ZTSN3tev10ThreadPoolE", !112, i64 8, !2415, i64 16, !2417, i64 40, !2418, i64 72, !2425, i64 112, !2418, i64 160, !299, i64 200, !299, i64 208}
!2427 = !{!2426, !112, i64 8}
!2428 = !{!809, !112, i64 52}
!2429 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!2430 = distinct !{null, null, null}
!2431 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !94, i64 0}
!2432 = !{!2431, !94, i64 0}
!2433 = distinct !{!2433, !106}
!2434 = distinct !{null, null, null, null, null, null, null, null, null}
!2435 = distinct !{null, null, null, null}
!2436 = distinct !{null}
!2437 = distinct !{!2437, !106}
!2438 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!2439 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!2440 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!2441 = distinct !{null}
!2442 = !{!"_ZTSNSt3__17promiseIvEE", !774, i64 0}
!2443 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !798, i64 0, !2442, i64 48}
!2444 = !{!2443, !774, i64 48}
!2445 = !{!"_ZTSNSt3__117__assoc_sub_stateE", !425, i64 0, !761, i64 16, !176, i64 24, !177, i64 64, !87, i64 112}
!2446 = !{!2445, !87, i64 112}
!2447 = distinct !{!2447, !"_ZN3fmt3v126formatIJRKNSt3__14__fs10filesystem4pathES7_RKdEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSH_"}
!2448 = distinct !{!2448, !2447, !"_ZN3fmt3v126formatIJRKNSt3__14__fs10filesystem4pathES7_RKdEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSH_: argument 0"}
!2449 = distinct !{!2449, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2450 = distinct !{!2450, !2449, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2451 = distinct !{!2451, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2452 = distinct !{!2452, !2451, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2453 = !{!2448}
!2454 = !{!2450}
!2455 = !{!2452}
!2456 = !{!2452, !2450}
!2457 = distinct !{!2457, !"_ZN3fmt3v126formatIJRKNSt3__14__fs10filesystem4pathES7_PKcEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSH_"}
!2458 = distinct !{!2458, !2457, !"_ZN3fmt3v126formatIJRKNSt3__14__fs10filesystem4pathES7_PKcEEENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSH_: argument 0"}
!2459 = distinct !{!2459, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2460 = distinct !{!2460, !2459, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2461 = distinct !{!2461, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2462 = distinct !{!2462, !2461, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2463 = !{!2458}
!2464 = !{!2460}
!2465 = !{!2462}
!2466 = !{!2462, !2460}
!2467 = distinct !{!2467, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!2468 = distinct !{!2468, !2467, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!2469 = distinct !{!2469, !106}
!2470 = !{!814, !814, i64 0}
!2471 = !{!2468}
!2472 = distinct !{!2472, !106}
!2473 = !{!815, !814, i64 0}
!2474 = distinct !{!2474, !"_ZN3fmt3v126formatIJmRKdEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!2475 = distinct !{!2475, !2474, !"_ZN3fmt3v126formatIJmRKdEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!2476 = distinct !{!2476, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2477 = distinct !{!2477, !2476, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2478 = distinct !{!2478, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2479 = distinct !{!2479, !2478, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2480 = !{!2475}
!2481 = !{!2477}
!2482 = !{!2479}
!2483 = !{!2479, !2477}
!2484 = distinct !{!2484, !"_ZN3fmt3v126formatIJRiRPKcEEENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSE_"}
!2485 = distinct !{!2485, !2484, !"_ZN3fmt3v126formatIJRiRPKcEEENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSE_: argument 0"}
!2486 = distinct !{!2486, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2487 = distinct !{!2487, !2486, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2488 = distinct !{!2488, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2489 = distinct !{!2489, !2488, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2490 = !{!2485}
!2491 = !{!2487}
!2492 = !{!2489}
!2493 = !{!2489, !2487}
!2494 = distinct !{!2494, !"_ZN3fmt3v126formatIJRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!2495 = distinct !{!2495, !2494, !"_ZN3fmt3v126formatIJRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEES8_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!2496 = distinct !{!2496, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2497 = distinct !{!2497, !2496, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2498 = distinct !{!2498, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2499 = distinct !{!2499, !2498, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2500 = !{!2495}
!2501 = !{!2497}
!2502 = !{!2499}
!2503 = !{!2499, !2497}
!2504 = distinct !{!2504, !106}
!2505 = distinct !{!2505, !106}
!2506 = distinct !{!2506, !106}
!2507 = distinct !{null}
!2508 = !{!"branch_weights", i32 -2004248167, i32 1238056736}
!2509 = !{!"branch_weights", i32 -171659984, i32 343608614}
!2510 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!2511 = !{!"branch_weights", i32 -2004248167, i32 1650736781}
end_hunk_4
