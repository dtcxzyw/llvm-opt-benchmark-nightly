Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/async?download=true
inline.NumInlined: 885
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6spdlog12async_logger8sink_it_ERKNS_7details7log_msgE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18, !noalias !78 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !59, !alias.scope !78
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 8, !noalias !78
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.06.i.i.i.i.i39 = phi i32 [ %i.s, %bb.f ], [ %i.w, %bb.h ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i40 = icmp eq i32 %.06.i.i.i.i.i39, 0
  br i1 %.not.not.not.i.not.i.i.i.i40, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %.06.i.i.i.i.i39, 1
  %i.u = cmpxchg weak ptr %i.r, i32 %.06.i.i.i.i.i39, i32 %i.t acq_rel monotonic, align 8, !noalias !78 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  %i.w = extractvalue { i32, i1 } %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.g, !llvm.loop !73

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i41: ; preds = %bb.g, %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !78 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.x, align 8, !tbaa !23, !noalias !78
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #26
          to label %.noexc42 unwind label %bb.w

.noexc42:                                         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i41
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !81, !noalias !78
  store ptr %i.y, ptr %5, align 8, !tbaa !82, !alias.scope !78
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !25
  invoke void @_ZN6spdlog7details11thread_pool8post_logEOSt10shared_ptrINS_12async_loggerEERKNS0_7log_msgENS_21async_overflow_policyE(ptr noundef nonnull align 8 dereferenceable(224) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.aa)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !59  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ac, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !66
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !84
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !84
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i43 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.n ], [ %i.ap, %bb.o ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.p, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !59  ; 8 uses
  %.not.i.i44 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i44, label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.as, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !66
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25, !inline_history !85
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25, !inline_history !85
  br label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i45 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i45, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

bb.u:                                             ; preds = %bb.s
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i47 = phi i32 [ %i.av, %bb.t ], [ %i.bf, %bb.u ]
  %i.bg = icmp eq i32 %.0.i.i.i.i47, 1
  br i1 %i.bg, label %bb.v, label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25
  br label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.az

bb.w:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i41
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.y

bb.x:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn22 = phi { ptr, i32 } [ %i.bi, %bb.x ], [ %i.bh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ae

bb.z:                                             ; preds = %_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv.exit.thread, %_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6spdlog15throw_spdlog_exENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %6) #26
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bl = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.bl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn22.pn, 1
  %.213 = extractvalue { ptr, i32 } %.pn22.pn, 0
  call void @_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.bp = icmp eq i32 %.2, %i.bo
  %i.bq = call ptr @__cxa_begin_catch(ptr %.213) #25 ; 4 uses
  br i1 %i.bp, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !86
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.at, label %.noexc37

.noexc37:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 12, ptr %2, align 8, !tbaa !93
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 12, ptr %i.bt, align 4, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.bu, align 8, !tbaa !93
  %.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %.ptr.i, align 8, !tbaa !95
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.bv, align 8, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.4, ptr %i.bw, align 8, !tbaa !98
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 11, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !99
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.bx, align 8, !tbaa !100
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 3, ptr %i.by, align 4, !tbaa !102
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %2, ptr %i.bz, align 8, !tbaa !104
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) @constinit, i64 24, i1 false), !tbaa.struct !105
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.4, i64 11, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.ag unwind label %bb.aq

bb.ag:                                            ; preds = %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #25
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !106
  store ptr %i.ce, ptr %3, align 16, !tbaa !17, !noalias !106
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = load ptr, ptr %i.br, align 8, !tbaa !98, !noalias !106
  store ptr %i.ch, ptr %i.cg, align 16, !tbaa !17, !noalias !106
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cj = load i32, ptr %i.cf, align 8, !tbaa !57, !noalias !106
  store i32 %i.cj, ptr %i.ci, align 16, !tbaa !17, !noalias !106
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.4, i64 11, i64 460, ptr nonnull %3)
          to label %bb.ah unwind label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !106
  invoke void @_ZNK6spdlog6logger12err_handler_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.ck = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.ck) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ay

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK6spdlog6logger12err_handler_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cn = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.bd unwind label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.an:                                            ; preds = %bb.ak
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.am
  %.pn25 = phi { ptr, i32 } [ %i.cq, %bb.am ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.cr, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn27 = phi { ptr, i32 } [ %i.cv, %bb.ao ], [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  invoke void @__cxa_end_catch()
          to label %bb.bb unwind label %bb.bc

bb.aq:                                            ; preds = %.noexc37
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.ar:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.as:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.cz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.as, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.aq
  %.pn31.pn = phi { ptr, i32 } [ %i.cw, %bb.aq ], [ %i.cx, %bb.ar ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.cy, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.at:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.dc = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.df, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK6spdlog6logger12err_handler_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.dg = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.dg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ay

bb.aw:                                            ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.ax:                                            ; preds = %bb.au
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

end_hunk_0
begin_hunk_1_@_ZN6spdlog12async_logger6flush_Ev:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18, !noalias !122 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !59, !alias.scope !122
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 8, !noalias !122
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.06.i.i.i.i.i24 = phi i32 [ %i.s, %bb.f ], [ %i.w, %bb.h ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i25 = icmp eq i32 %.06.i.i.i.i.i24, 0
  br i1 %.not.not.not.i.not.i.i.i.i25, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %.06.i.i.i.i.i24, 1
  %i.u = cmpxchg weak ptr %i.r, i32 %.06.i.i.i.i.i24, i32 %i.t acq_rel monotonic, align 8, !noalias !122 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  %i.w = extractvalue { i32, i1 } %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.g, !llvm.loop !73

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i26: ; preds = %bb.g, %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !122 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.x, align 8, !tbaa !23, !noalias !122
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #26
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i26
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !81, !noalias !122
  store ptr %i.y, ptr %2, align 8, !tbaa !82, !alias.scope !122
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !25
  invoke void @_ZN6spdlog7details11thread_pool10post_flushEOSt10shared_ptrINS_12async_loggerEENS_21async_overflow_policyE(ptr noundef nonnull align 8 dereferenceable(224) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.aa)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !59  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ac, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !66
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !84
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !84
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i27 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.n ], [ %i.ap, %bb.o ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.p, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !59  ; 8 uses
  %.not.i.i28 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i28, label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.as, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !66
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25, !inline_history !85
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25, !inline_history !85
  br label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i29 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

bb.u:                                             ; preds = %bb.s
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i31 = phi i32 [ %i.av, %bb.t ], [ %i.bf, %bb.u ]
  %i.bg = icmp eq i32 %.0.i.i.i.i31, 1
  br i1 %i.bg, label %bb.v, label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #25
  br label %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ai

bb.w:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i26
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.y

bb.x:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn14 = phi { ptr, i32 } [ %i.bi, %bb.x ], [ %i.bh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ae

bb.z:                                             ; preds = %_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv.exit.thread, %_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6spdlog15throw_spdlog_exENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #26
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.bl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn14.pn, 1
  %.28 = extractvalue { ptr, i32 } %.pn14.pn, 0
  call void @_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.bp = icmp eq i32 %.2, %i.bo
  %i.bq = call ptr @__cxa_begin_catch(ptr %.28) #25 ; 2 uses
  br i1 %i.bp, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.ag unwind label %bb.aq

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK6spdlog6logger12err_handler_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ah unwind label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  %i.bv = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.bv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @__cxa_end_catch()
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK6spdlog6logger12err_handler_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.by = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.by) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.au unwind label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.an:                                            ; preds = %bb.ak
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.cd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.am
  %.pn17 = phi { ptr, i32 } [ %i.cb, %bb.am ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.cc, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn19 = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.at

bb.aq:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.ar:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.cj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.aq
  %.pn21 = phi { ptr, i32 } [ %i.ch, %bb.aq ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.ci, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.ap
  %.pn21.pn = phi { ptr, i32 } [ %.pn19, %bb.ap ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  resume { ptr, i32 } %.pn21.pn

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.ap
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #27
  unreachable

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_pool10post_flushEOSt10shared_ptrINS_12async_loggerEENS_21async_overflow_policyE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::details::async_msg", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %3, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.b, i8 0, i64 44, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !118
  store i64 250, ptr %i.e, align 8, !tbaa !127
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <2 x ptr>, ptr %1, align 8, !tbaa !21
  store ptr null, ptr %i.j, align 8, !tbaa !59
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !21
  store ptr null, ptr %1, align 8, !tbaa !82
  invoke void @_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(408) %3, i32 noundef %2)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 400
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !66
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !117
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !117
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6spdlog12async_logger14backend_flush_Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.n
  %.pn16.pn = phi { ptr, i32 } [ %.pn14, %bb.n ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %.pn16.pn

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.n
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #27
  unreachable

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog12async_logger5cloneENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.34") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.53", align 1 ; 3 uses
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !132
  call void @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRS1_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(248) %1), !inline_history !135
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !132
  %i.a = load ptr, ptr %4, align 16, !tbaa !82    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %2, align 8, !tbaa !10     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %2, %i.b
  br i1 %.not21.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !17
  store i8 %i.l, ptr %i.c, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !10
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.b, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  store i64 %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = load i64, ptr %i.g, align 8, !tbaa !17
  store i64 %i.t, ptr %i.d, align 8, !tbaa !17
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !17
  store ptr %i.f, ptr %i.b, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !16
  %i.y = load i64, ptr %i.g, align 8, !tbaa !17
  store i64 %i.y, ptr %i.d, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %2, align 8, !tbaa !10
  store i64 %i.u, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %2, align 8, !tbaa !10
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.b
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !16
  store i8 0, ptr %i.z, align 1, !tbaa !17
  %i.ab = load <2 x ptr>, ptr %4, align 16, !tbaa !21
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details15periodic_workerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !99
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  store i8 0, ptr %0, align 8, !tbaa !136
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #25
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.f) #25
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !99
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #27
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3, ptr nofree noundef align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %class.anon.39, align 8             ; 13 uses
  tail call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEEC2Em(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = add i64 %2, -1001
  %or.cond = icmp ult i64 %i.b, -1000
  br i1 %or.cond, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6spdlog15throw_spdlog_exENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %7) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !10     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ap

._crit_edge:                                      ; preds = %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit"
  ret void

bb.g:                                             ; preds = %.lr.ph, %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit"
  %.067 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %0, ptr %9, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !145  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.t = load <2 x ptr>, ptr %i.f, align 8, !tbaa !21
  store <2 x ptr> %i.t, ptr %i.d, align 8, !tbaa !21
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #27
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !145  ; 2 uses
  %.not.i.i.not.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i18, label %_ZNSt8functionIFvvEEC2ERKS1_.exit23, label %bb.m

bb.m:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %10 = load <2 x ptr>, ptr %i.j, align 8, !tbaa !21
  store <2 x ptr> %10, ptr %i.h, align 8, !tbaa !21
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit23

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !145 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i19, label %.body21, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %.body21 unwind label %bb.q    ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #27
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit23:              ; preds = %bb.n, %_ZNSt8functionIFvvEEC2ERKS1_.exit
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !146 ; 6 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !149
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.ag, align 8, !tbaa !150
  %i.ai = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %.loopexit ; 9 uses

.noexc:                                           ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEE", i64 16), ptr %i.ai, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %9, align 8, !tbaa !142
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !142
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !151
  store ptr %i.an, ptr %i.am, align 8, !tbaa !151
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false), !tbaa.struct !152
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %.noexc
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 24, i1 false)
  %11 = load ptr, ptr %i.i, align 8, !tbaa !151
  store ptr %11, ptr %i.ar, align 8, !tbaa !151
  %12 = load ptr, ptr %i.h, align 8, !tbaa !145   ; 2 uses
  %.not.i.i.not.i4.i.i.i.i.i.i.i.i = icmp eq ptr %12, null
  br i1 %.not.i.i.not.i4.i.i.i.i.i.i.i.i, label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i", label %bb.t

bb.t:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !152
  store ptr %12, ptr %i.as, align 8, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i"

"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i": ; preds = %bb.t, %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i
  store ptr %i.ai, ptr %6, align 8, !tbaa !153
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i"
  %i.at = load ptr, ptr %6, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.u
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #25, !inline_history !155
  br label %"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i"

bb.v:                                             ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i"
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %6, align 8, !tbaa !153   ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i5.i.i, label %.body24, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i: ; preds = %bb.v
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #25, !inline_history !155
  br label %.body24

"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !146
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit"

bb.w:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit23
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !156 ; 10 uses
  %i.bf = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.x, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #26
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i3.i = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i3.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #28
          to label %.noexc27 unwind label %.loopexit ; 11 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.bq, align 8, !tbaa !150
  %i.br = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc.i.i unwind label %bb.ae ; 9 uses

.noexc.i.i:                                       ; preds = %.noexc27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEE", i64 16), ptr %i.br, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %9, align 8, !tbaa !142
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !142
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 24, i1 false)
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !151
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !151
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false), !tbaa.struct !152
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %.noexc.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i8 0, i64 24, i1 false)
  %13 = load ptr, ptr %i.i, align 8, !tbaa !151
  store ptr %13, ptr %i.ca, align 8, !tbaa !151
  %14 = load ptr, ptr %i.h, align 8, !tbaa !145   ; 2 uses
  %.not.i.i.not.i4.i.i.i.i.i.i.i.i.i = icmp eq ptr %14, null
  br i1 %.not.i.i.not.i4.i.i.i.i.i.i.i.i.i, label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i", label %bb.z

bb.z:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !152
  store ptr %14, ptr %i.cb, align 8, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i"

"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i": ; preds = %bb.z, %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.br, ptr %5, align 8, !tbaa !153
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i"
  %i.cc = load ptr, ptr %5, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.aa
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #25, !inline_history !157
  br label %bb.ac

bb.ab:                                            ; preds = %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEC2IJS9_EEEDpOT_.exit.i.i.i"
  %i.cg = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !153   ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i5.i.i.i, label %bb.ag, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i: ; preds = %bb.ab
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #25, !inline_history !157
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.be, %i.ag
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ac
  %i.cl = add i64 %i.bf, -8
  %i.cm = sub i64 %i.cl, %i.bg                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader100, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bp, i64 8
  %i.cp = add i64 %i.bf, -8
  %i.cq = sub i64 %i.cp, %i.bg
  %i.cr = and i64 %i.cq, -8                       ; 2 uses
  %scevgep94 = getelementptr i8, ptr %scevgep, i64 %i.cr
  %scevgep95 = getelementptr i8, ptr %i.be, i64 8
  %scevgep96 = getelementptr i8, ptr %scevgep95, i64 %i.cr
  %bound0 = icmp ult ptr %i.bp, %scevgep96
  %bound1 = icmp ult ptr %i.be, %scevgep94
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader100, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bp, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.be, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.cv ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.be, i64 %i.cv ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.cw = getelementptr i8, ptr %next.gep97, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !tbaa !99, !alias.scope !163, !noalias !158
  %wide.load98 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !99, !alias.scope !163, !noalias !158
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !99, !alias.scope !166, !noalias !163
  store <2 x i64> %wide.load98, ptr %i.cx, align 8, !tbaa !99, !alias.scope !166, !noalias !163
  store <2 x i64> zeroinitializer, ptr %next.gep97, align 8, !tbaa !99, !alias.scope !163, !noalias !158
  store <2 x i64> zeroinitializer, ptr %i.cw, align 8, !tbaa !99, !alias.scope !163, !noalias !158
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.i.preheader100

.lr.ph.i.i.i.i.i.i.preheader100:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader100, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader100 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader100 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.cz = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !99, !alias.scope !161, !noalias !158
  store i64 %i.cz, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !99, !alias.scope !158, !noalias !161
  store i64 0, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !99, !alias.scope !161, !noalias !158
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.da, %i.ag
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !171

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.ac
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.ac ], [ %i.ct, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i33.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i33.i.i, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #24
  br label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i"

bb.ae:                                            ; preds = %.noexc27
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body24 unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i, %bb.ab
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dd, %bb.ae ], [ %i.cg, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i ], [ %i.cg, %bb.ab ]
  %i.df = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.dg = call ptr @__cxa_begin_catch(ptr %i.df) #25 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.ai unwind label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #27
  unreachable

bb.ai:                                            ; preds = %bb.ag
  unreachable

"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i": ; preds = %bb.ad, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !156
  store ptr %i.dc, ptr %i.k, align 8, !tbaa !146
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.dj, ptr %i.l, align 8, !tbaa !149
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit"

"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit": ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", %"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i"
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !145 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i28, label %_ZNSt14_Function_baseD2Ev.exit.i29, label %bb.aj

bb.aj:                                            ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit"
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i29 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i29:               ; preds = %bb.aj, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit"
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !145 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.do, null
  br i1 %.not.i1.i, label %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit", label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i29
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit" unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #27
  unreachable

"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit": ; preds = %_ZNSt14_Function_baseD2Ev.exit.i29, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ds = add nuw i64 %.067, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !172

.body21:                                          ; preds = %bb.o, %bb.p
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !145 ; 2 uses
  %.not.i30 = icmp eq ptr %i.dt, null
  br i1 %.not.i30, label %.body, label %bb.an

bb.an:                                            ; preds = %.body21
  %i.du = invoke noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %.body unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #27
  unreachable

.loopexit:                                        ; preds = %bb.r, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.v, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i, %bb.af
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.de, %bb.af ], [ %i.ax, %bb.v ], [ %i.ax, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #25
  br label %.body

.body:                                            ; preds = %bb.an, %.body21, %bb.k, %bb.j, %.body24
  %.pn = phi { ptr, i32 } [ %eh.lpad-body25, %.body24 ], [ %i.u, %bb.j ], [ %i.ab, %bb.an ], [ %i.u, %bb.k ], [ %i.ab, %.body21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %.body ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #25
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEEC2Em(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = add i64 %1, 1                            ; 6 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = icmp ugt i64 %i.d, 22606304011898960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br i1 %i.g, label %.noexc.i, label %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #26
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.h = mul nuw nsw i64 %i.d, 408
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc3 unwind label %bb.b    ; 13 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i
  store ptr %i.i, ptr %i.f, align 8, !tbaa !180
  %i.j = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.j, ptr %i.k, align 8, !tbaa !181
  %i.l = and i64 %1, 1
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.m, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.n, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.r, align 8, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store ptr %i.s, ptr %i.p, align 8, !tbaa !118
  store i64 250, ptr %i.q, align 8, !tbaa !127
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 408 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc3
  %.lcssa.unr = phi ptr [ poison, %.noexc3 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.i, %.noexc3 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.d, %.noexc3 ], [ %1, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 19 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.013.i.i.i.i.i.i, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.w, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.x, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ab, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !118
  store i64 250, ptr %i.aa, align 8, !tbaa !127
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 408
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ae, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.af, align 8, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 432
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ag, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 504
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 520
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 528
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ak, align 8, !tbaa !126
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 536
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !118
  store i64 250, ptr %i.aj, align 8, !tbaa !127
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 800
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = add i64 %.01012.i.i.i.i.i.i, -2         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 816 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !182

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.aq, align 8, !tbaa !184
  ret void

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i, %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #25
  resume { ptr, i32 } %i.ar
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !186

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !99
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.37", align 8  ; 11 uses
  %5 = alloca %"class.std::function.37", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151
  store ptr %i.c, ptr %i.a, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !152
  store ptr %i.e, ptr %i.f, align 8, !tbaa !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit

_ZNSt8functionIFvvEEC2EOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.h, align 8, !tbaa !151
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.g, align 8, !tbaa !145
  invoke void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !145  ; 2 uses
  %.not.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.f
  ret void

bb.h:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %.not.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.h, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !145  ; 2 uses
  %.not.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit7, %bb.k
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_poolC2Emm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.37", align 8  ; 8 uses
  %4 = alloca %"class.std::function.37", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.b, align 8, !tbaa !151
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.a, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.d, align 8, !tbaa !151
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.c, align 8, !tbaa !145
  invoke void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %.not.i4 = icmp eq ptr %i.i, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.g, %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit7, %bb.j
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details11thread_poolD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.spdlog::details::async_msg", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not29 = icmp eq ptr %i.c, %i.d
  br i1 %.not29, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 400
  br label %bb.b

.preheader:                                       ; preds = %_ZN6spdlog7details9async_msgD2Ev.exit, %bb.a
  %.lcssa18 = phi ptr [ %i.c, %bb.a ], [ %i.ag, %_ZN6spdlog7details9async_msgD2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.ah, %_ZN6spdlog7details9async_msgD2Ev.exit ] ; 2 uses
  %.not26 = icmp eq ptr %.lcssa, %.lcssa18
  br i1 %.not26, label %.loopexit, label %.lr.ph28

bb.b:                                             ; preds = %.lr.ph, %_ZN6spdlog7details9async_msgD2Ev.exit
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.af, %_ZN6spdlog7details9async_msgD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.e, align 8, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.f, i8 0, i64 44, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.j, align 8, !tbaa !126
  store ptr %i.k, ptr %i.h, align 8, !tbaa !118
  store i64 250, ptr %i.i, align 8, !tbaa !127
  store i32 2, ptr %i.l, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  invoke void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE7enqueueEOS2_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(408) %1)
          to label %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit unwind label %bb.j

_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !66
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !117
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !117
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !68

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i1.i, label %_ZN6spdlog7details9async_msgD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @free(ptr noundef %i.ae) #25
  br label %_ZN6spdlog7details9async_msgD2Ev.exit

_ZN6spdlog7details9async_msgD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.af = add nuw i64 %.024, 1                    ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !146 ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %bb.b, label %.preheader, !llvm.loop !187

bb.j:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN6spdlog7details9async_msgD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.m

.lr.ph28:                                         ; preds = %.preheader, %bb.k
  %.sroa.014.027 = phi ptr [ %i.ao, %bb.k ], [ %.lcssa, %.preheader ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.027)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph28
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %.lcssa18
  br i1 %.not, label %.loopexit, label %.lr.ph28

bb.l:                                             ; preds = %.lr.ph28
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.ap, %bb.l ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %.19 = extractvalue { ptr, i32 } %.pn.pn, 0     ; 2 uses
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.ar = icmp eq i32 %.1, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.as = call ptr @__cxa_begin_catch(ptr %.19) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.r

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.n
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !156 ; 4 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !146 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

bb.o:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !186

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.loopexit, %bb.o
  %.05.i.i.i = phi ptr [ %i.av, %bb.o ], [ %i.at, %.loopexit ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !99
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.o, %.loopexit
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.at) #24
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ax) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ay) #25
  ret void

bb.r:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #27
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @__clang_call_terminate(ptr %.19) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(408) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE7enqueueEOS2_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(408) %1)
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit: ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6spdlog7details10circular_qINS0_9async_msgEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(408) %1)
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #25
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i.i5 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i5, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #26
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !173  ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i

_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load i64, ptr %i.h, align 8, !tbaa !188
  %i.j = add i64 %i.i, 1
  %i.k = urem i64 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8, !tbaa !189
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i:          ; preds = %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  tail call void @_ZN6spdlog7details10circular_qINS0_9async_msgEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(408) %1)
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #25
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit3.i:         ; preds = %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i
  %i.q = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = atomicrmw add ptr %i.r, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit3.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details9async_msgD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !66
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !84
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !84
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i.i.i1 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i1, label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @free(ptr noundef %i.s) #25
  br label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit

_ZN6spdlog7details14log_msg_bufferD2Ev.exit:      ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN6spdlog7details11thread_pool15overrun_counterEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE15overrun_counterEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE15overrun_counterEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i64, ptr %i.b, align 8, !tbaa !190
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_pool21reset_overrun_counterEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE21reset_overrun_counterEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE21reset_overrun_counterEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.b, align 8, !tbaa !190
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_ZN6spdlog7details11thread_pool15discard_counterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6spdlog7details11thread_pool21reset_discard_counterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store atomic i64 0, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN6spdlog7details11thread_pool10queue_sizeEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE4sizeEv.exit, label %bb.b

end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !102
  %.not.i.i32 = icmp slt i32 %i.ad, %i.ag
  br i1 %.not.i.i32, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.12) #26
  unreachable

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %2, ptr %3, align 8, !tbaa !222
  store i32 0, ptr %i.g, align 8, !tbaa !224
  %i.ah = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(12) %3) ; 5 uses
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !224 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, %i.a
  br i1 %.not.i, label %.thread44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !17
  switch i8 %i.aj, label %.thread44 [
    i8 125, label %bb.p
    i8 58, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !219 ; 2 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !219
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !220
  %i.aq = sub i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !220
  %or.cond.i.i34 = icmp ult i32 %i.ai, 3
  br i1 %or.cond.i.i34, label %bb.q, label %.thread47

bb.q:                                             ; preds = %bb.p
  %i.ar = zext nneg i32 %i.ai to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.au = call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(20) %i.d), !inline_history !221 ; 0 uses
  br label %.thread47

.thread47:                                        ; preds = %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

.thread44:                                        ; preds = %bb.o, %bb.n
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33: ; preds = %bb.r, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31
  %.039.i = phi ptr [ %i.ah, %bb.r ], [ %i.i, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31 ]
  %.038.i = phi i32 [ %i.ai, %bb.r ], [ %i.ad, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.039.i, i64 1 ; 5 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !219 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !219
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !220
  %i.bd = sub i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !220
  %or.cond.i = icmp ult i32 %.038.i, 3
  br i1 %or.cond.i, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33
  %.not23.i = icmp eq ptr %i.aw, %i.a
  br i1 %.not23.i, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.be = sub i64 %i.h, %i.ay
  %scevgep.i = getelementptr i8, ptr %i.aw, i64 %i.be
  br label %.lr.ph.i

bb.s:                                             ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33
  %i.bf = zext nneg i32 %.038.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(20) %i.d), !inline_history !226
  br label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %.1.i37, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.01924.i = phi ptr [ %i.bm, %bb.v ], [ %i.aw, %.lr.ph.preheader.i ] ; 3 uses
  %i.bj = icmp slt i32 %.025.i, 1
  %.pr.i = load i8, ptr %.01924.i, align 1, !tbaa !17 ; 2 uses
  %.not22.i = icmp eq i8 %.pr.i, 125
  %or.cond33.i = select i1 %i.bj, i1 %.not22.i, i1 false
  br i1 %or.cond33.i, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.critedge3.i

.critedge3.i:                                     ; preds = %.lr.ph.i
  switch i8 %.pr.i, label %bb.v [
    i8 123, label %bb.t
    i8 125, label %bb.u
  ]

bb.t:                                             ; preds = %.critedge3.i
  %i.bk = add nsw i32 %.025.i, 1
  br label %bb.v

bb.u:                                             ; preds = %.critedge3.i
  %i.bl = add nsw i32 %.025.i, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.critedge3.i
  %.1.i37 = phi i32 [ %i.bk, %bb.t ], [ %i.bl, %bb.u ], [ %.025.i, %.critedge3.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01924.i, i64 1 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bm, %i.a
  br i1 %.not.i38, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.lr.ph.i, !llvm.loop !227

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit: ; preds = %.lr.ph.i, %bb.v, %.preheader.i, %bb.s
  %.018.i = phi ptr [ %i.bi, %bb.s ], [ %i.aw, %.preheader.i ], [ %.01924.i, %.lr.ph.i ], [ %scevgep.i, %bb.v ] ; 3 uses
  %i.bn = icmp eq ptr %.018.i, %i.a
  br i1 %i.bn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit
  %i.bo = load i8, ptr %.018.i, align 1, !tbaa !17
  %.not47.i = icmp eq i8 %i.bo, 125
  br i1 %.not47.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.11) #26
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

bb.z:                                             ; preds = %bb.b
  %i.bq = icmp eq ptr %i.i, %i.a
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load i8, ptr %i.i, align 1, !tbaa !17
  %.not30 = icmp eq i8 %i.br, 125
  br i1 %.not30, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.8) #26
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.02451, i64 2
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit: ; preds = %bb.y, %bb.j, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit, %.thread47, %bb.b, %bb.ac
  %.125 = phi ptr [ %i.i, %bb.b ], [ %i.bs, %bb.ac ], [ %i.bp, %bb.y ], [ %i.av, %.thread47 ], [ %i.ab, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit ], [ %i.ac, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %.125, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17      ; 5 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.a, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.g = sub i64 %i.c, %i.d
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.a to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i41 = icmp eq ptr %i.j, %1
  br i1 %.not34.i41, label %.critedge.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !228

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i43 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i42 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !17    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !228

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !228

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i42, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.0.i43, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.028.lcssa.i, align 1, !tbaa !17
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ] ; 2 uses
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !17
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !229, !nonnull !197, !align !230 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !100
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.14) #26
  unreachable

_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i: ; preds = %bb.k
  store i32 -1, ptr %i.ak, align 8, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102
  %.not.i.i.i = icmp slt i32 %.021, %i.ao
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.12) #26
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit: ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.021, ptr %i.ap, align 8, !tbaa !224
  ret ptr %.037

bb.n:                                             ; preds = %bb.a
  %i.aq = and i8 %i.a, -33
  %i.ar = add i8 %i.aq, -65
  %or.cond10.i = icmp ult i8 %i.ar, 26
  %i.as = icmp eq i8 %i.a, 95
  %i.at = or i1 %i.as, %or.cond10.i
  br i1 %i.at, label %.critedge4.preheader, label %bb.o

.critedge4.preheader:                             ; preds = %bb.n
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.12) #26
  unreachable

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12invoke_parseIPKccEEPKT0_RNS0_13parse_contextIS5_EE(ptr noundef nonnull align 8 dereferenceable(20) %0) #0 comdat {
bb.a:
  %1 = alloca %"struct.fmt::v12::formatter", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %1, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !17
  %scevgep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !233
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.e = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !220  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !17
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 12)
  br label %_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12invoke_parseIRKPKccEEPKT0_RNS0_13parse_contextIS7_EE(ptr noundef nonnull align 8 dereferenceable(20) %0) #0 comdat {
bb.a:
  %1 = alloca %"struct.fmt::v12::formatter", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %1, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !17
  %scevgep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !233
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.e = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !220  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !17
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 12)
  br label %_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12invoke_parseIRKicEEPKT0_RNS0_13parse_contextIS5_EE(ptr noundef nonnull align 8 dereferenceable(20) %0) #0 comdat {
bb.a:
  %1 = alloca %"struct.fmt::v12::formatter.51", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %1, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !17
  %scevgep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !233
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.e = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !220  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v126detail16native_formatterIicLNS1_4typeE1EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !17
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v126detail16native_formatterIicLNS1_4typeE1EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 1)
  br label %_ZN3fmt3v126detail16native_formatterIicLNS1_4typeE1EE5parseERNS0_13parse_contextIcEE.exit
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE:bb.a

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72: ; preds = %bb.av
  %i.dy = load i32, ptr %2, align 8, !tbaa !231
  %i.dz = and i32 %i.dy, -8
  %i.ea = or disjoint i32 %i.dz, 2
  br label %.loopexit155.sink.split

bb.ax:                                            ; preds = %bb.d
  %i.eb = lshr i32 20480, %4
  %i.ec = trunc i32 %i.eb to i1
  br i1 %i.ec, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73: ; preds = %bb.ax
  %i.ed = load i32, ptr %2, align 8, !tbaa !231
  %i.ee = and i32 %i.ed, -8
  %i.ef = or disjoint i32 %i.ee, 3
  br label %.loopexit155.sink.split

bb.az:                                            ; preds = %bb.d
  %i.eg = lshr i32 12544, %4
  %i.eh = trunc i32 %i.eg to i1
  br i1 %i.eh, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74: ; preds = %bb.az
  %i.ei = load i32, ptr %2, align 8, !tbaa !231
  %i.ej = and i32 %i.ei, -8
  %i.ek = or disjoint i32 %i.ej, 1
  br label %.loopexit155.sink.split

bb.bb:                                            ; preds = %bb.d
  %i.el = load i8, ptr %.0145, align 1, !tbaa !17 ; 3 uses
  %i.em = icmp eq i8 %i.el, 125
  br i1 %i.em, label %.loopexit155, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = lshr i8 %i.el, 2
  %i.eo = and i8 %i.en, 62
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = lshr i64 4203265827220226048, %i.ep
  %i.er = and i64 %i.eq, 3                        ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0145, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.a, %i.eu
  %i.ew = icmp slt i64 %i.ev, 1
  br i1 %i.ew, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.17) #26
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ex = icmp eq i8 %i.el, 123
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.18) #26
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ey = load i8, ptr %i.et, align 1, !tbaa !17
  switch i8 %i.ey, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit76
    i8 62, label %bb.bh
    i8 94, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

bb.bi:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

_ZN3fmt3v126detail11parse_alignEc.exit76:         ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i75 = phi i32 [ 8, %bb.bg ], [ 24, %bb.bi ], [ 16, %bb.bh ]
  %i.ez = icmp eq i32 %.sroa.0113.0, 0
  br i1 %i.ez, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread

_ZN3fmt3v126detail11parse_alignEc.exit76.thread:  ; preds = %bb.bg, %_ZN3fmt3v126detail11parse_alignEc.exit76
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78: ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit76
  %i.fa = load i32, ptr %2, align 8, !tbaa !231
  %i.fb = and i32 %i.fa, -229377
  %i.fc = trunc nuw nsw i64 %i.er to i32
  %i.fd = shl nuw nsw i32 %i.fc, 15
  %i.fe = add nuw nsw i32 %i.fd, 32768
  %i.ff = or disjoint i32 %i.fb, %i.fe            ; 2 uses
  store i32 %i.ff, ptr %2, align 8, !tbaa !231
  %cond = icmp eq i64 %i.er, 0
  br i1 %cond, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fg = load i8, ptr %.0145, align 1, !tbaa !17
  store i8 %i.fg, ptr %i.q, align 4, !tbaa !17
  store i8 0, ptr %i.t, align 1, !tbaa !17
  store i8 0, ptr %i.u, align 2, !tbaa !17
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fh = load i8, ptr %.0145, align 1, !tbaa !17
  store i8 %i.fh, ptr %i.q, align 4, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !17
  store i8 %i.fj, ptr %i.v, align 1, !tbaa !17
  %exitcond.not.i.1 = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !17
  store i8 %i.fl, ptr %i.w, align 2, !tbaa !17
  %exitcond.not.i.2 = icmp eq i64 %i.er, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !17
  store i8 %i.fn, ptr %i.x, align 1, !tbaa !17
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.bj
  %i.fo = and i32 %i.ff, -57
  %i.fp = or disjoint i32 %i.fo, %.0.i75
  store i32 %i.fp, ptr %2, align 8, !tbaa !231
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59, %bb.t, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53, %_ZN3fmt3v126detail11parse_alignEc.exit52
  %.1146 = phi ptr [ %i.fq, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ac, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ %i.aj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ %i.an, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ %i.au, %bb.t ], [ %i.ax, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ %i.bh, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ %i.bq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ] ; 4 uses
  %.sroa.0113.1 = phi i32 [ 1, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ 2, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ 3, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ 4, %bb.t ], [ 5, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ 6, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ]
  %i.fr = icmp eq ptr %.1146, %1
  br i1 %i.fr, label %.loopexit155, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load i8, ptr %.1146, align 1, !tbaa !17
  br label %bb.d, !llvm.loop !235

.loopexit155.sink.split:                          ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  %.sink = phi i32 [ %i.bv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit ], [ %i.cc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64 ], [ %i.ch, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65 ], [ %i.co, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66 ], [ %i.cv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67 ], [ %i.dc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68 ], [ %i.dj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69 ], [ %i.dq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70 ], [ %i.dv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71 ], [ %i.ea, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72 ], [ %i.ef, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73 ], [ %i.ek, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74 ]
  store i32 %.sink, ptr %2, align 8, !tbaa !231
  %i.ft = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.bb, %bb.bk, %bb.d, %.loopexit155.sink.split, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %i.ft, %.loopexit155.sink.split ], [ %.0145, %bb.d ], [ %.0145, %bb.bb ], [ %.1146, %bb.bk ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !236
  %i.b = load i8, ptr %0, align 1, !tbaa !17      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !228

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !17    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !228

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !228

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.028.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.028.lcssa.i, align 1, !tbaa !17
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.19) #26
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !57
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !100 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !100
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !236
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !238
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !21
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !17
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !236
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !17      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !228

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !17    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !228

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !228

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.028.lcssa.i, align 1, !tbaa !17
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !17
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !242, !nonnull !197, !align !230
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !244, !nonnull !197, !align !245
  store i32 1, ptr %i.am, align 4, !tbaa !236
  %i.an = load ptr, ptr %2, align 8, !tbaa !246, !nonnull !197, !align !230
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !100
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.14) #26
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !100
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !247

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !247

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !247

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !242, !nonnull !197, !align !230 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !244, !nonnull !197, !align !245
  store i32 2, ptr %i.bl, align 4, !tbaa !236
  %i.bm = load ptr, ptr %2, align 8, !tbaa !246, !nonnull !197, !align !230
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !100
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRS1_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #28, !inline_history !248 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  store i32 1, ptr %i.d, align 4, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6spdlog12async_loggerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN6spdlog6loggerC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %2)
          to label %bb.b unwind label %.body.i.i, !inline_history !249

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6spdlog12async_loggerE, i64 16), ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !21
  store <2 x ptr> %i.k, ptr %i.g, align 8, !tbaa !21
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !57
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !57
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

.body.i.i:                                        ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #25, !inline_history !249
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #24, !inline_history !248
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25
  store i32 %i.t, ptr %i.r, align 8, !tbaa !25
  store ptr %i.b, ptr %i.a, align 8, !tbaa !59
  store ptr %i.e, ptr %0, align 8, !tbaa !250
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZNKSt10__weak_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load atomic i32, ptr %i.w monotonic, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.g:                                             ; preds = %bb.f, %_ZNKSt10__weak_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt23_Sp_counted_ptr_inplaceIN6spdlog12async_loggerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 4 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIN6spdlog12async_loggerEEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10__weak_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.o, align 4, !tbaa !57   ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZSt8_DestroyIN6spdlog12async_loggerEEvPT_.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #25, !inline_history !253
  br label %_ZSt8_DestroyIN6spdlog12async_loggerEEvPT_.exit

_ZSt8_DestroyIN6spdlog12async_loggerEEvPT_.exit:  ; preds = %_ZNSt10__weak_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN6spdlog12async_loggerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6spdlog12async_loggerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6spdlog12async_loggerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6spdlog6loggerC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEED2Ev"(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEE", i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i.i.i, label %"_ZNSt6thread8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES7_E3$_0EEED2Ev.exit", label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %"_ZNSt6thread8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES7_E3$_0EEED2Ev.exit" unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

"_ZNSt6thread8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES7_E3$_0EEED2Ev.exit": ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %bb.d
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEEE", i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i unwind label %bb.c, !inline_history !256 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27, !inline_history !256
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i:           ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i.i.i.i, label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEED2Ev.exit", label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEED2Ev.exit" unwind label %bb.e, !inline_history !256 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27, !inline_history !256
  unreachable

"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEED2Ev.exit": ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i, %bb.d
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #25, !inline_history !256
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEE6_M_runEv"(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFvvEEclEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFvvEEclEv.exit.i.i.i.i.i:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.e), !inline_history !257
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt8functionIFvvEEclEv.exit.i.i.i.i.i
  %i.h = tail call noundef zeroext i1 @_ZN6spdlog7details11thread_pool17process_next_msg_Ev(ptr noundef nonnull align 8 dereferenceable(224) %i.b)
  br i1 %i.h, label %bb.c, label %_ZN6spdlog7details11thread_pool12worker_loop_Ev.exit.i.i.i.i.i, !llvm.loop !198

_ZN6spdlog7details11thread_pool12worker_loop_Ev.exit.i.i.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !145
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i.i, label %bb.d, label %"_ZNSt6thread8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES7_E3$_0EEEclEv.exit"

bb.d:                                             ; preds = %_ZN6spdlog7details11thread_pool12worker_loop_Ev.exit.i.i.i.i.i
  tail call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

"_ZNSt6thread8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES7_E3$_0EEEclEv.exit": ; preds = %_ZN6spdlog7details11thread_pool12worker_loop_Ev.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.k), !inline_history !257
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #20 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #20 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN6spdlog7details11thread_poolC1EmmE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #20 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN6spdlog7details11thread_poolC1EmmE3$_1", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details10circular_qINS0_9async_msgEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(408) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !173
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !188
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw [408 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(384) ptr @_ZN6spdlog7details14log_msg_bufferaSEOS1_(ptr noundef nonnull align 8 dereferenceable(408) %i.f, ptr noundef nonnull align 8 dereferenceable(408) %1) #25 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.i = load i32, ptr %i.h, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  store i32 %i.i, ptr %i.j, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !59   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.k, align 8, !tbaa !21
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN6spdlog7details9async_msgaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !66
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !200
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !200
  br label %_ZN6spdlog7details9async_msgaSEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZN6spdlog7details9async_msgaSEOS1_.exit, !prof !68

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25
  br label %_ZN6spdlog7details9async_msgaSEOS1_.exit

_ZN6spdlog7details9async_msgaSEOS1_.exit:         ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !188
  %i.af = add i64 %i.ae, 1
  %i.ag = load i64, ptr %0, align 8, !tbaa !173   ; 2 uses
  %i.ah = urem i64 %i.af, %i.ag
  %.fr = freeze i64 %i.ah                         ; 3 uses
  store i64 %.fr, ptr %i.c, align 8, !tbaa !188
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !189
  %i.ak = icmp eq i64 %.fr, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6spdlog7details9async_msgaSEOS1_.exit
  %i.al = add i64 %.fr, 1                         ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.ag
  %i.an = select i1 %i.am, i64 0, i64 %i.al
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !189
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !190
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !190
  br label %bb.j

bb.j:                                             ; preds = %_ZN6spdlog7details9async_msgaSEOS1_.exit, %bb.i, %bb.a
  ret void
}

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(384) ptr @_ZN6spdlog7details14log_msg_bufferaSEOS1_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(384)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !13, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !15, i64 8, !8, i64 16}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!11, !15, i64 8}
!17 = !{!8, !8, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!20 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{!12, !13, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !9, i64 0}
!25 = !{!26, !56, i64 240}
!26 = !{!"_ZTSN6spdlog12async_loggerE", !27, i64 0, !49, i64 208, !53, i64 224, !56, i64 240}
!27 = !{!"_ZTSN6spdlog6loggerE", !11, i64 8, !28, i64 40, !33, i64 64, !33, i64 68, !35, i64 72, !37, i64 104}
!28 = !{!"_ZTSSt6vectorISt10shared_ptrIN6spdlog5sinks4sinkEESaIS4_EE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6spdlog5sinks4sinkEESaIS4_EE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6spdlog5sinks4sinkEESaIS4_EE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6spdlog5sinks4sinkEESaIS4_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!32 = !{!"p1 _ZTSSt10shared_ptrIN6spdlog5sinks4sinkEE", !14, i64 0}
!33 = !{!"_ZTSSt6atomicIiE", !34, i64 0}
!34 = !{!"_ZTSSt13__atomic_baseIiE", !7, i64 0}
!35 = !{!"_ZTSSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !36, i64 0, !14, i64 24}
!36 = !{!"_ZTSSt14_Function_base", !8, i64 0, !14, i64 16}
!37 = !{!"_ZTSN6spdlog7details10backtracerE", !38, i64 0, !40, i64 40, !43, i64 48}
!38 = !{!"_ZTSSt5mutex", !39, i64 0}
!39 = !{!"_ZTSSt12__mutex_base", !8, i64 0}
!40 = !{!"_ZTSSt6atomicIbE", !41, i64 0}
!41 = !{!"_ZTSSt13__atomic_baseIbE", !42, i64 0}
!42 = !{!"bool", !8, i64 0}
!43 = !{!"_ZTSN6spdlog7details10circular_qINS0_14log_msg_bufferEEE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !44, i64 32}
!44 = !{!"_ZTSSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE12_Vector_implE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 _ZTSN6spdlog7details14log_msg_bufferE", !14, i64 0}
!49 = !{!"_ZTSSt23enable_shared_from_thisIN6spdlog12async_loggerEE", !50, i64 0}
!50 = !{!"_ZTSSt8weak_ptrIN6spdlog12async_loggerEE", !51, i64 0}
!51 = !{!"_ZTSSt10__weak_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !19, i64 8}
!52 = !{!"p1 _ZTSN6spdlog12async_loggerE", !14, i64 0}
!53 = !{!"_ZTSSt8weak_ptrIN6spdlog7details11thread_poolEE", !54, i64 0}
!54 = !{!"_ZTSSt10__weak_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EE", !55, i64 0, !19, i64 8}
!55 = !{!"p1 _ZTSN6spdlog7details11thread_poolE", !14, i64 0}
!56 = !{!"_ZTSN6spdlog21async_overflow_policyE", !8, i64 0}
!57 = !{!7, !7, i64 0}
!58 = distinct !{null, null, null}
!59 = !{!60, !20, i64 0}
!60 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSSt12__shared_ptrIN6spdlog5sinks4sinkELN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0, !60, i64 8}
!63 = !{!"p1 _ZTSN6spdlog5sinks4sinkE", !14, i64 0}
!64 = !{!65, !7, i64 8}
!65 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!66 = !{!65, !7, i64 12}
!67 = distinct !{ptr @_ZNSt12__shared_ptrIN6spdlog5sinks4sinkELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = distinct !{null, null}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv: argument 0"}
!72 = distinct !{!72, !"_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv"}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!76, !55, i64 0}
!76 = !{!"_ZTSSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EE", !55, i64 0, !60, i64 8}
!77 = !{!54, !55, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEE16shared_from_thisEv: argument 0"}
!80 = distinct !{!80, !"_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEE16shared_from_thisEv"}
!81 = !{!51, !52, i64 0}
!82 = !{!83, !52, i64 0}
!83 = !{!"_ZTSSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !60, i64 8}
!84 = distinct !{ptr @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!85 = distinct !{ptr @_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!86 = !{!87, !13, i64 56}
!87 = !{!"_ZTSN6spdlog7details7log_msgE", !88, i64 0, !89, i64 16, !90, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !92, i64 56, !88, i64 80}
!88 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !13, i64 0, !15, i64 8}
!89 = !{!"_ZTSN6spdlog5level10level_enumE", !8, i64 0}
!90 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !91, i64 0}
!91 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !15, i64 0}
!92 = !{!"_ZTSN6spdlog10source_locE", !13, i64 0, !7, i64 8, !13, i64 16}
!93 = !{!94, !94, i64 0}
!94 = !{!"_ZTSN3fmt3v126detail4typeE", !8, i64 0}
!95 = !{!96, !13, i64 0}
!96 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !13, i64 0, !7, i64 8}
!97 = !{!96, !7, i64 8}
!98 = !{!13, !13, i64 0}
!99 = !{!15, !15, i64 0}
!100 = !{!101, !7, i64 16}
!101 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !88, i64 0, !7, i64 16}
!102 = !{!103, !7, i64 20}
!103 = !{!"_ZTSN3fmt3v126detail21compile_parse_contextIcEE", !101, i64 0, !7, i64 20, !14, i64 24}
!104 = !{!103, !14, i64 24}
!105 = !{i64 0, i64 24, !17}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN3fmt3v126formatIJPKcRKS3_RKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!108 = distinct !{!108, !"_ZN3fmt3v126formatIJPKcRKS3_RKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!109 = !{!110, !115, i64 384}
!110 = !{!"_ZTSN6spdlog7details9async_msgE", !111, i64 0, !115, i64 384, !116, i64 392}
!111 = !{!"_ZTSN6spdlog7details14log_msg_bufferE", !87, i64 0, !112, i64 96}
!112 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEEE", !113, i64 0, !8, i64 32, !114, i64 282}
!113 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !13, i64 0, !15, i64 8, !15, i64 16, !14, i64 24}
!114 = !{!"_ZTSN3fmt3v126detail9allocatorIcEE"}
!115 = !{!"_ZTSN6spdlog7details14async_msg_typeE", !8, i64 0}
!116 = !{!"_ZTSSt10shared_ptrIN6spdlog12async_loggerEE", !83, i64 0}
!117 = distinct !{ptr @_ZN6spdlog7details9async_msgD2Ev, ptr @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!118 = !{!113, !13, i64 0}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv: argument 0"}
!121 = distinct !{!121, !"_ZNKSt8weak_ptrIN6spdlog7details11thread_poolEE4lockEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEE16shared_from_thisEv: argument 0"}
!124 = distinct !{!124, !"_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEE16shared_from_thisEv"}
!125 = !{!87, !89, i64 16}
!126 = !{!113, !14, i64 24}
!127 = !{!113, !15, i64 16}
!128 = !{!32, !32, i64 0}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN3fmt3v126formatIJPKcRKS3_RKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!131 = distinct !{!131, !"_ZN3fmt3v126formatIJPKcRKS3_RKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZSt11make_sharedIN6spdlog12async_loggerEJRS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!134 = distinct !{!134, !"_ZSt11make_sharedIN6spdlog12async_loggerEJRS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!135 = distinct !{null, null}
!136 = !{!137, !42, i64 0}
!137 = !{!"_ZTSN6spdlog7details15periodic_workerE", !42, i64 0, !138, i64 8, !38, i64 16, !140, i64 56}
!138 = !{!"_ZTSSt6thread", !139, i64 0}
!139 = !{!"_ZTSNSt6thread2idE", !15, i64 0}
!140 = !{!"_ZTSSt18condition_variable", !141, i64 0}
!141 = !{!"_ZTSSt9__condvar", !8, i64 0}
!142 = !{!143, !55, i64 0}
!143 = !{!"_ZTSZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_E3$_0", !55, i64 0, !144, i64 8, !144, i64 40}
!144 = !{!"_ZTSSt8functionIFvvEE", !36, i64 0, !14, i64 24}
!145 = !{!36, !14, i64 16}
!146 = !{!147, !148, i64 8}
!147 = !{!"_ZTSNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!148 = !{!"p1 _ZTSSt6thread", !14, i64 0}
!149 = !{!147, !148, i64 16}
!150 = !{!139, !15, i64 0}
!151 = !{!144, !14, i64 24}
!152 = !{i64 0, i64 16, !17}
!153 = !{!154, !154, i64 0}
!154 = !{!"p1 _ZTSNSt6thread6_StateE", !14, i64 0}
!155 = distinct !{null, null, null, null}
!156 = !{!147, !148, i64 0}
!157 = distinct !{null, null, null, null, null}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!160 = distinct !{!160, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!163 = !{!162, !164}
!164 = distinct !{!164, !165}
!165 = distinct !{!165, !"LVerDomain"}
!166 = !{!159, !167}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !74, !169, !170}
!169 = !{!"llvm.loop.isvectorized", i32 1}
!170 = !{!"llvm.loop.unroll.runtime.disable"}
!171 = distinct !{!171, !74, !169}
!172 = distinct !{!172, !74}
!173 = !{!174, !15, i64 0}
!174 = !{!"_ZTSN6spdlog7details10circular_qINS0_9async_msgEEE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !175, i64 32}
!175 = !{!"_ZTSSt6vectorIN6spdlog7details9async_msgESaIS2_EE", !176, i64 0}
!176 = !{!"_ZTSSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EE", !177, i64 0}
!177 = !{!"_ZTSNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EE12_Vector_implE", !178, i64 0}
!178 = !{!"_ZTSNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!179 = !{!"p1 _ZTSN6spdlog7details9async_msgE", !14, i64 0}
!180 = !{!178, !179, i64 0}
!181 = !{!178, !179, i64 16}
!182 = distinct !{!182, !74}
!183 = !{!178, !179, i64 8}
!184 = !{!185, !15, i64 0}
!185 = !{!"_ZTSSt13__atomic_baseImE", !15, i64 0}
!186 = distinct !{!186, !74}
!187 = distinct !{!187, !74}
!188 = !{!174, !15, i64 16}
!189 = !{!174, !15, i64 8}
!190 = !{!174, !15, i64 24}
!191 = !{!192, !193, i64 0}
!192 = !{!"_ZTSSt11unique_lockISt5mutexE", !193, i64 0, !42, i64 8}
!193 = !{!"p1 _ZTSSt5mutex", !14, i64 0}
!194 = !{!192, !42, i64 8}
!195 = distinct !{!195, !74}
!196 = !{i8 0, i8 2}
!197 = !{}
!198 = distinct !{!198, !74}
!199 = distinct !{!199, !74}
!200 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!201 = distinct !{ptr @_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEED2Ev, null, null, null}
!202 = distinct !{ptr @_ZN6spdlog12async_loggerD2Ev, null, null, null}
!203 = distinct !{ptr @_ZN6spdlog12async_loggerD2Ev, ptr @_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEED2Ev, null, null, null}
!204 = distinct !{null}
!205 = distinct !{null, null, null, ptr @_ZN6spdlog7details9async_msgD2Ev, ptr @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!206 = distinct !{!206, !74}
!207 = !{!113, !15, i64 8}
!208 = !{!47, !48, i64 0}
!209 = !{!47, !48, i64 8}
!210 = distinct !{!210, !74}
!211 = !{!31, !32, i64 0}
!212 = !{!31, !32, i64 8}
!213 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN6spdlog5sinks4sinkELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!214 = distinct !{!214, !74}
!215 = distinct !{null, null, null}
!216 = !{!31, !32, i64 16}
!217 = distinct !{!217, !74}
!218 = !{!34, !7, i64 0}
!219 = !{!88, !13, i64 0}
!220 = !{!88, !15, i64 8}
!221 = distinct !{null, null}
!222 = !{!223, !223, i64 0}
!223 = !{!"p1 _ZTSN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EEE", !14, i64 0}
!224 = !{!225, !7, i64 8}
!225 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_E10id_adapter", !223, i64 0, !7, i64 8}
!226 = distinct !{null}
!227 = distinct !{!227, !74}
!228 = distinct !{!228, !74}
!229 = !{!225, !223, i64 0}
!230 = !{i64 8}
!231 = !{!232, !7, i64 0}
!232 = !{!"_ZTSN3fmt3v1211basic_specsE", !7, i64 0, !8, i64 4}
!233 = !{!234, !7, i64 12}
!234 = !{!"_ZTSN3fmt3v1212format_specsE", !232, i64 0, !7, i64 8, !7, i64 12}
!235 = distinct !{!235, !74}
!236 = !{!237, !237, i64 0}
!237 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !8, i64 0}
!238 = !{!239, !239, i64 0}
!239 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !14, i64 0}
!240 = !{!241, !241, i64 0}
!241 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !14, i64 0}
!242 = !{!243, !241, i64 8}
!243 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !239, i64 0, !241, i64 8, !14, i64 16}
!244 = !{!243, !14, i64 16}
!245 = !{i64 4}
!246 = !{!243, !239, i64 0}
!247 = distinct !{!247, !74}
!248 = distinct !{null}
!249 = distinct !{null, null, null, null}
!250 = !{!52, !52, i64 0}
!251 = distinct !{null, null, null, null, null}
!252 = distinct !{null, ptr @_ZN6spdlog12async_loggerD2Ev, null, null, null}
!253 = distinct !{null, ptr @_ZN6spdlog12async_loggerD2Ev, ptr @_ZNSt23enable_shared_from_thisIN6spdlog12async_loggerEED2Ev, null, null, null}
!254 = !{!255, !13, i64 8}
!255 = !{!"_ZTSSt9type_info", !13, i64 8}
!256 = !{ptr @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES8_E3$_0EEEEED2Ev"}
!257 = distinct !{null, null, null, null, null, null}
end_hunk_6
