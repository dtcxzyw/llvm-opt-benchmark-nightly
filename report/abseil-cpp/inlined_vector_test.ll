Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 288
begin_hunk_0_@_ZN12_GLOBAL__N_147InlinedVectorTest_ShrinkToFitGrowingVector_Test8TestBodyEv:bb.a
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.fo = load ptr, ptr %18, align 8, !tbaa !223  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i136, label %_ZN7testing7MessageD2Ev.exit138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.cm
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !169
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit138

_ZN7testing7MessageD2Ev.exit138:                  ; preds = %bb.cm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.cr

bb.cn:                                            ; preds = %bb.ci
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit135
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #36
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn46 = phi { ptr, i32 } [ %i.fu, %bb.cp ], [ %i.ft, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.fv = load ptr, ptr %18, align 8, !tbaa !223  ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i139, label %_ZN7testing7MessageD2Ev.exit141, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.cq
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !169
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(128) %i.fv) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit141

_ZN7testing7MessageD2Ev.exit141:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %bb.cq, %bb.cn
  %.pn46.pn = phi { ptr, i32 } [ %i.fs, %bb.cn ], [ %.pn46, %bb.cq ], [ %.pn46, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #36
  br label %bb.cv

bb.cr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit133, %_ZN7testing7MessageD2Ev.exit138
  %i.fz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !221 ; 4 uses
  %.not.i.i142 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i142, label %_ZN7testing15AssertionResultD2Ev.exit146, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !195 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143: ; preds = %bb.cs
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !198
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit146

_ZN7testing15AssertionResultD2Ev.exit146:         ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  %i.gg = load i64, ptr %1, align 8, !tbaa !197
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_ZN4absl12lts_2026052613InlinedVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELm1ESaIS9_EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit146
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELm1ESaISA_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4absl12lts_2026052613InlinedVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELm1ESaIS9_EED2Ev.exit unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELm1ESaIS9_EED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit146, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.cv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit141, %bb.ch
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %i.fj, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cg, %bb.bp, %bb.ba, %bb.aj, %bb.ai, %bb.t, %bb.s, %bb.b
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %bb.cv ], [ %i.p, %bb.b ], [ %.pn42.pn.pn, %bb.cg ], [ %.pn38.pn.pn, %bb.bp ], [ %.pn34.pn.pn, %bb.ba ], [ %i.bz, %bb.aj ], [ %.pn30.pn.pn, %bb.ai ], [ %i.au, %bb.t ], [ %.pn.pn.pn, %bb.s ]
  call void @_ZN4absl12lts_2026052613InlinedVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELm1ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELm1ESaISA_EE11ShrinkToFitEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 4 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !197    ; 4 uses
  %i.d = lshr i64 %i.c, 1                         ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198  ; 4 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEED2Ev.exit, label %bb.b, !prof !212

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.c, 3
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, 461168601842738791
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEELb0EE8AllocateERSB_m.exit.i, !prof !212

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.c, 922337203685477581
  br i1 %i.j, label %.noexc, label %.noexc25

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc25:                                         ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEELb0EE8AllocateERSB_m.exit.i: ; preds = %bb.c
  %i.k = mul nuw nsw i64 %i.d, 40                 ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #41 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %.lr.ph.preheader.i, label %bb.k

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.thread57, label %.lr.ph.preheader.i

.thread57:                                        ; preds = %bb.e
  %i.m = mul i64 %i.f, 40
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.m) #39
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEELb0EE8AllocateERSB_m.exit.i, %bb.e
  %.01949 = phi ptr [ %i.a, %bb.e ], [ %i.l, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEELb0EE8AllocateERSB_m.exit.i ]
  %.sroa.034.047 = phi ptr [ null, %bb.e ], [ %i.l, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEELb0EE8AllocateERSB_m.exit.i ] ; 2 uses
  %.sroa.10.045 = phi i64 [ 0, %bb.e ], [ %i.d, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEELb0EE8AllocateERSB_m.exit.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.sroa.033.0 = phi ptr [ %i.b, %.lr.ph.preheader.i ], [ %i.ad, %bb.g ] ; 7 uses
  %.012.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %.01949, i64 %.012.i ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !196
  %i.p = load ptr, ptr %.sroa.033.0, align 8, !tbaa !195 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 16 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !199  ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.p, ptr %i.n, align 8, !tbaa !195
  %i.w = load i64, ptr %i.q, align 8, !tbaa !198
  store i64 %i.w, ptr %i.o, align 8, !tbaa !198
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !199
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !199
  store ptr %i.q, ptr %.sroa.033.0, align 8, !tbaa !195
  store i64 0, ptr %i.x, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !315
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !315
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 40
  %i.ae = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.d
  br i1 %exitcond.not.i, label %.lr.ph.i27, label %.lr.ph.i, !llvm.loop !23

.lr.ph.i27:                                       ; preds = %bb.g, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i
  %.06.i = phi i64 [ %i.af, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i ], [ %i.d, %bb.g ]
  %i.af = add nsw i64 %.06.i, -1                  ; 3 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !195 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %.lr.ph.i27
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !198
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #39
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i: ; preds = %.lr.ph.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28
  %.not.i29 = icmp eq i64 %i.af, 0
  br i1 %.not.i29, label %bb.h, label %.lr.ph.i27, !llvm.loop !24

bb.h:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i
  %i.am = mul i64 %i.f, 40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.am) #39
  %.not66 = icmp eq ptr %.sroa.034.047, null
  br i1 %.not66, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.sroa.034.047, ptr %i.a, align 8, !tbaa !198
  store i64 %.sroa.10.045, ptr %i.e, align 8, !tbaa !198
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEED2Ev.exit

bb.j:                                             ; preds = %.thread57, %bb.h
  %i.an = load i64, ptr %0, align 8, !tbaa !197
  %i.ao = and i64 %i.an, -2
  store i64 %i.ao, ptr %0, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEED2Ev.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEELb0EE8AllocateERSB_m.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEED2Ev.exit: ; preds = %bb.j, %bb.i, %bb.k, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.218, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !223   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #36, !inline_history !6
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !223   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #36, !inline_history !6
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.224, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !223   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #36, !inline_history !7
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %14, align 8, !tbaa !223   ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #36, !inline_history !7
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ah

.noexc23:                                         ; preds = %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !223
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.219, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.af = load ptr, ptr %13, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !169
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #36, !inline_history !8
  br label %bb.j

bb.i:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %.noexc23
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !223  ; 3 uses
  %.not.i.i3.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3.i18, label %_ZN7testing7MessageD2Ev.exit5.i20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2ESaIS8_EE6ResizeINS1_19DefaultValueAdapterIS9_EEEEvT_m:bb.a
  %.012.i = phi i64 [ %i.ca, %bb.g ], [ 0, %.loopexit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %.012.i ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !196
  %i.bo = load ptr, ptr %.sroa.067.0, align 8, !tbaa !195 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

bb.f:                                             ; preds = %.lr.ph.i50
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !199 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !195
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !198
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !198
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !199
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51, %bb.f
  %i.bw = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ %i.bs, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !199
  store ptr %i.bp, ptr %.sroa.067.0, align 8, !tbaa !195
  store i64 0, ptr %i.bx, align 8, !tbaa !199
  store i8 0, ptr %i.bp, align 8, !tbaa !198
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 32
  %i.ca = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %i.ca, %.sink1.i
  br i1 %exitcond.not.i52, label %.lr.ph.i54, label %.lr.ph.i50, !llvm.loop !27

.lr.ph.i54:                                       ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57
  %.06.i55 = phi i64 [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57 ], [ %.sink1.i, %bb.g ]
  %i.cb = add nsw i64 %.06.i55, -1                ; 3 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %.sink2.i, i64 %i.cb ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !195 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %.lr.ph.i54
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !198
  %i.ch = add i64 %i.cg, 1
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %.lr.ph.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  %.not.i58 = icmp eq i64 %i.cb, 0
  br i1 %.not.i58, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_20IteratorValueAdapterIS9_St13move_iteratorIPS8_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISG_E7pointerERT0_NSL_9size_typeE.exit.thread, label %.lr.ph.i54, !llvm.loop !26

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_20IteratorValueAdapterIS9_St13move_iteratorIPS8_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISG_E7pointerERT0_NSL_9size_typeE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, %.loopexit
  %i.ci = load i64, ptr %0, align 8, !tbaa !197   ; 2 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %bb.h, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_20IteratorValueAdapterIS9_St13move_iteratorIPS8_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISG_E7pointerERT0_NSL_9size_typeE.exit.thread
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.cl = load i64, ptr %i.e, align 8, !tbaa !198
  %i.cm = shl i64 %i.cl, 5
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cm) #39
  %.pre77 = load i64, ptr %0, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_20IteratorValueAdapterIS9_St13move_iteratorIPS8_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISG_E7pointerERT0_NSL_9size_typeE.exit.thread, %bb.h
  %i.cn = phi i64 [ %.pre77, %bb.h ], [ %i.ci, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_20IteratorValueAdapterIS9_St13move_iteratorIPS8_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISG_E7pointerERT0_NSL_9size_typeE.exit.thread ]
  store ptr %i.an, ptr %i.c, align 8, !tbaa !198
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !198
  %i.co = or i64 %i.cn, 1
  store i64 %i.co, ptr %0, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i45
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit, label %.lr.ph.i45.epil.preheader

.lr.ph.i45.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit.unr-lcssa, %.lr.ph.i45.preheader
  %.06.i46.epil.init = phi i64 [ 0, %.lr.ph.i45.preheader ], [ %i.ai, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph.i45.epil

.lr.ph.i45.epil:                                  ; preds = %.lr.ph.i45.epil, %.lr.ph.i45.epil.preheader
  %.06.i46.epil = phi i64 [ %i.cs, %.lr.ph.i45.epil ], [ %.06.i46.epil.init, %.lr.ph.i45.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i45.epil ], [ 0, %.lr.ph.i45.epil.preheader ]
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.06.i46.epil ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !196
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !199
  store i8 0, ptr %i.cq, align 8, !tbaa !198
  %i.cs = add nuw i64 %.06.i46.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit, label %.lr.ph.i45.epil, !llvm.loop !1605

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit.unr-lcssa, %.lr.ph.i45.epil, %bb.b, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit
  %i.ct = shl i64 %1, 1
  %i.cu = load i64, ptr %0, align 8, !tbaa !197
  %i.cv = and i64 %i.cu, 1
  %i.cw = or disjoint i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %0, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2ESaIS8_EE11ShrinkToFitEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 4 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !197    ; 4 uses
  %i.d = lshr i64 %i.c, 1                         ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198  ; 4 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.b, !prof !212

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.c, 5
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE8AllocateERS9_m.exit.i, !prof !212

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.j, label %.noexc, label %.noexc25

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc25:                                         ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE8AllocateERS9_m.exit.i: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.d, 5                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #41 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %.lr.ph.preheader.i, label %bb.k

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.thread57, label %.lr.ph.preheader.i

.thread57:                                        ; preds = %bb.e
  %i.m = shl i64 %i.f, 5
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.m) #39
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE8AllocateERS9_m.exit.i, %bb.e
  %.01949 = phi ptr [ %i.a, %bb.e ], [ %i.l, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE8AllocateERS9_m.exit.i ]
  %.sroa.034.047 = phi ptr [ null, %bb.e ], [ %i.l, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE8AllocateERS9_m.exit.i ] ; 2 uses
  %.sroa.10.045 = phi i64 [ 0, %bb.e ], [ %i.d, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE8AllocateERS9_m.exit.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.sroa.033.0 = phi ptr [ %i.b, %.lr.ph.preheader.i ], [ %i.aa, %bb.g ] ; 6 uses
  %.012.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.01949, i64 %.012.i ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !196
  %i.p = load ptr, ptr %.sroa.033.0, align 8, !tbaa !195 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 16 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !199  ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.p, ptr %i.n, align 8, !tbaa !195
  %i.w = load i64, ptr %i.q, align 8, !tbaa !198
  store i64 %i.w, ptr %i.o, align 8, !tbaa !198
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !199
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !199
  store ptr %i.q, ptr %.sroa.033.0, align 8, !tbaa !195
  store i64 0, ptr %i.x, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 32
  %i.ab = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.d
  br i1 %exitcond.not.i, label %.lr.ph.i27, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i27:                                       ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.06.i = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %bb.g ]
  %i.ac = add nsw i64 %.06.i, -1                  ; 3 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !195 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %.lr.ph.i27
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !198
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28
  %.not.i29 = icmp eq i64 %i.ac, 0
  br i1 %.not.i29, label %bb.h, label %.lr.ph.i27, !llvm.loop !26

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aj = shl i64 %i.f, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.aj) #39
  %.not66 = icmp eq ptr %.sroa.034.047, null
  br i1 %.not66, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.sroa.034.047, ptr %i.a, align 8, !tbaa !198
  store i64 %.sroa.10.045, ptr %i.e, align 8, !tbaa !198
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.j:                                             ; preds = %.thread57, %bb.h
  %i.ak = load i64, ptr %0, align 8, !tbaa !197
  %i.al = and i64 %i.ak, -2
  store i64 %i.al, ptr %0, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE8AllocateERS9_m.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %bb.j, %bb.i, %bb.k, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_118IntVec_Insert_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_118IntVec_Insert_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_118IntVec_Insert_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118IntVec_Insert_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::vector.231", align 8  ; 12 uses
  %30 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::vector.231", align 8  ; 12 uses
  %39 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 17 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %45 = alloca %"class.testing::Message", align 8 ; 7 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %47 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 23 uses
  %i.r = alloca [3 x i32], align 4                ; 11 uses
  %48 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 32 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.s = alloca ptr, align 8                      ; 6 uses
  %50 = alloca %"class.std::istream_iterator", align 8 ; 6 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.u = alloca [2 x i32], align 8                ; 10 uses
  %i.v = alloca ptr, align 8                      ; 6 uses
  %i.w = alloca [2 x i32], align 8                ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_118IntVec_Resize_Test8TestBodyEv:bb.a
bb.eg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit184
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !195 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 2 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.eg
  %i.rw = load i64, ptr %i.ru, align 8, !tbaa !198
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rx) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit189

bb.eh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit176, %_ZN7testing7MessageD2Ev.exit181
  %i.ry = load ptr, ptr %i.ac, align 8, !tbaa !221 ; 4 uses
  %.not.i.i190 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i190, label %_ZN7testing15AssertionResultD2Ev.exit194, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !195 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191: ; preds = %bb.ei
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !198
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit194

_ZN7testing15AssertionResultD2Ev.exit194:         ; preds = %bb.eh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.se = add nuw i64 %.0308, 1                   ; 2 uses
  %i.sf = load i64, ptr %i.b, align 8, !tbaa !197 ; 2 uses
  %i.sg = icmp ult i64 %i.se, %i.sf
  br i1 %i.sg, label %.lr.ph309, label %._crit_edge310, !llvm.loop !2299

_ZN7testing15AssertionResultD2Ev.exit189:         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, %_ZN7testing7MessageD2Ev.exit184, %.body290
  %.pn59.pn.pn = phi { ptr, i32 } [ %eh.lpad-body291, %.body290 ], [ %.pn59.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %.pn59.pn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit294, %.loopexit.split-lp, %bb.af, %bb.aw, %bb.dd, %bb.dq, %_ZN7testing15AssertionResultD2Ev.exit189, %.body256, %_ZN7testing15AssertionResultD2Ev.exit114, %bb.h
  %.pn67.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.h ], [ %.pn.pn.pn, %bb.af ], [ %.pn59.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit189 ], [ %.pn55.pn.pn, %bb.dq ], [ %.pn51.pn.pn, %bb.dd ], [ %.pn63.pn.pn, %.body256 ], [ %.pn47.pn.pn, %bb.aw ], [ %.pn67.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit114 ], [ %lpad.loopexit, %.loopexit294 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.sh = load i64, ptr %11, align 8, !tbaa !197
  %i.si = trunc i64 %i.sh to i1
  br i1 %i.si, label %bb.ek, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit195

bb.ek:                                            ; preds = %bb.ej
  %i.sj = load ptr, ptr %i.l, align 8, !tbaa !198
  %i.sk = load i64, ptr %i.k, align 8, !tbaa !198
  %i.sl = shl i64 %i.sk, 2
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sl) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit195

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit195: ; preds = %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126IntVec_InitWithLength_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126IntVec_InitWithLength_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_126IntVec_InitWithLength_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126IntVec_InitWithLength_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_126IntVec_InitWithLength_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 12 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 13 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit
  %storemerge72 = phi i64 [ 0, %bb.a ], [ %i.cq, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 0, ptr %3, align 8, !tbaa !210
  %i.l = icmp samesign ugt i64 %storemerge72, 8
  br i1 %i.l, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.umax.i64(i64 %storemerge72, i64 16) ; 2 uses
  %i.m = shl nuw nsw i64 %.sroa.speculated.i.i.i, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41
          to label %.noexc6.i unwind label %bb.e  ; 2 uses

.noexc6.i:                                        ; preds = %.thread.i.i
  store ptr %i.n, ptr %i.e, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i.i, ptr %i.f, align 8, !tbaa !198
  %i.o = load i64, ptr %3, align 8, !tbaa !197
  %i.p = or i64 %i.o, 1
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i64 %storemerge72, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.noexc6.i
  %i.q = phi i64 [ %i.p, %.noexc6.i ], [ 0, %bb.d ]
  %.010.i.i = phi ptr [ %i.n, %.noexc6.i ], [ %i.e, %bb.d ] ; 7 uses
  %min.iters.check = icmp samesign ult i64 %storemerge72, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %storemerge72, 24              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  store <4 x i32> splat (i32 7), ptr %.010.i.i, align 4, !tbaa !211
  store <4 x i32> splat (i32 7), ptr %i.r, align 4, !tbaa !211
  %i.s = icmp eq i64 %n.vec, 8
  br i1 %i.s, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 48
  store <4 x i32> splat (i32 7), ptr %i.t, align 4, !tbaa !211
  store <4 x i32> splat (i32 7), ptr %i.u, align 4, !tbaa !211
  %i.v = icmp eq i64 %n.vec, 16
  br i1 %i.v, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 80
  store <4 x i32> splat (i32 7), ptr %i.w, align 4, !tbaa !211
  store <4 x i32> splat (i32 7), ptr %i.x, align 4, !tbaa !211
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %storemerge72, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.06.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06.i.i.i = phi i64 [ %i.z, %scalar.ph ], [ %.06.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.010.i.i, i64 %.06.i.i.i
  store i32 7, ptr %i.y, align 4, !tbaa !211
  %i.z = add nuw nsw i64 %.06.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %storemerge72
  br i1 %exitcond.not.i.i.i, label %.loopexit.loopexit, label %scalar.ph, !llvm.loop !2313

bb.e:                                             ; preds = %.thread.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load i64, ptr %3, align 8, !tbaa !197
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %.body.sink.split, label %.body

.loopexit.loopexit:                               ; preds = %scalar.ph, %middle.block
  %.pre = load i64, ptr %i.a, align 8, !tbaa !197, !noalias !2328
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %i.ad = phi i64 [ 0, %bb.d ], [ %.pre, %.loopexit.loopexit ]
  %i.ae = phi i64 [ 0, %bb.d ], [ %i.q, %.loopexit.loopexit ]
  %i.af = shl nuw nsw i64 %storemerge72, 1
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  store i64 %i.ag, ptr %3, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ah = lshr i64 %i.ag, 1                       ; 2 uses
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !197
  %i.ai = icmp eq i64 %i.ad, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.h

bb.g:                                             ; preds = %.loopexit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.197, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.h

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.aj = load i8, ptr %4, align 8, !tbaa !220, !range !189, !noundef !190
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.r, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.v

bb.i:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.ao = phi ptr [ %i.an, %bb.k ], [ @.str.216, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 743, ptr noundef %i.ao)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.ap = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i30, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !169
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit33

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i31, label %_ZN7testing7MessageD2Ev.exit33, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32: ; preds = %bb.q
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit33

_ZN7testing7MessageD2Ev.exit33:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32, %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.n ], [ %.pn, %bb.q ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  br label %bb.v

bb.r:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !221 ; 4 uses
  %.not.i.i34 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i34, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !195 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !198
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.bg = load i64, ptr %3, align 8, !tbaa !197
  %i.bh = trunc i64 %i.bg to i1
  %i.bi = load i64, ptr %i.f, align 8
  %i.bj = select i1 %i.bh, i64 %i.bi, i64 8       ; 2 uses
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !197
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !197, !noalias !2329
  %.not.i = icmp ugt i64 %i.bk, %i.bj
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.w

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.198, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.217)
          to label %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.w

_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.bl = load i8, ptr %7, align 8, !tbaa !220, !range !189, !noundef !190
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.ag, label %bb.x

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit33, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit33 ], [ %i.al, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.bc

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.aj

bb.x:                                             ; preds = %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !221 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i37, label %_ZNK7testing15AssertionResult15failure_messageEv.exit38, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit38

_ZNK7testing15AssertionResult15failure_messageEv.exit38: ; preds = %bb.z, %bb.y
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_Test8TestBodyEv:.lr.ph.split.i.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #36
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn151 = phi { ptr, i32 } [ %i.la, %bb.ev ], [ %i.kz, %bb.eu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  %i.lb = load ptr, ptr %47, align 8, !tbaa !223  ; 3 uses
  %.not.i.i370 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i370, label %_ZN7testing7MessageD2Ev.exit372, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371: ; preds = %bb.ew
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !169
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(128) %i.lb) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit372

_ZN7testing7MessageD2Ev.exit372:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371, %bb.ew, %bb.et
  %.pn151.pn = phi { ptr, i32 } [ %i.ky, %bb.et ], [ %.pn151, %bb.ew ], [ %.pn151, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #36
  br label %bb.fj

bb.ex:                                            ; preds = %bb.el, %_ZN7testing7MessageD2Ev.exit369
  %i.lf = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !221 ; 4 uses
  %.not.i.i373 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i373, label %_ZN7testing15AssertionResultD2Ev.exit377, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !195 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374: ; preds = %bb.ey
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !198
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit377

_ZN7testing15AssertionResultD2Ev.exit377:         ; preds = %bb.ex, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i64 0, ptr %i.d, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  store ptr %i.d, ptr %49, align 8, !tbaa !240
  %.sroa.5796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5796.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ln = load ptr, ptr %35, align 8, !tbaa !617
  %i.lo = icmp eq ptr %i.d, %i.ln
  %i.lp = load ptr, ptr %.sroa.9.0..sroa_idx808, align 8
  %i.lq = icmp eq ptr %i.lp, null
  %i.lr = select i1 %i.lo, i1 %i.lq, i1 false
  %i.ls = load i64, ptr %i.ij, align 8, !tbaa !197
  %.fr.i = freeze i64 %i.ls                       ; 9 uses
  %i.lt = trunc i64 %.fr.i to i1                  ; 2 uses
  br i1 %i.lr, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit377
  br i1 %i.lt, label %bb.fa, label %.thread.i

bb.fa:                                            ; preds = %bb.ez
  %i.lu = load ptr, ptr %i.ik, align 8, !tbaa !198
  %i.lv = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !198
  %i.lx = getelementptr inbounds nuw i8, ptr %49, i64 24
  store ptr %i.lu, ptr %i.lx, align 8, !tbaa !198
  %i.ly = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i64 %i.lw, ptr %i.ly, align 8, !tbaa !198
  store i64 %.fr.i, ptr %i.lm, align 8, !tbaa !197
  store i64 0, ptr %i.ij, align 8, !tbaa !197
  br label %bb.fh

bb.fb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit377
  %i.lz = load ptr, ptr %i.ik, align 8
  %spec.select.i = select i1 %i.lt, ptr %i.lz, ptr %i.ik
  br label %.thread.i

.thread.i:                                        ; preds = %bb.fb, %bb.ez
  %i.ma = phi ptr [ %i.ik, %bb.ez ], [ %spec.select.i, %bb.fb ] ; 7 uses
  %i.mb = ptrtoaddr ptr %i.ma to i64              ; 2 uses
  %i.mc = lshr i64 %.fr.i, 1                      ; 13 uses
  %i.md = icmp ugt i64 %.fr.i, 9
  br i1 %i.md, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %.thread.i
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.mc, i64 8) ; 2 uses
  %i.me = icmp ugt i64 %.fr.i, 4611686018427387903
  br i1 %i.me, label %bb.fd, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, !prof !212

bb.fd:                                            ; preds = %bb.fc
  %i.mf = icmp slt i64 %.fr.i, 0
  br i1 %i.mf, label %.noexc.i.i.i.i, label %.noexc6.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.fd
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc725 unwind label %bb.fg

.noexc725:                                        ; preds = %.noexc.i.i.i.i
  unreachable

.noexc6.i.i.i.i:                                  ; preds = %bb.fd
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc726 unwind label %bb.fg

.noexc726:                                        ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i: ; preds = %bb.fc
  %i.mg = shl nuw nsw i64 %.sroa.speculated.i.i, 2 ; 2 uses
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #41
          to label %.noexc727 unwind label %bb.fg ; 9 uses

.noexc727:                                        ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i
  %i.mi = ptrtoaddr ptr %i.mh to i64
  %i.mj = load ptr, ptr %49, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.i.i723 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i723, label %.lr.ph.i.i, label %bb.fe

bb.fe:                                            ; preds = %.noexc727
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !197
  %i.ml = add i64 %i.mk, %i.mg
  store i64 %i.ml, ptr %i.mj, align 8, !tbaa !197
  br label %.lr.ph.i.i

bb.ff:                                            ; preds = %.thread.i
  %i.mm = getelementptr inbounds nuw i8, ptr %49, i64 24
  %.not.i.i713 = icmp eq i64 %i.mc, 0
  br i1 %.not.i.i713, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720.preheader

.lr.ph.i.i:                                       ; preds = %.noexc727, %bb.fe
  %i.mn = getelementptr inbounds nuw i8, ptr %49, i64 24
  store ptr %i.mh, ptr %i.mn, align 8, !tbaa !198
  %i.mo = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i64 %.sroa.speculated.i.i, ptr %i.mo, align 8, !tbaa !198
  %i.mp = load i64, ptr %i.lm, align 8, !tbaa !197
  %i.mq = or i64 %i.mp, 1                         ; 2 uses
  store i64 %i.mq, ptr %i.lm, align 8, !tbaa !197
  %.pre815 = load ptr, ptr %.sroa.5796.0..sroa_idx, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i.i714 = icmp eq ptr %.pre815, null
  br i1 %.not.i.i.i.i.i.i714, label %.lr.ph.split.us.i.i720.preheader, label %.lr.ph.split.i.i715

.lr.ph.split.us.i.i720.preheader:                 ; preds = %bb.ff, %.lr.ph.i.i
  %.010.i1021 = phi ptr [ %i.mh, %.lr.ph.i.i ], [ %i.mm, %bb.ff ] ; 7 uses
  %i.mr = phi i64 [ %i.mq, %.lr.ph.i.i ], [ 0, %bb.ff ] ; 3 uses
  %min.iters.check1031 = icmp ult i64 %.fr.i, 16
  %.010.i10211028 = ptrtoaddr ptr %.010.i1021 to i64
  %i.ms = sub i64 %i.mb, %.010.i10211028
  %diff.check1029 = icmp ugt i64 %i.ms, -32
  %or.cond = select i1 %min.iters.check1031, i1 true, i1 %diff.check1029
  br i1 %or.cond, label %.lr.ph.split.us.i.i720.preheader1082, label %vector.ph1032

vector.ph1032:                                    ; preds = %.lr.ph.split.us.i.i720.preheader
  %n.vec1033 = and i64 %i.mc, 9223372036854775800 ; 4 uses
  %i.mt = shl i64 %n.vec1033, 2
  %i.mu = getelementptr i8, ptr %i.ma, i64 %i.mt
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1032
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1039, %vector.body1034 ] ; 3 uses
  %i.mv = shl i64 %index1035, 2
  %next.gep1036 = getelementptr i8, ptr %i.ma, i64 %i.mv ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %index1035 ; 2 uses
  %i.mx = getelementptr i8, ptr %next.gep1036, i64 16
  %wide.load1037 = load <4 x i32>, ptr %next.gep1036, align 4, !tbaa !211
  %wide.load1038 = load <4 x i32>, ptr %i.mx, align 4, !tbaa !211
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <4 x i32> %wide.load1037, ptr %i.mw, align 4, !tbaa !211
  store <4 x i32> %wide.load1038, ptr %i.my, align 4, !tbaa !211
  %index.next1039 = add nuw i64 %index1035, 8     ; 2 uses
  %i.mz = icmp eq i64 %index.next1039, %n.vec1033
  br i1 %i.mz, label %middle.block1040, label %vector.body1034, !llvm.loop !4803

middle.block1040:                                 ; preds = %vector.body1034
  %cmp.n1041 = icmp eq i64 %i.mc, %n.vec1033
  br i1 %cmp.n1041, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720.preheader1082

.lr.ph.split.us.i.i720.preheader1082:             ; preds = %.lr.ph.split.us.i.i720.preheader, %middle.block1040
  %.ph1083 = phi ptr [ %i.ma, %.lr.ph.split.us.i.i720.preheader ], [ %i.mu, %middle.block1040 ] ; 2 uses
  %.013.us.i.i721.ph = phi i64 [ 0, %.lr.ph.split.us.i.i720.preheader ], [ %n.vec1033, %middle.block1040 ] ; 3 uses
  %xtraiter1085 = and i64 %i.mc, 3                ; 2 uses
  %lcmp.mod1086.not = icmp eq i64 %xtraiter1085, 0
  br i1 %lcmp.mod1086.not, label %.lr.ph.split.us.i.i720.prol.loopexit, label %.lr.ph.split.us.i.i720.prol

.lr.ph.split.us.i.i720.prol:                      ; preds = %.lr.ph.split.us.i.i720.preheader1082, %.lr.ph.split.us.i.i720.prol
  %i.na = phi ptr [ %i.nd, %.lr.ph.split.us.i.i720.prol ], [ %.ph1083, %.lr.ph.split.us.i.i720.preheader1082 ] ; 2 uses
  %.013.us.i.i721.prol = phi i64 [ %i.ne, %.lr.ph.split.us.i.i720.prol ], [ %.013.us.i.i721.ph, %.lr.ph.split.us.i.i720.preheader1082 ] ; 2 uses
  %prol.iter1087 = phi i64 [ %prol.iter1087.next, %.lr.ph.split.us.i.i720.prol ], [ 0, %.lr.ph.split.us.i.i720.preheader1082 ]
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721.prol
  %i.nc = load i32, ptr %i.na, align 4, !tbaa !211
  store i32 %i.nc, ptr %i.nb, align 4, !tbaa !211
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %i.ne = add nuw nsw i64 %.013.us.i.i721.prol, 1 ; 2 uses
  %prol.iter1087.next = add i64 %prol.iter1087, 1 ; 2 uses
  %prol.iter1087.cmp.not = icmp eq i64 %prol.iter1087.next, %xtraiter1085
  br i1 %prol.iter1087.cmp.not, label %.lr.ph.split.us.i.i720.prol.loopexit, label %.lr.ph.split.us.i.i720.prol, !llvm.loop !4804

.lr.ph.split.us.i.i720.prol.loopexit:             ; preds = %.lr.ph.split.us.i.i720.prol, %.lr.ph.split.us.i.i720.preheader1082
  %.unr1088 = phi ptr [ %.ph1083, %.lr.ph.split.us.i.i720.preheader1082 ], [ %i.nd, %.lr.ph.split.us.i.i720.prol ]
  %.013.us.i.i721.unr = phi i64 [ %.013.us.i.i721.ph, %.lr.ph.split.us.i.i720.preheader1082 ], [ %i.ne, %.lr.ph.split.us.i.i720.prol ]
  %i.nf = sub nsw i64 %.013.us.i.i721.ph, %i.mc
  %i.ng = icmp ugt i64 %i.nf, -4
  br i1 %i.ng, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720

.lr.ph.split.us.i.i720:                           ; preds = %.lr.ph.split.us.i.i720.prol.loopexit, %.lr.ph.split.us.i.i720
  %i.nh = phi ptr [ %i.nw, %.lr.ph.split.us.i.i720 ], [ %.unr1088, %.lr.ph.split.us.i.i720.prol.loopexit ] ; 5 uses
  %.013.us.i.i721 = phi i64 [ %i.nx, %.lr.ph.split.us.i.i720 ], [ %.013.us.i.i721.unr, %.lr.ph.split.us.i.i720.prol.loopexit ] ; 5 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.nj = load i32, ptr %i.nh, align 4, !tbaa !211
  store i32 %i.nj, ptr %i.ni, align 4, !tbaa !211
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.nn = load i32, ptr %i.nk, align 4, !tbaa !211
  store i32 %i.nn, ptr %i.nm, align 4, !tbaa !211
  %i.no = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load i32, ptr %i.no, align 4, !tbaa !211
  store i32 %i.nr, ptr %i.nq, align 4, !tbaa !211
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.010.i1021, i64 %.013.us.i.i721
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  %i.nv = load i32, ptr %i.ns, align 4, !tbaa !211
  store i32 %i.nv, ptr %i.nu, align 4, !tbaa !211
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nx = add nuw nsw i64 %.013.us.i.i721, 4      ; 2 uses
  %exitcond20.not.i.i722.3 = icmp eq i64 %i.nx, %i.mc
  br i1 %exitcond20.not.i.i722.3, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit, label %.lr.ph.split.us.i.i720, !llvm.loop !4805

.lr.ph.split.i.i715:                              ; preds = %.lr.ph.i.i
  %.promoted14.i.i716 = load i64, ptr %.pre815, align 8, !tbaa !197
  %min.iters.check = icmp ult i64 %.fr.i, 16
  %i.ny = sub i64 %i.mb, %i.mi
  %diff.check = icmp ugt i64 %i.ny, -32
  %or.cond1077 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1077, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.i715
  %n.vec = and i64 %i.mc, 2305843009213693944     ; 4 uses
  %i.nz = shl nuw nsw i64 %n.vec, 2
  %i.oa = getelementptr i8, ptr %i.ma, i64 %i.nz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ob = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ma, i64 %i.ob ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index ; 2 uses
  %i.od = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load1025 = load <4 x i32>, ptr %i.od, align 4, !tbaa !211
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  store <4 x i32> %wide.load, ptr %i.oc, align 4, !tbaa !211
  store <4 x i32> %wide.load1025, ptr %i.oe, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.of = icmp eq i64 %index.next, %n.vec
  br i1 %i.of, label %middle.block, label %vector.body, !llvm.loop !4806

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mc, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.i.i719, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.i.i715, %middle.block
  %.ph1084 = phi ptr [ %i.ma, %.lr.ph.split.i.i715 ], [ %i.oa, %middle.block ] ; 2 uses
  %.013.i.i717.ph = phi i64 [ 0, %.lr.ph.split.i.i715 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.mc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.og = phi ptr [ %i.oj, %scalar.ph.prol ], [ %.ph1084, %scalar.ph.preheader ] ; 2 uses
  %.013.i.i717.prol = phi i64 [ %i.ok, %scalar.ph.prol ], [ %.013.i.i717.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.013.i.i717.prol
  %i.oi = load i32, ptr %i.og, align 4, !tbaa !211
  store i32 %i.oi, ptr %i.oh, align 4, !tbaa !211
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 4 ; 2 uses
  %i.ok = add nuw nsw i64 %.013.i.i717.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4807

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph1084, %scalar.ph.preheader ], [ %i.oj, %scalar.ph.prol ]
  %.013.i.i717.unr = phi i64 [ %.013.i.i717.ph, %scalar.ph.preheader ], [ %i.ok, %scalar.ph.prol ]
  %i.ol = sub nsw i64 %.013.i.i717.ph, %i.mc
  %i.om = icmp ugt i64 %i.ol, -4
  br i1 %i.om, label %._crit_edge.split.i.i719, label %scalar.ph

._crit_edge.split.i.i719:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.on = add i64 %.promoted14.i.i716, %i.mc
  store i64 %i.on, ptr %.pre815, align 8, !tbaa !197
  %.pre816 = load i64, ptr %i.lm, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.oo = phi ptr [ %i.pd, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.013.i.i717 = phi i64 [ %i.pe, %scalar.ph ], [ %.013.i.i717.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.013.i.i717
  %i.oq = load i32, ptr %i.oo, align 4, !tbaa !211
  store i32 %i.oq, ptr %i.op, align 4, !tbaa !211
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.013.i.i717
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ou = load i32, ptr %i.or, align 4, !tbaa !211
  store i32 %i.ou, ptr %i.ot, align 4, !tbaa !211
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.013.i.i717
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load i32, ptr %i.ov, align 4, !tbaa !211
  store i32 %i.oy, ptr %i.ox, align 4, !tbaa !211
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.013.i.i717
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  %i.pc = load i32, ptr %i.oz, align 4, !tbaa !211
  store i32 %i.pc, ptr %i.pb, align 4, !tbaa !211
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.pe = add nuw nsw i64 %.013.i.i717, 4         ; 2 uses
  %exitcond.not.i.i718.3 = icmp eq i64 %i.pe, %i.mc
  br i1 %exitcond.not.i.i718.3, label %._crit_edge.split.i.i719, label %scalar.ph, !llvm.loop !4808

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit: ; preds = %.lr.ph.split.us.i.i720.prol.loopexit, %.lr.ph.split.us.i.i720, %middle.block1040, %bb.ff, %._crit_edge.split.i.i719
  %i.pf = phi i64 [ %.pre816, %._crit_edge.split.i.i719 ], [ 0, %bb.ff ], [ %i.mr, %middle.block1040 ], [ %i.mr, %.lr.ph.split.us.i.i720 ], [ %i.mr, %.lr.ph.split.us.i.i720.prol.loopexit ]
  %i.pg = and i64 %.fr.i, -2
  %i.ph = add i64 %i.pf, %i.pg
  store i64 %i.ph, ptr %i.lm, align 8, !tbaa !197
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %49) #36
  br label %.body378

bb.fh:                                            ; preds = %bb.fa, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #36
  store i32 0, ptr %51, align 4
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIiEEEclIlEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %50, ptr noundef nonnull align 4 dereferenceable(4) %51, ptr noundef nonnull @.str.445, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #36
  %i.pj = load i8, ptr %50, align 8, !tbaa !220, !range !189, !noundef !190
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.fu, label %bb.fl

bb.fj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit372, %bb.en
  %.pn151.pn.pn = phi { ptr, i32 } [ %.pn151.pn, %_ZN7testing7MessageD2Ev.exit372 ], [ %i.kp, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %bb.gd

bb.fk:                                            ; preds = %bb.fh
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #36
  br label %bb.gc

bb.fl:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.fm unwind label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #36
  %i.pm = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !221 ; 2 uses
  %.not.i.i380 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i380, label %_ZNK7testing15AssertionResult15failure_messageEv.exit381, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit381

_ZNK7testing15AssertionResult15failure_messageEv.exit381: ; preds = %bb.fn, %bb.fm
  %i.pp = phi ptr [ %i.po, %bb.fn ], [ @.str.216, %bb.fm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %53, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1814, ptr noundef %i.pp)
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit381
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.fp unwind label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  %i.pq = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i382 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i382, label %_ZN7testing7MessageD2Ev.exit384, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383: ; preds = %bb.fp
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !169
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(128) %i.pq) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit384

_ZN7testing7MessageD2Ev.exit384:                  ; preds = %bb.fp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i383
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  br label %bb.fu

bb.fq:                                            ; preds = %bb.fl
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit387

bb.fr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit381
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fo
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #36
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.pn155 = phi { ptr, i32 } [ %i.pw, %bb.fs ], [ %i.pv, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  %i.px = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i385 = icmp eq ptr %i.px, null
  br i1 %.not.i.i385, label %_ZN7testing7MessageD2Ev.exit387, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386: ; preds = %bb.ft
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !169
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dereferenceable(128) %i.px) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit387

_ZN7testing7MessageD2Ev.exit387:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386, %bb.ft, %bb.fq
  %.pn155.pn = phi { ptr, i32 } [ %i.pu, %bb.fq ], [ %.pn155, %bb.ft ], [ %.pn155, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i386 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %50) #36
  br label %bb.gc

bb.fu:                                            ; preds = %bb.fi, %_ZN7testing7MessageD2Ev.exit384
  %i.qb = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !221 ; 4 uses
  %.not.i.i388 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i388, label %_ZN7testing15AssertionResultD2Ev.exit392, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !195 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i389: ; preds = %bb.fv
  %i.qg = load i64, ptr %i.qe, align 8, !tbaa !198
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qh) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i389
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit392

_ZN7testing15AssertionResultD2Ev.exit392:         ; preds = %bb.fu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #36
  %i.qi = load i64, ptr %i.lm, align 8, !tbaa !197
  %i.qj = icmp eq i64 %i.qi, 0
  br i1 %i.qj, label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit393, label %bb.fw

bb.fw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit392
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %49)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit393 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.qk = landingpad { ptr, i32 }
          catch ptr null
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0
  call void @__clang_call_terminate(ptr %i.ql) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit393: ; preds = %_ZN7testing15AssertionResultD2Ev.exit392, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.qm = load i64, ptr %i.kk, align 8, !tbaa !197
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit394, label %bb.fy

bb.fy:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit393
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %44)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit394 unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qo = landingpad { ptr, i32 }
          catch ptr null
  %i.qp = extractvalue { ptr, i32 } %i.qo, 0
  call void @__clang_call_terminate(ptr %i.qp) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit394: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit393, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.qq = load i64, ptr %i.ij, align 8, !tbaa !197
  %i.qr = icmp eq i64 %i.qq, 0
  br i1 %i.qr, label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit395, label %bb.ga

bb.ga:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit394
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %35)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit395 unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qs = landingpad { ptr, i32 }
          catch ptr null
  %i.qt = extractvalue { ptr, i32 } %i.qs, 0
  call void @__clang_call_terminate(ptr %i.qt) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit395: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit394, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #36
  store i32 0, ptr %55, align 4
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIiEEEclIlEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %54, ptr noundef nonnull align 4 dereferenceable(4) %55, ptr noundef nonnull @.str.442, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_142AllocatorSupportTest_CountAllocations_Test8TestBodyEv:.lr.ph.split.i.i
bb.is:                                            ; preds = %bb.io
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #36
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %.pn177 = phi { ptr, i32 } [ %i.wb, %bb.is ], [ %i.wa, %bb.ir ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #36
  %i.wc = load ptr, ptr %74, align 8, !tbaa !223  ; 3 uses
  %.not.i.i458 = icmp eq ptr %i.wc, null
  br i1 %.not.i.i458, label %_ZN7testing7MessageD2Ev.exit460, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459: ; preds = %bb.it
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !169
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load ptr, ptr %i.we, align 8
  call void %i.wf(ptr noundef nonnull align 8 dereferenceable(128) %i.wc) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit460

_ZN7testing7MessageD2Ev.exit460:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459, %bb.it, %bb.iq
  %.pn177.pn = phi { ptr, i32 } [ %i.vz, %bb.iq ], [ %.pn177, %bb.it ], [ %.pn177, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #36
  br label %bb.jg

bb.iu:                                            ; preds = %bb.ii, %_ZN7testing7MessageD2Ev.exit457
  %i.wg = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !221 ; 4 uses
  %.not.i.i461 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i461, label %_ZN7testing15AssertionResultD2Ev.exit465, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !195 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462: ; preds = %bb.iv
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !198
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463: ; preds = %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit465

_ZN7testing15AssertionResultD2Ev.exit465:         ; preds = %bb.iu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i64 0, ptr %i.f, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #36
  store ptr %i.f, ptr %76, align 8, !tbaa !240
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.wo = load ptr, ptr %62, align 8, !tbaa !617
  %i.wp = icmp eq ptr %i.f, %i.wo
  %i.wq = load ptr, ptr %.sroa.9.0..sroa_idx810, align 8
  %i.wr = icmp eq ptr %i.wq, null
  %i.ws = select i1 %i.wp, i1 %i.wr, i1 false
  %i.wt = load i64, ptr %i.sq, align 8, !tbaa !197
  %.fr.i466 = freeze i64 %i.wt                    ; 10 uses
  %i.wu = trunc i64 %.fr.i466 to i1               ; 2 uses
  br i1 %i.ws, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit465
  br i1 %i.wu, label %bb.ix, label %.thread.i468

bb.ix:                                            ; preds = %bb.iw
  %i.wv = load ptr, ptr %i.sv, align 8, !tbaa !198
  %i.ww = load i64, ptr %i.sw, align 8, !tbaa !198
  %i.wx = getelementptr inbounds nuw i8, ptr %76, i64 24
  store ptr %i.wv, ptr %i.wx, align 8, !tbaa !198
  %i.wy = getelementptr inbounds nuw i8, ptr %76, i64 32
  store i64 %i.ww, ptr %i.wy, align 8, !tbaa !198
  store i64 %.fr.i466, ptr %i.wn, align 8, !tbaa !197
  store i64 0, ptr %i.sq, align 8, !tbaa !197
  br label %bb.je

bb.iy:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit465
  %i.wz = load ptr, ptr %i.sv, align 8
  %spec.select.i467 = select i1 %i.wu, ptr %i.wz, ptr %i.sv
  br label %.thread.i468

.thread.i468:                                     ; preds = %bb.iy, %bb.iw
  %i.xa = phi ptr [ %i.sv, %bb.iw ], [ %spec.select.i467, %bb.iy ] ; 7 uses
  %i.xb = ptrtoaddr ptr %i.xa to i64              ; 2 uses
  %i.xc = lshr i64 %.fr.i466, 1                   ; 13 uses
  %i.xd = icmp ugt i64 %.fr.i466, 9
  br i1 %i.xd, label %bb.iz, label %bb.jc

bb.iz:                                            ; preds = %.thread.i468
  %.sroa.speculated.i.i760 = call noundef i64 @llvm.umax.i64(i64 %i.xc, i64 8) ; 2 uses
  %i.xe = icmp ugt i64 %.fr.i466, 4611686018427387903
  br i1 %i.xe, label %bb.ja, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761, !prof !212

bb.ja:                                            ; preds = %bb.iz
  %i.xf = icmp slt i64 %.fr.i466, 0
  br i1 %i.xf, label %.noexc.i.i.i.i765, label %.noexc6.i.i.i.i764

.noexc.i.i.i.i765:                                ; preds = %bb.ja
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc766 unwind label %bb.jd

.noexc766:                                        ; preds = %.noexc.i.i.i.i765
  unreachable

.noexc6.i.i.i.i764:                               ; preds = %bb.ja
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc767 unwind label %bb.jd

.noexc767:                                        ; preds = %.noexc6.i.i.i.i764
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761: ; preds = %bb.iz
  %i.xg = shl nuw nsw i64 %.sroa.speculated.i.i760, 2 ; 2 uses
  %i.xh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xg) #41
          to label %.noexc768 unwind label %bb.jd ; 9 uses

.noexc768:                                        ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761
  %i.xi = ptrtoaddr ptr %i.xh to i64
  %i.xj = load ptr, ptr %76, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.i.i762 = icmp eq ptr %i.xj, null
  br i1 %.not.i.i.i.i762, label %.lr.ph.i.i749, label %bb.jb

bb.jb:                                            ; preds = %.noexc768
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !197
  %i.xl = add i64 %i.xk, %i.xg
  store i64 %i.xl, ptr %i.xj, align 8, !tbaa !197
  br label %.lr.ph.i.i749

bb.jc:                                            ; preds = %.thread.i468
  %i.xm = getelementptr inbounds nuw i8, ptr %76, i64 24
  %.not.i.i748 = icmp eq i64 %i.xc, 0
  br i1 %.not.i.i748, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757.preheader

.lr.ph.i.i749:                                    ; preds = %.noexc768, %bb.jb
  %i.xn = getelementptr inbounds nuw i8, ptr %76, i64 24
  store ptr %i.xh, ptr %i.xn, align 8, !tbaa !198
  %i.xo = getelementptr inbounds nuw i8, ptr %76, i64 32
  store i64 %.sroa.speculated.i.i760, ptr %i.xo, align 8, !tbaa !198
  %i.xp = load i64, ptr %i.wn, align 8, !tbaa !197
  %i.xq = or i64 %i.xp, 1                         ; 2 uses
  store i64 %i.xq, ptr %i.wn, align 8, !tbaa !197
  %.pre819 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i.i751 = icmp eq ptr %.pre819, null
  br i1 %.not.i.i.i.i.i.i751, label %.lr.ph.split.us.i.i757.preheader, label %.lr.ph.split.i.i752

.lr.ph.split.us.i.i757.preheader:                 ; preds = %bb.jc, %.lr.ph.i.i749
  %.010.i7501024 = phi ptr [ %i.xh, %.lr.ph.i.i749 ], [ %i.xm, %bb.jc ] ; 7 uses
  %i.xr = phi i64 [ %i.xq, %.lr.ph.i.i749 ], [ 0, %bb.jc ] ; 3 uses
  %min.iters.check1064 = icmp ult i64 %.fr.i466, 16
  %.010.i75010241061 = ptrtoaddr ptr %.010.i7501024 to i64
  %i.xs = sub i64 %i.xb, %.010.i75010241061
  %diff.check1062 = icmp ugt i64 %i.xs, -32
  %or.cond1078 = select i1 %min.iters.check1064, i1 true, i1 %diff.check1062
  br i1 %or.cond1078, label %.lr.ph.split.us.i.i757.preheader1080, label %vector.ph1065

vector.ph1065:                                    ; preds = %.lr.ph.split.us.i.i757.preheader
  %n.vec1066 = and i64 %i.xc, 9223372036854775800 ; 4 uses
  %i.xt = shl i64 %n.vec1066, 2
  %i.xu = getelementptr i8, ptr %i.xa, i64 %i.xt
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1072, %vector.body1067 ] ; 3 uses
  %i.xv = shl i64 %index1068, 2
  %next.gep1069 = getelementptr i8, ptr %i.xa, i64 %i.xv ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %index1068 ; 2 uses
  %i.xx = getelementptr i8, ptr %next.gep1069, i64 16
  %wide.load1070 = load <4 x i32>, ptr %next.gep1069, align 4, !tbaa !211
  %wide.load1071 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !211
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  store <4 x i32> %wide.load1070, ptr %i.xw, align 4, !tbaa !211
  store <4 x i32> %wide.load1071, ptr %i.xy, align 4, !tbaa !211
  %index.next1072 = add nuw i64 %index1068, 8     ; 2 uses
  %i.xz = icmp eq i64 %index.next1072, %n.vec1066
  br i1 %i.xz, label %middle.block1073, label %vector.body1067, !llvm.loop !4809

middle.block1073:                                 ; preds = %vector.body1067
  %cmp.n1074 = icmp eq i64 %i.xc, %n.vec1066
  br i1 %cmp.n1074, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757.preheader1080

.lr.ph.split.us.i.i757.preheader1080:             ; preds = %.lr.ph.split.us.i.i757.preheader, %middle.block1073
  %.ph = phi ptr [ %i.xa, %.lr.ph.split.us.i.i757.preheader ], [ %i.xu, %middle.block1073 ] ; 2 uses
  %.013.us.i.i758.ph = phi i64 [ 0, %.lr.ph.split.us.i.i757.preheader ], [ %n.vec1066, %middle.block1073 ] ; 3 uses
  %xtraiter1093 = and i64 %i.xc, 3                ; 2 uses
  %lcmp.mod1094.not = icmp eq i64 %xtraiter1093, 0
  br i1 %lcmp.mod1094.not, label %.lr.ph.split.us.i.i757.prol.loopexit, label %.lr.ph.split.us.i.i757.prol

.lr.ph.split.us.i.i757.prol:                      ; preds = %.lr.ph.split.us.i.i757.preheader1080, %.lr.ph.split.us.i.i757.prol
  %i.ya = phi ptr [ %i.yd, %.lr.ph.split.us.i.i757.prol ], [ %.ph, %.lr.ph.split.us.i.i757.preheader1080 ] ; 2 uses
  %.013.us.i.i758.prol = phi i64 [ %i.ye, %.lr.ph.split.us.i.i757.prol ], [ %.013.us.i.i758.ph, %.lr.ph.split.us.i.i757.preheader1080 ] ; 2 uses
  %prol.iter1095 = phi i64 [ %prol.iter1095.next, %.lr.ph.split.us.i.i757.prol ], [ 0, %.lr.ph.split.us.i.i757.preheader1080 ]
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758.prol
  %i.yc = load i32, ptr %i.ya, align 4, !tbaa !211
  store i32 %i.yc, ptr %i.yb, align 4, !tbaa !211
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ya, i64 4 ; 2 uses
  %i.ye = add nuw nsw i64 %.013.us.i.i758.prol, 1 ; 2 uses
  %prol.iter1095.next = add i64 %prol.iter1095, 1 ; 2 uses
  %prol.iter1095.cmp.not = icmp eq i64 %prol.iter1095.next, %xtraiter1093
  br i1 %prol.iter1095.cmp.not, label %.lr.ph.split.us.i.i757.prol.loopexit, label %.lr.ph.split.us.i.i757.prol, !llvm.loop !4810

.lr.ph.split.us.i.i757.prol.loopexit:             ; preds = %.lr.ph.split.us.i.i757.prol, %.lr.ph.split.us.i.i757.preheader1080
  %.unr1096 = phi ptr [ %.ph, %.lr.ph.split.us.i.i757.preheader1080 ], [ %i.yd, %.lr.ph.split.us.i.i757.prol ]
  %.013.us.i.i758.unr = phi i64 [ %.013.us.i.i758.ph, %.lr.ph.split.us.i.i757.preheader1080 ], [ %i.ye, %.lr.ph.split.us.i.i757.prol ]
  %i.yf = sub nsw i64 %.013.us.i.i758.ph, %i.xc
  %i.yg = icmp ugt i64 %i.yf, -4
  br i1 %i.yg, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757

.lr.ph.split.us.i.i757:                           ; preds = %.lr.ph.split.us.i.i757.prol.loopexit, %.lr.ph.split.us.i.i757
  %i.yh = phi ptr [ %i.yw, %.lr.ph.split.us.i.i757 ], [ %.unr1096, %.lr.ph.split.us.i.i757.prol.loopexit ] ; 5 uses
  %.013.us.i.i758 = phi i64 [ %i.yx, %.lr.ph.split.us.i.i757 ], [ %.013.us.i.i758.unr, %.lr.ph.split.us.i.i757.prol.loopexit ] ; 5 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.yj = load i32, ptr %i.yh, align 4, !tbaa !211
  store i32 %i.yj, ptr %i.yi, align 4, !tbaa !211
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.yn = load i32, ptr %i.yk, align 4, !tbaa !211
  store i32 %i.yn, ptr %i.ym, align 4, !tbaa !211
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load i32, ptr %i.yo, align 4, !tbaa !211
  store i32 %i.yr, ptr %i.yq, align 4, !tbaa !211
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yh, i64 12
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.010.i7501024, i64 %.013.us.i.i758
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 12
  %i.yv = load i32, ptr %i.ys, align 4, !tbaa !211
  store i32 %i.yv, ptr %i.yu, align 4, !tbaa !211
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yx = add nuw nsw i64 %.013.us.i.i758, 4      ; 2 uses
  %exitcond20.not.i.i759.3 = icmp eq i64 %i.yx, %i.xc
  br i1 %exitcond20.not.i.i759.3, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769, label %.lr.ph.split.us.i.i757, !llvm.loop !4811

.lr.ph.split.i.i752:                              ; preds = %.lr.ph.i.i749
  %.promoted14.i.i753 = load i64, ptr %.pre819, align 8, !tbaa !197
  %min.iters.check1047 = icmp ult i64 %.fr.i466, 16
  %i.yy = sub i64 %i.xb, %i.xi
  %diff.check1045 = icmp ugt i64 %i.yy, -32
  %or.cond1079 = select i1 %min.iters.check1047, i1 true, i1 %diff.check1045
  br i1 %or.cond1079, label %scalar.ph1046.preheader, label %vector.ph1048

vector.ph1048:                                    ; preds = %.lr.ph.split.i.i752
  %n.vec1049 = and i64 %i.xc, 2305843009213693944 ; 4 uses
  %i.yz = shl nuw nsw i64 %n.vec1049, 2
  %i.za = getelementptr i8, ptr %i.xa, i64 %i.yz
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1048
  %index1051 = phi i64 [ 0, %vector.ph1048 ], [ %index.next1055, %vector.body1050 ] ; 3 uses
  %i.zb = shl i64 %index1051, 2
  %next.gep1052 = getelementptr i8, ptr %i.xa, i64 %i.zb ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %index1051 ; 2 uses
  %i.zd = getelementptr i8, ptr %next.gep1052, i64 16
  %wide.load1053 = load <4 x i32>, ptr %next.gep1052, align 4, !tbaa !211
  %wide.load1054 = load <4 x i32>, ptr %i.zd, align 4, !tbaa !211
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  store <4 x i32> %wide.load1053, ptr %i.zc, align 4, !tbaa !211
  store <4 x i32> %wide.load1054, ptr %i.ze, align 4, !tbaa !211
  %index.next1055 = add nuw i64 %index1051, 8     ; 2 uses
  %i.zf = icmp eq i64 %index.next1055, %n.vec1049
  br i1 %i.zf, label %middle.block1056, label %vector.body1050, !llvm.loop !4812

middle.block1056:                                 ; preds = %vector.body1050
  %cmp.n1057 = icmp eq i64 %i.xc, %n.vec1049
  br i1 %cmp.n1057, label %._crit_edge.split.i.i756, label %scalar.ph1046.preheader

scalar.ph1046.preheader:                          ; preds = %.lr.ph.split.i.i752, %middle.block1056
  %.ph1081 = phi ptr [ %i.xa, %.lr.ph.split.i.i752 ], [ %i.za, %middle.block1056 ] ; 2 uses
  %.013.i.i754.ph = phi i64 [ 0, %.lr.ph.split.i.i752 ], [ %n.vec1049, %middle.block1056 ] ; 3 uses
  %xtraiter1089 = and i64 %i.xc, 3                ; 2 uses
  %lcmp.mod1090.not = icmp eq i64 %xtraiter1089, 0
  br i1 %lcmp.mod1090.not, label %scalar.ph1046.prol.loopexit, label %scalar.ph1046.prol

scalar.ph1046.prol:                               ; preds = %scalar.ph1046.preheader, %scalar.ph1046.prol
  %i.zg = phi ptr [ %i.zj, %scalar.ph1046.prol ], [ %.ph1081, %scalar.ph1046.preheader ] ; 2 uses
  %.013.i.i754.prol = phi i64 [ %i.zk, %scalar.ph1046.prol ], [ %.013.i.i754.ph, %scalar.ph1046.preheader ] ; 2 uses
  %prol.iter1091 = phi i64 [ %prol.iter1091.next, %scalar.ph1046.prol ], [ 0, %scalar.ph1046.preheader ]
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %.013.i.i754.prol
  %i.zi = load i32, ptr %i.zg, align 4, !tbaa !211
  store i32 %i.zi, ptr %i.zh, align 4, !tbaa !211
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 4 ; 2 uses
  %i.zk = add nuw nsw i64 %.013.i.i754.prol, 1    ; 2 uses
  %prol.iter1091.next = add i64 %prol.iter1091, 1 ; 2 uses
  %prol.iter1091.cmp.not = icmp eq i64 %prol.iter1091.next, %xtraiter1089
  br i1 %prol.iter1091.cmp.not, label %scalar.ph1046.prol.loopexit, label %scalar.ph1046.prol, !llvm.loop !4813

scalar.ph1046.prol.loopexit:                      ; preds = %scalar.ph1046.prol, %scalar.ph1046.preheader
  %.unr1092 = phi ptr [ %.ph1081, %scalar.ph1046.preheader ], [ %i.zj, %scalar.ph1046.prol ]
  %.013.i.i754.unr = phi i64 [ %.013.i.i754.ph, %scalar.ph1046.preheader ], [ %i.zk, %scalar.ph1046.prol ]
  %i.zl = sub nsw i64 %.013.i.i754.ph, %i.xc
  %i.zm = icmp ugt i64 %i.zl, -4
  br i1 %i.zm, label %._crit_edge.split.i.i756, label %scalar.ph1046

._crit_edge.split.i.i756:                         ; preds = %scalar.ph1046.prol.loopexit, %scalar.ph1046, %middle.block1056
  %i.zn = add i64 %.promoted14.i.i753, %i.xc
  store i64 %i.zn, ptr %.pre819, align 8, !tbaa !197
  %.pre820 = load i64, ptr %i.wn, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769

scalar.ph1046:                                    ; preds = %scalar.ph1046.prol.loopexit, %scalar.ph1046
  %i.zo = phi ptr [ %i.aad, %scalar.ph1046 ], [ %.unr1092, %scalar.ph1046.prol.loopexit ] ; 5 uses
  %.013.i.i754 = phi i64 [ %i.aae, %scalar.ph1046 ], [ %.013.i.i754.unr, %scalar.ph1046.prol.loopexit ] ; 5 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %.013.i.i754
  %i.zq = load i32, ptr %i.zo, align 4, !tbaa !211
  store i32 %i.zq, ptr %i.zp, align 4, !tbaa !211
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %.013.i.i754
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zu = load i32, ptr %i.zr, align 4, !tbaa !211
  store i32 %i.zu, ptr %i.zt, align 4, !tbaa !211
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %.013.i.i754
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.zy = load i32, ptr %i.zv, align 4, !tbaa !211
  store i32 %i.zy, ptr %i.zx, align 4, !tbaa !211
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zo, i64 12
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %.013.i.i754
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 12
  %i.aac = load i32, ptr %i.zz, align 4, !tbaa !211
  store i32 %i.aac, ptr %i.aab, align 4, !tbaa !211
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.aae = add nuw nsw i64 %.013.i.i754, 4        ; 2 uses
  %exitcond.not.i.i755.3 = icmp eq i64 %i.aae, %i.xc
  br i1 %exitcond.not.i.i755.3, label %._crit_edge.split.i.i756, label %scalar.ph1046, !llvm.loop !4814

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769: ; preds = %.lr.ph.split.us.i.i757.prol.loopexit, %.lr.ph.split.us.i.i757, %middle.block1073, %bb.jc, %._crit_edge.split.i.i756
  %i.aaf = phi i64 [ %.pre820, %._crit_edge.split.i.i756 ], [ 0, %bb.jc ], [ %i.xr, %middle.block1073 ], [ %i.xr, %.lr.ph.split.us.i.i757 ], [ %i.xr, %.lr.ph.split.us.i.i757.prol.loopexit ]
  %i.aag = and i64 %.fr.i466, -2
  %i.aah = add i64 %i.aaf, %i.aag                 ; 2 uses
  store i64 %i.aah, ptr %i.wn, align 8, !tbaa !197
  br label %bb.je

bb.jd:                                            ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i761, %.noexc6.i.i.i.i764, %.noexc.i.i.i.i765
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %76) #36
  br label %.body469

bb.je:                                            ; preds = %bb.ix, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769
  %i.aaj = phi i64 [ %.fr.i466, %bb.ix ], [ %i.aah, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE10InitializeINS1_20IteratorValueAdapterIS5_St13move_iteratorIPiEEEEEvT_m.exit769 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #36
  %i.aak = shl i64 %i.aaj, 1
  %i.aal = and i64 %i.aak, -4
  store i64 %i.aal, ptr %78, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIlEEEclIlEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %77, ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull @.str.445, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.jf unwind label %bb.jh

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #36
  %i.aam = load i8, ptr %77, align 8, !tbaa !220, !range !189, !noundef !190
  %i.aan = trunc nuw i8 %i.aam to i1
  br i1 %i.aan, label %bb.jr, label %bb.ji

bb.jg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit460, %bb.ik
  %.pn177.pn.pn = phi { ptr, i32 } [ %.pn177.pn, %_ZN7testing7MessageD2Ev.exit460 ], [ %i.vq, %bb.ik ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #36
  br label %bb.kc

bb.jh:                                            ; preds = %bb.je
  %i.aao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #36
  br label %bb.kb

bb.ji:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %bb.jj unwind label %bb.jn

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #36
  %i.aap = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !221 ; 2 uses
  %.not.i.i472 = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i472, label %_ZNK7testing15AssertionResult15failure_messageEv.exit473, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit473

_ZNK7testing15AssertionResult15failure_messageEv.exit473: ; preds = %bb.jk, %bb.jj
  %i.aas = phi ptr [ %i.aar, %bb.jk ], [ @.str.216, %bb.jj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %80, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1834, ptr noundef %i.aas)
          to label %bb.jl unwind label %bb.jo

bb.jl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit473
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %bb.jm unwind label %bb.jp

bb.jm:                                            ; preds = %bb.jl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #36
  %i.aat = load ptr, ptr %79, align 8, !tbaa !223 ; 3 uses
  %.not.i.i474 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i474, label %_ZN7testing7MessageD2Ev.exit476, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i475

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i475: ; preds = %bb.jm
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !169
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8
  call void %i.aaw(ptr noundef nonnull align 8 dereferenceable(128) %i.aat) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit476

_ZN7testing7MessageD2Ev.exit476:                  ; preds = %bb.jm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #36
  br label %bb.jr

bb.jn:                                            ; preds = %bb.ji
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit479

bb.jo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit473
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jl
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #36
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %.pn181 = phi { ptr, i32 } [ %i.aaz, %bb.jp ], [ %i.aay, %bb.jo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #36
  %i.aba = load ptr, ptr %79, align 8, !tbaa !223 ; 3 uses
  %.not.i.i477 = icmp eq ptr %i.aba, null
  br i1 %.not.i.i477, label %_ZN7testing7MessageD2Ev.exit479, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i478

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i478: ; preds = %bb.jq
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !169
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8
  call void %i.abd(ptr noundef nonnull align 8 dereferenceable(128) %i.aba) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit479

_ZN7testing7MessageD2Ev.exit479:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i478, %bb.jq, %bb.jn
  %.pn181.pn = phi { ptr, i32 } [ %i.aax, %bb.jn ], [ %.pn181, %bb.jq ], [ %.pn181, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i478 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %77) #36
  br label %bb.kb

bb.jr:                                            ; preds = %bb.jf, %_ZN7testing7MessageD2Ev.exit476
  %i.abe = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !221 ; 4 uses
  %.not.i.i480 = icmp eq ptr %i.abf, null
  br i1 %.not.i.i480, label %_ZN7testing15AssertionResultD2Ev.exit484, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !195 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 16 ; 2 uses
  %i.abi = icmp eq ptr %i.abg, %i.abh
  br i1 %i.abi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i481: ; preds = %bb.js
  %i.abj = load i64, ptr %i.abh, align 8, !tbaa !198
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abk) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i482

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i482: ; preds = %bb.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i481
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit484

_ZN7testing15AssertionResultD2Ev.exit484:         ; preds = %bb.jr, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i482
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #36
  %i.abl = load i64, ptr %i.wn, align 8, !tbaa !197
  %i.abm = icmp eq i64 %i.abl, 0
  br i1 %i.abm, label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit485, label %bb.jt

bb.jt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit484
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %76)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit485 unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.abn = landingpad { ptr, i32 }
          catch ptr null
  %i.abo = extractvalue { ptr, i32 } %i.abn, 0
  call void @__clang_call_terminate(ptr %i.abo) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit485: ; preds = %_ZN7testing15AssertionResultD2Ev.exit484, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  %i.abp = load i64, ptr %i.vi, align 8, !tbaa !197
  %i.abq = icmp eq i64 %i.abp, 0
  br i1 %i.abq, label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit486, label %bb.jv

bb.jv:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit485
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %71)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit486 unwind label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.abr = landingpad { ptr, i32 }
          catch ptr null
  %i.abs = extractvalue { ptr, i32 } %i.abr, 0
  call void @__clang_call_terminate(ptr %i.abs) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit486: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit485, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.abt = load i64, ptr %i.sq, align 8, !tbaa !197
  %i.abu = icmp eq i64 %i.abt, 0
  br i1 %i.abu, label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit487, label %bb.jx

bb.jx:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit486
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %62)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit487 unwind label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.abv = landingpad { ptr, i32 }
          catch ptr null
  %i.abw = extractvalue { ptr, i32 } %i.abv, 0
  call void @__clang_call_terminate(ptr %i.abw) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit487: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit486, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #36
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE6ResizeINS1_19DefaultValueAdapterIS5_EEEEvT_m:bb.a
bb.g:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.cv = load i64, ptr %i.f, align 8, !tbaa !198
  %i.cw = shl i64 %i.cv, 2                        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cw) #39
  %i.cx = load ptr, ptr %0, align 8, !tbaa !617   ; 3 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i61, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !197
  %i.cz = sub i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit: ; preds = %bb.h, %bb.g, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit60
  store ptr %i.w, ptr %i.d, align 8, !tbaa !198
  store i64 %.sroa.speculated.i, ptr %i.f, align 8, !tbaa !198
  %i.da = load i64, ptr %i.a, align 8, !tbaa !197
  %i.db = or i64 %i.da, 1
  store i64 %i.db, ptr %i.a, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit

bb.i:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.dc

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit: ; preds = %.lr.ph.split.i45, %_ZN4absl12lts_2026052623inlined_vector_internal19DefaultValueAdapterINS0_18container_internal17CountingAllocatorIiEEE13ConstructNextERS5_Pi.exit.us.preheader.i, %.lr.ph.split.i, %.lr.ph.i, %bb.b, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit
  %i.dd = shl i64 %1, 1
  %i.de = load i64, ptr %i.a, align 8, !tbaa !197
  %i.df = and i64 %i.de, 1
  %i.dg = or disjoint i64 %i.df, %i.dd
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = shl i64 %i.d, 2                          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #39
  %i.f = load ptr, ptr %0, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !tbaa !197
  %i.h = sub i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE10DeallocateERS5_Pim.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEE11ShrinkToFitEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::inlined_vector_internal::AllocationTransaction.1147", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !197  ; 6 uses
  %i.f = lshr i64 %i.e, 1                         ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !198  ; 3 uses
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.n, label %bb.b, !prof !212

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !628
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = icmp ugt i64 %i.e, 9
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %i.e, 4611686018427387903
  br i1 %i.l, label %bb.d, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, !prof !212

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %i.e, 0
  br i1 %i.m, label %.noexc.i.i.i.i, label %.noexc6.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

.noexc6.i.i.i.i:                                  ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc25 unwind label %bb.g

.noexc25:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = shl nuw nsw i64 %i.f, 2                  ; 4 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #41
          to label %.noexc26 unwind label %bb.g   ; 3 uses

.noexc26:                                         ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i
  %i.p = load ptr, ptr %1, align 8, !tbaa !617    ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc26
  %i.q = load i64, ptr %i.p, align 8, !tbaa !197
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !197
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc26
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %.lr.ph.i, label %.thread40

bb.g:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.s

bb.h:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %i.t = phi i64 [ 0, %bb.h ], [ %i.f, %bb.f ]    ; 4 uses
  %i.u = phi ptr [ null, %bb.h ], [ %i.o, %bb.f ] ; 4 uses
  %.01936 = phi ptr [ %i.a, %bb.h ], [ %i.o, %bb.f ] ; 13 uses
  %.0193650 = ptrtoaddr ptr %.01936 to i64        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !618  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check56 = icmp ult i64 %i.e, 16
  %i.x = sub i64 %i.c, %.0193650
  %diff.check54 = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check56, i1 true, i1 %diff.check54
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader70, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.split.us.i.preheader
  %n.vec58 = and i64 %i.f, 9223372036854775800    ; 4 uses
  %i.y = shl i64 %n.vec58, 2
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next64, %vector.body59 ] ; 3 uses
  %i.aa = shl i64 %index60, 2
  %next.gep61 = getelementptr i8, ptr %i.b, i64 %i.aa ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %index60 ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load62 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !211
  %wide.load63 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %wide.load62, ptr %i.ab, align 4, !tbaa !211
  store <4 x i32> %wide.load63, ptr %i.ad, align 4, !tbaa !211
  %index.next64 = add nuw i64 %index60, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next64, %n.vec58
  br i1 %i.ae, label %middle.block65, label %vector.body59, !llvm.loop !4971

middle.block65:                                   ; preds = %vector.body59
  %cmp.n66 = icmp eq i64 %i.f, %n.vec58
  br i1 %cmp.n66, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.us.i.preheader70

.lr.ph.split.us.i.preheader70:                    ; preds = %.lr.ph.split.us.i.preheader, %middle.block65
  %.ph = phi ptr [ %i.b, %.lr.ph.split.us.i.preheader ], [ %i.z, %middle.block65 ] ; 2 uses
  %.013.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec58, %middle.block65 ] ; 3 uses
  %xtraiter72 = and i64 %i.f, 3                   ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader70, %.lr.ph.split.us.i.prol
  %i.af = phi ptr [ %i.ai, %.lr.ph.split.us.i.prol ], [ %.ph, %.lr.ph.split.us.i.preheader70 ] ; 2 uses
  %.013.us.i.prol = phi i64 [ %i.aj, %.lr.ph.split.us.i.prol ], [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader70 ] ; 2 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader70 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i.prol
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !211
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !211
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.aj = add nuw nsw i64 %.013.us.i.prol, 1      ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !4972

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader70
  %.unr75 = phi ptr [ %.ph, %.lr.ph.split.us.i.preheader70 ], [ %i.ai, %.lr.ph.split.us.i.prol ]
  %.013.us.i.unr = phi i64 [ %.013.us.i.ph, %.lr.ph.split.us.i.preheader70 ], [ %i.aj, %.lr.ph.split.us.i.prol ]
  %i.ak = sub nsw i64 %.013.us.i.ph, %i.f
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %i.am = phi ptr [ %i.bb, %.lr.ph.split.us.i ], [ %.unr75, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %.013.us.i = phi i64 [ %i.bc, %.lr.ph.split.us.i ], [ %.013.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !211
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !211
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !211
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !211
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.us.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !211
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bc = add nuw nsw i64 %.013.us.i, 4           ; 2 uses
  %exitcond20.not.i.3 = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond20.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, label %.lr.ph.split.us.i, !llvm.loop !4973

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.promoted14.i = load i64, ptr %i.w, align 8, !tbaa !197
  %min.iters.check = icmp ult i64 %i.e, 16
  %i.bd = sub i64 %i.c, %.0193650
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond69 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond69, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i
  %n.vec = and i64 %i.f, 9223372036854775800      ; 4 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %i.b, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %index ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load51 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !211
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <4 x i32> %wide.load, ptr %i.bh, align 4, !tbaa !211
  store <4 x i32> %wide.load51, ptr %i.bj, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !4974

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph.split.i29, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.i, %middle.block
  %.ph71 = phi ptr [ %i.b, %.lr.ph.split.i ], [ %i.bf, %middle.block ] ; 2 uses
  %.013.i.ph = phi i64 [ 0, %.lr.ph.split.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.bl = phi ptr [ %i.bo, %scalar.ph.prol ], [ %.ph71, %scalar.ph.preheader ] ; 2 uses
  %.013.i.prol = phi i64 [ %i.bp, %scalar.ph.prol ], [ %.013.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i.prol
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !211
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !211
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bp = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4975

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph71, %scalar.ph.preheader ], [ %i.bo, %scalar.ph.prol ]
  %.013.i.unr = phi i64 [ %.013.i.ph, %scalar.ph.preheader ], [ %i.bp, %scalar.ph.prol ]
  %i.bq = sub nsw i64 %.013.i.ph, %i.f
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.lr.ph.split.i29, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bs = phi ptr [ %i.ch, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.013.i = phi i64 [ %i.ci, %scalar.ph ], [ %.013.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !211
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !211
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !211
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !211
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !211
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !211
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.01936, i64 %.013.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !211
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !211
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ci = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond.not.i.3, label %.lr.ph.split.i29, label %scalar.ph, !llvm.loop !4976

.lr.ph.split.i29:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  store i64 %.promoted14.i, ptr %i.w, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit: ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block65, %bb.h, %.lr.ph.split.i29
  %i.cj = phi i64 [ 0, %bb.h ], [ %i.t, %.lr.ph.split.i29 ], [ %i.t, %middle.block65 ], [ %i.t, %.lr.ph.split.us.i ], [ %i.t, %.lr.ph.split.us.i.prol.loopexit ]
  %.pr = phi ptr [ null, %bb.h ], [ %i.u, %.lr.ph.split.i29 ], [ %i.u, %middle.block65 ], [ %i.u, %.lr.ph.split.us.i ], [ %i.u, %.lr.ph.split.us.i.prol.loopexit ] ; 2 uses
  %i.ck = shl i64 %i.h, 2                         ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.ck) #39
  %i.cl = load ptr, ptr %0, align 8, !tbaa !617   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !197
  %i.cn = sub i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !197
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterINS0_18container_internal17CountingAllocatorIiEELb0EE15DestroyElementsERS5_Pim.exit, %bb.i
  %.not42 = icmp eq ptr %.pr, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.pr, ptr %i.a, align 8, !tbaa !198
  store i64 %i.cj, ptr %i.g, align 8, !tbaa !198
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.co = load i64, ptr %i.d, align 8, !tbaa !197
  %i.cp = and i64 %i.co, -2
  store i64 %i.cp, ptr %i.d, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

.thread40:                                        ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #39
  %.not.i.i.i.i32 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i32, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread40
  %i.cq = load i64, ptr %i.p, align 8, !tbaa !197
  %i.cr = sub i64 %i.cq, %i.n
  store i64 %i.cr, ptr %i.p, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit: ; preds = %bb.k, %bb.l, %.thread40, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionINS0_18container_internal17CountingAllocatorIiEEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_143AllocatorSupportTest_SwapBothAllocated_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %1 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 14 uses
  %2 = alloca %"class.absl::lts_20260526::InlinedVector.1117", align 8 ; 14 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 9 uses
  %16 = alloca %"class.testing::internal::ElementsAreArrayMatcher", align 8 ; 6 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 9 uses
  %21 = alloca %"class.testing::internal::ElementsAreArrayMatcher", align 8 ; 6 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1127", align 8 ; 5 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %33 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1153", align 4 ; 4 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %37 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1153", align 4 ; 4 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i64 0, ptr %i.b, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %i.a, ptr %1, align 8, !tbaa !240
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5226.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %.noexc211 unwind label %bb.c  ; 3 uses

.noexc211:                                        ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !617    ; 3 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i210, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %.noexc211
  %i.h = load i64, ptr %i.g, align 8, !tbaa !197
  %i.i = add i64 %i.h, 32
  store i64 %i.i, ptr %i.g, align 8, !tbaa !197
  br label %.thread.i

.thread.i:                                        ; preds = %bb.b, %.noexc211
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.f, ptr %i.j, align 8, !tbaa !198
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store i64 8, ptr %i.k, align 8, !tbaa !198
  %i.l = load i64, ptr %i.e, align 8, !tbaa !197
  %i.m = or i64 %i.l, 1                           ; 2 uses
  store i64 %i.m, ptr %i.e, align 8, !tbaa !197
  %i.n = load ptr, ptr %.sroa.5226.0..sroa_idx, align 8, !tbaa !618 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZN12_GLOBAL__N_142AllocatorSupportTest_SwapOneAllocated_Test8TestBodyEv.ia1, i64 32, i1 false), !tbaa !211
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2IPKiTnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEESA_SA_RKS4_.exit

.lr.ph.split.i.i:                                 ; preds = %.thread.i
  %.promoted14.i.i = load i64, ptr %i.n, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZN12_GLOBAL__N_142AllocatorSupportTest_SwapOneAllocated_Test8TestBodyEv.ia1, i64 32, i1 false), !tbaa !211
  %i.o = add i64 %.promoted14.i.i, 8
  store i64 %i.o, ptr %i.n, align 8, !tbaa !197
  %.pre = load i64, ptr %i.e, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2IPKiTnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEESA_SA_RKS4_.exit

common.resume:                                    ; preds = %bb.ew, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn79.pn.pn, %bb.ew ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #36
  br label %common.resume

_ZN4absl12lts_2026052613InlinedVectorIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2IPKiTnNSt9enable_ifIXsr13base_internal24IsAtLeastForwardIteratorIT_EE5valueEiE4typeELi0EEESA_SA_RKS4_.exit: ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.i.i
  %i.q = phi i64 [ %i.m, %.lr.ph.split.us.i.i.preheader ], [ %.pre, %.lr.ph.split.i.i ]
  %i.r = add i64 %i.q, 16
  store i64 %i.r, ptr %i.e, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.b, ptr %2, align 8, !tbaa !240
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
end_hunk_5
