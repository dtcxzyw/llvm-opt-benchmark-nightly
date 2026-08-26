Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 287
begin_hunk_0_@_ZN12_GLOBAL__N_146RefCountedVec_InsertConstructorDestructor_Test8TestBodyEv:bb.a
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %i.dh, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  br label %bb.fq

bb.av:                                            ; preds = %bb.aq, %bb.ap
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.body183:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.av
  %eh.lpad-body184 = phi { ptr, i32 } [ %i.ez, %bb.av ], [ %.pn.i178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.dp

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #36
  %i.fa = load ptr, ptr %i.q, align 8, !tbaa !151 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i98, label %_ZNK7testing15AssertionResult15failure_messageEv.exit99, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit99

_ZNK7testing15AssertionResult15failure_messageEv.exit99: ; preds = %bb.ay, %bb.ax
  %i.fc = phi ptr [ %i.fb, %bb.ay ], [ @.str.216, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %43, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 699, ptr noundef %i.fc)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36
  %i.fd = load ptr, ptr %42, align 8, !tbaa !152  ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.ba
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(128) %i.fd) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit105

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #36
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn36 = phi { ptr, i32 } [ %i.fj, %bb.bd ], [ %i.fi, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36
  %i.fk = load ptr, ptr %42, align 8, !tbaa !152  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.be
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(128) %i.fk) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %bb.be, %bb.bb
  %.pn36.pn = phi { ptr, i32 } [ %i.fh, %bb.bb ], [ %.pn36, %bb.be ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #36
  br label %bb.dp

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit102
  %i.fo = load ptr, ptr %i.q, align 8, !tbaa !151 ; 4 uses
  %.not.i.i106 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i106, label %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !41 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107: ; preds = %bb.bg
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !46
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef 32) #39
  br label %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i

_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i:   ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #36
  %.val.i.i = load i64, ptr %33, align 8, !tbaa !45
  %.val.i.i.fr = freeze i64 %.val.i.i             ; 3 uses
  %i.fu = trunc i64 %.val.i.i.fr to i1            ; 2 uses
  %.val1.i.i = load ptr, ptr %i.l, align 8
  %i.fv = select i1 %i.fu, ptr %.val1.i.i, ptr %i.l ; 8 uses
  %.idx381 = shl nuw nsw i64 %storemerge31595, 4  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx381 ; 3 uses
  %i.fx = lshr i64 %.val.i.i.fr, 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  store i32 9999, ptr %23, align 8, !tbaa !871
  store ptr %i.b, ptr %i.r, align 8, !tbaa !868
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !132
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.b, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %23, ptr %22, align 8
  %.val4.i.i.i.i112 = load i64, ptr %i.k, align 8, !noalias !1675
  %.sink.i.i.i.i114 = select i1 %i.fu, i64 %.val4.i.i.i.i112, i64 8 ; 2 uses
  %i.ga = add i64 %storemerge31595, 1             ; 5 uses
  %i.gb = add nuw i64 %i.fx, 1                    ; 3 uses
  %.not.i.i.i115 = icmp ult i64 %i.fx, %.sink.i.i.i.i114
  br i1 %.not.i.i.i115, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit101.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i
  %i.gc = shl nuw i64 %.sink.i.i.i.i114, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.gc, i64 %i.gb) ; 4 uses
  %i.gd = icmp ugt i64 %.sroa.speculated.i.i.i.i, 576460752303423487
  br i1 %i.gd, label %bb.bi, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE8AllocateERS5_m.exit.i.i.i.i, !prof !136

bb.bi:                                            ; preds = %bb.bh
  %i.ge = icmp ugt i64 %.sroa.speculated.i.i.i.i, 1152921504606846975
  br i1 %i.ge, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i.i unwind label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.i.i.i.thread376.loopexit.split-lp

.noexc.i.i.i:                                     ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc72.i.i.i unwind label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.i.i.i.thread376.loopexit.split-lp

.noexc72.i.i.i:                                   ; preds = %bb.bk
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE8AllocateERS5_m.exit.i.i.i.i: ; preds = %bb.bh
  %i.gf = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 4 ; 2 uses
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #41
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i unwind label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.i.i.i.thread376.loopexit ; 11 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE8AllocateERS5_m.exit.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx381 ; 3 uses
  %.val3.i.i271553 = load i32, ptr %23, align 8, !tbaa !871
  %.val4.i.i272554 = load ptr, ptr %i.r, align 8, !tbaa !868 ; 4 uses
  store i32 %.val3.i.i271553, ptr %i.gh, align 8, !tbaa !871
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %.val4.i.i272554, ptr %i.gi, align 8, !tbaa !868
  %.not.i.i.i.i.i273555 = icmp eq ptr %.val4.i.i272554, null
  br i1 %.not.i.i.i.i.i273555, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i._crit_edge, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i.i.i, !prof !1678

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i._crit_edge: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i
  %i.gj = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.281)
          to label %.noexc.i280 unwind label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i279

.noexc.i280:                                      ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.3, i32 noundef 108, ptr noundef nonnull %i.gj) #42
          to label %.noexc12.i281 unwind label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i279

.noexc12.i281:                                    ; preds = %.noexc.i280
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i282 unwind label %bb.bl

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i282: ; preds = %.noexc12.i281
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #35
  unreachable

bb.bl:                                            ; preds = %.noexc12.i281
  %i.gk = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #35
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i279: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i._crit_edge, %.noexc.i280
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  %i.gn = call ptr @__cxa_begin_catch(ptr %i.gm) #36 ; 0 uses
  invoke void @__cxa_rethrow() #38
          to label %57 unwind label %bb.bm

bb.bm:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i279
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.thread.i.i.i unwind label %54

54:                                               ; preds = %bb.bm
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #35
  unreachable

57:                                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i279
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEE8AllocateEm.exit.i.i.i
  %i.gp = load i32, ptr %.val4.i.i272554, align 4, !tbaa !132
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %.val4.i.i272554, align 4, !tbaa !132
  store ptr %i.z, ptr %22, align 8
  %.not.i246 = icmp eq i64 %storemerge31595, 0    ; 2 uses
  br i1 %.not.i246, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i, label %.lr.ph.i249.preheader

.lr.ph.i249.preheader:                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i.i.i
  %xtraiter = and i64 %storemerge31595, 1
  %i.gr = icmp eq i64 %storemerge31595, 1
  br i1 %i.gr, label %.lr.ph.i249.epil.preheader, label %.lr.ph.i249.preheader.new

.lr.ph.i249.preheader.new:                        ; preds = %.lr.ph.i249.preheader
  %unroll_iter = and i64 %storemerge31595, -2
  br label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %bb.bs, %.lr.ph.i249.preheader.new
  %.val.i.i250 = phi ptr [ %i.fv, %.lr.ph.i249.preheader.new ], [ %i.if, %bb.bs ] ; 5 uses
  %.02.i251 = phi i64 [ 0, %.lr.ph.i249.preheader.new ], [ %i.ig, %bb.bs ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i249.preheader.new ], [ %niter.next.1, %bb.bs ]
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %.02.i251 ; 2 uses
  %.val3.i.i252 = load i32, ptr %.val.i.i250, align 8, !tbaa !871
  %i.gt = getelementptr i8, ptr %.val.i.i250, i64 8
  %.val4.i.i253 = load ptr, ptr %i.gt, align 8, !tbaa !868 ; 4 uses
  store i32 %.val3.i.i252, ptr %i.gs, align 8, !tbaa !871
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store ptr %.val4.i.i253, ptr %i.gu, align 8, !tbaa !868
  %.not.i.i.i.i.i254 = icmp eq ptr %.val4.i.i253, null
  br i1 %.not.i.i.i.i.i254, label %.loopexit1286, label %.lr.ph.i249.1, !prof !136

.loopexit1286:                                    ; preds = %.lr.ph.i249.epil.preheader, %.lr.ph.i249, %.lr.ph.i249.1
  %.02.i251.lcssa = phi i64 [ %i.hz, %.lr.ph.i249.1 ], [ %.02.i251, %.lr.ph.i249 ], [ %.02.i251.epil.init, %.lr.ph.i249.epil.preheader ]
  %i.gv = freeze i64 %.02.i251.lcssa              ; 5 uses
  %i.gw = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.281)
          to label %.noexc.i261 unwind label %bb.bo

.noexc.i261:                                      ; preds = %.loopexit1286
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.3, i32 noundef 108, ptr noundef nonnull %i.gw) #42
          to label %.noexc12.i262 unwind label %bb.bo

.noexc12.i262:                                    ; preds = %.noexc.i261
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i263 unwind label %bb.bn

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i263: ; preds = %.noexc12.i262
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35
  unreachable

bb.bn:                                            ; preds = %.noexc12.i262
  %i.gx = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35
  unreachable

bb.bo:                                            ; preds = %.noexc.i261, %.loopexit1286
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #36 ; 0 uses
  %.not1.i.i256 = icmp eq i64 %i.gv, 0
  br i1 %.not1.i.i256, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i260, label %.lr.ph.i.i257.preheader

.lr.ph.i.i257.preheader:                          ; preds = %bb.bo
  %xtraiter1331 = and i64 %i.gv, 1
  %lcmp.mod1332.not = icmp eq i64 %xtraiter1331, 0
  br i1 %lcmp.mod1332.not, label %.lr.ph.i.i257.prol.loopexit, label %.lr.ph.i.i257.prol

.lr.ph.i.i257.prol:                               ; preds = %.lr.ph.i.i257.preheader
  %i.hb = add nsw i64 %i.gv, -1                   ; 2 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.val.i340.prol = load ptr, ptr %i.hd, align 8, !tbaa !868 ; 2 uses
  %i.he = load i32, ptr %.val.i340.prol, align 4, !tbaa !132 ; 2 uses
  %i.hf = add nsw i32 %i.he, -1                   ; 2 uses
  store i32 %i.hf, ptr %.val.i340.prol, align 4, !tbaa !132
  %.not.i.i.i.i341.prol = icmp slt i32 %i.he, 1
  br i1 %.not.i.i.i.i341.prol, label %.loopexit1333, label %.lr.ph.i.i257.prol.loopexit, !prof !136

.lr.ph.i.i257.prol.loopexit:                      ; preds = %.lr.ph.i.i257.prol, %.lr.ph.i.i257.preheader
  %.02.i.i258.unr = phi i64 [ %i.gv, %.lr.ph.i.i257.preheader ], [ %i.hb, %.lr.ph.i.i257.prol ]
  %i.hg = icmp eq i64 %i.gv, 1
  br i1 %i.hg, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i260, label %.lr.ph.i.i257

.lr.ph.i.i257:                                    ; preds = %.lr.ph.i.i257.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345.1
  %.02.i.i258 = phi i64 [ %i.hq, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345.1 ], [ %.02.i.i258.unr, %.lr.ph.i.i257.prol.loopexit ] ; 2 uses
  %i.hh = getelementptr [16 x i8], ptr %i.gg, i64 %.02.i.i258
  %i.hi = getelementptr i8, ptr %i.hh, i64 -8
  %.val.i340 = load ptr, ptr %i.hi, align 8, !tbaa !868 ; 2 uses
  %i.hj = load i32, ptr %.val.i340, align 4, !tbaa !132 ; 2 uses
  %i.hk = add nsw i32 %i.hj, -1                   ; 2 uses
  store i32 %i.hk, ptr %.val.i340, align 4, !tbaa !132
  %.not.i.i.i.i341 = icmp slt i32 %i.hj, 1
  br i1 %.not.i.i.i.i341, label %.loopexit1333, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345, !prof !136

.loopexit1333:                                    ; preds = %.lr.ph.i.i257, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345, %.lr.ph.i.i257.prol
  %.lcssa1148 = phi i32 [ %i.hf, %.lr.ph.i.i257.prol ], [ %i.hk, %.lr.ph.i.i257 ], [ %i.hu, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345 ]
  %i.hl = sext i32 %.lcssa1148 to i64
  %i.hm = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.hl, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i342 unwind label %bb.bq

.noexc.i342:                                      ; preds = %.loopexit1333
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.hm) #42
          to label %.noexc1.i343 unwind label %bb.bq

.noexc1.i343:                                     ; preds = %.noexc.i342
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i344 unwind label %bb.bp

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i344: ; preds = %.noexc1.i343
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  unreachable

bb.bp:                                            ; preds = %.noexc1.i343
  %i.hn = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  unreachable

bb.bq:                                            ; preds = %.noexc.i342, %.loopexit1333
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #35
  unreachable

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345:        ; preds = %.lr.ph.i.i257
  %i.hq = add i64 %.02.i.i258, -2                 ; 3 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.val.i340.1 = load ptr, ptr %i.hs, align 8, !tbaa !868 ; 2 uses
  %i.ht = load i32, ptr %.val.i340.1, align 4, !tbaa !132 ; 2 uses
  %i.hu = add nsw i32 %i.ht, -1                   ; 2 uses
  store i32 %i.hu, ptr %.val.i340.1, align 4, !tbaa !132
  %.not.i.i.i.i341.1 = icmp slt i32 %i.ht, 1
  br i1 %.not.i.i.i.i341.1, label %.loopexit1333, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345.1, !prof !136

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345.1:      ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345
  %.not.i.i259.1 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i259.1, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i260, label %.lr.ph.i.i257, !llvm.loop !870

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i260: ; preds = %.lr.ph.i.i257.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit345.1, %bb.bo
  invoke void @__cxa_rethrow() #38
          to label %bb.bu unwind label %bb.br

bb.br:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i260
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.i94.preheader.i.i.i unwind label %bb.bt

.lr.ph.i249.1:                                    ; preds = %.lr.ph.i249
  %i.hw = load i32, ptr %.val4.i.i253, align 4, !tbaa !132
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %.val4.i.i253, align 4, !tbaa !132
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i.i250, i64 16
  %i.hz = or disjoint i64 %.02.i251, 1            ; 2 uses
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.hz ; 2 uses
  %.val3.i.i252.1 = load i32, ptr %i.hy, align 8, !tbaa !871
  %i.ib = getelementptr i8, ptr %.val.i.i250, i64 24
  %.val4.i.i253.1 = load ptr, ptr %i.ib, align 8, !tbaa !868 ; 4 uses
  store i32 %.val3.i.i252.1, ptr %i.ia, align 8, !tbaa !871
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %.val4.i.i253.1, ptr %i.ic, align 8, !tbaa !868
  %.not.i.i.i.i.i254.1 = icmp eq ptr %.val4.i.i253.1, null
  br i1 %.not.i.i.i.i.i254.1, label %.loopexit1286, label %bb.bs, !prof !136

bb.bs:                                            ; preds = %.lr.ph.i249.1
  %i.id = load i32, ptr %.val4.i.i253.1, align 4, !tbaa !132
  %i.ie = add nsw i32 %i.id, 1
  store i32 %i.ie, ptr %.val4.i.i253.1, align 4, !tbaa !132
  %i.if = getelementptr inbounds nuw i8, ptr %.val.i.i250, i64 32 ; 3 uses
  %i.ig = add nuw i64 %.02.i251, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i249, !llvm.loop !930

bb.bt:                                            ; preds = %bb.br
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #35
  unreachable

bb.bu:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i260
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i, label %.lr.ph.i249.epil.preheader

.lr.ph.i249.epil.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.unr-lcssa, %.lr.ph.i249.preheader
  %.val.i.i250.epil.init = phi ptr [ %i.fv, %.lr.ph.i249.preheader ], [ %i.if, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.02.i251.epil.init = phi i64 [ 0, %.lr.ph.i249.preheader ], [ %i.ig, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1285 = trunc i64 %storemerge31595 to i1
  call void @llvm.assume(i1 %lcmp.mod1285)
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %.02.i251.epil.init ; 2 uses
  %.val3.i.i252.epil = load i32, ptr %.val.i.i250.epil.init, align 8, !tbaa !871
  %i.ik = getelementptr i8, ptr %.val.i.i250.epil.init, i64 8
  %.val4.i.i253.epil = load ptr, ptr %i.ik, align 8, !tbaa !868 ; 4 uses
  store i32 %.val3.i.i252.epil, ptr %i.ij, align 8, !tbaa !871
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %.val4.i.i253.epil, ptr %i.il, align 8, !tbaa !868
  %.not.i.i.i.i.i254.epil = icmp eq ptr %.val4.i.i253.epil, null
  br i1 %.not.i.i.i.i.i254.epil, label %.loopexit1286, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.epilog-lcssa, !prof !136

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.epilog-lcssa: ; preds = %.lr.ph.i249.epil.preheader
  %i.im = load i32, ptr %.val4.i.i253.epil, align 4, !tbaa !132
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %.val4.i.i253.epil, align 4, !tbaa !132
  %i.io = getelementptr inbounds nuw i8, ptr %.val.i.i250.epil.init, i64 16
  br label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.epilog-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.unr-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i.i.i
  %.sroa.0359.0 = phi ptr [ %i.fv, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i.i.i ], [ %i.if, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.unr-lcssa ], [ %i.io, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i.loopexit.epilog-lcssa ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7testing8internal16ContainerPrinter10PrintValueIN4absl12lts_2026052613InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2ESaISB_EEEvEEvRKT_PSo:bb.a

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1, !tbaa !46
  %i.bf = load ptr, ptr %1, align 8, !tbaa !16
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !601
  %.not.i32 = icmp eq i64 %i.bk, 0
  br i1 %.not.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34

bb.p:                                             ; preds = %._crit_edge.thread
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 125) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_20IteratorValueAdapterIS9_PKS8_EEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISF_E7pointerERT0_NSK_9size_typeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !4031
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.b = phi ptr [ %i.v, %bb.f ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.w, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.013 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !44
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.g, ptr %i.a, align 8, !tbaa !45
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !41
  %i.j = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.j, ptr %i.d, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %.lr.ph ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !46
  store i8 %i.l, ptr %i.k, align 1, !tbaa !46
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = call ptr @__cxa_begin_catch(ptr %i.n) #36 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %.013)
  invoke void @__cxa_rethrow() #38
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !47
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.u = load ptr, ptr %2, align 8, !tbaa !4031
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !4031
  %i.w = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4033

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #35
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_160InitializerListConstructor_ComplexTypeWithInlineBacking_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_160InitializerListConstructor_ComplexTypeWithInlineBacking_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_160InitializerListConstructor_ComplexTypeWithInlineBacking_TestE, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_160InitializerListConstructor_ComplexTypeWithInlineBacking_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_160InitializerListConstructor_ComplexTypeWithInlineBacking_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.806", align 8   ; 12 uses
  %6 = alloca %"class.testing::Matcher.1019", align 8 ; 9 uses
  %7 = alloca %"class.testing::Matcher.1019", align 8 ; 9 uses
  %8 = alloca %"class.testing::Matcher.1019", align 8 ; 9 uses
  %9 = alloca %"class.std::vector.1023", align 16 ; 14 uses
  %10 = alloca %"class.std::vector.1023", align 8 ; 4 uses
  %11 = alloca %"class.testing::Matcher.1019", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %13 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %18 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1002", align 8 ; 7 uses
  %19 = alloca %"class.absl::lts_20260526::InlinedVector.1000", align 8 ; 11 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  store i32 0, ptr %18, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.a = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !132
  %i.b = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %19, i64 8
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !132
  store i32 0, ptr %i.c, align 8, !tbaa !2646
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i8 1, ptr %i.d, align 4, !tbaa !2648
  %i.e = add nsw i32 %i.b, 2
  store i32 %i.e, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !132
  %22 = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted, 1
  %i.f = add i32 %i.a, 2
  store i32 %i.f, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !132
  store i32 %22, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !132
  store i64 2, ptr %19, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !4034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4049)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !4052
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !4053
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !4053
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !4053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4066)
  %i.g = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !4053 ; 5 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal13SizeIsMatcherIjE4ImplIRKN4absl12lts_2026052613InlinedVectorINS5_13test_internal23CopyableMovableInstanceELm1ESaIS8_EEEEE, i64 16), ptr %i.g, align 8, !tbaa !16, !noalias !4069
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherImEE, i64 16), ptr %i.h, align 8, !tbaa !16, !alias.scope !4070, !noalias !4069
  store ptr @_ZZN7testing8internal11MatcherBaseImE9GetVTableINS2_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEPKNS2_6VTableEvE7kVTable, ptr %i.i, align 8, !tbaa !453, !alias.scope !4070, !noalias !4069
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %i.j, align 8, !tbaa !46, !alias.scope !4070, !noalias !4069
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE9GetVTableINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEPKNSB_6VTableEvE7kVTable, ptr %i.k, align 8, !tbaa !4077, !alias.scope !4080, !noalias !4053
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.ab, !noalias !4081 ; 4 uses

.noexc5.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  store i32 1, ptr %i.m, align 4, !tbaa !460, !noalias !4069
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = ptrtoint ptr %i.g to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !4082, !noalias !4069
  store ptr %i.m, ptr %i.l, align 8, !tbaa !46, !alias.scope !4080, !noalias !4053
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS2_13test_internal23CopyableMovableInstanceELm1ESaIS5_EEEEE, i64 16), ptr %8, align 8, !tbaa !16, !alias.scope !4080, !noalias !4053
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4084, !noalias !4053 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !4087, !noalias !4053
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.thread.i.i.i.i.i.i.i

_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.thread.i.i.i.i.i.i.i: ; preds = %.noexc5.i.i.i.i.i.i
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE9GetVTableINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEPKNSB_6VTableEvE7kVTable, ptr %i.u, align 8, !tbaa !4077, !noalias !4081
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.t, ptr %i.v, align 8, !tbaa !46, !noalias !4081
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS2_13test_internal23CopyableMovableInstanceELm1ESaIS5_EEEEE, i64 16), ptr %i.q, align 8, !tbaa !16, !noalias !4081
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.w, ptr %i.p, align 8, !tbaa !4084, !noalias !4053
  br label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.noexc5.i.i.i.i.i.i
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i unwind label %bb.x, !noalias !4081

_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !4077, !noalias !4053 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEE, i64 16), ptr %8, align 8, !tbaa !16, !noalias !4053
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pr.i.i.i.i.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4088, !noalias !4081
  %.not.i.i4.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i.i.i.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !46, !noalias !4053
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4, !noalias !4081
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !4077, !noalias !4053
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !4088, !noalias !4081
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !46, !noalias !4053
  invoke void %i.ae(ptr noundef %i.af)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i unwind label %bb.e, !noalias !4081, !inline_history !4090

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #35, !noalias !4081, !inline_history !4091
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !4053
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !4053
  call void @llvm.experimental.noalias.scope.decl(metadata !4092)
  call void @llvm.experimental.noalias.scope.decl(metadata !4095)
  call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  call void @llvm.experimental.noalias.scope.decl(metadata !4107)
  %i.ai = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc6.i.i.i.i.i.i unwind label %bb.ab, !noalias !4081 ; 3 uses

.noexc6.i.i.i.i.i.i:                              ; preds = %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_118CapacityIsMatcherPImE10gmock_ImplIRKN4absl12lts_2026052613InlinedVectorINS4_13test_internal23CopyableMovableInstanceELm1ESaIS7_EEEEE, i64 16), ptr %i.ai, align 8, !tbaa !16, !noalias !4110
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 2, ptr %i.aj, align 8, !tbaa !4111, !noalias !4110
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE9GetVTableINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEPKNSB_6VTableEvE7kVTable, ptr %i.ak, align 8, !tbaa !4077, !alias.scope !4114, !noalias !4053
  %i.am = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc7.i.i.i.i.i.i unwind label %bb.ab, !noalias !4081 ; 4 uses

.noexc7.i.i.i.i.i.i:                              ; preds = %.noexc6.i.i.i.i.i.i
  store i32 1, ptr %i.am, align 4, !tbaa !460, !noalias !4110
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = ptrtoint ptr %i.ai to i64
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !4082, !noalias !4110
  store ptr %i.am, ptr %i.al, align 8, !tbaa !46, !alias.scope !4114, !noalias !4053
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS2_13test_internal23CopyableMovableInstanceELm1ESaIS5_EEEEE, i64 16), ptr %7, align 8, !tbaa !16, !alias.scope !4114, !noalias !4053
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !4084, !noalias !4053 ; 6 uses
  %i.aq = load ptr, ptr %i.r, align 16, !tbaa !4087, !noalias !4053
  %.not.i.i.i5.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i5.i.i.i.i.i.i.i, label %bb.f, label %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.thread.i.i.i.i.i.i.i.i

_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i.i
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE9GetVTableINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEPKNSB_6VTableEvE7kVTable, ptr %i.as, align 8, !tbaa !4077, !noalias !4081
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !46, !noalias !4081
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS2_13test_internal23CopyableMovableInstanceELm1ESaIS5_EEEEE, i64 16), ptr %i.ap, align 8, !tbaa !16, !noalias !4081
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.au, ptr %i.p, align 8, !tbaa !4084, !noalias !4053
  br label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.noexc7.i.i.i.i.i.i
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i.i unwind label %bb.w, !noalias !4081

_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !4077, !noalias !4053 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEE, i64 16), ptr %7, align 8, !tbaa !16, !noalias !4053
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.pr.i.i.i.i.i.i.i.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4088, !noalias !4081
  %.not.i.i4.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i4.i.i.i.i.i.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !46, !noalias !4053
  %i.ay = atomicrmw sub ptr %i.ax, i32 1 acq_rel, align 4, !noalias !4081
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !4077, !noalias !4053
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !4088, !noalias !4081
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !46, !noalias !4053
  invoke void %i.bc(ptr noundef %i.bd)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.i, !noalias !4081, !inline_history !4090

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #35, !noalias !4081, !inline_history !4091
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN7testing7MatcherIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEEESaISB_EE9push_backEOSB_.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !4053
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !4053
  call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  call void @llvm.experimental.noalias.scope.decl(metadata !4118)
  call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  call void @llvm.experimental.noalias.scope.decl(metadata !4124)
  call void @llvm.experimental.noalias.scope.decl(metadata !4127)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !4130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !4130
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #41
          to label %_ZNSt12_Vector_baseIN7testing7MatcherIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !4131 ; 3 uses

_ZNSt12_Vector_baseIN7testing7MatcherIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEED2Ev.exit.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %5, align 8, !tbaa !3113, !noalias !4130
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !3116, !noalias !4130
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !3130, !noalias !4130
  %i.bk = invoke fastcc ptr @_ZN7testing8internal20TransformTupleValuesISt5tupleIJN12_GLOBAL__N_115ValueIsMatcherPIiEEEENS0_22CastAndAppendTransformIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEESt20back_insert_iteratorISt6vectorINS_7MatcherISD_EESaISI_EEEEET1_T0_RKT_SM_(ptr noundef nonnull readonly align 8 dereferenceable(24) %18, ptr nonnull %5)
          to label %bb.j unwind label %bb.o, !noalias !4131 ; 0 uses

end_hunk_1
