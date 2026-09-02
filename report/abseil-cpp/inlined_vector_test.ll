Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 287
begin_hunk_0_@_ZN12_GLOBAL__N_147InlinedVectorTest_ShrinkToFitGrowingVector_Test8TestBodyEv:bb.a
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
  %i.ae = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.d
  br i1 %exitcond.not.i, label %.lr.ph.i27, label %.lr.ph.i, !llvm.loop !23

.lr.ph.i27:                                       ; preds = %bb.g, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i
  %.06.i = phi i64 [ %i.af, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i ], [ %i.d, %bb.g ]
  %i.af = add i64 %.06.i, -1                      ; 3 uses
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

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19: ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !169
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #36, !inline_history !8
  br label %_ZN7testing7MessageD2Ev.exit5.i20
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2ESaIS8_EE6ResizeINS1_19DefaultValueAdapterIS9_EEEEvT_m:bb.a
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
  %i.ab = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.d
  br i1 %exitcond.not.i, label %.lr.ph.i27, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i27:                                       ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.06.i = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %bb.g ]
  %i.ac = add i64 %.06.i, -1                      ; 3 uses
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
  %i.ba = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
end_hunk_1
