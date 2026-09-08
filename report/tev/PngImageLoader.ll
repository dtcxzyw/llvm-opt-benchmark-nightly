Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/PngImageLoader?download=true
inline.NumInlined: 27659
inline.NumDeleted: 4472
loop-unroll.NumCompletelyUnrolled: 400
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 437
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNKS_14PngImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiENK3$_5clIhEENS_4TaskINS_9ImageDataEEEiEUliE_EENSP_IvEES4_S4_mT0_iENKUliiE_clEii":.from.
  %i.fw = add i64 %i.fv, %i.ff
  %i.fx = select i1 %.not.us35.i, i64 %i.fh, i64 %i.fw
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.az, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !77
  %i.gb = sext i32 %i.ga to i64
  %i.gc = mul nsw i64 %indvars.iv, %i.gb
  %i.gd = add nsw i64 %i.gc, %indvars.iv.i
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !483
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !484
  %i.gh = mul i64 %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gh
  store float %i.fu, ptr %i.gi, align 4, !tbaa !76
  %i.gj = add nuw i64 %.02033.us34.i, 1           ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.gj, %i.ak
  br i1 %exitcond45.not.i, label %._crit_edge.i, label %.from.67, !llvm.loop !7472

._crit_edge.i:                                    ; preds = %.lr.ph.split.split.i, %.from.67, %.from.49
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond48.not.i, label %"_ZZZNK3tev14PngImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_5clIhEENS_4TaskINS_9ImageDataEEEiENKUliE_clEi.exit.loopexit", label %.lr.ph.i, !llvm.loop !7473

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %.lr.ph.split.split.i
  %.02033.i = phi i64 [ %i.hb, %.lr.ph.split.split.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %i.gk = and i64 %.02033.i, 2147483648
  %.not32.i = icmp eq i64 %i.gk, 0
  %i.gl = load i64, ptr %i.av, align 8
  %sext31.i = shl i64 %.02033.i, 32
  %i.gm = ashr exact i64 %sext31.i, 32
  %i.gn = add i64 %i.gm, %i.gl
  %i.go = and i64 %.02033.i, 4294967295
  %i.gp = select i1 %.not32.i, i64 %i.go, i64 %i.gn
  %i.gq = getelementptr inbounds [24 x i8], ptr %i.az, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !77
  %i.gt = sext i32 %i.gs to i64
  %i.gu = mul nsw i64 %indvars.iv, %i.gt
  %i.gv = add nsw i64 %i.gu, %indvars.iv.i
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !483
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !484
  %i.gz = mul i64 %i.gv, %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gz
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !76
  %i.hb = add nuw i64 %.02033.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hb, %i.ak
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !7472

"_ZZZNK3tev14PngImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_5clIhEENS_4TaskINS_9ImageDataEEEiENKUliE_clEi.exit.loopexit": ; preds = %._crit_edge.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.i.from..lr.ph41.i, !llvm.loop !7474

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge.split
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = atomicrmw add ptr %i.hd, i32 -1 acq_rel, align 4 ; 2 uses
  %i.hf = icmp slt i32 %i.he, 1
  br i1 %i.hf, label %bb.i, label %_ZN3tev5Latch9countDownEv.exit.i

bb.i:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !106 ; 7 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !117
  %i.hj = and i32 %i.hi, 8
  %.not.i.i.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !118 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !119 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.hl, %i.hn
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.j
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 33
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.hl, %.from..lr.ph.i.i.i.i.i ], [ %i.id, %.noexc2.i.i ] ; 2 uses
  %i.hs = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.ht = load i8, ptr %i.ho, align 8             ; 2 uses
  %i.hu = trunc i8 %i.ht to i1                    ; 2 uses
  %i.hv = load ptr, ptr %i.hp, align 8
  %i.hw = select i1 %i.hu, ptr %i.hv, ptr %i.hq
  %i.hx = load i64, ptr %i.hr, align 8
  %i.hy = lshr i8 %i.ht, 1
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = select i1 %i.hu, i64 %i.hx, i64 %i.hz
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !79
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr %i.hw, i64 %i.ia, i32 noundef 8, ptr nonnull @.str.130, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !1

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.id, %i.hn
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.from..loopexit.split-lp.i.i:                     ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ie = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ie) #47
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.if = icmp slt i32 %i.he, 2
  br i1 %i.if, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !138 ; 2 uses
  %i.ii = inttoptr i64 %i.ih to ptr               ; 3 uses
  store ptr %i.ii, ptr %.reload.addr, align 8
  %.not.i20 = icmp eq i64 %i.ih, 0
  br i1 %.not.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr80, align 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr nonnull %i.ii)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ik = load ptr, ptr %i.h, align 8, !tbaa !90  ; 5 uses
  %.not.i.i21 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = atomicrmw add ptr %i.il, i64 -1 acq_rel, align 8
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.io = load ptr, ptr %i.ik, align 8, !tbaa !79
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #40, !inline_history !60
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #40
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.l, %bb.m
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #40
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.73, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.73 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #40
  resume { ptr, i32 } %.merged18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE17assign_with_rangeIPKS6_TnPNS2_9enable_ifIXsr3std13is_assignableIRS6_DTdeclsr3stdE7declvalIT_EEEEE5valueEvE4typeELPv0EEEvSE_SE_NS2_20forward_iterator_tagE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !201  ; 6 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27throw_allocation_size_errorEv() #43
  unreachable

_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit: ; preds = %bb.b
  %i.i = sub nuw i64 768614336404564650, %i.f
  %.not.i.i.i = icmp ugt i64 %i.i, %i.f
  %i.j = shl i64 %i.f, 1
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.d)
  %.1.i.i.i = select i1 %.not.i.i.i, i64 %..i.i.i, i64 768614336404564650 ; 3 uses
  %i.k = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.k, label %bb.d, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit

bb.d:                                             ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #43
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit: ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  %i.l = mul nuw i64 %.1.i.i.i, 24
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #42 ; 2 uses
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit, label %.split8.i

.split8.i:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit, %.split8.i
  %i.n = load i64, ptr %i.e, align 8, !tbaa !201  ; 2 uses
  %i.o = icmp ugt i64 %i.n, 5
  br i1 %i.o, label %bb.e, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

bb.e:                                             ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !202
  %i.q = mul i64 %i.n, 24
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.q) #44
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit: ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit, %bb.e
  store ptr %i.m, ptr %0, align 8, !tbaa !202
  store i64 %.1.i.i.i, ptr %i.e, align 8, !tbaa !201
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.d, 6
  %i.s = icmp ugt i64 %i.f, 5
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i19 = icmp eq ptr %2, %1
  br i1 %.not.i19, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22, label %.split8.i20

.split8.i20:                                      ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22: ; preds = %bb.g, %.split8.i20
  %i.u = load ptr, ptr %0, align 8, !tbaa !202
  %i.v = mul i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #44
  store ptr %i.t, ptr %0, align 8, !tbaa !202
  store i64 5, ptr %i.e, align 8, !tbaa !201
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !315  ; 4 uses
  %i.y = icmp ult i64 %i.x, %i.d
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i, label %.split6.i.i

.split6.i.i:                                      ; preds = %bb.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !202
  %i.aa = mul i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %1, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds [24 x i8], ptr %1, i64 %i.x
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i: ; preds = %.split6.i.i, %bb.i
  %phi.call.i.i = phi ptr [ %i.ab, %.split6.i.i ], [ %1, %bb.i ] ; 3 uses
  %.not.i7.i = icmp eq ptr %2, %phi.call.i.i
  br i1 %.not.i7.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit, label %.split8.i.i

.split8.i.i:                                      ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !202
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !315
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %phi.call.i.i to i64
  %i.ag = sub i64 %i.a, %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %phi.call.i.i, i64 %i.ag, i1 false)
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !202
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ah, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit: ; preds = %bb.k, %bb.j, %.split8.i.i, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i, %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.ai, align 8, !tbaa !315
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateIN3tev9ImageDataEE9set_valueIS2_EEvOT_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !213
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr null, ptr %2, align 8, !tbaa !346
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !346
  %.not = icmp eq ptr %i.f, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.not, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.a, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #43
          to label %bb.b unwind label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  unreachable

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40
  resume { ptr, i32 } %i.g

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.h, i8 0, i64 24, i1 false)
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !196
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !196
  store ptr %i.l, ptr %i.i, align 8, !tbaa !196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %1, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !198
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !198
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !198
  store ptr %i.r, ptr %i.o, align 8, !tbaa !198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.s, ptr noundef nonnull align 8 dereferenceable(44) %i.t, i64 44, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !151
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !151
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !151
  store ptr %i.z, ptr %i.w, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.aa, ptr noundef nonnull align 8 dereferenceable(136) %i.ab, i64 136, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !213
  %i.af = or i32 %i.ae, 5
  store i32 %i.af, ptr %i.b, align 8, !tbaa !213
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag) #40
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateIN3tev9ImageDataEE4moveEv(ptr dead_on_unwind noalias writable sret(%"struct.tev::ImageData") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::unique_lock", align 8 ; 8 uses
  %3 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %4 = alloca %"class.std::exception_ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !521
end_hunk_0
