Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/BackgroundImagesLoader?download=true
inline.NumInlined: 5824
inline.NumDeleted: 2299
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev:bb.a
_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -80 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = load i64, ptr %i.d, align 8
  %i.j = and i64 %i.i, -2
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #30
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !147
  br label %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !150
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #30
  br label %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt3__16chrono12system_clock3nowEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev18invokeTaskDetachedITkNS_13TaskCoroutineEZNS_22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS2_17basic_string_viewIcNS2_11char_traitsIcEEEEbRKNS2_10shared_ptrINS_5ImageEEEE3$_1JEEENS_12DetachedTaskEOT_DpOT0_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
.from.23:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #33 ; 19 uses
  store ptr @"_ZN3tev18invokeTaskDetachedITkNS_13TaskCoroutineEZNS_22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS2_17basic_string_viewIcNS2_11char_traitsIcEEEEbRKNS2_10shared_ptrINS_5ImageEEEE3$_1JEEENS_12DetachedTaskEOT_DpOT0_.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev18invokeTaskDetachedITkNS_13TaskCoroutineEZNS_22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS2_17basic_string_viewIcNS2_11char_traitsIcEEEEbRKNS2_10shared_ptrINS_5ImageEEEE3$_1JEEENS_12DetachedTaskEOT_DpOT0_.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %.reload.addr38 = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 6 uses
  %.reload.addr39 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.b = load i32, ptr %0, align 8, !tbaa !163
  store i32 %i.b, ptr %.reload.addr, align 8, !tbaa !163
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.from.23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i

bb.b:                                             ; preds = %.from.23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i unwind label %.from.32

_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !165, !range !115, !noundef !116
  store i8 %i.o, ptr %i.m, align 8, !tbaa !165
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !166  ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.q, align 8, !tbaa !167
  store <2 x ptr> %i.u, ptr %i.p, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !168
  store ptr %i.z, ptr %i.x, align 8, !tbaa !168
  invoke fastcc void @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_1clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr38, ptr noundef nonnull align 8 dereferenceable(88) %.reload.addr)
          to label %bb.e unwind label %.from.29

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !171
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic i32, ptr %i.ac acquire, align 4
  %i.ae = icmp slt i32 %i.ad, 2
  br i1 %i.ae, label %bb.f, label %AfterCoroSave

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !120 ; 7 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !178
  %i.am = and i32 %i.al, 8
  %.not.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !179 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !180 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 33
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ao, %.from..lr.ph.i.i.i.i.i ], [ %i.bg, %.noexc2.i.i ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.aw = load i8, ptr %i.ar, align 8             ; 2 uses
  %i.ax = trunc i8 %i.aw to i1                    ; 2 uses
  %i.ay = load ptr, ptr %i.as, align 8
  %i.az = select i1 %i.ax, ptr %i.ay, ptr %i.at
  %i.ba = load i64, ptr %i.au, align 8
  %i.bb = lshr i8 %i.aw, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = select i1 %i.ax, i64 %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !138
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr %i.az, i64 %i.bd, i32 noundef 8, ptr nonnull @.str.78, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !2

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.aq
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
  %i.bh = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #34
  unreachable

AfterCoroSave:                                    ; preds = %bb.e
  %index.addr40 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i1 false, ptr %index.addr40, align 1
  %i.bi = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr38, ptr nonnull %i.a) #29
  br i1 %i.bi, label %AfterCoroEnd, label %bb.j

.from.32:                                         ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.from.29:                                         ; preds = %bb.d
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.31

bb.j:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr38, align 8, !tbaa !185 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.27, !inline_history !3

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  store ptr null, ptr %.reload.addr38, align 8, !tbaa !185
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.27

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr38) #29
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !166 ; 5 uses
  %.not.i.i12 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i12, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.m, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !138
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #29, !inline_history !0
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #29
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i: ; preds = %bb.m, %bb.l, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.bv = load i8, ptr %i.k, align 8
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.n:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !149
  %i.bz = load i64, ptr %i.k, align 8
  %i.ca = and i64 %i.bz, -2
  tail call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.ca) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.n, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.cb = load i8, ptr %i.c, align 8
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %bb.o, label %"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit"

bb.o:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !149
  %i.cf = load i64, ptr %i.c, align 8
  %i.cg = and i64 %i.cf, -2
  tail call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #30
  br label %"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit"

.from.27:                                         ; preds = %bb.k, %.thread
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr38) #29
  br label %.from.31

.from.31:                                         ; preds = %.from.29, %.from.27
  %.pn = phi { ptr, i32 } [ %i.ch, %.from.27 ], [ %i.bk, %.from.29 ]
  tail call fastcc void @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.reload.addr) #29
  br label %bb.p

bb.p:                                             ; preds = %.from.31, %.from.32
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.from.31 ], [ %i.bj, %.from.32 ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.ci = tail call ptr @__cxa_begin_catch(ptr %.1) #29 ; 0 uses
  invoke void @_ZN3tev12DetachedTask12promise_type19unhandled_exceptionEv(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr39)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit" unwind label %.from.36

bb.r:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %AfterCoroEnd22 unwind label %bb.s

.from.36:                                         ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %AfterCoroEnd22

"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit": ; preds = %bb.q, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #29
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit", %AfterCoroSave
  ret void

AfterCoroEnd22:                                   ; preds = %bb.r, %.from.36
  %.pn7 = phi { ptr, i32 } [ %i.ck, %.from.36 ], [ %i.cj, %bb.r ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #29
  resume { ptr, i32 } %.pn7

bb.s:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #29, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #29
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.d:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = load i64, ptr %i.i, align 8
  %i.o = and i64 %i.n, -2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

bb.e:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = load i64, ptr %i.p, align 8
  %i.v = and i64 %i.u, -2
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #30
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev22BackgroundImagesLoader39checkDirectoriesForNewFilesAndLoadThoseEv(ptr noundef nonnull align 8 dereferenceable(300) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::error_code", align 8 ; 7 uses
  %2 = alloca %"class.std::__1::__fs::filesystem::recursive_directory_iterator", align 8 ; 8 uses
  %3 = alloca %"class.std::__1::__fs::filesystem::recursive_directory_iterator", align 8 ; 11 uses
  %4 = alloca %"class.std::__1::__fs::filesystem::recursive_directory_iterator", align 8 ; 9 uses
  %5 = alloca %"class.std::__1::__fs::filesystem::directory_iterator", align 8 ; 7 uses
  %6 = alloca %"class.std::__1::__fs::filesystem::directory_iterator", align 8 ; 10 uses
  %7 = alloca %"class.std::__1::__fs::filesystem::directory_iterator", align 8 ; 9 uses
  %8 = alloca %class.anon.59, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKS3_EEEPS3_DpOT_:bb.a
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bb) #30
  br label %_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %i.ah

bb.j:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !408  ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not2.i.i.i, label %_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %i.e = phi ptr [ %i.m, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -80 ; 4 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !408
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #30
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !408
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.m
  br i1 %.not.i.i.i, label %_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_4__fs10filesystem15directory_entryEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !407    ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt3__114__split_bufferINS_4__fs10filesystem15directory_entryERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_4__fs10filesystem15directory_entryENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.37) #31
  unreachable
}

declare noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt3__14__fs10filesystem28recursive_directory_iterator11__incrementEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #7

declare void @_ZNSt3__14__fs10filesystem18directory_iteratorC2ERKNS1_4pathEPNS_10error_codeENS1_17directory_optionsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i8 noundef zeroext) unnamed_addr #7

declare noundef nonnull align 16 dereferenceable(80) ptr @_ZNKSt3__14__fs10filesystem18directory_iterator13__dereferenceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__14__fs10filesystem18directory_iterator11__incrementEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_1clEv"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"struct.std::__1::coroutine_handle", align 8 ; 4 uses
  %3 = alloca %"class.std::__1::future", align 8  ; 4 uses
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #33 ; 17 uses
  store ptr @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_1clEv.resume", ptr %i.c, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_1clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr197 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.reload.addr207 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %.spill.addr181 = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %i.b, ptr %.spill.addr181, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr %1, ptr %.spill.addr, align 8
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr207)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.d = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.a unwind label %.body.from.163 ; 5 uses

.body.from.163:                                   ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr207) #29
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !1269
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.d, align 8, !tbaa !138, !noalias !1269
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !1269
  store i32 2, ptr %i.i, align 8, !tbaa !1270, !noalias !1269
  store ptr %i.h, ptr %i.f, align 8, !tbaa !171, !alias.scope !1271
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !410, !alias.scope !1271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !1272
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr207)
          to label %bb.b unwind label %bb.d, !noalias !1272

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !167, !alias.scope !1272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %4, align 8, !tbaa !413, !noalias !1272
  store ptr %i.l, ptr %i.k, align 8, !tbaa !413, !alias.scope !1272
  store ptr null, ptr %4, align 8, !tbaa !413, !noalias !1272
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !410, !noalias !1272 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.f, align 8, !tbaa !167, !noalias !1272
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !167, !alias.scope !1272
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !1272 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #34, !noalias !1272
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29, !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1272
  %i.u = atomicrmw add ptr @_ZN3tev5Image3sIdE, i32 1 seq_cst, align 4 ; 2 uses
  %.spill.addr192 = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i32 %i.u, ptr %.spill.addr192, align 8
  %i.v = sub nsw i32 0, %i.u                      ; 2 uses
  %i.w = load atomic i8, ptr @_ZGVZN3tev10ThreadPool10blockingIoEvE4pool acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.f, label %AfterCoroSave, !prof !225

bb.f:                                             ; preds = %bb.e
  %i.y = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool10blockingIoEvE4pool) #29
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %AfterCoroSave, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool10blockingIoEvE4pool)
          to label %bb.h unwind label %.from..body29

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool10blockingIoEvE4pool, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool10blockingIoEvE4pool) #29
  br label %AfterCoroSave

.from..body29:                                    ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool10blockingIoEvE4pool) #29
  %.6 = extractvalue { ptr, i32 } %i.aa, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %.6) #29 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr207)
          to label %bb.j unwind label %bb.n

AfterCoroSave:                                    ; preds = %bb.e, %bb.f, %bb.h
  store ptr @_ZZN3tev10ThreadPool10blockingIoEvE4pool, ptr %.reload.addr197, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.v, ptr %.sroa.28.0..sroa_idx, align 8
  %index.addr208 = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i2 0, ptr %index.addr208, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.c, ptr %2, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool10blockingIoEvE4pool, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.v, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.i

bb.i:                                             ; preds = %AfterCoroSave
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #34
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %AfterCoroEnd

bb.j:                                             ; preds = %.from..body29
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.161

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i47

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i51 unwind label %.from..loopexit.split-lp.i.i48

.noexc.i.i51:                                     ; preds = %bb.k
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120 ; 7 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !178
  %i.al = and i32 %i.ak, 8
  %.not.i.i.i.i52 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i52, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i51
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !179 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !180 ; 2 uses
  %.not12.i.i.i.i.i53 = icmp eq ptr %i.an, %i.ap
  br i1 %.not12.i.i.i.i.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i54

.from..lr.ph.i.i.i.i.i54:                         ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 33
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  br label %.from..noexc2.i.i58

.from..noexc2.i.i58:                              ; preds = %.noexc2.i.i58, %.from..lr.ph.i.i.i.i.i54
  %.sroa.09.013.i.i.i.i.i55 = phi ptr [ %i.an, %.from..lr.ph.i.i.i.i.i54 ], [ %i.bf, %.noexc2.i.i58 ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.09.013.i.i.i.i.i55, align 8, !tbaa !183 ; 2 uses
  %i.av = load i8, ptr %i.aq, align 8             ; 2 uses
  %i.aw = trunc i8 %i.av to i1                    ; 2 uses
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = select i1 %i.aw, ptr %i.ax, ptr %i.as
  %i.az = load i64, ptr %i.at, align 8
  %i.ba = lshr i8 %i.av, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = select i1 %i.aw, i64 %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !138
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr %i.ay, i64 %i.bc, i32 noundef 8, ptr nonnull @.str.78, i64 36)
          to label %.noexc2.i.i58 unwind label %.from..loopexit.i.i56, !inline_history !2

.noexc2.i.i58:                                    ; preds = %.from..noexc2.i.i58
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i55, i64 16 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.bf, %i.ap
  br i1 %.not.i.i.i.i.i59, label %_ZN3tev5Latch9countDownEv.exit.i47, label %.from..noexc2.i.i58

.from..loopexit.i.i56:                            ; preds = %.from..noexc2.i.i58
  %lpad.loopexit.i.i57 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i48:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i49 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i48, %.from..loopexit.i.i56
  %lpad.phi.i.i50 = phi { ptr, i32 } [ %lpad.loopexit.i.i57, %.from..loopexit.i.i56 ], [ %lpad.loopexit.split-lp.i.i49, %.from..loopexit.split-lp.i.i48 ]
  %i.bg = extractvalue { ptr, i32 } %lpad.phi.i.i50, 0
  call void @__clang_call_terminate(ptr %i.bg) #34
  unreachable

_ZN3tev5Latch9countDownEv.exit.i47:               ; preds = %.noexc2.i.i58, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bh = icmp slt i32 %i.ag, 2
  br i1 %i.bh, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i51, %bb.l, %_ZN3tev5Latch9countDownEv.exit.i47
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !167 ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  store ptr %i.bk, ptr %.reload.addr197, align 8
  %.not.i60 = icmp eq i64 %i.bj, 0
  br i1 %.not.i60, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend103

AfterCoroSuspend103:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.c, align 8
  %index.addr211 = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i2 -1, ptr %index.addr211, align 4
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr nonnull %i.bk)
  br label %AfterCoroEnd

bb.n:                                             ; preds = %.from..body29
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.165 unwind label %bb.q

.from.161:                                        ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.165

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i47
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !410 ; 5 uses
  %.not.i.i61 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i61, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !138
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #29, !inline_history !48
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #29
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.o, %bb.p
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr207) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 192) #29
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend103, %AfterCoroSuspend
  ret void

.body.from.165:                                   ; preds = %bb.n, %.from.161
  %.pn25 = phi { ptr, i32 } [ %i.bn, %.from.161 ], [ %i.bm, %bb.n ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #29
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr207) #29
  br label %.body

.body:                                            ; preds = %.body.from.165, %.body.from.163, %.body.from.
  %.merged27 = phi { ptr, i32 } [ %.pn25, %.body.from.165 ], [ %i.t, %.body.from. ], [ %i.e, %.body.from.163 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 192) #29
  resume { ptr, i32 } %.merged27

bb.q:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.79, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #34
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171
  store ptr %1, ptr %i.c, align 8, !tbaa !167
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !178
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !138
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.78, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !2

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
  tail call void @__clang_call_terminate(ptr %i.af) #34
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !185
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !178
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !179  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !180  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_1
begin_hunk_2_@_ZN4tlog6Logger3logIJidEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_:bb.a
  br label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.j:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %7, align 8, !tbaa !259, !noalias !1457 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.an, %i.j
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.an) #29, !noalias !1457
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.cb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !1457
  br label %common.resume

_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !1457
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !1456
  %i.ao = load i8, ptr %9, align 8                ; 4 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.at = select i1 %i.ap, ptr %i.ar, ptr %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = lshr i8 %i.ao, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.ap, i64 %i.av, i64 %i.ax
  %i.az = load i32, ptr %0, align 8, !tbaa !178
  %i.ba = and i32 %i.az, %1
  %i.bb = icmp eq i32 %i.ba, %1
  br i1 %i.bb, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !179 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !180 ; 2 uses
  %.not12.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not12.i, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.bv, %.noexc ] ; 2 uses
  %i.bk = load ptr, ptr %.sroa.09.013.i, align 8, !tbaa !183 ; 2 uses
  %i.bl = load i8, ptr %i.bg, align 8             ; 2 uses
  %i.bm = trunc i8 %i.bl to i1                    ; 2 uses
  %i.bn = load ptr, ptr %i.bh, align 8
  %i.bo = select i1 %i.bm, ptr %i.bn, ptr %i.bi
  %i.bp = load i64, ptr %i.bj, align 8
  %i.bq = lshr i8 %i.bl, 1
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = select i1 %i.bm, i64 %i.bp, i64 %i.br
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !138
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr %i.bo, i64 %i.bs, i32 noundef %1, ptr %i.at, i64 %i.ay)
          to label %.noexc unwind label %bb.p, !inline_history !12

.noexc:                                           ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit, label %bb.m

_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit: ; preds = %.noexc
  %.pre = load i8, ptr %9, align 8
  br label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit

_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit, %bb.l, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.bw = phi i8 [ %.pre, %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit ], [ %i.ao, %bb.l ], [ %i.ao, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit ]
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.n:                                             ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit
  %i.by = load ptr, ptr %i.aq, align 8, !tbaa !149
  %i.bz = load i64, ptr %9, align 8
  %i.ca = and i64 %i.bz, -2
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.ca) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.p:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load i8, ptr %9, align 8
  %i.cd = trunc i8 %i.cc to i1
  br i1 %i.cd, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.aq, align 8, !tbaa !149
  %i.cf = load i64, ptr %9, align 8
  %i.cg = and i64 %i.cf, -2
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %common.resume
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_1clEv.resume"(ptr noundef nonnull align 8 dereferenceable(192) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"struct.std::__1::coroutine_handle", align 8 ; 4 uses
  %2 = alloca %"class.std::__1::future", align 8  ; 4 uses
  %.reload.addr197 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %.reload.addr198 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %.reload.addr200 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %.reload.addr201 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.reload.addr205 = getelementptr inbounds nuw i8, ptr %0, i64 189
  %.reload.addr206 = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 3 uses
  %.reload.addr207 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  %index = load i2, ptr %index.addr, align 4
  switch i2 %index, label %unreachable [
    i2 0, label %AfterCoroSuspend
    i2 1, label %AfterCoroSuspend95
    i2 -2, label %AfterCoroSuspend99
  ], !prof !1474

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.reload178 = load ptr, ptr %.reload.addr177, align 8, !tbaa !1476 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.reload178, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr200, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit

bb.b:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %.reload178, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %.reload178, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !149
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr200, ptr noundef %i.e, i64 noundef %i.g)
          to label %._ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit_crit_edge unwind label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from.124

._ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit_crit_edge: ; preds = %bb.b
  %.reload176.pre = load ptr, ptr %.reload.addr177, align 8, !tbaa !1476
  br label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit

_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit: ; preds = %._ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit_crit_edge, %bb.a
  %.reload176 = phi ptr [ %.reload176.pre, %._ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit_crit_edge ], [ %.reload178, %bb.a ] ; 4 uses
  %.reload.addr193 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.reload194 = load i32, ptr %.reload.addr193, align 8, !tbaa !1476
  %.reload.addr188 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.reload189 = load ptr, ptr %.reload.addr188, align 8, !tbaa !1476 ; 2 uses
  %i.h = sub nsw i32 0, %.reload194
  %i.i = getelementptr inbounds nuw i8, ptr %.reload176, i64 32
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.reload176, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.reload176, i64 33
  %i.o = select i1 %i.k, ptr %i.m, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.reload176, i64 40
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i8 %i.j, 1
  %i.s = zext nneg i8 %i.r to i64
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.reload189, i64 272
  %i.v = getelementptr inbounds nuw i8, ptr %.reload189, i64 284
  %i.w = load i8, ptr %i.v, align 4, !tbaa !1477, !range !115, !noundef !116
  %i.x = trunc nuw i8 %i.w to i1
  invoke void @_ZN3tev12tryLoadImageEiNSt3__14__fs10filesystem4pathENS0_17basic_string_viewIcNS0_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEb(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.388") align 8 %.reload.addr197, i32 noundef %i.h, ptr nofree noundef nonnull align 8 dereferenceable(24) %.reload.addr200, ptr %i.o, i64 %i.t, ptr noundef nonnull align 4 dereferenceable(9) %i.u, i1 noundef zeroext %i.x)
          to label %bb.c unwind label %.from.120

bb.c:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load atomic i32, ptr %i.aa acquire, align 4
  %i.ac = icmp slt i32 %i.ab, 2
  br i1 %i.ac, label %bb.d, label %AfterCoroSave93

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !171
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.e, label %.thread65.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !120 ; 7 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !178
  %i.ak = and i32 %i.aj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %.thread65.sink.split

bb.f:                                             ; preds = %.noexc.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !179 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !180 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not12.i.i.i.i.i, label %.thread65.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.am, %.from..lr.ph.i.i.i.i.i ], [ %i.be, %.noexc2.i.i ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.au = load i8, ptr %i.ap, align 8             ; 2 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8
  %i.ax = select i1 %i.av, ptr %i.aw, ptr %i.ar
  %i.ay = load i64, ptr %i.as, align 8
  %i.az = lshr i8 %i.au, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = select i1 %i.av, i64 %i.ay, i64 %i.ba
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr %i.ax, i64 %i.bb, i32 noundef 8, ptr nonnull @.str.78, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !2

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ao
  br i1 %.not.i.i.i.i.i, label %.thread65.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.from..loopexit.split-lp.i.i:                     ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bf = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

AfterCoroSave93:                                  ; preds = %bb.c
  store i2 1, ptr %index.addr, align 4
  %i.bg = tail call noundef zeroext i1 @_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr197, ptr nonnull %0) #29
  br i1 %i.bg, label %CoroEnd, label %AfterCoroSuspend95

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from.124: ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.153

.from.120:                                        ; preds = %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

AfterCoroSuspend95:                               ; preds = %resume.entry, %AfterCoroSave93
  %.pr = load ptr, ptr %.reload.addr197, align 8, !tbaa !415, !noalias !1478 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread65, label %bb.h

bb.h:                                             ; preds = %AfterCoroSuspend95
  %i.bj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr nonnull %.pr)
          to label %.thread65.sink.split unwind label %.body35.from.118, !inline_history !1462

.thread65.sink.split:                             ; preds = %.noexc2.i.i, %bb.h, %bb.f, %.noexc.i.i, %bb.d
  store ptr null, ptr %.reload.addr197, align 8, !tbaa !415
  br label %.thread65

.thread65:                                        ; preds = %.thread65.sink.split, %AfterCoroSuspend95
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !418, !noalias !1479 ; 7 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !418, !noalias !1479
  invoke void @_ZNSt3__113__assoc_stateINS_8expectedINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS6_EEEENS4_14ImageLoadErrorEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::expected") align 8 %.reload.addr198, ptr noundef nonnull align 8 dereferenceable(152) %i.bm)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.thread65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 acq_rel, align 8
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit.from., label %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit

_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit.from.: ; preds = %bb.i
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !138
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #29, !inline_history !1465
  br label %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit

bb.j:                                             ; preds = %.thread65
  %i.bt = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.body35.from.116, label %.from..body35

.body35.from.116:                                 ; preds = %bb.j
  %i.bx = load ptr, ptr %i.bm, align 8, !tbaa !138
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #29, !inline_history !1465
  br label %.from..body35

_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit: ; preds = %bb.i, %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit.from.
  tail call void @_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr197) #29
  %i.ca = load i8, ptr %.reload.addr200, align 8
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

bb.k:                                             ; preds = %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !149
  %i.ce = load i64, ptr %.reload.addr200, align 8
  %i.cf = and i64 %i.ce, -2
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cf) #30
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit, %bb.k
  %i.cg = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.l, label %AfterCoroSave97, !prof !225

bb.l:                                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit
  %i.ci = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #29
  %.not.i37 = icmp eq i32 %i.ci, 0
  br i1 %.not.i37, label %AfterCoroSave97, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.n unwind label %.from..body38

bb.n:                                             ; preds = %bb.m
  %i.cj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #29
  br label %AfterCoroSave97

.from..body38:                                    ; preds = %bb.m
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #29
  br label %.from.152

AfterCoroSave97:                                  ; preds = %bb.n, %bb.l, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit
  %.reload.addr195 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.reload196 = load i32, ptr %.reload.addr195, align 8, !tbaa !1476
  %i.cl = sub nsw i32 0, %.reload196              ; 2 uses
  store ptr @_ZZN3tev10ThreadPool6globalEvE4pool, ptr %.reload.addr197, align 8
  store i32 %i.cl, ptr %i.bl, align 8
  store i2 -2, ptr %index.addr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %1, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cl, i1 noundef zeroext false)
          to label %AfterCoroSuspend99.thread unwind label %bb.o

bb.o:                                             ; preds = %AfterCoroSave97
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #34
  unreachable

AfterCoroSuspend99.thread:                        ; preds = %AfterCoroSave97
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %CoroEnd

.body35.from.118:                                 ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body35

.from..body35:                                    ; preds = %.body35.from.116, %.body35.from.118, %bb.j
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.co, %.body35.from.118 ], [ %i.bt, %.body35.from.116 ], [ %i.bt, %bb.j ]
  tail call void @_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr197) #29
  br label %bb.p

bb.p:                                             ; preds = %.from..body35, %.from.120
  %.pn = phi { ptr, i32 } [ %eh.lpad-body36, %.from..body35 ], [ %i.bi, %.from.120 ] ; 2 uses
  %i.cp = load i8, ptr %.reload.addr200, align 8
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from., label %.from.153

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from.: ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !149
  %i.ct = load i64, ptr %.reload.addr200, align 8
  %i.cu = and i64 %i.ct, -2
  tail call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cu) #30
  br label %.from.153

AfterCoroSuspend99:                               ; preds = %resume.entry
  %.reload.addr186 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload187 = load ptr, ptr %.reload.addr186, align 8, !tbaa !1476
  %i.cv = getelementptr inbounds nuw i8, ptr %.reload187, i64 168 ; 3 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cv)
          to label %_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit unwind label %.from.146

_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit: ; preds = %AfterCoroSuspend99
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !201, !range !115, !noundef !116
  store i8 %i.cx, ptr %.reload.addr206, align 2, !tbaa !325
  store ptr %.reload.addr206, ptr %.reload.addr201, align 8, !tbaa !327
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.reload.addr198, ptr %i.cy, align 8, !tbaa !1480
  invoke void @_ZNSt3__16invokeB8ne180100IZNS_15__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS6_EEEENS4_14ImageLoadErrorEE6__reprC1B8ne180100IRKNSB_9__union_tEEEbOT_QL_ZNS_15__expected_base37__allow_reusing_expected_tail_paddingEEEUlvE_JEEENS_13invoke_resultISH_JDpT0_EE4typeESI_DpOSM_(ptr dead_on_unwind nonnull writable sret(%"union.std::__1::__expected_base<std::__1::vector<std::__1::shared_ptr<tev::Image>>, tev::ImageLoadError>::__union_t") align 8 dereferenceable(25) %.reload.addr197, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr201)
          to label %bb.q unwind label %.from.131

bb.q:                                             ; preds = %_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit
  %.reload185 = load ptr, ptr %.reload.addr186, align 8, !tbaa !1476 ; 2 uses
  %.reload.addr173 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.reload174 = load ptr, ptr %.reload.addr173, align 8, !tbaa !1476 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.da = load i8, ptr %.reload.addr206, align 2, !tbaa !325, !range !115, !noundef !116
  store i8 %i.da, ptr %i.cz, align 8, !tbaa !208
  %i.db = getelementptr inbounds nuw i8, ptr %.reload185, i64 136 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.reload174, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.df = getelementptr inbounds nuw i8, ptr %.reload174, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !166 ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !167
  store <2 x ptr> %i.dh, ptr %i.dc, align 8, !tbaa !167
  %.not.i44 = icmp eq ptr %i.dg, null
  br i1 %.not.i44, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = atomicrmw add ptr %i.di, i64 1 monotonic, align 8 ; 0 uses
  %.reload183.pre = load ptr, ptr %.reload.addr186, align 8, !tbaa !1476
  %.reload180.pre = load ptr, ptr %.reload.addr173, align 8, !tbaa !1476
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %bb.r, %bb.q
  %.reload180 = phi ptr [ %.reload180.pre, %bb.r ], [ %.reload174, %bb.q ] ; 2 uses
  %.reload183 = phi ptr [ %.reload183.pre, %bb.r ], [ %.reload185, %bb.q ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dl = load i32, ptr %.reload180, align 8, !tbaa !163
  store i32 %i.dl, ptr %i.dk, align 8, !tbaa !215
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dn = getelementptr inbounds nuw i8, ptr %.reload180, i64 56
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !165, !range !115, !noundef !116
  store i8 %i.do, ptr %i.dm, align 4, !tbaa !1481
  %i.dp = getelementptr inbounds nuw i8, ptr %.reload183, i64 144 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !212 ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.reload183, i64 152
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !196
  %i.dt = icmp ult ptr %i.dq, %i.ds
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit
  %i.du = load i8, ptr %i.cz, align 8, !tbaa !201, !range !115, !noundef !116 ; 2 uses
  %i.dv = trunc nuw i8 %i.du to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  br i1 %i.dv, label %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from.125, label %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from.

_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from.125: ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dx = load ptr, ptr %.reload.addr197, align 8, !tbaa !206, !noalias !1486
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !207, !noalias !1486
  store <2 x ptr> %i.dz, ptr %i.dw, align 8, !tbaa !207, !alias.scope !1486
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(53) %.reload.addr197, i8 0, i64 24, i1 false), !noalias !1486
  br label %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i.from._ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i

_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from.: ; preds = %bb.s
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(53) %i.dq, ptr noundef nonnull align 8 dereferenceable(53) %.reload.addr197) #29
  br label %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i.from._ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i

_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i.from._ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i: ; preds = %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from.125, %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from.
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dx, %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from.125 ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i.from. ]
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dq, align 8, !alias.scope !1486
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store i8 %i.du, ptr %i.ea, align 8, !tbaa !208
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ec = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !167
  store <2 x ptr> %i.ec, ptr %i.eb, align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ed, ptr noundef nonnull align 8 dereferenceable(5) %i.dk, i64 5, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  br label %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i

bb.t:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit
  %i.ef = invoke noundef ptr @_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(25) %i.db, ptr noundef nonnull align 8 dereferenceable(53) %.reload.addr197)
          to label %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i unwind label %.from.129

_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i: ; preds = %bb.t, %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i.from._ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i
  %.0.i.i = phi ptr [ %i.ee, %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i.from._ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJS2_EEEvDpOT_.exit.i.i ], [ %i.ef, %bb.t ] ; 3 uses
  store ptr %.0.i.i, ptr %i.dp, align 8, !tbaa !212
  %i.eg = load ptr, ptr %i.db, align 8, !tbaa !211 ; 2 uses
  %i.eh = ptrtoint ptr %.0.i.i to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = sdiv exact i64 %i.ej, 56
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev13ImageAddition10ComparatorENS_11__wrap_iterIPS3_EEEEvT1_S9_OT0_NS_15iterator_traitsIS9_E15difference_typeE(ptr %i.eg, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr205, i64 noundef %i.ek)
          to label %bb.u unwind label %.from.129

bb.u:                                             ; preds = %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i
  %i.el = load ptr, ptr %i.de, align 8, !tbaa !166 ; 5 uses
  %.not.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = atomicrmw add ptr %i.em, i64 -1 acq_rel, align 8
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.w, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !138
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(24) %i.el) #29, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.el) #29
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.es = load i8, ptr %i.cz, align 8, !tbaa !208, !range !115, !noundef !116
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.eu = load ptr, ptr %.reload.addr197, align 8, !tbaa !206 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3tev13ImageAdditionD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !209 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, %i.ew
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.y, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ew, %bb.y ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !166 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = atomicrmw add ptr %i.fa, i64 -1 acq_rel, align 8
  %i.fc = icmp eq i64 %i.fb, 0
end_hunk_2
begin_hunk_3_@"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_1clEv.resume":resume.entry

.from.146:                                        ; preds = %AfterCoroSuspend99
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.152

.from.131:                                        ; preds = %_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.148

.from.129:                                        ; preds = %bb.t, %_ZNSt3__16vectorIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backB8ne180100EOS2_.exit.i
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev13ImageAdditionD2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %.reload.addr197) #29
  br label %.from.148

.from.148:                                        ; preds = %.from.131, %.from.129
  %.pn23 = phi { ptr, i32 } [ %i.fp, %.from.129 ], [ %i.fo, %.from.131 ]
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cv) #29
  br label %.from.152

.from.149:                                        ; preds = %_ZN3tev13ImageAdditionD2Ev.exit, %bb.ad
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.152

.from.135:                                        ; preds = %bb.ad, %bb.ac
  %i.fr = load i8, ptr %i.cw, align 8, !tbaa !208, !range !115, !noundef !116
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.ae, label %.from.144

bb.ae:                                            ; preds = %.from.135
  %i.ft = load ptr, ptr %.reload.addr198, align 8, !tbaa !206 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.from.141, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !209 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.fv, %bb.af ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !166 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = atomicrmw add ptr %i.fz, i64 -1 acq_rel, align 8
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.ah, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !138
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(24) %i.fy) #29, !inline_history !9
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fy) #29
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ft, %i.fw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pre1.i.i.i.i.i.i.i.i = load ptr, ptr %.reload.addr198, align 8, !tbaa !206
  br label %.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i

.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i, %bb.af
  %i.gf = phi ptr [ %.pre1.i.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.ft, %bb.af ] ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !209
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !207
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  tail call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gk) #30
  br label %.from.141

.from.144:                                        ; preds = %.from.135
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(25) %.reload.addr198) #29
  br label %.from.141

.from.141:                                        ; preds = %.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i, %.from.144, %bb.ae
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr207)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.ai

bb.ai:                                            ; preds = %.from.141
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  tail call void @__clang_call_terminate(ptr %i.gm) #34
  unreachable

.from.152:                                        ; preds = %.from..body38, %.from.146, %.from.148, %.from.149
  %.pn24 = phi { ptr, i32 } [ %i.fq, %.from.149 ], [ %i.ck, %.from..body38 ], [ %.pn23, %.from.148 ], [ %i.fn, %.from.146 ]
  tail call void @_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %.reload.addr198) #29
  br label %.from.153

.from.153:                                        ; preds = %bb.p, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from., %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from.124, %.from.152
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %.from.152 ], [ %i.bh, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from.124 ], [ %.pn, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit41.from. ], [ %.pn, %bb.p ]
  %.6 = extractvalue { ptr, i32 } %.pn24.pn, 0
  %i.gn = tail call ptr @__cxa_begin_catch(ptr %.6) #29 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr207)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %.from.153
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.161

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.aj, %.from.141
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !171
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = atomicrmw add ptr %i.gq, i32 -1 acq_rel, align 4 ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 1
  br i1 %i.gs, label %bb.ak, label %_ZN3tev5Latch9countDownEv.exit.i47

bb.ak:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i51 unwind label %.from..loopexit.split-lp.i.i48

.noexc.i.i51:                                     ; preds = %bb.ak
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !120 ; 7 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !178
  %i.gw = and i32 %i.gv, 8
  %.not.i.i.i.i52 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i.i52, label %bb.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.al:                                            ; preds = %.noexc.i.i51
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !179 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !180 ; 2 uses
  %.not12.i.i.i.i.i53 = icmp eq ptr %i.gy, %i.ha
  br i1 %.not12.i.i.i.i.i53, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i54

.from..lr.ph.i.i.i.i.i54:                         ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 33
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  br label %.from..noexc2.i.i58

.from..noexc2.i.i58:                              ; preds = %.noexc2.i.i58, %.from..lr.ph.i.i.i.i.i54
  %.sroa.09.013.i.i.i.i.i55 = phi ptr [ %i.gy, %.from..lr.ph.i.i.i.i.i54 ], [ %i.hq, %.noexc2.i.i58 ] ; 2 uses
  %i.hf = load ptr, ptr %.sroa.09.013.i.i.i.i.i55, align 8, !tbaa !183 ; 2 uses
  %i.hg = load i8, ptr %i.hb, align 8             ; 2 uses
  %i.hh = trunc i8 %i.hg to i1                    ; 2 uses
  %i.hi = load ptr, ptr %i.hc, align 8
  %i.hj = select i1 %i.hh, ptr %i.hi, ptr %i.hd
  %i.hk = load i64, ptr %i.he, align 8
  %i.hl = lshr i8 %i.hg, 1
  %i.hm = zext nneg i8 %i.hl to i64
  %i.hn = select i1 %i.hh, i64 %i.hk, i64 %i.hm
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !138
  %i.hp = load ptr, ptr %i.ho, align 8
  invoke void %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr %i.hj, i64 %i.hn, i32 noundef 8, ptr nonnull @.str.78, i64 36)
          to label %.noexc2.i.i58 unwind label %.from..loopexit.i.i56, !inline_history !2

.noexc2.i.i58:                                    ; preds = %.from..noexc2.i.i58
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i55, i64 16 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.hq, %i.ha
  br i1 %.not.i.i.i.i.i59, label %_ZN3tev5Latch9countDownEv.exit.i47, label %.from..noexc2.i.i58

.from..loopexit.i.i56:                            ; preds = %.from..noexc2.i.i58
  %lpad.loopexit.i.i57 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

.from..loopexit.split-lp.i.i48:                   ; preds = %bb.ak
  %lpad.loopexit.split-lp.i.i49 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.am:                                            ; preds = %.from..loopexit.split-lp.i.i48, %.from..loopexit.i.i56
  %lpad.phi.i.i50 = phi { ptr, i32 } [ %lpad.loopexit.i.i57, %.from..loopexit.i.i56 ], [ %lpad.loopexit.split-lp.i.i49, %.from..loopexit.split-lp.i.i48 ]
  %i.hr = extractvalue { ptr, i32 } %lpad.phi.i.i50, 0
  tail call void @__clang_call_terminate(ptr %i.hr) #34
  unreachable

_ZN3tev5Latch9countDownEv.exit.i47:               ; preds = %.noexc2.i.i58, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.hs = icmp slt i32 %i.gr, 2
  br i1 %i.hs, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i47, %bb.al, %.noexc.i.i51
  %i.ht = load ptr, ptr %i.go, align 8, !tbaa !171
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !167 ; 2 uses
  %i.hv = inttoptr i64 %i.hu to ptr               ; 3 uses
  store ptr %i.hv, ptr %.reload.addr197, align 8
  %.not.i60 = icmp eq i64 %i.hu, 0
  br i1 %.not.i60, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.an

bb.an:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i2 -1, ptr %index.addr, align 4
  %i.hw = load ptr, ptr %i.hv, align 8
  musttail call void %i.hw(ptr nonnull %i.hv)
  ret void

bb.ao:                                            ; preds = %.from.153
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ar unwind label %bb.as

.from.161:                                        ; preds = %bb.aj
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i47, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !410 ; 5 uses
  %.not.i.i61 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i61, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = atomicrmw add ptr %i.ib, i64 -1 acq_rel, align 8
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.aq, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !138
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8
  tail call void %i.ig(ptr noundef nonnull align 8 dereferenceable(24) %i.ia) #29, !inline_history !48
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ia) #29
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aq, %bb.ap, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr207) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #29
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave93, %AfterCoroSuspend99.thread
  ret void

bb.ar:                                            ; preds = %bb.ao, %.from.161
  %.pn25 = phi { ptr, i32 } [ %i.hy, %.from.161 ], [ %i.hx, %bb.ao ]
  store ptr null, ptr %0, align 8
  store i2 -1, ptr %index.addr, align 4
  resume { ptr, i32 } %.pn25

bb.as:                                            ; preds = %bb.ao
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  tail call void @__clang_call_terminate(ptr %i.ii) #34
  unreachable

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_1clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(192) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr198 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.reload.addr200 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 188
  %index = load i2, ptr %index.addr, align 4
  switch i2 %index, label %unreachable [
    i2 0, label %.thread69
    i2 1, label %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit
    i2 -2, label %.from.133
    i2 -1, label %.thread69
  ], !prof !1487

_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr197 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr197) #29
  %i.a = load i8, ptr %.reload.addr200, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %.thread69

bb.a:                                             ; preds = %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.e = load i64, ptr %.reload.addr200, align 8
  %i.f = and i64 %i.e, -2
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #30
  br label %.thread69

.from.133:                                        ; preds = %resume.entry
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i8, ptr %i.g, align 8, !tbaa !208, !range !115, !noundef !116
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.from.144

bb.b:                                             ; preds = %.from.133
  %i.j = load ptr, ptr %.reload.addr198, align 8, !tbaa !206 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread69, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !209  ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.c, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166  ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = atomicrmw add ptr %i.p, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #29, !inline_history !9
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #29
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pre1.i.i.i.i.i.i.i.i = load ptr, ptr %.reload.addr198, align 8, !tbaa !206
  br label %.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i

.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i, %bb.c
  %i.v = phi ptr [ %.pre1.i.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !209
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !207
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #30
  br label %.thread69

.from.144:                                        ; preds = %.from.133
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(25) %.reload.addr198) #29
  br label %.thread69

.thread69:                                        ; preds = %.from._ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i, %.from.144, %bb.b, %bb.a, %_ZN3tev4TaskINSt3__18expectedINS1_6vectorINS1_10shared_ptrINS_5ImageEEENS1_9allocatorIS6_EEEENS_14ImageLoadErrorEEEE12await_resumeEv.exit, %resume.entry, %resume.entry
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !410 ; 5 uses
  %.not.i.i61 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i61, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.thread69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !138
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #29, !inline_history !48
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #29
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.g, %bb.f, %.thread69
  %.reload.addr207 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr207) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #29
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev18invokeTaskDetachedITkNS_13TaskCoroutineEZNS_22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS2_17basic_string_viewIcNS2_11char_traitsIcEEEEbRKNS2_10shared_ptrINS_5ImageEEEE3$_1JEEENS_12DetachedTaskEOT_DpOT0_.resume"(ptr noundef nonnull align 8 dereferenceable(144) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.reload.addr38 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.reload.addr39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pr = load ptr, ptr %.reload.addr38, align 8, !tbaa !185 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !3

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr38, align 8, !tbaa !185
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.g

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr38) #29
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 5 uses
  %.not.i.i12 = icmp eq ptr %i.e, null
  br i1 %.not.i.i12, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 acq_rel, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #29, !inline_history !0
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #29
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i: ; preds = %bb.d, %bb.c, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.e:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !149
  %i.q = load i64, ptr %i.l, align 8
  %i.r = and i64 %i.q, -2
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.r) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit"

bb.f:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !149
  %i.x = load i64, ptr %i.s, align 8
  %i.y = and i64 %i.x, -2
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #30
  br label %"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit"

bb.g:                                             ; preds = %.thread, %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr38) #29
  tail call fastcc void @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.reload.addr) #29
  %.1 = extractvalue { ptr, i32 } %i.z, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.1) #29 ; 0 uses
  invoke void @_ZN3tev12DetachedTask12promise_type19unhandled_exceptionEv(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr39)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEEN3$_1D2Ev.exit" unwind label %.from.36

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
end_hunk_3
