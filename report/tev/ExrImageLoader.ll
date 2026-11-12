Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ExrImageLoader?download=true
inline.NumInlined: 7920
inline.NumDeleted: 3043
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_:bb.a
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #35
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !287
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
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !94
  store i64 %i.v, ptr %i.s, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !94
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !288
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !288
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !286 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !289   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !94
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !94
  store ptr null, ptr %i.ag, align 8, !tbaa !94
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !94
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !94
  store ptr null, ptr %i.aj, align 8, !tbaa !1290
  store ptr null, ptr %i.ak, align 8, !tbaa !1291
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !288
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !288
  store ptr null, ptr %i.an, align 8, !tbaa !288
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1289

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !287
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !287
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !287
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !287
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !287
  store ptr %i.t, ptr %i.a, align 8, !tbaa !287
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

; Function Attrs: nounwind
declare void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.76) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3tev10RawChannel11copyToTypedIN9Imath_3_24halfEEENS_4TaskIvEERNS_7ChannelEi(ptr dead_on_unwind writable sret(%"class.tev::Task.148") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.150", align 8 ; 6 uses
  %5 = alloca %class.anon.442, align 8            ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36 ; 20 uses
  store ptr @_ZNK3tev10RawChannel11copyToTypedIN9Imath_3_24halfEEENS_4TaskIvEERNS_7ChannelEi.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZNK3tev10RawChannel11copyToTypedIN9Imath_3_24halfEEENS_4TaskIvEERNS_7ChannelEi.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr99 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.reload.addr101 = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %.reload.addr102 = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 2 uses
  %.reload.addr103 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.95 ; 5 uses

.body.from.95:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1304
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !106, !noalias !1304
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1304
  store i32 2, ptr %i.g, align 8, !tbaa !156, !noalias !1304
  store ptr %i.f, ptr %i.d, align 8, !tbaa !160, !alias.scope !1305
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !alias.scope !1305
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1306
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.150") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.b unwind label %bb.d, !noalias !1306

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !94, !alias.scope !1306
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !308, !noalias !1306
  store ptr %i.j, ptr %i.i, align 8, !tbaa !308, !alias.scope !1306
  store ptr null, ptr %4, align 8, !tbaa !308, !noalias !1306
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !161, !noalias !1306 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !94, !noalias !1306
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !94, !alias.scope !1306
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1306 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1306
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1306
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !77 ; 2 uses
  %.sroa.048.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  store i32 %.sroa.048.0.extract.trunc, ptr %.reload.addr101, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !310
  %i.v = sdiv i32 %.sroa.048.0.extract.trunc, %i.u
  store i32 %i.v, ptr %.reload.addr102, align 4, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !470
  %.not.i = icmp eq i32 %i.x, 6
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !471

bb.f:                                             ; preds = %bb.e
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.138)
          to label %.invoke unwind label %.body22.from.85

.body22.from.85:                                  ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.y) #32
  br label %.body22

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !472, !noalias !1307 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !470, !noalias !1307
  %.not.i24 = icmp eq i32 %i.af, 7
  br i1 %.not.i24, label %bb.i, label %bb.h, !prof !471

bb.h:                                             ; preds = %bb.g
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #32, !noalias !1307 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.139)
          to label %.invoke unwind label %.body27.from.83, !noalias !1307

.invoke:                                          ; preds = %bb.h, %bb.f
  %i.ah = phi ptr [ %i.y, %bb.f ], [ %i.ag, %bb.h ]
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.cont unwind label %.body30.from.

.cont:                                            ; preds = %.invoke
  unreachable

.body27.from.83:                                  ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ag) #32, !noalias !1307
  br label %.body22

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !94, !noalias !1307
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !474, !noalias !1307
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !475, !noalias !1307
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %.reload.addr99, align 8, !tbaa !477, !alias.scope !1307
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !478, !alias.scope !1307
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !tbaa !77, !alias.scope !1307
  %i.ar = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !201

bb.j:                                             ; preds = %bb.i
  %i.at = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i29 = icmp eq i32 %i.at, 0
  br i1 %.not.i29, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.l unwind label %.body30.from.81

bb.l:                                             ; preds = %bb.k
  %i.au = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body30.from.81:                                  ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.body22

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.l, %bb.j, %bb.i
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.s, align 8, !tbaa !77
  %i.aw = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.s)
          to label %_ZNK3tev7Channel9numPixelsEv.exit unwind label %.body30.from.

_ZNK3tev7Channel9numPixelsEv.exit:                ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i32, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  store ptr %i.ab, ptr %5, align 8, !tbaa !482
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.reload.addr101, ptr %i.ax, align 8, !tbaa !378
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.reload.addr99, ptr %i.ay, align 8, !tbaa !483
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.az, align 8, !tbaa !484
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.reload.addr102, ptr %i.ba, align 8, !tbaa !378
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_10RawChannel11copyToTypedIN9Imath_3_24halfEEENS_4TaskIvEERNS_7ChannelEiEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.148") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %.sroa.4.0.extract.trunc, i64 noundef %i.aw, ptr noundef nonnull byval(%class.anon.442) align 8 %5, i32 noundef %3)
          to label %bb.m unwind label %.body30.from.

bb.m:                                             ; preds = %_ZNK3tev7Channel9numPixelsEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load atomic i32, ptr %i.bd acquire, align 4
  %i.bf = icmp slt i32 %i.be, 2
  br i1 %i.bf, label %bb.n, label %AfterCoroSave

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.o
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !173 ; 7 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !208
  %i.bn = and i32 %i.bm, 8
  %.not.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %.thread.sink.split

bb.p:                                             ; preds = %.noexc.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !209 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !210 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bp, %.from..lr.ph.i.i.i.i.i ], [ %i.ch, %.noexc2.i.i ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.bx = load i8, ptr %i.bs, align 8             ; 2 uses
  %i.by = trunc i8 %i.bx to i1                    ; 2 uses
  %i.bz = load ptr, ptr %i.bt, align 8
  %i.ca = select i1 %i.by, ptr %i.bz, ptr %i.bu
  %i.cb = load i64, ptr %i.bv, align 8
  %i.cc = lshr i8 %i.bx, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = select i1 %i.by, i64 %i.cb, i64 %i.cd
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !106
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr %i.ca, i64 %i.ce, i32 noundef 8, ptr nonnull @.str.143, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.br
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.o
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %lpad.loopexit.split-lp127, 0
  call void @__clang_call_terminate(ptr %i.ci) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.m
  %index.addr104 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %index.addr104, align 8
  %i.cj = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.cj, label %AfterCoroEnd, label %bb.q

.body30.from.:                                    ; preds = %.invoke, %_ZNK3tev7Channel9numPixelsEv.exit, %_ZN3tev10ThreadPool6globalEv.exit
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  br label %.body22

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !215 ; 3 uses
  %.not.i34 = icmp eq ptr %.pr, null
  br i1 %.not.i34, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body30.from.79, !inline_history !6

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.p, %.noexc.i.i, %bb.n
  store ptr null, ptr %.reload.addr, align 8, !tbaa !215
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %bb.s unwind label %.body30.from.79

bb.s:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr103)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #37
  unreachable

.body30.from.79:                                  ; preds = %bb.r, %.thread
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.body22

.body22:                                          ; preds = %.body30.from., %.body30.from.79, %.body30.from.81, %.body27.from.83, %.body22.from.85
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %.body22.from.85 ], [ %i.cq, %.body30.from.79 ], [ %i.ai, %.body27.from.83 ], [ %i.ck, %.body30.from. ], [ %i.av, %.body30.from.81 ]
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.cr = call ptr @__cxa_begin_catch(ptr %.3) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %.body22
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.93

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.s, %bb.u
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = atomicrmw add ptr %i.ct, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i37

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i40:                                     ; preds = %bb.v
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !173 ; 7 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !208
  %i.cz = and i32 %i.cy, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i41, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !209 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !210 ; 2 uses
  %.not12.i.i.i.i.i42 = icmp eq ptr %i.db, %i.dd
  br i1 %.not12.i.i.i.i.i42, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i43

.from..lr.ph.i.i.i.i.i43:                         ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  br label %.from..noexc2.i.i45

.from..noexc2.i.i45:                              ; preds = %.noexc2.i.i45, %.from..lr.ph.i.i.i.i.i43
  %.sroa.09.013.i.i.i.i.i44 = phi ptr [ %i.db, %.from..lr.ph.i.i.i.i.i43 ], [ %i.dt, %.noexc2.i.i45 ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !213 ; 2 uses
  %i.dj = load i8, ptr %i.de, align 8             ; 2 uses
  %i.dk = trunc i8 %i.dj to i1                    ; 2 uses
  %i.dl = load ptr, ptr %i.df, align 8
  %i.dm = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  %i.dn = load i64, ptr %i.dh, align 8
  %i.do = lshr i8 %i.dj, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = select i1 %i.dk, i64 %i.dn, i64 %i.dp
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !106
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr %i.dm, i64 %i.dq, i32 noundef 8, ptr nonnull @.str.143, i64 36)
          to label %.noexc2.i.i45 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

.noexc2.i.i45:                                    ; preds = %.from..noexc2.i.i45
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dt, %i.dd
  br i1 %.not.i.i.i.i.i46, label %_ZN3tev5Latch9countDownEv.exit.i37, label %.from..noexc2.i.i45

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i45, %bb.v
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %lpad.loopexit.split-lp125, 0
  call void @__clang_call_terminate(ptr %i.du) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i37:               ; preds = %.noexc2.i.i45, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dv = icmp slt i32 %i.cu, 2
  br i1 %i.dv, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i40, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i37
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !94 ; 2 uses
  %i.dy = inttoptr i64 %i.dx to ptr               ; 3 uses
  store ptr %i.dy, ptr %.reload.addr, align 8
  %.not.i47 = icmp eq i64 %i.dx, 0
  br i1 %.not.i47, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend72

AfterCoroSuspend72:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr105 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 1, ptr %index.addr105, align 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr nonnull %i.dy)
  br label %AfterCoroEnd

bb.x:                                             ; preds = %.body22
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.97 unwind label %bb.aa

.from.93:                                         ; preds = %bb.u
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.97

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i37
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !161 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = atomicrmw add ptr %i.ed, i64 -1 acq_rel, align 8
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.z, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !106
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(24) %i.ec) #32, !inline_history !12
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ec) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.y, %bb.z
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend72, %AfterCoroSave
  ret void

.body.from.97:                                    ; preds = %bb.x, %.from.93
  %.pn17 = phi { ptr, i32 } [ %i.eb, %.from.93 ], [ %i.ea, %bb.x ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr103) #32
  br label %.body

.body:                                            ; preds = %.body.from.97, %.body.from.95, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.97 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.95 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #32
  resume { ptr, i32 } %.merged19

bb.aa:                                            ; preds = %bb.x
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3tev10RawChannel11copyToTypedIfEENS_4TaskIvEERNS_7ChannelEi(ptr dead_on_unwind writable sret(%"class.tev::Task.148") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.150", align 8 ; 6 uses
  %5 = alloca %class.anon.511, align 8            ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36 ; 20 uses
  store ptr @_ZNK3tev10RawChannel11copyToTypedIfEENS_4TaskIvEERNS_7ChannelEi.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZNK3tev10RawChannel11copyToTypedIfEENS_4TaskIvEERNS_7ChannelEi.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr99 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.reload.addr101 = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %.reload.addr102 = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 2 uses
  %.reload.addr103 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.95 ; 5 uses

.body.from.95:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1320
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !106, !noalias !1320
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1320
  store i32 2, ptr %i.g, align 8, !tbaa !156, !noalias !1320
  store ptr %i.f, ptr %i.d, align 8, !tbaa !160, !alias.scope !1321
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !alias.scope !1321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1322
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.150") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.b unwind label %bb.d, !noalias !1322

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !94, !alias.scope !1322
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !308, !noalias !1322
  store ptr %i.j, ptr %i.i, align 8, !tbaa !308, !alias.scope !1322
  store ptr null, ptr %4, align 8, !tbaa !308, !noalias !1322
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !161, !noalias !1322 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !94, !noalias !1322
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !94, !alias.scope !1322
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1322 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1322
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1322
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !77 ; 2 uses
  %.sroa.048.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  store i32 %.sroa.048.0.extract.trunc, ptr %.reload.addr101, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !310
  %i.v = sdiv i32 %.sroa.048.0.extract.trunc, %i.u
  store i32 %i.v, ptr %.reload.addr102, align 4, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !470
  %.not.i = icmp eq i32 %i.x, 7
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !471

bb.f:                                             ; preds = %bb.e
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.138)
          to label %.invoke unwind label %.body22.from.85

.body22.from.85:                                  ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.y) #32
  br label %.body22

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !472, !noalias !1323 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !470, !noalias !1323
  %.not.i24 = icmp eq i32 %i.af, 7
  br i1 %.not.i24, label %bb.i, label %bb.h, !prof !471

bb.h:                                             ; preds = %bb.g
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #32, !noalias !1323 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.139)
          to label %.invoke unwind label %.body27.from.83, !noalias !1323

.invoke:                                          ; preds = %bb.h, %bb.f
  %i.ah = phi ptr [ %i.y, %bb.f ], [ %i.ag, %bb.h ]
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.cont unwind label %.body30.from.

.cont:                                            ; preds = %.invoke
  unreachable

.body27.from.83:                                  ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ag) #32, !noalias !1323
  br label %.body22

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !94, !noalias !1323
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !474, !noalias !1323
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !475, !noalias !1323
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %.reload.addr99, align 8, !tbaa !477, !alias.scope !1323
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !478, !alias.scope !1323
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !tbaa !77, !alias.scope !1323
  %i.ar = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !201

bb.j:                                             ; preds = %bb.i
  %i.at = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i29 = icmp eq i32 %i.at, 0
  br i1 %.not.i29, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.l unwind label %.body30.from.81

bb.l:                                             ; preds = %bb.k
  %i.au = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body30.from.81:                                  ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.body22

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.l, %bb.j, %bb.i
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.s, align 8, !tbaa !77
  %i.aw = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.s)
          to label %_ZNK3tev7Channel9numPixelsEv.exit unwind label %.body30.from.

_ZNK3tev7Channel9numPixelsEv.exit:                ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i32, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  store ptr %i.ab, ptr %5, align 8, !tbaa !486
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.reload.addr101, ptr %i.ax, align 8, !tbaa !378
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.reload.addr99, ptr %i.ay, align 8, !tbaa !483
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.az, align 8, !tbaa !487
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.reload.addr102, ptr %i.ba, align 8, !tbaa !378
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_10RawChannel11copyToTypedIfEENS_4TaskIvEERNS_7ChannelEiEUliE_EES8_S4_S4_mT0_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.148") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %.sroa.4.0.extract.trunc, i64 noundef %i.aw, ptr noundef nonnull byval(%class.anon.511) align 8 %5, i32 noundef %3)
          to label %bb.m unwind label %.body30.from.

bb.m:                                             ; preds = %_ZNK3tev7Channel9numPixelsEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load atomic i32, ptr %i.bd acquire, align 4
  %i.bf = icmp slt i32 %i.be, 2
  br i1 %i.bf, label %bb.n, label %AfterCoroSave

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.o
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !173 ; 7 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !208
  %i.bn = and i32 %i.bm, 8
  %.not.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %.thread.sink.split

bb.p:                                             ; preds = %.noexc.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !209 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !210 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bp, %.from..lr.ph.i.i.i.i.i ], [ %i.ch, %.noexc2.i.i ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.bx = load i8, ptr %i.bs, align 8             ; 2 uses
  %i.by = trunc i8 %i.bx to i1                    ; 2 uses
  %i.bz = load ptr, ptr %i.bt, align 8
  %i.ca = select i1 %i.by, ptr %i.bz, ptr %i.bu
  %i.cb = load i64, ptr %i.bv, align 8
  %i.cc = lshr i8 %i.bx, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = select i1 %i.by, i64 %i.cb, i64 %i.cd
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !106
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr %i.ca, i64 %i.ce, i32 noundef 8, ptr nonnull @.str.143, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.br
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.o
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %lpad.loopexit.split-lp127, 0
  call void @__clang_call_terminate(ptr %i.ci) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.m
  %index.addr104 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %index.addr104, align 8
  %i.cj = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.cj, label %AfterCoroEnd, label %bb.q

.body30.from.:                                    ; preds = %.invoke, %_ZNK3tev7Channel9numPixelsEv.exit, %_ZN3tev10ThreadPool6globalEv.exit
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  br label %.body22

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !215 ; 3 uses
  %.not.i34 = icmp eq ptr %.pr, null
  br i1 %.not.i34, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body30.from.79, !inline_history !6

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.p, %.noexc.i.i, %bb.n
  store ptr null, ptr %.reload.addr, align 8, !tbaa !215
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %bb.s unwind label %.body30.from.79

bb.s:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr103)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #37
  unreachable

.body30.from.79:                                  ; preds = %bb.r, %.thread
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.body22

.body22:                                          ; preds = %.body30.from., %.body30.from.79, %.body30.from.81, %.body27.from.83, %.body22.from.85
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %.body22.from.85 ], [ %i.cq, %.body30.from.79 ], [ %i.ai, %.body27.from.83 ], [ %i.ck, %.body30.from. ], [ %i.av, %.body30.from.81 ]
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.cr = call ptr @__cxa_begin_catch(ptr %.3) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %.body22
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.93

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.s, %bb.u
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = atomicrmw add ptr %i.ct, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i37

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i40:                                     ; preds = %bb.v
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !173 ; 7 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !208
  %i.cz = and i32 %i.cy, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i41, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !209 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !210 ; 2 uses
  %.not12.i.i.i.i.i42 = icmp eq ptr %i.db, %i.dd
  br i1 %.not12.i.i.i.i.i42, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i43

.from..lr.ph.i.i.i.i.i43:                         ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  br label %.from..noexc2.i.i45

.from..noexc2.i.i45:                              ; preds = %.noexc2.i.i45, %.from..lr.ph.i.i.i.i.i43
  %.sroa.09.013.i.i.i.i.i44 = phi ptr [ %i.db, %.from..lr.ph.i.i.i.i.i43 ], [ %i.dt, %.noexc2.i.i45 ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !213 ; 2 uses
  %i.dj = load i8, ptr %i.de, align 8             ; 2 uses
  %i.dk = trunc i8 %i.dj to i1                    ; 2 uses
  %i.dl = load ptr, ptr %i.df, align 8
  %i.dm = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  %i.dn = load i64, ptr %i.dh, align 8
  %i.do = lshr i8 %i.dj, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = select i1 %i.dk, i64 %i.dn, i64 %i.dp
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !106
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr %i.dm, i64 %i.dq, i32 noundef 8, ptr nonnull @.str.143, i64 36)
          to label %.noexc2.i.i45 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

.noexc2.i.i45:                                    ; preds = %.from..noexc2.i.i45
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dt, %i.dd
  br i1 %.not.i.i.i.i.i46, label %_ZN3tev5Latch9countDownEv.exit.i37, label %.from..noexc2.i.i45

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i45, %bb.v
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %lpad.loopexit.split-lp125, 0
  call void @__clang_call_terminate(ptr %i.du) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i37:               ; preds = %.noexc2.i.i45, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dv = icmp slt i32 %i.cu, 2
  br i1 %i.dv, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i40, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i37
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !94 ; 2 uses
  %i.dy = inttoptr i64 %i.dx to ptr               ; 3 uses
  store ptr %i.dy, ptr %.reload.addr, align 8
  %.not.i47 = icmp eq i64 %i.dx, 0
  br i1 %.not.i47, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend72

AfterCoroSuspend72:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr105 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 1, ptr %index.addr105, align 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr nonnull %i.dy)
  br label %AfterCoroEnd

bb.x:                                             ; preds = %.body22
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.97 unwind label %bb.aa

.from.93:                                         ; preds = %bb.u
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.97

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i37
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !161 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = atomicrmw add ptr %i.ed, i64 -1 acq_rel, align 8
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.z, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !106
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(24) %i.ec) #32, !inline_history !12
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ec) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.y, %bb.z
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend72, %AfterCoroSave
  ret void

.body.from.97:                                    ; preds = %bb.x, %.from.93
  %.pn17 = phi { ptr, i32 } [ %i.eb, %.from.93 ], [ %i.ea, %bb.x ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr103) #32
  br label %.body

.body:                                            ; preds = %.body.from.97, %.body.from.95, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.97 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.95 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #32
  resume { ptr, i32 } %.merged19

bb.aa:                                            ; preds = %bb.x
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3tev10RawChannel11copyToTypedIjEENS_4TaskIvEERNS_7ChannelEi(ptr dead_on_unwind writable sret(%"class.tev::Task.148") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.150", align 8 ; 6 uses
  %5 = alloca %class.anon.516, align 8            ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36 ; 20 uses
  store ptr @_ZNK3tev10RawChannel11copyToTypedIjEENS_4TaskIvEERNS_7ChannelEi.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZNK3tev10RawChannel11copyToTypedIjEENS_4TaskIvEERNS_7ChannelEi.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr99 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.reload.addr101 = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %.reload.addr102 = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 2 uses
  %.reload.addr103 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %bb.a unwind label %.body.from.95 ; 5 uses

.body.from.95:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr103) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1336
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !106, !noalias !1336
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1336
  store i32 2, ptr %i.g, align 8, !tbaa !156, !noalias !1336
  store ptr %i.f, ptr %i.d, align 8, !tbaa !160, !alias.scope !1337
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !161, !alias.scope !1337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1338
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.150") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.b unwind label %bb.d, !noalias !1338

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !94, !alias.scope !1338
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !308, !noalias !1338
  store ptr %i.j, ptr %i.i, align 8, !tbaa !308, !alias.scope !1338
  store ptr null, ptr %4, align 8, !tbaa !308, !noalias !1338
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !161, !noalias !1338 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !94, !noalias !1338
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !94, !alias.scope !1338
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1338 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1338
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1338
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !77 ; 2 uses
  %.sroa.048.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  store i32 %.sroa.048.0.extract.trunc, ptr %.reload.addr101, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !310
  %i.v = sdiv i32 %.sroa.048.0.extract.trunc, %i.u
  store i32 %i.v, ptr %.reload.addr102, align 4, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !470
  %.not.i = icmp eq i32 %i.x, 2
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !471

bb.f:                                             ; preds = %bb.e
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.138)
          to label %.invoke unwind label %.body22.from.85

.body22.from.85:                                  ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.y) #32
  br label %.body22

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !472, !noalias !1339 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !470, !noalias !1339
  %.not.i24 = icmp eq i32 %i.af, 7
  br i1 %.not.i24, label %bb.i, label %bb.h, !prof !471

bb.h:                                             ; preds = %bb.g
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #32, !noalias !1339 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.139)
          to label %.invoke unwind label %.body27.from.83, !noalias !1339

.invoke:                                          ; preds = %bb.h, %bb.f
  %i.ah = phi ptr [ %i.y, %bb.f ], [ %i.ag, %bb.h ]
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.cont unwind label %.body30.from.

.cont:                                            ; preds = %.invoke
  unreachable

.body27.from.83:                                  ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ag) #32, !noalias !1339
  br label %.body22

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !94, !noalias !1339
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !474, !noalias !1339
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !475, !noalias !1339
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %.reload.addr99, align 8, !tbaa !477, !alias.scope !1339
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !478, !alias.scope !1339
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !tbaa !77, !alias.scope !1339
  %i.ar = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !201

bb.j:                                             ; preds = %bb.i
  %i.at = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i29 = icmp eq i32 %i.at, 0
  br i1 %.not.i29, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.l unwind label %.body30.from.81

bb.l:                                             ; preds = %bb.k
  %i.au = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body30.from.81:                                  ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.body22

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.l, %bb.j, %bb.i
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.s, align 8, !tbaa !77
  %i.aw = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.s)
          to label %_ZNK3tev7Channel9numPixelsEv.exit unwind label %.body30.from.

_ZNK3tev7Channel9numPixelsEv.exit:                ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i32, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  store ptr %i.ab, ptr %5, align 8, !tbaa !489
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.reload.addr101, ptr %i.ax, align 8, !tbaa !378
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.reload.addr99, ptr %i.ay, align 8, !tbaa !483
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.az, align 8, !tbaa !490
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.reload.addr102, ptr %i.ba, align 8, !tbaa !378
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_10RawChannel11copyToTypedIjEENS_4TaskIvEERNS_7ChannelEiEUliE_EES8_S4_S4_mT0_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.148") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %.sroa.4.0.extract.trunc, i64 noundef %i.aw, ptr noundef nonnull byval(%class.anon.516) align 8 %5, i32 noundef %3)
          to label %bb.m unwind label %.body30.from.

bb.m:                                             ; preds = %_ZNK3tev7Channel9numPixelsEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load atomic i32, ptr %i.bd acquire, align 4
  %i.bf = icmp slt i32 %i.be, 2
  br i1 %i.bf, label %bb.n, label %AfterCoroSave

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.o
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !173 ; 7 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !208
  %i.bn = and i32 %i.bm, 8
  %.not.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %.thread.sink.split

bb.p:                                             ; preds = %.noexc.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !209 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !210 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bp, %.from..lr.ph.i.i.i.i.i ], [ %i.ch, %.noexc2.i.i ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.bx = load i8, ptr %i.bs, align 8             ; 2 uses
  %i.by = trunc i8 %i.bx to i1                    ; 2 uses
  %i.bz = load ptr, ptr %i.bt, align 8
  %i.ca = select i1 %i.by, ptr %i.bz, ptr %i.bu
  %i.cb = load i64, ptr %i.bv, align 8
  %i.cc = lshr i8 %i.bx, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = select i1 %i.by, i64 %i.cb, i64 %i.cd
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !106
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr %i.ca, i64 %i.ce, i32 noundef 8, ptr nonnull @.str.143, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.br
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.o
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %lpad.loopexit.split-lp127, 0
  call void @__clang_call_terminate(ptr %i.ci) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.m
  %index.addr104 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %index.addr104, align 8
  %i.cj = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.cj, label %AfterCoroEnd, label %bb.q

.body30.from.:                                    ; preds = %.invoke, %_ZNK3tev7Channel9numPixelsEv.exit, %_ZN3tev10ThreadPool6globalEv.exit
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  br label %.body22

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !215 ; 3 uses
  %.not.i34 = icmp eq ptr %.pr, null
  br i1 %.not.i34, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body30.from.79, !inline_history !6

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.p, %.noexc.i.i, %bb.n
  store ptr null, ptr %.reload.addr, align 8, !tbaa !215
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %bb.s unwind label %.body30.from.79

bb.s:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr103)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #37
  unreachable

.body30.from.79:                                  ; preds = %bb.r, %.thread
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.body22

.body22:                                          ; preds = %.body30.from., %.body30.from.79, %.body30.from.81, %.body27.from.83, %.body22.from.85
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %.body22.from.85 ], [ %i.cq, %.body30.from.79 ], [ %i.ai, %.body27.from.83 ], [ %i.ck, %.body30.from. ], [ %i.av, %.body30.from.81 ]
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.cr = call ptr @__cxa_begin_catch(ptr %.3) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr103)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %.body22
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.93

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.s, %bb.u
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = atomicrmw add ptr %i.ct, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i37

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i40:                                     ; preds = %bb.v
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !173 ; 7 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !208
  %i.cz = and i32 %i.cy, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i41, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !209 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !210 ; 2 uses
  %.not12.i.i.i.i.i42 = icmp eq ptr %i.db, %i.dd
  br i1 %.not12.i.i.i.i.i42, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i43

.from..lr.ph.i.i.i.i.i43:                         ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  br label %.from..noexc2.i.i45

.from..noexc2.i.i45:                              ; preds = %.noexc2.i.i45, %.from..lr.ph.i.i.i.i.i43
  %.sroa.09.013.i.i.i.i.i44 = phi ptr [ %i.db, %.from..lr.ph.i.i.i.i.i43 ], [ %i.dt, %.noexc2.i.i45 ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !213 ; 2 uses
  %i.dj = load i8, ptr %i.de, align 8             ; 2 uses
  %i.dk = trunc i8 %i.dj to i1                    ; 2 uses
  %i.dl = load ptr, ptr %i.df, align 8
  %i.dm = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  %i.dn = load i64, ptr %i.dh, align 8
  %i.do = lshr i8 %i.dj, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = select i1 %i.dk, i64 %i.dn, i64 %i.dp
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !106
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr %i.dm, i64 %i.dq, i32 noundef 8, ptr nonnull @.str.143, i64 36)
          to label %.noexc2.i.i45 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

.noexc2.i.i45:                                    ; preds = %.from..noexc2.i.i45
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dt, %i.dd
  br i1 %.not.i.i.i.i.i46, label %_ZN3tev5Latch9countDownEv.exit.i37, label %.from..noexc2.i.i45

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i38.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i45, %bb.v
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %lpad.loopexit.split-lp125, 0
  call void @__clang_call_terminate(ptr %i.du) #37
end_hunk_0
