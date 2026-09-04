Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/indexutil?download=true
inline.NumInlined: 683
inline.NumDeleted: 377
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx20ExceptionInitializerD2Ev:bb.a
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !44   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !217
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_Z22gmx_ana_indexgrps_initPP19gmx_ana_indexgrps_tP10gmx_mtop_tPKc(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.std::vector", align 8       ; 6 uses
  %5 = alloca %struct.t_atoms, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_Z10init_indexPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull %2)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit unwind label %bb.c

_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit:       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !45
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !26
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_Z21gmx_mtop_global_atomsRK10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%struct.t_atoms) align 8 %5, ptr noundef nonnull align 8 dereferenceable(768) %1)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_Z7analysePK7t_atomsbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit62 unwind label %bb.i

_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit62:     ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %6, align 8, !tbaa !23     ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !45
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !26
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  invoke void @_Z9done_atomP7t_atoms(ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.m

bb.h:                                             ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit62, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.n, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.x

bb.k:                                             ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74.thread unwind label %bb.l ; 2 uses

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74.thread: ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  store ptr %i.o, ptr %0, align 8, !tbaa !221
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit77

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %bb.g, %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit
  %i.q = phi ptr [ %i.i, %bb.g ], [ %i.c, %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit ] ; 3 uses
  %i.r = phi ptr [ %i.l, %bb.g ], [ %i.f, %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit ] ; 3 uses
  %i.s = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.n unwind label %bb.l       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = sdiv exact i64 %i.w, 56
  %i.y = trunc i64 %i.x to i32
  invoke void @_ZN19gmx_ana_indexgrps_tC2Ei(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef %i.y)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.s, ptr %0, align 8, !tbaa !221
  %i.z = icmp sgt i64 %i.w, 0
  br i1 %i.z, label %.lr.ph83, label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 48) #25
  br label %bb.x

.lr.ph83:                                         ; preds = %bb.o, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit
  %i.ab = phi ptr [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit ], [ %i.q, %bb.o ] ; 2 uses
  %i.ac = phi ptr [ %i.bu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit ], [ %i.r, %bb.o ]
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit ], [ 0, %bb.o ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv86 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = ptrtoint ptr %i.af to i64
  %7 = load ptr, ptr %0, align 8, !tbaa !221
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv86 ; 5 uses
  %10 = ptrtoint ptr %i.ah to i64
  %11 = sub i64 %10, %i.ai                        ; 2 uses
  %i.aj = lshr exact i64 %11, 2
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %9, align 8, !tbaa !59
  %sext = shl i64 %11, 30
  %i.al = ashr exact i64 %sext, 32
  %i.am = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 179, i64 noundef range(i64 -2147483648, 2147483648) %i.al, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %bb.u ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %.lr.ph83
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !42
  %i.ao = load i32, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %.lcssa = phi i32 [ %i.ao, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ], [ %i.bq, %.lr.ph ]
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.lcssa, ptr %i.aq, align 8, !tbaa !60
  %i.ar = load ptr, ptr %0, align 8, !tbaa !221   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.at, %i.av
  br i1 %.not.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !37
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.az, ptr %i.a, align 8, !tbaa !39
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.q
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !35
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.q
  %i.bd = phi ptr [ %i.bb, %.noexc ], [ %i.aw, %bb.q ] ; 2 uses
  switch i64 %i.az, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !36
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !38
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bk, ptr %i.as, align 8, !tbaa !63
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit

bb.t:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit_crit_edge unwind label %bb.u

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit_crit_edge: ; preds = %bb.t
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !26
  %.pre89 = load ptr, ptr %3, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit

bb.u:                                             ; preds = %bb.t, %.noexc.i.i, %.lr.ph83
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph:                                           ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !44
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load i32, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !218

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bt = phi ptr [ %.pre89, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit_crit_edge ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.bu = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit_crit_edge ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 56
  %i.bz = icmp sgt i64 %i.by, %indvars.iv.next87
  br i1 %i.bz, label %.lr.ph83, label %.loopexit, !llvm.loop !219

.loopexit:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit, %bb.o
  %i.ca = phi ptr [ %i.r, %bb.o ], [ %i.bu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit ] ; 2 uses
  %.pr.i73 = phi ptr [ %i.q, %bb.o ], [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit ] ; 5 uses
  %.not4.i.i.i64 = icmp eq ptr %.pr.i73, %i.ca
  br i1 %.not4.i.i.i64, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %.loopexit, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i70
  %.05.i.i.i66 = phi ptr [ %i.cn, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i70 ], [ %.pr.i73, %.loopexit ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i.i67 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i67, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i68, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i65
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i68

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i68:        ; preds = %bb.v, %.lr.ph.i.i.i65
  %i.ci = load ptr, ptr %.05.i.i.i66, align 8, !tbaa !35 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i69: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i68
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !36
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #25
  br label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i70

_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i70:     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i69
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 56 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.cn, %i.ca
  br i1 %.not.i.i.i71, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74, label %.lr.ph.i.i.i65, !llvm.loop !0

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74: ; preds = %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i70, %.loopexit
  %.not.i.i1.i75 = icmp eq ptr %.pr.i73, null
  br i1 %.not.i.i1.i75, label %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit77, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !24
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %.pr.i73 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i73, i64 noundef %i.cs) #25
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit77

_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev.exit77:     ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74.thread, %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i74, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.x:                                             ; preds = %bb.u, %bb.p, %bb.l, %bb.j, %bb.c
  %.pn35 = phi { ptr, i32 } [ %i.bm, %bb.u ], [ %i.aa, %bb.p ], [ %i.p, %bb.l ], [ %i.g, %bb.c ], [ %.pn, %bb.j ]
  call void @_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn35
}

declare void @_Z10init_indexPKc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i:            ; preds = %bb.b, %.lr.ph.i.i
  %i.k = load ptr, ptr %.05.i.i, align 8, !tbaa !35 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !36
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i

_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  br label %_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_Z21gmx_mtop_global_atomsRK10gmx_mtop_t(ptr dead_on_unwind writable sret(%struct.t_atoms) align 8, ptr noundef nonnull align 8 dereferenceable(768)) local_unnamed_addr #7

declare void @_Z7analysePK7t_atomsbb(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

declare void @_Z9done_atomP7t_atoms(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19gmx_ana_indexgrps_tC2Ei(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 5 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorI15gmx_ana_index_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

_ZNSt6vectorI15gmx_ana_index_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.noexc6

.noexc6:                                          ; preds = %_ZNSt6vectorI15gmx_ana_index_tSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.c = mul nuw nsw i64 %i.a, 24
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 13 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.h = add nsw i64 %i.a, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.noexc6
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.k = mul nuw nsw i64 %i.a, 24
  %i.l = add nsw i64 %i.k, -48                    ; 2 uses
  %i.m = udiv i64 %i.l, 24
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.g, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !224
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !222

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
end_hunk_0
