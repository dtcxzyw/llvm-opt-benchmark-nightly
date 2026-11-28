Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/path?download=true
inline.NumInlined: 451
inline.NumDeleted: 171
begin_hunk_0_@_ZN4lean12has_file_extERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = phi i1 [ %.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %i.aa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean10find_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIS5_SaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN4lean8read_dirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = load ptr, ptr %4, align 8, !tbaa !60     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !29    ; 3 uses
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !30 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre26
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !20
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %.pre26
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.018.024 = phi ptr [ %i.a, %.lr.ph ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !61
  %i.t = load ptr, ptr %.sroa.018.024, align 8, !tbaa !16, !noalias !61
  %i.u = call i32 @stat(ptr noundef %i.t, ptr noundef nonnull %3) #25, !noalias !61
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !61
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.e, align 8, !tbaa !34, !noalias !61
  %i.x = and i32 %i.w, 61440
  %i.y = icmp eq i32 %i.x, 16384
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !61
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4lean10find_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018.024, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g, %bb.f, %.noexc6.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp41

bb.g:                                             ; preds = %bb.e
  %i.z = invoke noundef zeroext i1 @_ZN4lean12has_file_extERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018.024, ptr noundef %1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !30  ; 6 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !21
  %i.ad = load ptr, ptr %.sroa.018.024, align 8, !tbaa !16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17 ; 8 uses
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %bb.k, label %._crit_edge.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp slt i64 %i.af, 0
  br i1 %i.ah, label %.noexc.i.i.i, label %bb.l

.noexc.i.i.i:                                     ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ai = add nuw i64 %i.af, 1                    ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !22

.noexc6.i.i.i:                                    ; preds = %bb.l
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !16
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc15, %bb.j
  %i.al = phi ptr [ %i.ak, %.noexc15 ], [ %i.ac, %bb.j ] ; 3 uses
  switch i64 %i.af, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %i.ad, align 1, !tbaa !20
  store i8 %i.am, ptr %i.al, align 1, !tbaa !20
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.af, ptr %i.an, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !20
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.o:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018.024)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.o, %bb.d, %bb.f, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 32 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean8read_dirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.lean::sstream", align 8     ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !16
  %i.c = tail call noalias ptr @opendir(ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %3, i8 0, i64 376, i1 false)
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %_ZN4lean7sstreamC2Ev.exit unwind label %.thread

_ZN4lean7sstreamC2Ev.exit:                        ; preds = %bb.b
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.5, i64 noundef 25)
          to label %_ZN4lean7sstreamlsIA26_cEERS0_RKT_.exit unwind label %.thread64 ; 0 uses

_ZN4lean7sstreamlsIA26_cEERS0_RKT_.exit:          ; preds = %_ZN4lean7sstreamC2Ev.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %.thread64 ; 0 uses

_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN4lean7sstreamlsIA26_cEERS0_RKT_.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZN4lean7sstreamlsIA3_cEERS0_RKT_.exit unwind label %.thread64 ; 0 uses

_ZN4lean7sstreamlsIA3_cEERS0_RKT_.exit:           ; preds = %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.t = tail call ptr @__errno_location() #30
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67
  %i.v = call ptr @strerror(i32 noundef %i.u) #25
  store ptr %i.v, ptr %i.a, align 8, !tbaa !35
  %i.w = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4lean7sstreamlsIPcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %.thread67

bb.c:                                             ; preds = %_ZN4lean7sstreamlsIA3_cEERS0_RKT_.exit
  invoke void @_ZN4lean9throwableC2ERKNS_7sstreamE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(376) %i.w)
          to label %bb.d unwind label %.thread67

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.m, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #27
          to label %bb.ag unwind label %bb.e

.thread:                                          ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.thread64:                                        ; preds = %_ZN4lean7sstreamC2Ev.exit, %_ZN4lean7sstreamlsIA26_cEERS0_RKT_.exit, %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  br label %bb.f

.thread67:                                        ; preds = %bb.c, %_ZN4lean7sstreamlsIA3_cEERS0_RKT_.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.af

bb.f:                                             ; preds = %.thread67, %.thread64, %.thread
  %.pn.pn63 = phi { ptr, i32 } [ %i.x, %.thread ], [ %lpad.thr_comm, %.thread67 ], [ %i.y, %.thread64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @__cxa_free_exception(ptr %i.m) #25
  br label %bb.af

bb.g:                                             ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50
  %i.z = invoke ptr @readdir(ptr noundef nonnull %i.c)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not29 = icmp eq ptr %i.z, null
  br i1 %.not29, label %bb.ae, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 19 ; 3 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !21
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #25 ; 8 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp slt i64 %i.ac, 0
  br i1 %i.ae, label %.noexc.i, label %bb.l

.noexc.i:                                         ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.af = add nuw i64 %i.ac, 1                    ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !22

.noexc11.i:                                       ; preds = %bb.l
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.l
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ah, ptr %4, align 8, !tbaa !16
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc38, %bb.j
  %i.ai = phi ptr [ %i.ah, %.noexc38 ], [ %i.d, %bb.j ] ; 3 uses
  switch i64 %i.ac, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.aj = load i8, ptr %i.ab, align 1, !tbaa !20
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !20
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  store i64 %i.ac, ptr %i.e, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  store i8 0, ptr %i.ak, align 1, !tbaa !20
  %i.al = load i64, ptr %i.e, align 8, !tbaa !17
  switch i64 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.o
  %i.am = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %lhsc = load i8, ptr %i.am, align 1
  %i.an = icmp eq i8 %lhsc, 46
  br i1 %i.an, label %bb.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread, !llvm.loop !62

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40: ; preds = %bb.o
  %i.ao = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = icmp ne i16 %i.ap, 11822
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread, !llvm.loop !62

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread: ; preds = %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.at = load ptr, ptr %1, align 8, !tbaa !16, !noalias !68
  %i.au = load i64, ptr %i.f, align 8, !tbaa !17, !noalias !68
  %i.av = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @_ZN4leanL9g_sep_strE) #25, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !68
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @_ZN4leanL9g_sep_strE, i64 noundef %i.av, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !68
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.aw = load ptr, ptr %4, align 8, !tbaa !16, !noalias !69 ; 3 uses
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !69 ; 6 uses
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !17, !noalias !69 ; 5 uses
  %i.az = sub i64 9223372036854775807, %i.ay
  %i.ba = icmp ult i64 %i.az, %i.ax
  br i1 %i.ba, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc42 unwind label %.loopexit.split-lp74.loopexit.split-lp.loopexit.split-lp, !noalias !69

.noexc42:                                         ; preds = %bb.q
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bb = add i64 %i.ay, %i.ax                    ; 3 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !16, !noalias !69 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.be = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !20, !noalias !69
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.bb, %i.bg
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ay ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ax, 1
  br i1 %cond.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = load i8, ptr %i.aw, align 1, !tbaa !20, !noalias !69
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !20, !noalias !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.aw, i64 %i.ax, i1 false), !noalias !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ay, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %.loopexit.split-lp74.loopexit.split-lp.loopexit.split-lp, !noalias !69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !17, !noalias !69
  %i.bj = load ptr, ptr %6, align 8, !tbaa !16, !noalias !69
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i8 0, ptr %i.bk, align 1, !tbaa !20, !noalias !69
  store ptr %i.i, ptr %5, align 8, !tbaa !21, !alias.scope !69
  %i.bl = load ptr, ptr %6, align 8, !tbaa !16, !noalias !69 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.h
  br i1 %i.bm, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bn = load i64, ptr %i.g, align 8, !tbaa !17, !noalias !69 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.bp, i1 false)
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.bl, ptr %5, align 8, !tbaa !16, !alias.scope !69
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !20, !noalias !69
  store i64 %i.bq, ptr %i.i, align 8, !tbaa !20, !alias.scope !69
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !17, !noalias !69
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %i.br = phi i64 [ %i.bn, %bb.w ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 4 uses
  store i64 %i.br, ptr %i.j, align 8, !tbaa !17, !alias.scope !69
  store ptr %i.h, ptr %6, align 8, !tbaa !16, !noalias !69
end_hunk_0
