Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 288
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
  %i.ba = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !347
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !348
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !350
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !339
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !347
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1876

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !347  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1878

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !347 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !351
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !37

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !1892
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !1892
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !1892
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !1892 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !1892 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !1892 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !1892 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !1892
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_2
begin_hunk_3_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !369
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !377
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !377
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !373
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !373
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !378
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !379
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !369
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !377
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !369
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !377
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2088

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS6_EEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !369  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !377  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2090

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !369
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !377 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !377
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !373
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !373
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2103
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(8) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !2091

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !2107
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !2107
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !2107
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !2107 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !2107 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !2107 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !2107 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !2107
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_3
begin_hunk_4_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESaISA_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !410
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !418
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESaISA_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !418
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !414
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !414
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !419
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !421
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !410
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !418
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !410
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !418
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2618

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESaISA_EEEE15MatchAndExplainESE_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !410  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !418  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2620

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !410
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !418 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !414
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !414
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !422
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !54

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !2634
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !2634
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !2634
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !2634 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !2634 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !2634 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !2634 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !2634
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_4
begin_hunk_5_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !347
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !348
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !350
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !339
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !347
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2893

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm2ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !347  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2895

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !347 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !351
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !37

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  call void @llvm.experimental.noalias.scope.decl(metadata !2908)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !2909
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !2909
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !2909
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !2909 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !2909 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !2909 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !2909 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !2909
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_5
begin_hunk_6_@_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKiEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm2EEclES7_RKS3_SE_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  call void @llvm.experimental.noalias.scope.decl(metadata !3031)
  call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKiEE, i64 16), ptr %3, align 8, !tbaa !169, !alias.scope !3033
  %i.y = load i32, ptr %1, align 4, !tbaa !211, !noalias !3033
  %.sroa.11.16.insert.ext.i.i.i.i.i.i = zext i32 %i.y to i64 ; 2 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKiE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.x, align 8, !tbaa !343, !alias.scope !3033
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %.sroa.11.16.insert.ext.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !198, !alias.scope !3033
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !339 ; 5 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !340
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKiEESaIS5_EEEaSEOS5_.exit.thread.i

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKiEESaIS5_EEEaSEOS5_.exit.thread.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKiED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKiE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.ac, align 8, !tbaa !343
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.11.16.insert.ext.i.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !198
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKiEE, i64 16), ptr %i.aa, align 8, !tbaa !169
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %i.e, align 8, !tbaa !339
  br label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKiEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit

bb.f:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKiED2Ev.exit
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKiEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKiEESaIS5_EEEaSEOS5_.exit.i unwind label %bb.j

_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKiEESaIS5_EEEaSEOS5_.exit.i: ; preds = %bb.f
  %.pr.i = load ptr, ptr %i.x, align 8, !tbaa !343 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKiEE, i64 16), ptr %3, align 8, !tbaa !169
  %.not.i.i.i4.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i4.i, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKiEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit, label %_ZNK7testing8internal11MatcherBaseIRKiE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKiE8IsSharedEv.exit.i.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKiEESaIS5_EEEaSEOS5_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.pr.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !345
  %.not.i.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i5, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKiEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE8IsSharedEv.exit.i.i.i
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 acq_rel, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKiEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !345
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !198
  invoke void %i.an(ptr noundef %i.ao)
          to label %_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKiEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit unwind label %bb.i, !inline_history !32

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #35, !inline_history !346
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.as, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKiED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %common.resume

_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKiEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm1EEclES7_RKS3_SE_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKiEESaIS5_EEEaSEOS5_.exit.thread.i, %_ZNSt20back_insert_iteratorISt6vectorIN7testing7MatcherIRKiEESaIS5_EEEaSEOS5_.exit.i, %_ZNK7testing8internal11MatcherBaseIRKiE8IsSharedEv.exit.i.i.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %2

bb.k:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKiED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_151CountElemAssign_WithAllocationCopyableInstance_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_151CountElemAssign_WithAllocationCopyableInstance_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_151CountElemAssign_WithAllocationCopyableInstance_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_151CountElemAssign_WithAllocationCopyableInstance_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_151CountElemAssign_WithAllocationCopyableInstance_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %2 = alloca %"class.std::vector.656", align 8   ; 8 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.661", align 8 ; 15 uses
  %4 = alloca %"class.absl::lts_20260526::test_internal::CopyableOnlyInstance", align 4 ; 6 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.668", align 16 ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.3, i32 noundef 1421, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.k = load i64, ptr %i.a, align 8, !tbaa !197  ; 9 uses
  %i.l = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.n = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.p = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit41.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.q = shl nuw nsw i64 %i.k, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit41.loopexit.i ; 5 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.r, ptr %2, align 8, !tbaa !450
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.k ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !451
  %.pre12.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol

.lr.ph.i.split.us.i.i.i.i.i.i.prol:               ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol
  %.014.i.us.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.r, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i.prol, align 4, !tbaa !453
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 4
  store i8 1, ptr %i.t, align 4, !tbaa !454
  %i.u = add nsw i64 %.01113.i.us.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol, !llvm.loop !3034

.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit:      ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.014.i.us.i.i.i.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.01113.i.us.i.i.i.i.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.u, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.k, 8
  br i1 %i.w, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i

.lr.ph.i.split.us.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i
  %.014.i.us.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.014.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.01113.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i, align 4, !tbaa !453
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 4
  store i8 1, ptr %i.x, align 4, !tbaa !454
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 8
  store i32 12345, ptr %i.y, align 4, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 12
  store i8 1, ptr %i.z, align 4, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 16
  store i32 12345, ptr %i.aa, align 4, !tbaa !453
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 20
  store i8 1, ptr %i.ab, align 4, !tbaa !454
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 24
  store i32 12345, ptr %i.ac, align 4, !tbaa !453
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 28
  store i8 1, ptr %i.ad, align 4, !tbaa !454
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 32
  store i32 12345, ptr %i.ae, align 4, !tbaa !453
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 36
  store i8 1, ptr %i.af, align 4, !tbaa !454
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 40
  store i32 12345, ptr %i.ag, align 4, !tbaa !453
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 44
  store i8 1, ptr %i.ah, align 4, !tbaa !454
  %i.ai = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 48
  store i32 12345, ptr %i.ai, align 4, !tbaa !453
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 52
  store i8 1, ptr %i.aj, align 4, !tbaa !454
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 56
  store i32 12345, ptr %i.ak, align 4, !tbaa !453
  %i.al = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 60
  store i8 1, ptr %i.al, align 4, !tbaa !454
  %i.am = add nsw i64 %.01113.i.us.i.i.i.i.i.i, -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i.7 = icmp eq i64 %i.am, 0
  br i1 %.not.i.us.i.i.i.i.i.i.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i, !llvm.loop !64

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ], [ %i.an, %.lr.ph.i.split.us.i.i.i.i.i.i ]
  %i.ao = trunc i64 %i.k to i32                   ; 3 uses
  %i.ap = add i32 %.pre12.i.i, %i.ao              ; 2 uses
  %i.aq = add i32 %.pre13.i.i, %i.ao              ; 2 uses
  %i.ar = add i32 %.pre14.i.i, %i.ao
  store i32 %i.ap, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.aq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.ar, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.as = add nsw i32 %i.ap, -1
  %i.at = add nsw i32 %i.aq, -1
  %i.au = ptrtoint ptr %i.s to i64
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i
  %i.av = phi i64 [ 0, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.au, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ]
  %i.aw = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.r, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 8 uses
  %i.ax = phi i32 [ %i.n, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.at, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 3 uses
  %i.ay = phi i32 [ %i.l, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.as, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 3 uses
  %i.az = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %.lcssa, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 5 uses
  store ptr %i.az, ptr %i.e, align 8, !tbaa !455
  store i32 %i.ay, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.ax, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 0, ptr %3, align 8, !tbaa !457
  %i.ba = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.bb, %i.ba                    ; 4 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 6 uses
  %i.be = icmp ugt i64 %i.bd, 2
  br i1 %i.be, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %i.bf = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.bf, label %bb.e, label %.thread.i.i.i, !prof !212

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

.thread.i.i.i:                                    ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 4) ; 2 uses
  %i.bg = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #41
          to label %.noexc6.i.i unwind label %.loopexit82.i ; 2 uses

.noexc6.i.i:                                      ; preds = %.thread.i.i.i
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.g, align 8, !tbaa !198
  %i.bi = load i64, ptr %3, align 8, !tbaa !197
  %i.bj = or i64 %i.bi, 1
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  br label %.lr.ph.preheader.i.i.i.i

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.aw
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f, %.noexc6.i.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre.i, %.noexc6.i.i ], [ %i.ax, %bb.f ] ; 2 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre.i, %.noexc6.i.i ], [ %i.ay, %bb.f ]
  %i.bk = phi i64 [ %i.bj, %.noexc6.i.i ], [ 0, %bb.f ]
  %.010.i.i.i = phi ptr [ %i.bh, %.noexc6.i.i ], [ %i.f, %bb.f ] ; 3 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bl = icmp eq i64 %i.bc, 8
  br i1 %i.bl, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %i.bd, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.new
  %i.bm = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i.i.i.i.new ], [ %i.cf, %bb.i ] ; 2 uses
  %i.bn = phi ptr [ %i.aw, %.lr.ph.preheader.i.i.i.i.new ], [ %i.cg, %bb.i ] ; 5 uses
  %.012.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %i.ch, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i.i, i64 %.012.i.i.i.i ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !453
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !453
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.bs, ptr %i.bq, align 4, !tbaa !454
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %.lr.ph.i.i.i.i.1

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.bu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.bv = phi i32 [ %i.bu, %bb.g ], [ %i.bm, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i.i, i64 %.012.i.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !453
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !453
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 4, !tbaa !454
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.1
  %i.ce = add nsw i32 %i.bv, 1                    ; 2 uses
  store i32 %i.ce, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.1
  %i.cf = phi i32 [ %i.ce, %bb.h ], [ %i.bv, %.lr.ph.i.i.i.i.1 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.ch = add nuw i64 %.012.i.i.i.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !65

.loopexit82.i:                                    ; preds = %.thread.i.i.i
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit82.i
  %lpad.phi85.i = phi { ptr, i32 } [ %lpad.loopexit83.i, %.loopexit82.i ], [ %lpad.loopexit.split-lp84.i, %.loopexit.split-lp.i ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm2ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #36
  br label %.body.i

.loopexit.loopexit.i.unr-lcssa:                   ; preds = %bb.i
  %i.ci = and i64 %i.bc, 8
  %lcmp.mod35.not = icmp eq i64 %i.ci, 0
  br i1 %lcmp.mod35.not, label %.loopexit.loopexit.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %.epil.init = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cf, %.loopexit.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init34 = phi ptr [ %i.aw, %.lr.ph.preheader.i.i.i.i ], [ %i.cg, %.loopexit.loopexit.i.unr-lcssa ] ; 2 uses
  %.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.ch, %.loopexit.loopexit.i.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i.i, i64 %.012.i.i.i.i.epil.init ; 2 uses
  %i.ck = load i32, ptr %.epil.init34, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !453
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.epil.init34, i64 4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 4, !tbaa !454
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %.loopexit.loopexit.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.epil.preheader
  %i.cp = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.cp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i.i.i.epil.preheader, %bb.k, %.loopexit.loopexit.i.unr-lcssa
  %.lcssa30 = phi i32 [ %i.cf, %.loopexit.loopexit.i.unr-lcssa ], [ %i.cp, %bb.k ], [ %.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.cq = trunc i64 %i.bd to i32                  ; 2 uses
  %i.cr = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted.i, %i.cq
  %i.cs = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i, %i.cq ; 2 uses
  store i32 %i.cs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.cr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.f
  %i.ct = phi i32 [ %i.ax, %bb.f ], [ %.lcssa30, %.loopexit.loopexit.i ]
  %i.cu = phi i32 [ %i.ay, %bb.f ], [ %i.cs, %.loopexit.loopexit.i ]
  %i.cv = phi i64 [ 0, %bb.f ], [ %i.bk, %.loopexit.loopexit.i ]
  %i.cw = ashr exact i64 %i.bc, 2
  %i.cx = add i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %3, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 123, ptr %4, align 4, !tbaa !453
  store i8 1, ptr %i.h, align 4, !tbaa !454
  %i.cy = add nsw i32 %i.cu, 1
  store i32 %i.cy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.cz = add nsw i32 %i.ct, 1
  store i32 %i.cz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm2ESaIS4_EE6AssignINS1_16CopyValueAdapterIS5_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull align 4 dereferenceable(5) %4, i64 noundef 3)
          to label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm2ESaIS3_EE6assignEmRKS3_.exit.i unwind label %bb.o

_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm2ESaIS3_EE6assignEmRKS3_.exit.i: ; preds = %.loopexit.i
  %i.da = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dc = load i8, ptr %i.h, align 4, !tbaa !454, !range !189, !noundef !190
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.l, label %bb.m
end_hunk_6
begin_hunk_7_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal20CopyableOnlyInstanceELm2ESaIS6_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !473
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !472
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal20CopyableOnlyInstanceELm2ESaIS6_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !472
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !476
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !476
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !492
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !501
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !473
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !472
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !473
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !472
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !3284

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal20CopyableOnlyInstanceELm2ESaIS6_EEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !473  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !472  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3286

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !473
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !472 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !472
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !476
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !476
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !3299
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(5) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !3287

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !3303
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !3303
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !3303
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !3303 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !3303 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !3303 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !3303 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !3303
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_7
begin_hunk_8_@_ZN7testing8internal16ContainerPrinter10PrintValueIN4absl12lts_2026052613InlinedVectorINS4_13test_internal20CopyableOnlyInstanceELm2ESaIS7_EEEvEEvRKT_PSo:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !282
  %.not.i26 = icmp eq i64 %i.as, 0
  br i1 %.not.i26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25._crit_edge
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25._crit_edge
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.400, i64 noundef 7) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01945, i64 4
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %.loopexit

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28.peel
  call void @abort() #35
  unreachable

.thread38:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.263, i64 noundef 4) ; 0 uses
  br label %._crit_edge.thread53

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28
  %i.ba = load i32, ptr %.01945, align 4, !tbaa !453
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ba)
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.401, i64 noundef 1) ; 0 uses
  %i.bd = add nuw nsw i64 %.02044, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.01945, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.t
  br i1 %.not, label %._crit_edge.thread53, label %bb.g, !llvm.loop !3349

._crit_edge.thread53:                             ; preds = %bb.l, %bb.f, %.thread38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !198
  %i.bf = load ptr, ptr %1, align 8, !tbaa !169
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !282
  %.not.i29 = icmp eq i64 %i.bk, 0
  br i1 %.not.i29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread53
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31

bb.n:                                             ; preds = %._crit_edge.thread53
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1, !tbaa !198
  %i.bn = load ptr, ptr %1, align 8, !tbaa !169
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !282
  %.not.i32 = icmp eq i64 %i.bs, 0
  br i1 %.not.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34

bb.p:                                             ; preds = %._crit_edge.thread
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 125) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit34: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_158CountElemAssign_WithAllocationCopyableMovableInstance_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_158CountElemAssign_WithAllocationCopyableMovableInstance_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_158CountElemAssign_WithAllocationCopyableMovableInstance_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_158CountElemAssign_WithAllocationCopyableMovableInstance_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_158CountElemAssign_WithAllocationCopyableMovableInstance_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %2 = alloca %"class.std::vector.767", align 8   ; 8 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.772", align 8 ; 15 uses
  %4 = alloca %"class.absl::lts_20260526::test_internal::CopyableMovableInstance", align 4 ; 6 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.668", align 16 ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.3, i32 noundef 1421, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.k = load i64, ptr %i.a, align 8, !tbaa !197  ; 9 uses
  %i.l = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.n = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.p = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit34.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.q = shl nuw nsw i64 %i.k, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit34.loopexit.i ; 5 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.r, ptr %2, align 8, !tbaa !504
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.k ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !505
  %.pre12.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol

.lr.ph.i.split.us.i.i.i.i.i.i.prol:               ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol
  %.014.i.us.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.r, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i.prol, align 4, !tbaa !453
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 4
  store i8 1, ptr %i.t, align 4, !tbaa !454
  %i.u = add nsw i64 %.01113.i.us.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol, !llvm.loop !3350

.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit:      ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.014.i.us.i.i.i.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.01113.i.us.i.i.i.i.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.u, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.k, 8
  br i1 %i.w, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i

.lr.ph.i.split.us.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i
  %.014.i.us.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.014.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.01113.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i, align 4, !tbaa !453
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 4
  store i8 1, ptr %i.x, align 4, !tbaa !454
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 8
  store i32 12345, ptr %i.y, align 4, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 12
  store i8 1, ptr %i.z, align 4, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 16
  store i32 12345, ptr %i.aa, align 4, !tbaa !453
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 20
  store i8 1, ptr %i.ab, align 4, !tbaa !454
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 24
  store i32 12345, ptr %i.ac, align 4, !tbaa !453
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 28
  store i8 1, ptr %i.ad, align 4, !tbaa !454
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 32
  store i32 12345, ptr %i.ae, align 4, !tbaa !453
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 36
  store i8 1, ptr %i.af, align 4, !tbaa !454
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 40
  store i32 12345, ptr %i.ag, align 4, !tbaa !453
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 44
  store i8 1, ptr %i.ah, align 4, !tbaa !454
  %i.ai = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 48
  store i32 12345, ptr %i.ai, align 4, !tbaa !453
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 52
  store i8 1, ptr %i.aj, align 4, !tbaa !454
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 56
  store i32 12345, ptr %i.ak, align 4, !tbaa !453
  %i.al = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 60
  store i8 1, ptr %i.al, align 4, !tbaa !454
  %i.am = add nsw i64 %.01113.i.us.i.i.i.i.i.i, -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i.7 = icmp eq i64 %i.am, 0
  br i1 %.not.i.us.i.i.i.i.i.i.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i, !llvm.loop !78

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ], [ %i.an, %.lr.ph.i.split.us.i.i.i.i.i.i ]
  %i.ao = trunc i64 %i.k to i32                   ; 3 uses
  %i.ap = add i32 %.pre12.i.i, %i.ao              ; 2 uses
  %i.aq = add i32 %.pre13.i.i, %i.ao              ; 2 uses
  %i.ar = add i32 %.pre14.i.i, %i.ao
  store i32 %i.ap, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.aq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.ar, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.as = add nsw i32 %i.ap, -1
  %i.at = add nsw i32 %i.aq, -1
  %i.au = ptrtoint ptr %i.s to i64
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i
  %i.av = phi i64 [ 0, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.au, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ]
  %i.aw = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.r, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 8 uses
  %i.ax = phi i32 [ %i.n, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.at, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 3 uses
  %i.ay = phi i32 [ %i.l, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.as, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 3 uses
  %i.az = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %.lcssa, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 5 uses
  store ptr %i.az, ptr %i.e, align 8, !tbaa !506
  store i32 %i.ay, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.ax, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 0, ptr %3, align 8, !tbaa !508
  %i.ba = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.bb, %i.ba                    ; 4 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 6 uses
  %i.be = icmp ugt i64 %i.bd, 2
  br i1 %i.be, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %i.bf = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.bf, label %bb.e, label %.thread.i.i.i, !prof !212

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

.thread.i.i.i:                                    ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 4) ; 2 uses
  %i.bg = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #41
          to label %.noexc6.i.i unwind label %.loopexit75.i ; 2 uses

.noexc6.i.i:                                      ; preds = %.thread.i.i.i
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.g, align 8, !tbaa !198
  %i.bi = load i64, ptr %3, align 8, !tbaa !197
  %i.bj = or i64 %i.bi, 1
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  br label %.lr.ph.preheader.i.i.i.i

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.aw
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f, %.noexc6.i.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre.i, %.noexc6.i.i ], [ %i.ax, %bb.f ] ; 2 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre.i, %.noexc6.i.i ], [ %i.ay, %bb.f ]
  %i.bk = phi i64 [ %i.bj, %.noexc6.i.i ], [ 0, %bb.f ]
  %.010.i.i.i = phi ptr [ %i.bh, %.noexc6.i.i ], [ %i.f, %bb.f ] ; 3 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bl = icmp eq i64 %i.bc, 8
  br i1 %i.bl, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %i.bd, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.new
  %i.bm = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i.i.i.i.new ], [ %i.cf, %bb.i ] ; 2 uses
  %i.bn = phi ptr [ %i.aw, %.lr.ph.preheader.i.i.i.i.new ], [ %i.cg, %bb.i ] ; 5 uses
  %.012.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %i.ch, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i.i, i64 %.012.i.i.i.i ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !453
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !453
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.bs, ptr %i.bq, align 4, !tbaa !454
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %.lr.ph.i.i.i.i.1

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.bu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.bv = phi i32 [ %i.bu, %bb.g ], [ %i.bm, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i.i, i64 %.012.i.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !453
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !453
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 4, !tbaa !454
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.1
  %i.ce = add nsw i32 %i.bv, 1                    ; 2 uses
  store i32 %i.ce, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.1
  %i.cf = phi i32 [ %i.ce, %bb.h ], [ %i.bv, %.lr.ph.i.i.i.i.1 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.ch = add nuw i64 %.012.i.i.i.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !79

.loopexit75.i:                                    ; preds = %.thread.i.i.i
  %lpad.loopexit76.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp77.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit75.i
  %lpad.phi78.i = phi { ptr, i32 } [ %lpad.loopexit76.i, %.loopexit75.i ], [ %lpad.loopexit.split-lp77.i, %.loopexit.split-lp.i ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm2ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #36
  br label %.body.i

.loopexit.loopexit.i.unr-lcssa:                   ; preds = %bb.i
  %i.ci = and i64 %i.bc, 8
  %lcmp.mod35.not = icmp eq i64 %i.ci, 0
  br i1 %lcmp.mod35.not, label %.loopexit.loopexit.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %.epil.init = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cf, %.loopexit.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init34 = phi ptr [ %i.aw, %.lr.ph.preheader.i.i.i.i ], [ %i.cg, %.loopexit.loopexit.i.unr-lcssa ] ; 2 uses
  %.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.ch, %.loopexit.loopexit.i.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i.i, i64 %.012.i.i.i.i.epil.init ; 2 uses
  %i.ck = load i32, ptr %.epil.init34, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !453
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.epil.init34, i64 4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 4, !tbaa !454
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %.loopexit.loopexit.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.epil.preheader
  %i.cp = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.cp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i.i.i.epil.preheader, %bb.k, %.loopexit.loopexit.i.unr-lcssa
  %.lcssa30 = phi i32 [ %i.cf, %.loopexit.loopexit.i.unr-lcssa ], [ %i.cp, %bb.k ], [ %.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.cq = trunc i64 %i.bd to i32                  ; 2 uses
  %i.cr = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted.i, %i.cq
  %i.cs = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i, %i.cq ; 2 uses
  store i32 %i.cs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.cr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.f
  %i.ct = phi i32 [ %i.ax, %bb.f ], [ %.lcssa30, %.loopexit.loopexit.i ]
  %i.cu = phi i32 [ %i.ay, %bb.f ], [ %i.cs, %.loopexit.loopexit.i ]
  %i.cv = phi i64 [ 0, %bb.f ], [ %i.bk, %.loopexit.loopexit.i ]
  %i.cw = ashr exact i64 %i.bc, 2
  %i.cx = add i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %3, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 123, ptr %4, align 4, !tbaa !453
  store i8 1, ptr %i.h, align 4, !tbaa !454
  %i.cy = add nsw i32 %i.cu, 1
  store i32 %i.cy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.cz = add nsw i32 %i.ct, 1
  store i32 %i.cz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm2ESaIS4_EE6AssignINS1_16CopyValueAdapterIS5_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull align 4 dereferenceable(5) %4, i64 noundef 3)
          to label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm2ESaIS3_EE6assignEmRKS3_.exit.i unwind label %bb.o

_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm2ESaIS3_EE6assignEmRKS3_.exit.i: ; preds = %.loopexit.i
  %i.da = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dc = load i8, ptr %i.h, align 4, !tbaa !454, !range !189, !noundef !190
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.l, label %bb.m
end_hunk_8
begin_hunk_9_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm2ESaIS6_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !524
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !523
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm2ESaIS6_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !523
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !527
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !527
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !543
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !545
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !524
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !523
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !524
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !523
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !3582

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm2ESaIS6_EEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !524  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !523  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3584

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !524
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !523 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !523
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !527
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !527
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !546
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(5) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !93

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !3595)
  call void @llvm.experimental.noalias.scope.decl(metadata !3596)
  call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !3598
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !3598
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !3598
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !3598 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !3598 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !3598 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !3598 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !3598
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_9
begin_hunk_10_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm3ESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !347
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm3ESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !348
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !350
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !339
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !347
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !3792

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm3ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !347  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3794

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !347 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !351
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !37

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !3805)
  call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  call void @llvm.experimental.noalias.scope.decl(metadata !3807)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !3808
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !3808
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !3808
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !3808 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !3808 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !3808 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !3808 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !3808
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_10
begin_hunk_11_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !347
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !348
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !350
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !339
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !347
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !3975

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm4ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !347  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3977

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !347 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !343
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !351
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !37

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !3988)
  call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  call void @llvm.experimental.noalias.scope.decl(metadata !3990)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !3991
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !3991
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !3991
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !3991 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !3991 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !3991 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !3991 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !3991
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_11
begin_hunk_12_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2ESaISA_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !410
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !418
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2ESaISA_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !418
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !414
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !414
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !419
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !421
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !410
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !418
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !410
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !418
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !4224

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2ESaISA_EEEE15MatchAndExplainESE_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !410  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !418  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4226

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !410
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !418 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !414
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !414
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !422
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !54

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !4237)
  call void @llvm.experimental.noalias.scope.decl(metadata !4238)
  call void @llvm.experimental.noalias.scope.decl(metadata !4239)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !4240
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !4240
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !4240
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !4240 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !4240 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !4240 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !4240 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !4240
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_12
begin_hunk_13_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !524
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !523
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !523
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !527
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !527
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !543
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !545
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !524
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !523
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !524
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !523
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !4445

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorINS3_13test_internal23CopyableMovableInstanceELm1ESaIS6_EEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !524  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !523  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4447

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = load i64, ptr %1, align 8, !tbaa !197   ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr %i.al   ; 3 uses
  %.not195 = icmp ult i64 %i.aj, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.an, %.lr.ph ], [ %i.ej, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.w ] ; 8 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !524
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !523 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bp
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ap)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !523
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %storemerge196 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !527
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bu)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !527
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !546
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(5) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !93

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !4458)
  call void @llvm.experimental.noalias.scope.decl(metadata !4459)
  call void @llvm.experimental.noalias.scope.decl(metadata !4460)
  store ptr %i.as, ptr %11, align 8, !tbaa !196, !alias.scope !4461
  store i64 0, ptr %i.at, align 8, !tbaa !199, !alias.scope !4461
  store i8 0, ptr %i.as, align 8, !tbaa !198, !alias.scope !4461
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !229, !noalias !4461 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.av, align 8, !noalias !4461 ; 2 uses
  %i.cd = icmp ugt ptr %i.cb, %i.cc
  %.08.i.i.i.i = select i1 %i.cd, ptr %i.cb, ptr %i.cc ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !230, !noalias !4461 ; 2 uses
  %i.cf = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.ch)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !4461 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !198, !alias.scope !4461
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.co = load ptr, ptr %9, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %storemerge196 ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !195 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.as                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %11, %i.cp
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !198
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !199 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !195
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !195
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !199
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !199
  %i.de = load i64, ptr %i.as, align 8, !tbaa !198
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !198
  br label %bb.p
end_hunk_13
begin_hunk_14_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !198
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.325, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !347
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.319, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.252, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !348
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !350
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.325, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !339
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !347
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !5109

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613InlinedVectorIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !347  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #41 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !208
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !199
  store i8 0, ptr %i.q, align 8, !tbaa !198
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !5111

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !199
  store i8 0, ptr %i.v, align 8, !tbaa !198
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !196
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !199
  store i8 0, ptr %i.y, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !199
  store i8 0, ptr %i.ab, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !199
  store i8 0, ptr %i.ae, align 8, !tbaa !198
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !197 ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = select i1 %i.al, ptr %i.an, ptr %i.am   ; 3 uses
  %.not195 = icmp ult i64 %i.ak, 2
  br i1 %.not195, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.az = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bb = getelementptr i8, ptr %i.az, i64 -24
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047197 = phi ptr [ %i.ao, %.lr.ph ], [ %i.ek, %bb.w ] ; 6 uses
  %storemerge196 = phi i64 [ 0, %.lr.ph ], [ %i.el, %bb.w ] ; 8 uses
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !347 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 24
  %.not62 = icmp eq i64 %storemerge196, %i.bq
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !254
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.aq)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %storemerge196 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !343
  %i.bv = icmp ne ptr %i.bu, null
  %i.bw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bv)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.255, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !343
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !351
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %.047197, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !37

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !5122)
  call void @llvm.experimental.noalias.scope.decl(metadata !5123)
  call void @llvm.experimental.noalias.scope.decl(metadata !5124)
  store ptr %i.at, ptr %11, align 8, !tbaa !196, !alias.scope !5125
  store i64 0, ptr %i.au, align 8, !tbaa !199, !alias.scope !5125
  store i8 0, ptr %i.at, align 8, !tbaa !198, !alias.scope !5125
  %i.cc = load ptr, ptr %i.av, align 8, !tbaa !229, !noalias !5125 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cc, null
  %i.cd = load ptr, ptr %i.aw, align 8, !noalias !5125 ; 2 uses
  %i.ce = icmp ugt ptr %i.cc, %i.cd
  %.08.i.i.i.i = select i1 %i.ce, ptr %i.cc, ptr %i.cd ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cf = load ptr, ptr %i.ax, align 8, !tbaa !230, !noalias !5125 ; 2 uses
  %i.cg = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cf, i64 noundef %i.ci)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %11, align 8, !tbaa !195, !alias.scope !5125 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.at
  br i1 %i.cm, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cn = load i64, ptr %i.at, align 8, !tbaa !198, !alias.scope !5125
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #39
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cp = load ptr, ptr %9, align 8, !tbaa !206
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %storemerge196 ; 9 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !195 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 4 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  %i.cu = load ptr, ptr %11, align 8, !tbaa !195  ; 6 uses
  %i.cv = icmp eq ptr %i.cu, %i.at                ; 2 uses
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cv, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cv, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cw = load i64, ptr %i.au, align 8, !tbaa !199 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %.not21.i = icmp eq ptr %11, %i.cq
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !212

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cw, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !198
  store i8 %i.cy, ptr %i.cr, align 1, !tbaa !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cz = load i64, ptr %i.au, align 8, !tbaa !199 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !199
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !195
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 0, ptr %i.dc, align 1, !tbaa !198
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !195
  %i.de = load i64, ptr %i.au, align 8, !tbaa !199
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !199
  %i.df = load i64, ptr %i.at, align 8, !tbaa !198
  store i64 %i.df, ptr %i.cs, align 8, !tbaa !198
end_hunk_14
begin_hunk_15_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_44CountConstructorsDestructorsOnMoveAssignmentIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a

bb.ka:                                            ; preds = %bb.jz
  call void @abort() #35
  unreachable

bb.kb:                                            ; preds = %bb.jz
  %i.aky = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.not1.i373 = icmp eq i32 %i.aky, %i.v
  br i1 %.not1.i373, label %_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit374, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  call void @abort() #35
  unreachable

_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit374: ; preds = %bb.kb
  resume { ptr, i32 } %.pn113.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %5 = alloca %"class.testing::Matcher.720", align 8 ; 9 uses
  %6 = alloca %"class.testing::Matcher.720", align 8 ; 9 uses
  %7 = alloca %"class.std::vector.711", align 8   ; 14 uses
  %8 = alloca %"class.testing::Matcher.694", align 8 ; 9 uses
  %9 = alloca %"class.testing::Matcher.694", align 8 ; 9 uses
  %10 = alloca %"class.std::vector.698", align 16 ; 13 uses
  %11 = alloca %"class.std::vector.698", align 8  ; 4 uses
  %12 = alloca %"class.testing::Matcher.694", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %14 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %18 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %19 = alloca %"class.std::vector.656", align 8  ; 9 uses
  %20 = alloca %"class.absl::lts_20260526::InlinedVector.661", align 8 ; 16 uses
  %21 = alloca %"class.absl::lts_20260526::test_internal::CopyableOnlyInstance", align 4 ; 6 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24    ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 -24    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull @.str.3, i32 noundef 1403, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !197 ; 9 uses
  %i.bi = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bk = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bm = icmp ugt i64 %i.bh, 1152921504606846975
  br i1 %i.bm, label %bb.d, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit44.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bn = shl nuw nsw i64 %i.bh, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit44.loopexit ; 5 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i:            ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.bo, ptr %19, align 8, !tbaa !450
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bh
  store ptr %i.bp, ptr %i.d, align 8, !tbaa !451
  %.pre12.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter = and i64 %i.bh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.prol

.lr.ph.i.split.us.i.i.i.i.i.prol:                 ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i, %.lr.ph.i.split.us.i.i.i.i.i.prol
  %.014.i.us.i.i.i.i.i.prol = phi ptr [ %i.bs, %.lr.ph.i.split.us.i.i.i.i.i.prol ], [ %i.bo, %.lr.ph.i.split.us.i.i.i.i.preheader.i ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.split.us.i.i.i.i.i.prol ], [ %i.bh, %.lr.ph.i.split.us.i.i.i.i.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.prol, align 4, !tbaa !453
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.prol, i64 4
  store i8 1, ptr %i.bq, align 4, !tbaa !454
  %i.br = add nsw i64 %.01113.i.us.i.i.i.i.i.prol, -1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.prol, !llvm.loop !6785

.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit:        ; preds = %.lr.ph.i.split.us.i.i.i.i.i.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i ], [ %i.bs, %.lr.ph.i.split.us.i.i.i.i.i.prol ]
  %.014.i.us.i.i.i.i.i.unr = phi ptr [ %i.bo, %.lr.ph.i.split.us.i.i.i.i.preheader.i ], [ %i.bs, %.lr.ph.i.split.us.i.i.i.i.i.prol ]
  %.01113.i.us.i.i.i.i.i.unr = phi i64 [ %i.bh, %.lr.ph.i.split.us.i.i.i.i.preheader.i ], [ %i.br, %.lr.ph.i.split.us.i.i.i.i.i.prol ]
  %i.bt = icmp ult i64 %i.bh, 8
  br i1 %i.bt, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i

.lr.ph.i.split.us.i.i.i.i.i:                      ; preds = %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i
  %.014.i.us.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.split.us.i.i.i.i.i ], [ %.014.i.us.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.split.us.i.i.i.i.i ], [ %.01113.i.us.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i, align 4, !tbaa !453
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 4
  store i8 1, ptr %i.bu, align 4, !tbaa !454
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 8
  store i32 12345, ptr %i.bv, align 4, !tbaa !453
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 12
  store i8 1, ptr %i.bw, align 4, !tbaa !454
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 16
  store i32 12345, ptr %i.bx, align 4, !tbaa !453
  %i.by = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 20
  store i8 1, ptr %i.by, align 4, !tbaa !454
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 24
  store i32 12345, ptr %i.bz, align 4, !tbaa !453
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 28
  store i8 1, ptr %i.ca, align 4, !tbaa !454
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 32
  store i32 12345, ptr %i.cb, align 4, !tbaa !453
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 36
  store i8 1, ptr %i.cc, align 4, !tbaa !454
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 40
  store i32 12345, ptr %i.cd, align 4, !tbaa !453
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 44
  store i8 1, ptr %i.ce, align 4, !tbaa !454
  %i.cf = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 48
  store i32 12345, ptr %i.cf, align 4, !tbaa !453
  %i.cg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 52
  store i8 1, ptr %i.cg, align 4, !tbaa !454
  %i.ch = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 56
  store i32 12345, ptr %i.ch, align 4, !tbaa !453
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 60
  store i8 1, ptr %i.ci, align 4, !tbaa !454
  %i.cj = add nsw i64 %.01113.i.us.i.i.i.i.i, -8  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.7 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.us.i.i.i.i.i.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i, !llvm.loop !64

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit: ; preds = %.lr.ph.i.split.us.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit ], [ %i.ck, %.lr.ph.i.split.us.i.i.i.i.i ]
  %i.cl = trunc i64 %i.bh to i32                  ; 3 uses
  %i.cm = add i32 %.pre12.i, %i.cl                ; 2 uses
  %i.cn = add i32 %.pre13.i, %i.cl                ; 2 uses
  %i.co = add i32 %.pre14.i, %i.cl
  store i32 %i.cm, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.cn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.co, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.cp = add nsw i32 %i.cm, -1
  %i.cq = add nsw i32 %i.cn, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.cr = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.bo, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 4 uses
  %i.cs = phi i32 [ %i.bk, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.cq, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 3 uses
  %i.ct = phi i32 [ %i.bi, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.cp, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %.lcssa, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !455
  store i32 %i.ct, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.cs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  store i64 0, ptr %20, align 8, !tbaa !457
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.cw = sub i64 %i.cv, %i.cu                    ; 4 uses
  %i.cx = ashr exact i64 %i.cw, 3                 ; 5 uses
  %i.cy = icmp ugt i64 %i.cx, 2
  br i1 %i.cy, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit
  %i.cz = icmp ugt i64 %i.cx, 1152921504606846975
  br i1 %i.cz, label %bb.f, label %.thread.i.i, !prof !212

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.f
  unreachable

.thread.i.i:                                      ; preds = %bb.e
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cx, i64 4) ; 2 uses
  %i.da = shl nuw nsw i64 %.sroa.speculated.i.i.i, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #41
          to label %.noexc6.i unwind label %.loopexit85 ; 2 uses

.noexc6.i:                                        ; preds = %.thread.i.i
  store ptr %i.db, ptr %i.f, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i.i, ptr %i.g, align 8, !tbaa !198
  %i.dc = load i64, ptr %20, align 8, !tbaa !197
  %i.dd = or i64 %i.dc, 1
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  br label %.lr.ph.preheader.i.i.i

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit
  %.not.i.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i, %i.cr
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g, %.noexc6.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre, %.noexc6.i ], [ %i.cs, %bb.g ] ; 2 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre, %.noexc6.i ], [ %i.ct, %bb.g ] ; 2 uses
  %i.de = phi i64 [ %i.dd, %.noexc6.i ], [ 0, %bb.g ]
  %.010.i.i = phi ptr [ %i.db, %.noexc6.i ], [ %i.f, %bb.g ] ; 3 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 2 uses
  %i.df = icmp eq i64 %i.cw, 8
  br i1 %i.df, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.cx, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.preheader.i.i.i.new
  %i.dg = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted, %.lr.ph.preheader.i.i.i.new ], [ %i.ed, %bb.j ]
  %i.dh = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.preheader.i.i.i.new ], [ %i.ec, %bb.j ] ; 2 uses
  %i.di = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %.lr.ph.preheader.i.i.i.new ], [ %i.dz, %bb.j ]
  %i.dj = phi ptr [ %i.cr, %.lr.ph.preheader.i.i.i.new ], [ %i.ee, %bb.j ] ; 5 uses
  %.012.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ef, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %bb.j ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i, i64 %.012.i.i.i ; 2 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !453
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !453
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.do, ptr %i.dm, align 4, !tbaa !454
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.h, label %.lr.ph.i.i.i.1

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.dq = add nsw i32 %i.dh, 1                    ; 2 uses
  store i32 %i.dq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.h, %.lr.ph.i.i.i
  %i.dr = phi i32 [ %i.dq, %bb.h ], [ %i.dh, %.lr.ph.i.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i, i64 %.012.i.i.i ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !453
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !453
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.dy, ptr %i.dw, align 4, !tbaa !454
  %i.dz = add nsw i32 %i.di, 2                    ; 3 uses
  %i.ea = trunc nuw i8 %i.dy to i1
  br i1 %i.ea, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.1
  %i.eb = add nsw i32 %i.dr, 1                    ; 2 uses
  store i32 %i.eb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.1
  %i.ec = phi i32 [ %i.eb, %bb.i ], [ %i.dr, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.ed = add nsw i32 %i.dg, 2                    ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.ef = add nuw i64 %.012.i.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !65

.loopexit85:                                      ; preds = %.thread.i.i
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit85
  %lpad.phi88 = phi { ptr, i32 } [ %lpad.loopexit86, %.loopexit85 ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm2ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #36
  br label %.body

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %i.eg = and i64 %i.cw, 8
  %lcmp.mod365.not = icmp eq i64 %i.eg, 0
  br i1 %lcmp.mod365.not, label %.loopexit.loopexit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.epil.init = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted, %.lr.ph.preheader.i.i.i ], [ %i.ed, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init360 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.preheader.i.i.i ], [ %i.ec, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init362 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %.lr.ph.preheader.i.i.i ], [ %i.dz, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init364 = phi ptr [ %i.cr, %.lr.ph.preheader.i.i.i ], [ %i.ee, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ef, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod369 = trunc i64 %i.cx to i1
  call void @llvm.assume(i1 %lcmp.mod369)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i, i64 %.012.i.i.i.epil.init ; 2 uses
  %i.ei = load i32, ptr %.epil.init364, align 4, !tbaa !453
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !453
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.epil.init364, i64 4
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.el, ptr %i.ej, align 4, !tbaa !454
  %i.em = add nsw i32 %.epil.init362, 1
  %i.en = trunc nuw i8 %i.el to i1
  br i1 %i.en, label %bb.l, label %.loopexit.loopexit.epilog-lcssa

bb.l:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.eo = add nsw i32 %.epil.init360, 1           ; 2 uses
  store i32 %i.eo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.l, %.lr.ph.i.i.i.epil.preheader
  %i.ep = phi i32 [ %i.eo, %bb.l ], [ %.epil.init360, %.lr.ph.i.i.i.epil.preheader ]
  %i.eq = add nsw i32 %.epil.init, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.loopexit.loopexit.epilog-lcssa
  %.lcssa329 = phi i32 [ %i.ec, %.loopexit.loopexit.unr-lcssa ], [ %i.ep, %.loopexit.loopexit.epilog-lcssa ]
  %.lcssa328 = phi i32 [ %i.ed, %.loopexit.loopexit.unr-lcssa ], [ %i.eq, %.loopexit.loopexit.epilog-lcssa ]
  %.lcssa327 = phi i32 [ %i.dz, %.loopexit.loopexit.unr-lcssa ], [ %i.em, %.loopexit.loopexit.epilog-lcssa ] ; 2 uses
  store i32 %.lcssa327, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %.lcssa328, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.er = phi i32 [ %i.cs, %bb.g ], [ %.lcssa329, %.loopexit.loopexit ]
  %i.es = phi i32 [ %i.ct, %bb.g ], [ %.lcssa327, %.loopexit.loopexit ]
  %i.et = phi i64 [ 0, %bb.g ], [ %i.de, %.loopexit.loopexit ]
  %i.eu = ashr exact i64 %i.cw, 2
  %i.ev = add i64 %i.et, %i.eu
  store i64 %i.ev, ptr %20, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  store i32 123, ptr %21, align 4, !tbaa !453
  store i8 1, ptr %i.h, align 4, !tbaa !454
  %i.ew = add nsw i32 %i.es, 1
  store i32 %i.ew, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ex = add nsw i32 %i.er, 1
  store i32 %i.ex, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm2ESaIS4_EE6AssignINS1_16CopyValueAdapterIS5_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull align 4 dereferenceable(5) %21, i64 noundef 2)
end_hunk_15
begin_hunk_16_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv:bb.a
  br i1 %i.si, label %bb.c, label %bb.b, !llvm.loop !6865

bb.dp:                                            ; preds = %bb.dj, %.body42, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit45
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.dj ], [ %.pn21.pn.pn, %.body42 ], [ %i.pi, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit45 ]
  call void @_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm2ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #36
  br label %.body

.body:                                            ; preds = %bb.k, %bb.dp
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.dp ], [ %lpad.phi88, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  call void @_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #36
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit44, %.body
  %.pn25.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn.pn, %.body ], [ %lpad.phi, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_28CountElemAssignInlineBackingIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.806", align 8   ; 12 uses
  %6 = alloca %"class.testing::Matcher.789", align 8 ; 9 uses
  %7 = alloca %"class.testing::Matcher.789", align 8 ; 9 uses
  %8 = alloca %"class.std::vector.793", align 16  ; 13 uses
  %9 = alloca %"class.std::vector.793", align 8   ; 4 uses
  %10 = alloca %"class.testing::Matcher.789", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %12 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %16 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %17 = alloca %"class.std::vector.767", align 8  ; 9 uses
  %18 = alloca %"class.absl::lts_20260526::InlinedVector.772", align 8 ; 16 uses
  %19 = alloca %"class.absl::lts_20260526::test_internal::CopyableMovableInstance", align 4 ; 6 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.1504", align 8 ; 6 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ak = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 -24    ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 -24    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull @.str.3, i32 noundef 1403, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !197 ; 9 uses
  %i.be = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bg = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bi = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.bi, label %bb.d, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit38.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bj = shl nuw nsw i64 %i.bd, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit38.loopexit ; 5 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i:            ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.bk, ptr %17, align 8, !tbaa !504
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bd
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !505
  %.pre12.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter = and i64 %i.bd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.prol

.lr.ph.i.split.us.i.i.i.i.i.prol:                 ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i, %.lr.ph.i.split.us.i.i.i.i.i.prol
  %.014.i.us.i.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.split.us.i.i.i.i.i.prol ], [ %i.bk, %.lr.ph.i.split.us.i.i.i.i.preheader.i ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.split.us.i.i.i.i.i.prol ], [ %i.bd, %.lr.ph.i.split.us.i.i.i.i.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.split.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.prol, align 4, !tbaa !453
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.prol, i64 4
  store i8 1, ptr %i.bm, align 4, !tbaa !454
  %i.bn = add nsw i64 %.01113.i.us.i.i.i.i.i.prol, -1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.prol, !llvm.loop !6921

.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit:        ; preds = %.lr.ph.i.split.us.i.i.i.i.i.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i ], [ %i.bo, %.lr.ph.i.split.us.i.i.i.i.i.prol ]
  %.014.i.us.i.i.i.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.split.us.i.i.i.i.preheader.i ], [ %i.bo, %.lr.ph.i.split.us.i.i.i.i.i.prol ]
  %.01113.i.us.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.split.us.i.i.i.i.preheader.i ], [ %i.bn, %.lr.ph.i.split.us.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.bd, 8
  br i1 %i.bp, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i

.lr.ph.i.split.us.i.i.i.i.i:                      ; preds = %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i
  %.014.i.us.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.split.us.i.i.i.i.i ], [ %.014.i.us.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.split.us.i.i.i.i.i ], [ %.01113.i.us.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i, align 4, !tbaa !453
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 4
  store i8 1, ptr %i.bq, align 4, !tbaa !454
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 8
  store i32 12345, ptr %i.br, align 4, !tbaa !453
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 12
  store i8 1, ptr %i.bs, align 4, !tbaa !454
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 16
  store i32 12345, ptr %i.bt, align 4, !tbaa !453
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 20
  store i8 1, ptr %i.bu, align 4, !tbaa !454
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 24
  store i32 12345, ptr %i.bv, align 4, !tbaa !453
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 28
  store i8 1, ptr %i.bw, align 4, !tbaa !454
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 32
  store i32 12345, ptr %i.bx, align 4, !tbaa !453
  %i.by = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 36
  store i8 1, ptr %i.by, align 4, !tbaa !454
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 40
  store i32 12345, ptr %i.bz, align 4, !tbaa !453
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 44
  store i8 1, ptr %i.ca, align 4, !tbaa !454
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 48
  store i32 12345, ptr %i.cb, align 4, !tbaa !453
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 52
  store i8 1, ptr %i.cc, align 4, !tbaa !454
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 56
  store i32 12345, ptr %i.cd, align 4, !tbaa !453
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 60
  store i8 1, ptr %i.ce, align 4, !tbaa !454
  %i.cf = add nsw i64 %.01113.i.us.i.i.i.i.i, -8  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.7 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.us.i.i.i.i.i.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i, !llvm.loop !78

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit: ; preds = %.lr.ph.i.split.us.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.split.us.i.i.i.i.i.prol.loopexit ], [ %i.cg, %.lr.ph.i.split.us.i.i.i.i.i ]
  %i.ch = trunc i64 %i.bd to i32                  ; 3 uses
  %i.ci = add i32 %.pre12.i, %i.ch                ; 2 uses
  %i.cj = add i32 %.pre13.i, %i.ch                ; 2 uses
  %i.ck = add i32 %.pre14.i, %i.ch
  store i32 %i.ci, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.cj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.ck, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.cl = add nsw i32 %i.ci, -1
  %i.cm = add nsw i32 %i.cj, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.cn = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.bk, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 4 uses
  %i.co = phi i32 [ %i.bg, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.cm, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 3 uses
  %i.cp = phi i32 [ %i.be, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.cl, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %.lcssa, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !506
  store i32 %i.cp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.co, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  store i64 0, ptr %18, align 8, !tbaa !508
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.cs = sub i64 %i.cr, %i.cq                    ; 4 uses
  %i.ct = ashr exact i64 %i.cs, 3                 ; 5 uses
  %i.cu = icmp ugt i64 %i.ct, 2
  br i1 %i.cu, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit
  %i.cv = icmp ugt i64 %i.ct, 1152921504606846975
  br i1 %i.cv, label %bb.f, label %.thread.i.i, !prof !212

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.f
  unreachable

.thread.i.i:                                      ; preds = %bb.e
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ct, i64 4) ; 2 uses
  %i.cw = shl nuw nsw i64 %.sroa.speculated.i.i.i, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #41
          to label %.noexc6.i unwind label %.loopexit76 ; 2 uses

.noexc6.i:                                        ; preds = %.thread.i.i
  store ptr %i.cx, ptr %i.f, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i.i, ptr %i.g, align 8, !tbaa !198
  %i.cy = load i64, ptr %18, align 8, !tbaa !197
  %i.cz = or i64 %i.cy, 1
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  br label %.lr.ph.preheader.i.i.i

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit
  %.not.i.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i, %i.cn
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g, %.noexc6.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.pre, %.noexc6.i ], [ %i.co, %bb.g ] ; 2 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.pre, %.noexc6.i ], [ %i.cp, %bb.g ] ; 2 uses
  %i.da = phi i64 [ %i.cz, %.noexc6.i ], [ 0, %bb.g ]
  %.010.i.i = phi ptr [ %i.cx, %.noexc6.i ], [ %i.f, %bb.g ] ; 3 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 2 uses
  %i.db = icmp eq i64 %i.cs, 8
  br i1 %i.db, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.ct, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.preheader.i.i.i.new
  %i.dc = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted, %.lr.ph.preheader.i.i.i.new ], [ %i.dz, %bb.j ]
  %i.dd = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.preheader.i.i.i.new ], [ %i.dy, %bb.j ] ; 2 uses
  %i.de = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %.lr.ph.preheader.i.i.i.new ], [ %i.dv, %bb.j ]
  %i.df = phi ptr [ %i.cn, %.lr.ph.preheader.i.i.i.new ], [ %i.ea, %bb.j ] ; 5 uses
  %.012.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.eb, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %bb.j ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i, i64 %.012.i.i.i ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !453
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !453
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.dk, ptr %i.di, align 4, !tbaa !454
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.h, label %.lr.ph.i.i.i.1

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = add nsw i32 %i.dd, 1                    ; 2 uses
  store i32 %i.dm, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.h, %.lr.ph.i.i.i
  %i.dn = phi i32 [ %i.dm, %bb.h ], [ %i.dd, %.lr.ph.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i, i64 %.012.i.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !453
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !453
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.du, ptr %i.ds, align 4, !tbaa !454
  %i.dv = add nsw i32 %i.de, 2                    ; 3 uses
  %i.dw = trunc nuw i8 %i.du to i1
  br i1 %i.dw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.1
  %i.dx = add nsw i32 %i.dn, 1                    ; 2 uses
  store i32 %i.dx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.1
  %i.dy = phi i32 [ %i.dx, %bb.i ], [ %i.dn, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.dz = add nsw i32 %i.dc, 2                    ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.eb = add nuw i64 %.012.i.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !79

.loopexit76:                                      ; preds = %.thread.i.i
  %lpad.loopexit77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit76
  %lpad.phi79 = phi { ptr, i32 } [ %lpad.loopexit77, %.loopexit76 ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm2ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #36
  br label %.body

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %i.ec = and i64 %i.cs, 8
  %lcmp.mod345.not = icmp eq i64 %i.ec, 0
  br i1 %lcmp.mod345.not, label %.loopexit.loopexit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.epil.init = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted, %.lr.ph.preheader.i.i.i ], [ %i.dz, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init340 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.preheader.i.i.i ], [ %i.dy, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init342 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %.lr.ph.preheader.i.i.i ], [ %i.dv, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init344 = phi ptr [ %i.cn, %.lr.ph.preheader.i.i.i ], [ %i.ea, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.eb, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod349 = trunc i64 %i.ct to i1
  call void @llvm.assume(i1 %lcmp.mod349)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.010.i.i, i64 %.012.i.i.i.epil.init ; 2 uses
  %i.ee = load i32, ptr %.epil.init344, align 4, !tbaa !453
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !453
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.epil.init344, i64 4
  %i.eh = load i8, ptr %i.eg, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.eh, ptr %i.ef, align 4, !tbaa !454
  %i.ei = add nsw i32 %.epil.init342, 1
  %i.ej = trunc nuw i8 %i.eh to i1
  br i1 %i.ej, label %bb.l, label %.loopexit.loopexit.epilog-lcssa

bb.l:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ek = add nsw i32 %.epil.init340, 1           ; 2 uses
  store i32 %i.ek, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.l, %.lr.ph.i.i.i.epil.preheader
  %i.el = phi i32 [ %i.ek, %bb.l ], [ %.epil.init340, %.lr.ph.i.i.i.epil.preheader ]
  %i.em = add nsw i32 %.epil.init, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.loopexit.loopexit.epilog-lcssa
  %.lcssa309 = phi i32 [ %i.dy, %.loopexit.loopexit.unr-lcssa ], [ %i.el, %.loopexit.loopexit.epilog-lcssa ]
  %.lcssa308 = phi i32 [ %i.dz, %.loopexit.loopexit.unr-lcssa ], [ %i.em, %.loopexit.loopexit.epilog-lcssa ]
  %.lcssa307 = phi i32 [ %i.dv, %.loopexit.loopexit.unr-lcssa ], [ %i.ei, %.loopexit.loopexit.epilog-lcssa ] ; 2 uses
  store i32 %.lcssa307, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %.lcssa308, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.en = phi i32 [ %i.co, %bb.g ], [ %.lcssa309, %.loopexit.loopexit ]
  %i.eo = phi i32 [ %i.cp, %bb.g ], [ %.lcssa307, %.loopexit.loopexit ]
  %i.ep = phi i64 [ 0, %bb.g ], [ %i.da, %.loopexit.loopexit ]
  %i.eq = ashr exact i64 %i.cs, 2
  %i.er = add i64 %i.ep, %i.eq
  store i64 %i.er, ptr %18, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  store i32 123, ptr %19, align 4, !tbaa !453
  store i8 1, ptr %i.h, align 4, !tbaa !454
  %i.es = add nsw i32 %i.eo, 1
  store i32 %i.es, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.et = add nsw i32 %i.en, 1
  store i32 %i.et, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm2ESaIS4_EE6AssignINS1_16CopyValueAdapterIS5_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr nonnull align 4 dereferenceable(5) %19, i64 noundef 2)
end_hunk_16
begin_hunk_17_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv
define internal void @_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %8 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %9 = alloca %"class.absl::lts_20260526::InlinedVector.1552", align 8 ; 18 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 9 uses
  %30 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %31 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %32 = alloca %"class.absl::lts_20260526::InlinedVector.1552", align 8 ; 18 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %52 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.o = alloca i64, align 8                      ; 9 uses
  %53 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %54 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %55 = alloca %"class.std::__cxx11::list", align 16 ; 17 uses
  %56 = alloca %"class.absl::lts_20260526::InlinedVector.1552", align 8 ; 18 uses
  %57 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %58 = alloca %"class.testing::Message", align 8 ; 7 uses
  %59 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %60 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %66 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %67 = alloca %"class.testing::Message", align 8 ; 7 uses
  %68 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %69 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %76 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.v = alloca i64, align 8                      ; 9 uses
  %77 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %78 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %79 = alloca %"class.std::__cxx11::list", align 16 ; 17 uses
  %80 = alloca %"class.absl::lts_20260526::InlinedVector.1552", align 8 ; 18 uses
  %81 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %82 = alloca %"class.testing::Message", align 8 ; 7 uses
  %83 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %84 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %85 = alloca %"class.testing::Message", align 8 ; 7 uses
  %86 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %87 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %88 = alloca %"class.testing::Message", align 8 ; 7 uses
  %89 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %90 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %91 = alloca %"class.testing::Message", align 8 ; 7 uses
  %92 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %93 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %96 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %97 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %98 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #36
  call void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %95, ptr noundef nonnull @.str.3, i32 noundef 1607, ptr noundef nonnull @.str.549)
  call void @llvm.lifetime.start.p0(ptr nonnull %93)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  store i64 0, ptr %i.v, align 8, !tbaa !197
  %i.ac = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 4 uses
  %i.as = insertelement <2 x ptr> poison, ptr %79, i64 0
  %i.at = shufflevector <2 x ptr> %i.as, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %77, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc unwind label %bb.qu

.noexc:                                           ; preds = %bb.b
  %i.au = load i64, ptr %i.v, align 8, !tbaa !197 ; 9 uses
  %i.av = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ax = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.az = icmp ugt i64 %i.au, 1152921504606846975
  br i1 %i.az, label %bb.c, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.c:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %.noexc
  %.not.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ba = shl nuw nsw i64 %i.au, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre12.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter = and i64 %i.au, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol

.lr.ph.i.split.us.i.i.i.i.i.i.prol:               ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol
  %.014.i.us.i.i.i.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.bb, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.au, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i.prol, align 4, !tbaa !453
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 4
  store i8 1, ptr %i.bc, align 4, !tbaa !454
  %i.bd = add nsw i64 %.01113.i.us.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol, !llvm.loop !7091

.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit:      ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i
  %.lcssa10010.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.be, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.014.i.us.i.i.i.i.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.be, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.01113.i.us.i.i.i.i.i.i.unr = phi i64 [ %i.au, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.bd, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.au, 8
  br i1 %i.bf, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i

.lr.ph.i.split.us.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i
  %.014.i.us.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.014.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.01113.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i, align 4, !tbaa !453
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 4
  store i8 1, ptr %i.bg, align 4, !tbaa !454
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 8
  store i32 12345, ptr %i.bh, align 4, !tbaa !453
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 12
  store i8 1, ptr %i.bi, align 4, !tbaa !454
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 16
  store i32 12345, ptr %i.bj, align 4, !tbaa !453
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 20
  store i8 1, ptr %i.bk, align 4, !tbaa !454
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 24
  store i32 12345, ptr %i.bl, align 4, !tbaa !453
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 28
  store i8 1, ptr %i.bm, align 4, !tbaa !454
  %i.bn = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 32
  store i32 12345, ptr %i.bn, align 4, !tbaa !453
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 36
  store i8 1, ptr %i.bo, align 4, !tbaa !454
  %i.bp = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 40
  store i32 12345, ptr %i.bp, align 4, !tbaa !453
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 44
  store i8 1, ptr %i.bq, align 4, !tbaa !454
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 48
  store i32 12345, ptr %i.br, align 4, !tbaa !453
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 52
  store i8 1, ptr %i.bs, align 4, !tbaa !454
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 56
  store i32 12345, ptr %i.bt, align 4, !tbaa !453
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 60
  store i8 1, ptr %i.bu, align 4, !tbaa !454
  %i.bv = add nsw i64 %.01113.i.us.i.i.i.i.i.i, -8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i.7 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.us.i.i.i.i.i.i.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i, !llvm.loop !64

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit
  %.lcssa10010 = phi ptr [ %.lcssa10010.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ], [ %i.bw, %.lr.ph.i.split.us.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.au
  %i.by = trunc i64 %i.au to i32                  ; 3 uses
  %i.bz = add i32 %.pre12.i.i, %i.by              ; 2 uses
  %i.ca = add i32 %.pre13.i.i, %i.by              ; 2 uses
  %i.cb = add i32 %.pre14.i.i, %i.by
  store i32 %i.bz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.ca, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.cb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = add nsw i32 %i.bz, -1
  %i.ce = add nsw i32 %i.ca, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.cf = phi i32 [ %i.ax, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.ce, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ]
  %i.cg = phi i32 [ %i.av, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.cd, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ]
  %.sroa.13.0.i = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.cc, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 2 uses
  %.sroa.0231.0.i = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.bb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa10010, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 4 uses
  store i32 %i.cg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.cf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.ch = ptrtoint ptr %.sroa.0231.0.i to i64     ; 3 uses
  %i.ci = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i to i64
  %i.cj = sub i64 %i.ci, %i.ch                    ; 4 uses
  %i.ck = ashr exact i64 %i.cj, 3                 ; 6 uses
  %i.cl = icmp ugt i64 %i.ck, 3
  %.not.i.i.i70.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i, %.sroa.0231.0.i ; 3 uses
  %i.cm = icmp ugt i64 %i.ck, 1152921504606846975
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 6) ; 2 uses
  %i.cn = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 3
  %i.co = ashr exact i64 %i.cj, 2
  %i.cp = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cq = icmp eq i64 %i.cj, 8
  %unroll_iter = and i64 %i.ck, -2
  %i.cr = and i64 %i.cj, 8
  %lcmp.mod10416.not = icmp eq i64 %i.cr, 0
  %lcmp.mod10417 = trunc i64 %i.ck to i1
  br label %bb.g

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit141.i
  br i1 %.not.i.i.i70.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i ], [ %.sroa.0231.0.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.cs = phi i32 [ %i.cu, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.ct = phi i32 [ %i.cz, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.cu = add nsw i32 %i.cs, -1                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !454, !range !189, !noundef !190
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.e, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cy = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.cz = phi i32 [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.cy, %bb.e ]
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !66

._crit_edge.i.i.i.i:                              ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i
  store i32 %i.cu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.d
  %.not.i.i1.i.i = icmp eq ptr %.sroa.0231.0.i, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.db = sub i64 %.sroa.13.0.i, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.0.i, i64 noundef %i.db) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %77) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #36
  %i.dc = load i64, ptr %i.v, align 8, !tbaa !197
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.v, align 8, !tbaa !197
  %i.de = icmp ult i64 %i.dd, 6
  br i1 %i.de, label %bb.b, label %bb.dj, !llvm.loop !7092

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lpad.loopexit244.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i: ; preds = %bb.c
  %lpad.loopexit.split-lp245.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i
  %lpad.phi246.i = phi { ptr, i32 } [ %lpad.loopexit244.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i ], [ %lpad.loopexit.split-lp245.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i ]
  %i.df = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dh = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i

bb.g:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit141.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %storemerge34581.i = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i ], [ %i.qm, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit141.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %75)
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %76)
          to label %.noexc63.i unwind label %bb.o

.noexc63.i:                                       ; preds = %bb.g
  %i.dj = load ptr, ptr %76, align 8, !tbaa !223
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i64 noundef %storemerge34581.i)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i:       ; preds = %.noexc63.i
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(8) %76)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %78, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %75)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %75, align 8, !tbaa !195  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ac
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.do = load i64, ptr %i.ac, align 8, !tbaa !198
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dq = load ptr, ptr %76, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i62.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i62.i, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !169
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(128) %i.dq) #36, !inline_history !7093
  br label %bb.l

bb.j:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i, %.noexc63.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

bb.k:                                             ; preds = %bb.h
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %75, align 8, !tbaa !195  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ac
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.k
  %i.dy = load i64, ptr %i.ac, align 8, !tbaa !198
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.du, %bb.j ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i ], [ %i.dv, %bb.k ]
  %i.ea = load ptr, ptr %76, align 8, !tbaa !223  ; 3 uses
  %.not.i.i10.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i10.i.i, label %_ZN7testing7MessageD2Ev.exit12.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !169
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #36, !inline_history !7093
  br label %_ZN7testing7MessageD2Ev.exit12.i.i

_ZN7testing7MessageD2Ev.exit12.i.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #36
  br label %.body.i

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %75)
  %.not.i = icmp eq i64 %storemerge34581.i, 0
end_hunk_17
begin_hunk_18_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv:bb.a
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.dd, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

bb.dd:                                            ; preds = %.lr.ph.i.i796
  %i.qu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.qv = add nsw i32 %i.qu, -1
  store i32 %i.qv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i: ; preds = %bb.dd, %.lr.ph.i.i796
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #39
  %.not.i.i797 = icmp eq ptr %i.qo, %79
  br i1 %.not.i.i797, label %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit, label %.lr.ph.i.i796, !llvm.loop !144

_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i, %.body64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #36
  br label %bb.de

bb.de:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i
  %.sroa.0210.0353.i = phi ptr [ %.sroa.0210.0.lcssa986.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit ], [ %.sroa.0210.0573.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i ] ; 5 uses
  %.sroa.9.0303.i = phi ptr [ %.sroa.9.0.lcssa999.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit ], [ %.sroa.16.0575.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i ] ; 2 uses
  %.sroa.16.0253.i = phi ptr [ %.sroa.16.0.lcssa1003.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit ], [ %.sroa.16.0575.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i ]
  %.pn55.pn.i = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit ], [ %lpad.phi.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i ]
  %.not4.i.i.i142.i = icmp eq ptr %.sroa.0210.0353.i, %.sroa.9.0303.i
  br i1 %.not4.i.i.i142.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i, label %.lr.ph.preheader.i.i.i143.i

.lr.ph.preheader.i.i.i143.i:                      ; preds = %bb.de
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i144.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i145.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i146.i

.lr.ph.i.i.i146.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i, %.lr.ph.preheader.i.i.i143.i
  %.05.i.i.i147.i = phi ptr [ %i.re, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i ], [ %.sroa.0210.0353.i, %.lr.ph.preheader.i.i.i143.i ] ; 2 uses
  %i.qw = phi i32 [ %i.qy, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i145.i, %.lr.ph.preheader.i.i.i143.i ]
  %i.qx = phi i32 [ %i.rd, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i144.i, %.lr.ph.preheader.i.i.i143.i ] ; 2 uses
  %i.qy = add nsw i32 %i.qw, -1                   ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.05.i.i.i147.i, i64 4
  %i.ra = load i8, ptr %i.qz, align 4, !tbaa !454, !range !189, !noundef !190
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.df, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i

bb.df:                                            ; preds = %.lr.ph.i.i.i146.i
  %i.rc = add nsw i32 %i.qx, -1                   ; 2 uses
  store i32 %i.rc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i: ; preds = %bb.df, %.lr.ph.i.i.i146.i
  %i.rd = phi i32 [ %i.qx, %.lr.ph.i.i.i146.i ], [ %i.rc, %bb.df ]
  %i.re = getelementptr inbounds nuw i8, ptr %.05.i.i.i147.i, i64 8 ; 2 uses
  %.not.i.i.i149.i = icmp eq ptr %i.re, %.sroa.9.0303.i
  br i1 %.not.i.i.i149.i, label %._crit_edge.i.i.i150.i, label %.lr.ph.i.i.i146.i, !llvm.loop !66

._crit_edge.i.i.i150.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i
  store i32 %i.qy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i: ; preds = %._crit_edge.i.i.i150.i, %bb.de
  %.not.i.i1.i152.i = icmp eq ptr %.sroa.0210.0353.i, null
  br i1 %.not.i.i1.i152.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i
  %i.rf = ptrtoint ptr %.sroa.16.0253.i to i64
  %i.rg = ptrtoint ptr %.sroa.0210.0353.i to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0210.0353.i, i64 noundef %i.rh) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i: ; preds = %bb.dg, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %78) #36
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i, %bb.o, %_ZN7testing7MessageD2Ev.exit12.i.i
  %.pn55.pn.pn.i = phi { ptr, i32 } [ %.pn55.pn.i, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i ], [ %i.ex, %bb.o ], [ %.pn.i.i, %_ZN7testing7MessageD2Ev.exit12.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #36
  br i1 %.not.i.i.i70.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i, label %.lr.ph.preheader.i.i.i155.i

.lr.ph.preheader.i.i.i155.i:                      ; preds = %.body.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i156.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i157.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i158.i

.lr.ph.i.i.i158.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i, %.lr.ph.preheader.i.i.i155.i
  %.05.i.i.i159.i = phi ptr [ %i.rq, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i ], [ %.sroa.0231.0.i, %.lr.ph.preheader.i.i.i155.i ] ; 2 uses
  %i.ri = phi i32 [ %i.rk, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i157.i, %.lr.ph.preheader.i.i.i155.i ]
  %i.rj = phi i32 [ %i.rp, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i156.i, %.lr.ph.preheader.i.i.i155.i ] ; 2 uses
  %i.rk = add nsw i32 %i.ri, -1                   ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i159.i, i64 4
  %i.rm = load i8, ptr %i.rl, align 4, !tbaa !454, !range !189, !noundef !190
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.dh, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i

bb.dh:                                            ; preds = %.lr.ph.i.i.i158.i
  %i.ro = add nsw i32 %i.rj, -1                   ; 2 uses
  store i32 %i.ro, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i: ; preds = %bb.dh, %.lr.ph.i.i.i158.i
  %i.rp = phi i32 [ %i.rj, %.lr.ph.i.i.i158.i ], [ %i.ro, %bb.dh ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.05.i.i.i159.i, i64 8 ; 2 uses
  %.not.i.i.i161.i = icmp eq ptr %i.rq, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not.i.i.i161.i, label %._crit_edge.i.i.i162.i, label %.lr.ph.i.i.i158.i, !llvm.loop !66

._crit_edge.i.i.i162.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i
  store i32 %i.rk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i: ; preds = %._crit_edge.i.i.i162.i, %.body.i
  %.not.i.i1.i164.i = icmp eq ptr %.sroa.0231.0.i, null
  br i1 %.not.i.i1.i164.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i, label %bb.di

bb.di:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i
  %i.rr = sub i64 %.sroa.13.0.i, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.0.i, i64 noundef %i.rr) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i: ; preds = %bb.di, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i
  %.pn55.pn.pn.pn.i = phi { ptr, i32 } [ %.pn55.pn.pn.i, %bb.di ], [ %lpad.phi246.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i ], [ %.pn55.pn.pn.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %77) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #36
  br label %.body

bb.dj:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %93)
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #36
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %96, ptr noundef nonnull @.str.3, i32 noundef 1609, ptr noundef nonnull @.str.550)
          to label %bb.dk unwind label %bb.qv

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #36
  store i64 0, ptr %i.o, align 8, !tbaa !197
  %i.rs = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 7 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.si = insertelement <2 x ptr> poison, ptr %55, i64 0
  %i.sj = shufflevector <2 x ptr> %i.si, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i228, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %53, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc314 unwind label %bb.qw

.noexc314:                                        ; preds = %bb.dl
  %i.sk = load i64, ptr %i.o, align 8, !tbaa !197 ; 9 uses
  %i.sl = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.sm = add nsw i32 %i.sl, 1
  store i32 %i.sm, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.sn = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.so = add nsw i32 %i.sn, 1
  store i32 %i.so, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.sp = icmp ugt i64 %i.sk, 1152921504606846975
  br i1 %i.sp, label %bb.dm, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13

bb.dm:                                            ; preds = %.noexc314
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i313 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i311

.noexc.i313:                                      ; preds = %bb.dm
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13: ; preds = %.noexc314
  %.not.i.i.i.i.i14 = icmp eq i64 %i.sk, 0
  br i1 %.not.i.i.i.i.i14, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31, label %.lr.ph.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i15:                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13
  %i.sq = shl nuw nsw i64 %i.sk, 3
  %i.sr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sq) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i16 ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i22:        ; preds = %.lr.ph.i.i.i.i.i.i.i15
  %.pre12.i.i23 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i24 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i25 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter10418 = and i64 %i.sk, 7               ; 2 uses
  %lcmp.mod10419.not = icmp eq i64 %xtraiter10418, 0
  br i1 %lcmp.mod10419.not, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol

.lr.ph.i.split.us.i.i.i.i.i.i26.prol:             ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol
  %.014.i.us.i.i.i.i.i.i27.prol = phi ptr [ %i.su, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ], [ %i.sr, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i28.prol = phi i64 [ %i.st, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ], [ %i.sk, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ]
  %prol.iter10420 = phi i64 [ %prol.iter10420.next, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i27.prol, align 4, !tbaa !453
  %i.ss = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27.prol, i64 4
  store i8 1, ptr %i.ss, align 4, !tbaa !454
  %i.st = add nsw i64 %.01113.i.us.i.i.i.i.i.i28.prol, -1 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27.prol, i64 8 ; 3 uses
  %prol.iter10420.next = add i64 %prol.iter10420, 1 ; 2 uses
  %prol.iter10420.cmp.not = icmp eq i64 %prol.iter10420.next, %xtraiter10418
  br i1 %prol.iter10420.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol, !llvm.loop !7104

.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit:    ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i26.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22
  %.lcssa9607.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ], [ %i.su, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ]
  %.014.i.us.i.i.i.i.i.i27.unr = phi ptr [ %i.sr, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ], [ %i.su, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ]
  %.01113.i.us.i.i.i.i.i.i28.unr = phi i64 [ %i.sk, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ], [ %i.st, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ]
  %i.sv = icmp ult i64 %i.sk, 8
  br i1 %i.sv, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30, label %.lr.ph.i.split.us.i.i.i.i.i.i26

.lr.ph.i.split.us.i.i.i.i.i.i26:                  ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i26
  %.014.i.us.i.i.i.i.i.i27 = phi ptr [ %i.tm, %.lr.ph.i.split.us.i.i.i.i.i.i26 ], [ %.014.i.us.i.i.i.i.i.i27.unr, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i28 = phi i64 [ %i.tl, %.lr.ph.i.split.us.i.i.i.i.i.i26 ], [ %.01113.i.us.i.i.i.i.i.i28.unr, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i27, align 4, !tbaa !453
  %i.sw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 4
  store i8 1, ptr %i.sw, align 4, !tbaa !454
  %i.sx = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 8
  store i32 12345, ptr %i.sx, align 4, !tbaa !453
  %i.sy = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 12
  store i8 1, ptr %i.sy, align 4, !tbaa !454
  %i.sz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 16
  store i32 12345, ptr %i.sz, align 4, !tbaa !453
  %i.ta = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 20
  store i8 1, ptr %i.ta, align 4, !tbaa !454
  %i.tb = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 24
  store i32 12345, ptr %i.tb, align 4, !tbaa !453
  %i.tc = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 28
  store i8 1, ptr %i.tc, align 4, !tbaa !454
  %i.td = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 32
  store i32 12345, ptr %i.td, align 4, !tbaa !453
  %i.te = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 36
  store i8 1, ptr %i.te, align 4, !tbaa !454
  %i.tf = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 40
  store i32 12345, ptr %i.tf, align 4, !tbaa !453
  %i.tg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 44
  store i8 1, ptr %i.tg, align 4, !tbaa !454
  %i.th = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 48
  store i32 12345, ptr %i.th, align 4, !tbaa !453
  %i.ti = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 52
  store i8 1, ptr %i.ti, align 4, !tbaa !454
  %i.tj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 56
  store i32 12345, ptr %i.tj, align 4, !tbaa !453
  %i.tk = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 60
  store i8 1, ptr %i.tk, align 4, !tbaa !454
  %i.tl = add nsw i64 %.01113.i.us.i.i.i.i.i.i28, -8 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i29.7 = icmp eq i64 %i.tl, 0
  br i1 %.not.i.us.i.i.i.i.i.i29.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30, label %.lr.ph.i.split.us.i.i.i.i.i.i26, !llvm.loop !64

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i26, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit
  %.lcssa9607 = phi ptr [ %.lcssa9607.unr, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit ], [ %i.tm, %.lr.ph.i.split.us.i.i.i.i.i.i26 ]
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.sk
  %i.to = trunc i64 %i.sk to i32                  ; 3 uses
  %i.tp = add i32 %.pre12.i.i23, %i.to            ; 2 uses
  %i.tq = add i32 %.pre13.i.i24, %i.to            ; 2 uses
  %i.tr = add i32 %.pre14.i.i25, %i.to
  store i32 %i.tp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.tq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.tr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.ts = ptrtoint ptr %i.tn to i64
  %i.tt = add nsw i32 %i.tp, -1
  %i.tu = add nsw i32 %i.tq, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13
  %i.tv = phi i32 [ %i.sn, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.tu, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ]
  %i.tw = phi i32 [ %i.sl, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.tt, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ]
  %.sroa.13.0.i32 = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.ts, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ] ; 2 uses
  %.sroa.0231.0.i33 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.sr, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i34 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %.lcssa9607, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ] ; 4 uses
  store i32 %i.tw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.tv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.tx = ptrtoint ptr %.sroa.0231.0.i33 to i64   ; 3 uses
  %i.ty = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i34 to i64
  %i.tz = sub i64 %i.ty, %i.tx                    ; 4 uses
  %i.ua = ashr exact i64 %i.tz, 3                 ; 6 uses
  %i.ub = icmp ugt i64 %i.ua, 3
  %.not.i.i.i70.i35 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i34, %.sroa.0231.0.i33 ; 3 uses
  %i.uc = icmp ugt i64 %i.ua, 1152921504606846975
  %.sroa.speculated.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.ua, i64 6) ; 2 uses
  %i.ud = shl nuw nsw i64 %.sroa.speculated.i.i.i.i36, 3
  %i.ue = ashr exact i64 %i.tz, 2
  %i.uf = trunc i64 %i.ua to i32                  ; 2 uses
  %i.ug = icmp eq i64 %i.tz, 8
  %unroll_iter10428 = and i64 %i.ua, -2
  %i.uh = and i64 %i.tz, 8
  %lcmp.mod10426.not = icmp eq i64 %i.uh, 0
  %lcmp.mod10427 = trunc i64 %i.ua to i1
  br label %bb.dq

bb.dn:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit141.i216
  br i1 %.not.i.i.i70.i35, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i226, label %.lr.ph.preheader.i.i.i.i218

.lr.ph.preheader.i.i.i.i218:                      ; preds = %bb.dn
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i219 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i220 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i221

.lr.ph.i.i.i.i221:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223, %.lr.ph.preheader.i.i.i.i218
  %.05.i.i.i.i222 = phi ptr [ %i.uq, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223 ], [ %.sroa.0231.0.i33, %.lr.ph.preheader.i.i.i.i218 ] ; 2 uses
  %i.ui = phi i32 [ %i.uk, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i220, %.lr.ph.preheader.i.i.i.i218 ]
  %i.uj = phi i32 [ %i.up, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i219, %.lr.ph.preheader.i.i.i.i218 ] ; 2 uses
  %i.uk = add nsw i32 %i.ui, -1                   ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i222, i64 4
  %i.um = load i8, ptr %i.ul, align 4, !tbaa !454, !range !189, !noundef !190
  %i.un = trunc nuw i8 %i.um to i1
  br i1 %i.un, label %bb.do, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223

bb.do:                                            ; preds = %.lr.ph.i.i.i.i221
  %i.uo = add nsw i32 %i.uj, -1                   ; 2 uses
  store i32 %i.uo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223: ; preds = %bb.do, %.lr.ph.i.i.i.i221
  %i.up = phi i32 [ %i.uj, %.lr.ph.i.i.i.i221 ], [ %i.uo, %bb.do ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i222, i64 8 ; 2 uses
  %.not.i.i.i.i224 = icmp eq ptr %i.uq, %.0.lcssa.i.i.i.i.i.i.i34
  br i1 %.not.i.i.i.i224, label %._crit_edge.i.i.i.i225, label %.lr.ph.i.i.i.i221, !llvm.loop !66

._crit_edge.i.i.i.i225:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i223
  store i32 %i.uk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i226

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i226: ; preds = %._crit_edge.i.i.i.i225, %bb.dn
  %.not.i.i1.i.i227 = icmp eq ptr %.sroa.0231.0.i33, null
  br i1 %.not.i.i1.i.i227, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i228, label %bb.dp

bb.dp:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i226
  %i.ur = sub i64 %.sroa.13.0.i32, %i.tx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.0.i33, i64 noundef %i.ur) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i228

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i228: ; preds = %bb.dp, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i226
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  %i.us = load i64, ptr %i.o, align 8, !tbaa !197
  %i.ut = add i64 %i.us, 1                        ; 2 uses
  store i64 %i.ut, ptr %i.o, align 8, !tbaa !197
  %i.uu = icmp ult i64 %i.ut, 6
  br i1 %i.uu, label %bb.dl, label %bb.ht, !llvm.loop !7105

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i16: ; preds = %.lr.ph.i.i.i.i.i.i.i15
  %lpad.loopexit244.i17 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i18

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i311: ; preds = %bb.dm
  %lpad.loopexit.split-lp245.i312 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i18

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i18: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i311, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i16
  %lpad.phi246.i19 = phi { ptr, i32 } [ %lpad.loopexit244.i17, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i16 ], [ %lpad.loopexit.split-lp245.i312, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i311 ]
  %i.uv = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.uw = add nsw i32 %i.uv, -1
  store i32 %i.uw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ux = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.uy = add nsw i32 %i.ux, -1
  store i32 %i.uy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i20

bb.dq:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit141.i216, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31
  %storemerge34581.i37 = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31 ], [ %i.aic, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit141.i216 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %.noexc63.i50 unwind label %bb.dy

.noexc63.i50:                                     ; preds = %bb.dq
  %i.uz = load ptr, ptr %52, align 8, !tbaa !223
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.va, i64 noundef %storemerge34581.i37)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56 unwind label %bb.dt ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56:     ; preds = %.noexc63.i50
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %54, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %51)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.vc = load ptr, ptr %51, align 8, !tbaa !195  ; 2 uses
  %i.vd = icmp eq ptr %i.vc, %i.rs
  br i1 %i.vd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59: ; preds = %bb.ds
  %i.ve = load i64, ptr %i.rs, align 8, !tbaa !198
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vf) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59
  %i.vg = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i62.i61 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i62.i61, label %bb.dv, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i62

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !169
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8
  call void %i.vj(ptr noundef nonnull align 8 dereferenceable(128) %i.vg) #36, !inline_history !7106
  br label %bb.dv

bb.dt:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56, %.noexc63.i50
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51

bb.du:                                            ; preds = %bb.dr
  %i.vl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vm = load ptr, ptr %51, align 8, !tbaa !195  ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.rs
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57: ; preds = %bb.du
  %i.vo = load i64, ptr %i.rs, align 8, !tbaa !198
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57, %bb.dt
  %.pn.i.i52 = phi { ptr, i32 } [ %i.vk, %bb.dt ], [ %i.vl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57 ], [ %i.vl, %bb.du ]
  %i.vq = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i10.i.i53 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i10.i.i53, label %_ZN7testing7MessageD2Ev.exit12.i.i55, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i54

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !169
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(128) %i.vq) #36, !inline_history !7106
  br label %_ZN7testing7MessageD2Ev.exit12.i.i55

_ZN7testing7MessageD2Ev.exit12.i.i55:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  br label %.body.i38

bb.dv:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  %.not.i63 = icmp eq i64 %storemerge34581.i37, 0
end_hunk_18
begin_hunk_19_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv:bb.a
  store i32 %i.aig, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.aih = getelementptr inbounds nuw i8, ptr %.09.i.i800, i64 20
  %i.aii = load i8, ptr %i.aih, align 4, !tbaa !454, !range !189, !noundef !190
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %bb.hn, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i801

bb.hn:                                            ; preds = %.lr.ph.i.i799
  %i.aik = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.ail = add nsw i32 %i.aik, -1
  store i32 %i.ail, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i801

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i801: ; preds = %bb.hn, %.lr.ph.i.i799
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i800, i64 noundef 24) #39
  %.not.i.i802 = icmp eq ptr %i.aie, %55
  br i1 %.not.i.i802, label %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit803, label %.lr.ph.i.i799, !llvm.loop !144

_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit803: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i801, %.body64.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  br label %bb.ho

bb.ho:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit803, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i283
  %.sroa.0210.0353.i88 = phi ptr [ %.sroa.0210.0.lcssa986.i86, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit803 ], [ %.sroa.0210.0573.i71, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i283 ] ; 5 uses
  %.sroa.9.0303.i89 = phi ptr [ %.sroa.9.0.lcssa999.i85, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit803 ], [ %.sroa.16.0575.i69, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i283 ] ; 2 uses
  %.sroa.16.0253.i90 = phi ptr [ %.sroa.16.0.lcssa1003.i84, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit803 ], [ %.sroa.16.0575.i69, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i283 ]
  %.pn55.pn.i91 = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn.pn.i87, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS4_EED2Ev.exit803 ], [ %lpad.phi.i284, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit69.i283 ]
  %.not4.i.i.i142.i92 = icmp eq ptr %.sroa.0210.0353.i88, %.sroa.9.0303.i89
  br i1 %.not4.i.i.i142.i92, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i101, label %.lr.ph.preheader.i.i.i143.i93

.lr.ph.preheader.i.i.i143.i93:                    ; preds = %bb.ho
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i144.i94 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i145.i95 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i146.i96

.lr.ph.i.i.i146.i96:                              ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98, %.lr.ph.preheader.i.i.i143.i93
  %.05.i.i.i147.i97 = phi ptr [ %i.aiu, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98 ], [ %.sroa.0210.0353.i88, %.lr.ph.preheader.i.i.i143.i93 ] ; 2 uses
  %i.aim = phi i32 [ %i.aio, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i145.i95, %.lr.ph.preheader.i.i.i143.i93 ]
  %i.ain = phi i32 [ %i.ait, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i144.i94, %.lr.ph.preheader.i.i.i143.i93 ] ; 2 uses
  %i.aio = add nsw i32 %i.aim, -1                 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.05.i.i.i147.i97, i64 4
  %i.aiq = load i8, ptr %i.aip, align 4, !tbaa !454, !range !189, !noundef !190
  %i.air = trunc nuw i8 %i.aiq to i1
  br i1 %i.air, label %bb.hp, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98

bb.hp:                                            ; preds = %.lr.ph.i.i.i146.i96
  %i.ais = add nsw i32 %i.ain, -1                 ; 2 uses
  store i32 %i.ais, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98: ; preds = %bb.hp, %.lr.ph.i.i.i146.i96
  %i.ait = phi i32 [ %i.ain, %.lr.ph.i.i.i146.i96 ], [ %i.ais, %bb.hp ]
  %i.aiu = getelementptr inbounds nuw i8, ptr %.05.i.i.i147.i97, i64 8 ; 2 uses
  %.not.i.i.i149.i99 = icmp eq ptr %i.aiu, %.sroa.9.0303.i89
  br i1 %.not.i.i.i149.i99, label %._crit_edge.i.i.i150.i100, label %.lr.ph.i.i.i146.i96, !llvm.loop !66

._crit_edge.i.i.i150.i100:                        ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i148.i98
  store i32 %i.aio, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i101

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i101: ; preds = %._crit_edge.i.i.i150.i100, %bb.ho
  %.not.i.i1.i152.i102 = icmp eq ptr %.sroa.0210.0353.i88, null
  br i1 %.not.i.i1.i152.i102, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i103, label %bb.hq

bb.hq:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i101
  %i.aiv = ptrtoint ptr %.sroa.16.0253.i90 to i64
  %i.aiw = ptrtoint ptr %.sroa.0210.0353.i88 to i64
  %i.aix = sub i64 %i.aiv, %i.aiw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0210.0353.i88, i64 noundef %i.aix) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i103

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i103: ; preds = %bb.hq, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i151.i101
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %54) #36
  br label %.body.i38

.body.i38:                                        ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i103, %bb.dy, %_ZN7testing7MessageD2Ev.exit12.i.i55
  %.pn55.pn.pn.i39 = phi { ptr, i32 } [ %.pn55.pn.i91, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit153.i103 ], [ %i.wn, %bb.dy ], [ %.pn.i.i52, %_ZN7testing7MessageD2Ev.exit12.i.i55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #36
  br i1 %.not.i.i.i70.i35, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i48, label %.lr.ph.preheader.i.i.i155.i40

.lr.ph.preheader.i.i.i155.i40:                    ; preds = %.body.i38
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i156.i41 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i157.i42 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i158.i43

.lr.ph.i.i.i158.i43:                              ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45, %.lr.ph.preheader.i.i.i155.i40
  %.05.i.i.i159.i44 = phi ptr [ %i.ajg, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45 ], [ %.sroa.0231.0.i33, %.lr.ph.preheader.i.i.i155.i40 ] ; 2 uses
  %i.aiy = phi i32 [ %i.aja, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i157.i42, %.lr.ph.preheader.i.i.i155.i40 ]
  %i.aiz = phi i32 [ %i.ajf, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i156.i41, %.lr.ph.preheader.i.i.i155.i40 ] ; 2 uses
  %i.aja = add nsw i32 %i.aiy, -1                 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.05.i.i.i159.i44, i64 4
  %i.ajc = load i8, ptr %i.ajb, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ajd = trunc nuw i8 %i.ajc to i1
  br i1 %i.ajd, label %bb.hr, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45

bb.hr:                                            ; preds = %.lr.ph.i.i.i158.i43
  %i.aje = add nsw i32 %i.aiz, -1                 ; 2 uses
  store i32 %i.aje, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45: ; preds = %bb.hr, %.lr.ph.i.i.i158.i43
  %i.ajf = phi i32 [ %i.aiz, %.lr.ph.i.i.i158.i43 ], [ %i.aje, %bb.hr ]
  %i.ajg = getelementptr inbounds nuw i8, ptr %.05.i.i.i159.i44, i64 8 ; 2 uses
  %.not.i.i.i161.i46 = icmp eq ptr %i.ajg, %.0.lcssa.i.i.i.i.i.i.i34
  br i1 %.not.i.i.i161.i46, label %._crit_edge.i.i.i162.i47, label %.lr.ph.i.i.i158.i43, !llvm.loop !66

._crit_edge.i.i.i162.i47:                         ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i160.i45
  store i32 %i.aja, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i48

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i48: ; preds = %._crit_edge.i.i.i162.i47, %.body.i38
  %.not.i.i1.i164.i49 = icmp eq ptr %.sroa.0231.0.i33, null
  br i1 %.not.i.i1.i164.i49, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i20, label %bb.hs

bb.hs:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i48
  %i.ajh = sub i64 %.sroa.13.0.i32, %i.tx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.0.i33, i64 noundef %i.ajh) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i20

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit165.i20: ; preds = %bb.hs, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i48, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i18
  %.pn55.pn.pn.pn.i21 = phi { ptr, i32 } [ %.pn55.pn.pn.i39, %bb.hs ], [ %lpad.phi246.i19, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i18 ], [ %.pn55.pn.pn.i39, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i163.i48 ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #36
  br label %.body315

bb.ht:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #36
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %97, ptr noundef nonnull @.str.3, i32 noundef 1611, ptr noundef nonnull @.str.551)
          to label %bb.hu unwind label %bb.qx

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store i64 0, ptr %i.h, align 8, !tbaa !197
  %i.aji = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.aju = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  br label %bb.hv

bb.hv:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i439, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc469 unwind label %bb.qy

.noexc469:                                        ; preds = %bb.hv
  %i.ajx = load i64, ptr %i.h, align 8, !tbaa !197 ; 9 uses
  %i.ajy = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.ajz = add nsw i32 %i.ajy, 1
  store i32 %i.ajz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.aka = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.akb = add nsw i32 %i.aka, 1
  store i32 %i.akb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.akc = icmp ugt i64 %i.ajx, 1152921504606846975
  br i1 %i.akc, label %bb.hw, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317

bb.hw:                                            ; preds = %.noexc469
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i468 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i467

.noexc.i468:                                      ; preds = %bb.hw
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317: ; preds = %.noexc469
  %.not.i.i.i.i.i318 = icmp eq i64 %i.ajx, 0
  br i1 %.not.i.i.i.i.i318, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i332, label %.lr.ph.i.i.i.i.i.i.i319

.lr.ph.i.i.i.i.i.i.i319:                          ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317
  %i.akd = shl nuw nsw i64 %i.ajx, 3
  %i.ake = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akd) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i320 ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i323:       ; preds = %.lr.ph.i.i.i.i.i.i.i319
  %.pre12.i.i324 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i325 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i326 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter10430 = and i64 %i.ajx, 7              ; 2 uses
  %lcmp.mod10431.not = icmp eq i64 %xtraiter10430, 0
  br i1 %lcmp.mod10431.not, label %.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i327.prol

.lr.ph.i.split.us.i.i.i.i.i.i327.prol:            ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol
  %.014.i.us.i.i.i.i.i.i328.prol = phi ptr [ %i.akh, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol ], [ %i.ake, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323 ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i329.prol = phi i64 [ %i.akg, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol ], [ %i.ajx, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323 ]
  %prol.iter10432 = phi i64 [ %prol.iter10432.next, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323 ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i328.prol, align 4, !tbaa !453
  %i.akf = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328.prol, i64 4
  store i8 1, ptr %i.akf, align 4, !tbaa !454
  %i.akg = add nsw i64 %.01113.i.us.i.i.i.i.i.i329.prol, -1 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328.prol, i64 8 ; 3 uses
  %prol.iter10432.next = add i64 %prol.iter10432, 1 ; 2 uses
  %prol.iter10432.cmp.not = icmp eq i64 %prol.iter10432.next, %xtraiter10430
  br i1 %prol.iter10432.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i327.prol, !llvm.loop !7115

.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit:   ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i327.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323
  %.lcssa9082.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323 ], [ %i.akh, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol ]
  %.014.i.us.i.i.i.i.i.i328.unr = phi ptr [ %i.ake, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323 ], [ %i.akh, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol ]
  %.01113.i.us.i.i.i.i.i.i329.unr = phi i64 [ %i.ajx, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i323 ], [ %i.akg, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol ]
  %i.aki = icmp ult i64 %i.ajx, 8
  br i1 %i.aki, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331, label %.lr.ph.i.split.us.i.i.i.i.i.i327

.lr.ph.i.split.us.i.i.i.i.i.i327:                 ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i327
  %.014.i.us.i.i.i.i.i.i328 = phi ptr [ %i.akz, %.lr.ph.i.split.us.i.i.i.i.i.i327 ], [ %.014.i.us.i.i.i.i.i.i328.unr, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i329 = phi i64 [ %i.aky, %.lr.ph.i.split.us.i.i.i.i.i.i327 ], [ %.01113.i.us.i.i.i.i.i.i329.unr, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i328, align 4, !tbaa !453
  %i.akj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 4
  store i8 1, ptr %i.akj, align 4, !tbaa !454
  %i.akk = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 8
  store i32 12345, ptr %i.akk, align 4, !tbaa !453
  %i.akl = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 12
  store i8 1, ptr %i.akl, align 4, !tbaa !454
  %i.akm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 16
  store i32 12345, ptr %i.akm, align 4, !tbaa !453
  %i.akn = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 20
  store i8 1, ptr %i.akn, align 4, !tbaa !454
  %i.ako = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 24
  store i32 12345, ptr %i.ako, align 4, !tbaa !453
  %i.akp = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 28
  store i8 1, ptr %i.akp, align 4, !tbaa !454
  %i.akq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 32
  store i32 12345, ptr %i.akq, align 4, !tbaa !453
  %i.akr = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 36
  store i8 1, ptr %i.akr, align 4, !tbaa !454
  %i.aks = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 40
  store i32 12345, ptr %i.aks, align 4, !tbaa !453
  %i.akt = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 44
  store i8 1, ptr %i.akt, align 4, !tbaa !454
  %i.aku = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 48
  store i32 12345, ptr %i.aku, align 4, !tbaa !453
  %i.akv = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 52
  store i8 1, ptr %i.akv, align 4, !tbaa !454
  %i.akw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 56
  store i32 12345, ptr %i.akw, align 4, !tbaa !453
  %i.akx = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 60
  store i8 1, ptr %i.akx, align 4, !tbaa !454
  %i.aky = add nsw i64 %.01113.i.us.i.i.i.i.i.i329, -8 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i328, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i330.7 = icmp eq i64 %i.aky, 0
  br i1 %.not.i.us.i.i.i.i.i.i330.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331, label %.lr.ph.i.split.us.i.i.i.i.i.i327, !llvm.loop !64

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i327, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit
  %.lcssa9082 = phi ptr [ %.lcssa9082.unr, %.lr.ph.i.split.us.i.i.i.i.i.i327.prol.loopexit ], [ %i.akz, %.lr.ph.i.split.us.i.i.i.i.i.i327 ]
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.ake, i64 %i.ajx
  %i.alb = trunc i64 %i.ajx to i32                ; 3 uses
  %i.alc = add i32 %.pre12.i.i324, %i.alb         ; 2 uses
  %i.ald = add i32 %.pre13.i.i325, %i.alb         ; 2 uses
  %i.ale = add i32 %.pre14.i.i326, %i.alb
  store i32 %i.alc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.ald, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.ale, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.alf = ptrtoint ptr %i.ala to i64
  %i.alg = add nsw i32 %i.alc, -1
  %i.alh = add nsw i32 %i.ald, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i332

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i332: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317
  %i.ali = phi i32 [ %i.aka, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317 ], [ %i.alh, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331 ]
  %i.alj = phi i32 [ %i.ajy, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317 ], [ %i.alg, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331 ]
  %.sroa.13.0.i333 = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317 ], [ %i.alf, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331 ] ; 2 uses
  %.sroa.0246.0.i = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317 ], [ %i.ake, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331 ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i334 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i317 ], [ %.lcssa9082, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i331 ] ; 4 uses
  store i32 %i.alj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.ali, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.alk = ptrtoint ptr %.sroa.0246.0.i to i64    ; 3 uses
  %i.all = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i334 to i64
  %i.alm = sub i64 %i.all, %i.alk                 ; 4 uses
  %i.aln = ashr exact i64 %i.alm, 3               ; 6 uses
  %i.alo = icmp ugt i64 %i.aln, 3
  %.not.i.i.i73.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i334, %.sroa.0246.0.i ; 3 uses
  %i.alp = icmp ugt i64 %i.aln, 1152921504606846975
  %.sroa.speculated.i.i.i.i335 = call i64 @llvm.umax.i64(i64 %i.aln, i64 6) ; 2 uses
  %i.alq = shl nuw nsw i64 %.sroa.speculated.i.i.i.i335, 3
  %i.alr = ashr exact i64 %i.alm, 2
  %i.als = trunc i64 %i.aln to i32                ; 2 uses
  %i.alt = icmp eq i64 %i.alm, 8
  %unroll_iter10440 = and i64 %i.aln, -2
  %i.alu = and i64 %i.alm, 8
  %lcmp.mod10438.not = icmp eq i64 %i.alu, 0
  %lcmp.mod10439 = trunc i64 %i.aln to i1
  br label %bb.ia

bb.hx:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit154.i
  br i1 %.not.i.i.i73.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i437, label %.lr.ph.preheader.i.i.i.i429

.lr.ph.preheader.i.i.i.i429:                      ; preds = %bb.hx
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i430 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i431 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i432

.lr.ph.i.i.i.i432:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434, %.lr.ph.preheader.i.i.i.i429
  %.05.i.i.i.i433 = phi ptr [ %i.amd, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434 ], [ %.sroa.0246.0.i, %.lr.ph.preheader.i.i.i.i429 ] ; 2 uses
  %i.alv = phi i32 [ %i.alx, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i431, %.lr.ph.preheader.i.i.i.i429 ]
  %i.alw = phi i32 [ %i.amc, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i430, %.lr.ph.preheader.i.i.i.i429 ] ; 2 uses
  %i.alx = add nsw i32 %i.alv, -1                 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i433, i64 4
  %i.alz = load i8, ptr %i.aly, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ama = trunc nuw i8 %i.alz to i1
  br i1 %i.ama, label %bb.hy, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434

bb.hy:                                            ; preds = %.lr.ph.i.i.i.i432
  %i.amb = add nsw i32 %i.alw, -1                 ; 2 uses
  store i32 %i.amb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434: ; preds = %bb.hy, %.lr.ph.i.i.i.i432
  %i.amc = phi i32 [ %i.alw, %.lr.ph.i.i.i.i432 ], [ %i.amb, %bb.hy ]
  %i.amd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i433, i64 8 ; 2 uses
  %.not.i.i.i.i435 = icmp eq ptr %i.amd, %.0.lcssa.i.i.i.i.i.i.i334
  br i1 %.not.i.i.i.i435, label %._crit_edge.i.i.i.i436, label %.lr.ph.i.i.i.i432, !llvm.loop !66

._crit_edge.i.i.i.i436:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i434
  store i32 %i.alx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i437

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i437: ; preds = %._crit_edge.i.i.i.i436, %bb.hx
  %.not.i.i1.i.i438 = icmp eq ptr %.sroa.0246.0.i, null
  br i1 %.not.i.i1.i.i438, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i439, label %bb.hz

bb.hz:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i437
  %i.ame = sub i64 %.sroa.13.0.i333, %i.alk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0.i, i64 noundef %i.ame) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i439

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i439: ; preds = %bb.hz, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i437
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.amf = load i64, ptr %i.h, align 8, !tbaa !197
  %i.amg = add i64 %i.amf, 1                      ; 2 uses
  store i64 %i.amg, ptr %i.h, align 8, !tbaa !197
  %i.amh = icmp ult i64 %i.amg, 6
  br i1 %i.amh, label %bb.hv, label %bb.mg, !llvm.loop !7116

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i320: ; preds = %.lr.ph.i.i.i.i.i.i.i319
  %lpad.loopexit266.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i321

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i467: ; preds = %bb.hw
  %lpad.loopexit.split-lp267.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i321

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i321: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i467, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i320
  %lpad.phi268.i = phi { ptr, i32 } [ %lpad.loopexit266.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i320 ], [ %lpad.loopexit.split-lp267.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i467 ]
  %i.ami = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.amj = add nsw i32 %i.ami, -1
  store i32 %i.amj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.amk = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.aml = add nsw i32 %i.amk, -1
  store i32 %i.aml, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit180.i

bb.ia:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit154.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i332
  %storemerge34617.i = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i332 ], [ %i.azu, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit154.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %.noexc63.i338 unwind label %bb.ij

.noexc63.i338:                                    ; preds = %bb.ia
  %i.amm = load ptr, ptr %29, align 8, !tbaa !223
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  %i.amo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.amn, i64 noundef %storemerge34617.i)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i344 unwind label %bb.id ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i344:    ; preds = %.noexc63.i338
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ib unwind label %bb.id

bb.ib:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i344
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %28)
          to label %bb.ic unwind label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.amp = load ptr, ptr %28, align 8, !tbaa !195 ; 2 uses
  %i.amq = icmp eq ptr %i.amp, %i.aji
  br i1 %i.amq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347: ; preds = %bb.ic
  %i.amr = load i64, ptr %i.aji, align 8, !tbaa !198
  %i.ams = add i64 %i.amr, 1
  call void @_ZdlPvm(ptr noundef %i.amp, i64 noundef %i.ams) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348: ; preds = %bb.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347
  %i.amt = load ptr, ptr %29, align 8, !tbaa !223 ; 3 uses
  %.not.i.i.i62.i349 = icmp eq ptr %i.amt, null
  br i1 %.not.i.i.i62.i349, label %bb.if, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i350

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i350: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !169
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  %i.amw = load ptr, ptr %i.amv, align 8
  call void %i.amw(ptr noundef nonnull align 8 dereferenceable(128) %i.amt) #36, !inline_history !7117
  br label %bb.if

bb.id:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i344, %.noexc63.i338
  %i.amx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i339

bb.ie:                                            ; preds = %bb.ib
  %i.amy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amz = load ptr, ptr %28, align 8, !tbaa !195 ; 2 uses
  %i.ana = icmp eq ptr %i.amz, %i.aji
  br i1 %i.ana, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i345: ; preds = %bb.ie
  %i.anb = load i64, ptr %i.aji, align 8, !tbaa !198
  %i.anc = add i64 %i.anb, 1
  call void @_ZdlPvm(ptr noundef %i.amz, i64 noundef %i.anc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i339: ; preds = %bb.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i345, %bb.id
  %.pn.i.i340 = phi { ptr, i32 } [ %i.amx, %bb.id ], [ %i.amy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i345 ], [ %i.amy, %bb.ie ]
  %i.and = load ptr, ptr %29, align 8, !tbaa !223 ; 3 uses
  %.not.i.i10.i.i341 = icmp eq ptr %i.and, null
  br i1 %.not.i.i10.i.i341, label %_ZN7testing7MessageD2Ev.exit12.i.i343, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i342

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i339
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !169
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.ang = load ptr, ptr %i.anf, align 8
  call void %i.ang(ptr noundef nonnull align 8 dereferenceable(128) %i.and) #36, !inline_history !7117
  br label %_ZN7testing7MessageD2Ev.exit12.i.i343

_ZN7testing7MessageD2Ev.exit12.i.i343:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %.body.i336

bb.if:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.not.i351 = icmp eq i64 %storemerge34617.i, 0
end_hunk_19
begin_hunk_20_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv:bb.a

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i: ; preds = %bb.ma, %.lr.ph.i.i.i807
  %i.bac = phi i32 [ %i.azw, %.lr.ph.i.i.i807 ], [ %i.bab, %bb.ma ]
  %i.bad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i808 = icmp eq ptr %i.bad, %i.aqs
  br i1 %.not.i.i.i808, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i807, !llvm.loop !66

._crit_edge.i.i.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i
  store i32 %i.azx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %._crit_edge.i.i.i, %.body77.i
  %.not.i.i1.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i1.i, label %.body68.i, label %bb.mb

bb.mb:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i
  %i.bae = ptrtoint ptr %.sroa.0.0 to i64
  %i.baf = sub i64 %.sroa.10.0, %i.bae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.baf) #39
  br label %.body68.i

.body68.i:                                        ; preds = %.loopexit257.i, %.loopexit.split-lp.i452, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i, %bb.mb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit72.i
  %.sroa.0225.0379.i = phi ptr [ %.sroa.0225.0609.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit72.i ], [ %.sroa.0225.1.i, %.loopexit.split-lp.i452 ], [ %.sroa.0225.1.i, %.loopexit257.i ], [ %.sroa.0225.0.lcssa10351080.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.0225.0.lcssa10351080.i, %bb.mb ] ; 5 uses
  %.sroa.9.0327.i = phi ptr [ %.sroa.16.0611.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit72.i ], [ %.sroa.9.1.i357, %.loopexit.split-lp.i452 ], [ %.sroa.9.1.i357, %.loopexit257.i ], [ %.sroa.9.0.lcssa10511078.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.9.0.lcssa10511078.i, %bb.mb ] ; 2 uses
  %.sroa.16.0275.i = phi ptr [ %.sroa.16.0611.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit72.i ], [ %.sroa.16.1.i358, %.loopexit.split-lp.i452 ], [ %.sroa.16.1.i358, %.loopexit257.i ], [ %.sroa.16.0.lcssa10561076.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.16.0.lcssa10561076.i, %bb.mb ]
  %.pn55.pn.i362 = phi { ptr, i32 } [ %lpad.phi.i457, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit72.i ], [ %lpad.loopexit.split-lp259.i, %.loopexit.split-lp.i452 ], [ %lpad.loopexit258.i, %.loopexit257.i ], [ %.pn47.pn.pn.pn.pn.pn.i371, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.pn47.pn.pn.pn.pn.pn.i371, %bb.mb ]
  %.not4.i.i.i155.i = icmp eq ptr %.sroa.0225.0379.i, %.sroa.9.0327.i
  br i1 %.not4.i.i.i155.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i164.i, label %.lr.ph.preheader.i.i.i156.i

.lr.ph.preheader.i.i.i156.i:                      ; preds = %.body68.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i157.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i158.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i159.i

.lr.ph.i.i.i159.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i, %.lr.ph.preheader.i.i.i156.i
  %.05.i.i.i160.i = phi ptr [ %i.bao, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i ], [ %.sroa.0225.0379.i, %.lr.ph.preheader.i.i.i156.i ] ; 2 uses
  %i.bag = phi i32 [ %i.bai, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i158.i, %.lr.ph.preheader.i.i.i156.i ]
  %i.bah = phi i32 [ %i.ban, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i157.i, %.lr.ph.preheader.i.i.i156.i ] ; 2 uses
  %i.bai = add nsw i32 %i.bag, -1                 ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %.05.i.i.i160.i, i64 4
  %i.bak = load i8, ptr %i.baj, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bal = trunc nuw i8 %i.bak to i1
  br i1 %i.bal, label %bb.mc, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i

bb.mc:                                            ; preds = %.lr.ph.i.i.i159.i
  %i.bam = add nsw i32 %i.bah, -1                 ; 2 uses
  store i32 %i.bam, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i: ; preds = %bb.mc, %.lr.ph.i.i.i159.i
  %i.ban = phi i32 [ %i.bah, %.lr.ph.i.i.i159.i ], [ %i.bam, %bb.mc ]
  %i.bao = getelementptr inbounds nuw i8, ptr %.05.i.i.i160.i, i64 8 ; 2 uses
  %.not.i.i.i162.i = icmp eq ptr %i.bao, %.sroa.9.0327.i
  br i1 %.not.i.i.i162.i, label %._crit_edge.i.i.i163.i, label %.lr.ph.i.i.i159.i, !llvm.loop !66

._crit_edge.i.i.i163.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i161.i
  store i32 %i.bai, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i164.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i164.i: ; preds = %._crit_edge.i.i.i163.i, %.body68.i
  %.not.i.i1.i165.i = icmp eq ptr %.sroa.0225.0379.i, null
  br i1 %.not.i.i1.i165.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit167.i, label %bb.md

bb.md:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i164.i
  %i.bap = ptrtoint ptr %.sroa.16.0275.i to i64
  %i.baq = ptrtoint ptr %.sroa.0225.0379.i to i64
  %i.bar = sub i64 %i.bap, %i.baq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0225.0379.i, i64 noundef %i.bar) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit167.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit167.i: ; preds = %bb.md, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i164.i
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %31) #36
  br label %.body.i336

.body.i336:                                       ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit167.i, %bb.ij, %_ZN7testing7MessageD2Ev.exit12.i.i343
  %.pn55.pn.pn.i337 = phi { ptr, i32 } [ %.pn55.pn.i362, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit167.i ], [ %i.aoc, %bb.ij ], [ %.pn.i.i340, %_ZN7testing7MessageD2Ev.exit12.i.i343 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br i1 %.not.i.i.i73.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i177.i, label %.lr.ph.preheader.i.i.i169.i

.lr.ph.preheader.i.i.i169.i:                      ; preds = %.body.i336
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i170.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i171.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i172.i

.lr.ph.i.i.i172.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i, %.lr.ph.preheader.i.i.i169.i
  %.05.i.i.i173.i = phi ptr [ %i.bba, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i ], [ %.sroa.0246.0.i, %.lr.ph.preheader.i.i.i169.i ] ; 2 uses
  %i.bas = phi i32 [ %i.bau, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i171.i, %.lr.ph.preheader.i.i.i169.i ]
  %i.bat = phi i32 [ %i.baz, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i170.i, %.lr.ph.preheader.i.i.i169.i ] ; 2 uses
  %i.bau = add nsw i32 %i.bas, -1                 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.05.i.i.i173.i, i64 4
  %i.baw = load i8, ptr %i.bav, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bax = trunc nuw i8 %i.baw to i1
  br i1 %i.bax, label %bb.me, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i

bb.me:                                            ; preds = %.lr.ph.i.i.i172.i
  %i.bay = add nsw i32 %i.bat, -1                 ; 2 uses
  store i32 %i.bay, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i: ; preds = %bb.me, %.lr.ph.i.i.i172.i
  %i.baz = phi i32 [ %i.bat, %.lr.ph.i.i.i172.i ], [ %i.bay, %bb.me ]
  %i.bba = getelementptr inbounds nuw i8, ptr %.05.i.i.i173.i, i64 8 ; 2 uses
  %.not.i.i.i175.i = icmp eq ptr %i.bba, %.0.lcssa.i.i.i.i.i.i.i334
  br i1 %.not.i.i.i175.i, label %._crit_edge.i.i.i176.i, label %.lr.ph.i.i.i172.i, !llvm.loop !66

._crit_edge.i.i.i176.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i174.i
  store i32 %i.bau, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i177.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i177.i: ; preds = %._crit_edge.i.i.i176.i, %.body.i336
  %.not.i.i1.i178.i = icmp eq ptr %.sroa.0246.0.i, null
  br i1 %.not.i.i1.i178.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit180.i, label %bb.mf

bb.mf:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i177.i
  %i.bbb = sub i64 %.sroa.13.0.i333, %i.alk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0.i, i64 noundef %i.bbb) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit180.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit180.i: ; preds = %bb.mf, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i177.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i321
  %.pn55.pn.pn.pn.i322 = phi { ptr, i32 } [ %.pn55.pn.pn.i337, %bb.mf ], [ %lpad.phi268.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i321 ], [ %.pn55.pn.pn.i337, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i177.i ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  br label %.body470

bb.mg:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #36
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %98, ptr noundef nonnull @.str.3, i32 noundef 1613, ptr noundef nonnull @.str.552)
          to label %bb.mh unwind label %bb.qz

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  %i.bbc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bbo = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bbp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bbq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  br label %bb.mi

bb.mi:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i699, %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc792 unwind label %bb.ra

.noexc792:                                        ; preds = %bb.mi
  %i.bbr = load i64, ptr %i.a, align 8, !tbaa !197 ; 9 uses
  %i.bbs = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bbt = add nsw i32 %i.bbs, 1
  store i32 %i.bbt, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bbu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bbv = add nsw i32 %i.bbu, 1
  store i32 %i.bbv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bbw = icmp ugt i64 %i.bbr, 1152921504606846975
  br i1 %i.bbw, label %bb.mj, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472

bb.mj:                                            ; preds = %.noexc792
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i791 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i789

.noexc.i791:                                      ; preds = %bb.mj
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472: ; preds = %.noexc792
  %.not.i.i.i.i.i473 = icmp eq i64 %i.bbr, 0
  br i1 %.not.i.i.i.i.i473, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490, label %.lr.ph.i.i.i.i.i.i.i474

.lr.ph.i.i.i.i.i.i.i474:                          ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472
  %i.bbx = shl nuw nsw i64 %i.bbr, 3
  %i.bby = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbx) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i475 ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i481:       ; preds = %.lr.ph.i.i.i.i.i.i.i474
  %.pre12.i.i482 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i483 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i484 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter10442 = and i64 %i.bbr, 7              ; 2 uses
  %lcmp.mod10443.not = icmp eq i64 %xtraiter10442, 0
  br i1 %lcmp.mod10443.not, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol

.lr.ph.i.split.us.i.i.i.i.i.i485.prol:            ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol
  %.014.i.us.i.i.i.i.i.i486.prol = phi ptr [ %i.bcb, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ], [ %i.bby, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i487.prol = phi i64 [ %i.bca, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ], [ %i.bbr, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ]
  %prol.iter10444 = phi i64 [ %prol.iter10444.next, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i486.prol, align 4, !tbaa !453
  %i.bbz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486.prol, i64 4
  store i8 1, ptr %i.bbz, align 4, !tbaa !454
  %i.bca = add nsw i64 %.01113.i.us.i.i.i.i.i.i487.prol, -1 ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486.prol, i64 8 ; 3 uses
  %prol.iter10444.next = add i64 %prol.iter10444, 1 ; 2 uses
  %prol.iter10444.cmp.not = icmp eq i64 %prol.iter10444.next, %xtraiter10442
  br i1 %prol.iter10444.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol, !llvm.loop !7127

.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit:   ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i485.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481
  %.lcssa8557.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ], [ %i.bcb, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ]
  %.014.i.us.i.i.i.i.i.i486.unr = phi ptr [ %i.bby, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ], [ %i.bcb, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ]
  %.01113.i.us.i.i.i.i.i.i487.unr = phi i64 [ %i.bbr, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ], [ %i.bca, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ]
  %i.bcc = icmp ult i64 %i.bbr, 8
  br i1 %i.bcc, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489, label %.lr.ph.i.split.us.i.i.i.i.i.i485

.lr.ph.i.split.us.i.i.i.i.i.i485:                 ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i485
  %.014.i.us.i.i.i.i.i.i486 = phi ptr [ %i.bct, %.lr.ph.i.split.us.i.i.i.i.i.i485 ], [ %.014.i.us.i.i.i.i.i.i486.unr, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i487 = phi i64 [ %i.bcs, %.lr.ph.i.split.us.i.i.i.i.i.i485 ], [ %.01113.i.us.i.i.i.i.i.i487.unr, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i486, align 4, !tbaa !453
  %i.bcd = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 4
  store i8 1, ptr %i.bcd, align 4, !tbaa !454
  %i.bce = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 8
  store i32 12345, ptr %i.bce, align 4, !tbaa !453
  %i.bcf = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 12
  store i8 1, ptr %i.bcf, align 4, !tbaa !454
  %i.bcg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 16
  store i32 12345, ptr %i.bcg, align 4, !tbaa !453
  %i.bch = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 20
  store i8 1, ptr %i.bch, align 4, !tbaa !454
  %i.bci = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 24
  store i32 12345, ptr %i.bci, align 4, !tbaa !453
  %i.bcj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 28
  store i8 1, ptr %i.bcj, align 4, !tbaa !454
  %i.bck = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 32
  store i32 12345, ptr %i.bck, align 4, !tbaa !453
  %i.bcl = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 36
  store i8 1, ptr %i.bcl, align 4, !tbaa !454
  %i.bcm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 40
  store i32 12345, ptr %i.bcm, align 4, !tbaa !453
  %i.bcn = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 44
  store i8 1, ptr %i.bcn, align 4, !tbaa !454
  %i.bco = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 48
  store i32 12345, ptr %i.bco, align 4, !tbaa !453
  %i.bcp = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 52
  store i8 1, ptr %i.bcp, align 4, !tbaa !454
  %i.bcq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 56
  store i32 12345, ptr %i.bcq, align 4, !tbaa !453
  %i.bcr = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 60
  store i8 1, ptr %i.bcr, align 4, !tbaa !454
  %i.bcs = add nsw i64 %.01113.i.us.i.i.i.i.i.i487, -8 ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i488.7 = icmp eq i64 %i.bcs, 0
  br i1 %.not.i.us.i.i.i.i.i.i488.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489, label %.lr.ph.i.split.us.i.i.i.i.i.i485, !llvm.loop !64

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i485, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit
  %.lcssa8557 = phi ptr [ %.lcssa8557.unr, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit ], [ %i.bct, %.lr.ph.i.split.us.i.i.i.i.i.i485 ]
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.bby, i64 %i.bbr
  %i.bcv = trunc i64 %i.bbr to i32                ; 3 uses
  %i.bcw = add i32 %.pre12.i.i482, %i.bcv         ; 2 uses
  %i.bcx = add i32 %.pre13.i.i483, %i.bcv         ; 2 uses
  %i.bcy = add i32 %.pre14.i.i484, %i.bcv
  store i32 %i.bcw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.bcx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.bcy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bcz = ptrtoint ptr %i.bcu to i64
  %i.bda = add nsw i32 %i.bcw, -1
  %i.bdb = add nsw i32 %i.bcx, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472
  %i.bdc = phi i32 [ %i.bbu, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bdb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ]
  %i.bdd = phi i32 [ %i.bbs, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bda, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ]
  %.sroa.13.0.i491 = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bcz, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ] ; 2 uses
  %.sroa.0246.0.i492 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bby, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i493 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %.lcssa8557, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ] ; 4 uses
  store i32 %i.bdd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.bdc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bde = ptrtoint ptr %.sroa.0246.0.i492 to i64 ; 3 uses
  %i.bdf = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i493 to i64
  %i.bdg = sub i64 %i.bdf, %i.bde                 ; 4 uses
  %i.bdh = ashr exact i64 %i.bdg, 3               ; 6 uses
  %i.bdi = icmp ugt i64 %i.bdh, 3
  %.not.i.i.i73.i494 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i493, %.sroa.0246.0.i492 ; 3 uses
  %i.bdj = icmp ugt i64 %i.bdh, 1152921504606846975
  %.sroa.speculated.i.i.i.i495 = call i64 @llvm.umax.i64(i64 %i.bdh, i64 6) ; 2 uses
  %i.bdk = shl nuw nsw i64 %.sroa.speculated.i.i.i.i495, 3
  %i.bdl = ashr exact i64 %i.bdg, 2
  %i.bdm = trunc i64 %i.bdh to i32                ; 2 uses
  %i.bdn = icmp eq i64 %i.bdg, 8
  %unroll_iter10452 = and i64 %i.bdh, -2
  %i.bdo = and i64 %i.bdg, 8
  %lcmp.mod10450.not = icmp eq i64 %i.bdo, 0
  %lcmp.mod10451 = trunc i64 %i.bdh to i1
  br label %bb.mn

bb.mk:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit154.i687
  br i1 %.not.i.i.i73.i494, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i697, label %.lr.ph.preheader.i.i.i.i689

.lr.ph.preheader.i.i.i.i689:                      ; preds = %bb.mk
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i690 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i691 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i692

.lr.ph.i.i.i.i692:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694, %.lr.ph.preheader.i.i.i.i689
  %.05.i.i.i.i693 = phi ptr [ %i.bdx, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694 ], [ %.sroa.0246.0.i492, %.lr.ph.preheader.i.i.i.i689 ] ; 2 uses
  %i.bdp = phi i32 [ %i.bdr, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i691, %.lr.ph.preheader.i.i.i.i689 ]
  %i.bdq = phi i32 [ %i.bdw, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i690, %.lr.ph.preheader.i.i.i.i689 ] ; 2 uses
  %i.bdr = add nsw i32 %i.bdp, -1                 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i693, i64 4
  %i.bdt = load i8, ptr %i.bds, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bdu = trunc nuw i8 %i.bdt to i1
  br i1 %i.bdu, label %bb.ml, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694

bb.ml:                                            ; preds = %.lr.ph.i.i.i.i692
  %i.bdv = add nsw i32 %i.bdq, -1                 ; 2 uses
  store i32 %i.bdv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694

_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694: ; preds = %bb.ml, %.lr.ph.i.i.i.i692
  %i.bdw = phi i32 [ %i.bdq, %.lr.ph.i.i.i.i692 ], [ %i.bdv, %bb.ml ]
  %i.bdx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i693, i64 8 ; 2 uses
  %.not.i.i.i.i695 = icmp eq ptr %i.bdx, %.0.lcssa.i.i.i.i.i.i.i493
  br i1 %.not.i.i.i.i695, label %._crit_edge.i.i.i.i696, label %.lr.ph.i.i.i.i692, !llvm.loop !66

._crit_edge.i.i.i.i696:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEEvPT_.exit.i.i.i.i694
  store i32 %i.bdr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i697

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i697: ; preds = %._crit_edge.i.i.i.i696, %bb.mk
  %.not.i.i1.i.i698 = icmp eq ptr %.sroa.0246.0.i492, null
  br i1 %.not.i.i1.i.i698, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i699, label %bb.mm

bb.mm:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i697
  %i.bdy = sub i64 %.sroa.13.0.i491, %i.bde
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0.i492, i64 noundef %i.bdy) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i699

_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit.i699: ; preds = %bb.mm, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal20CopyableOnlyInstanceES3_EvT_S5_RSaIT0_E.exit.i.i697
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bdz = load i64, ptr %i.a, align 8, !tbaa !197
  %i.bea = add i64 %i.bdz, 1                      ; 2 uses
  store i64 %i.bea, ptr %i.a, align 8, !tbaa !197
  %i.beb = icmp ult i64 %i.bea, 6
  br i1 %i.beb, label %bb.mi, label %bb.qt, !llvm.loop !7128

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i475: ; preds = %.lr.ph.i.i.i.i.i.i.i474
  %lpad.loopexit266.i476 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i477

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i789: ; preds = %bb.mj
  %lpad.loopexit.split-lp267.i790 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i477

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.i477: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i789, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i475
  %lpad.phi268.i478 = phi { ptr, i32 } [ %lpad.loopexit266.i476, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.i475 ], [ %lpad.loopexit.split-lp267.i790, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit61.loopexit.split-lp.i789 ]
  %i.bec = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bed = add nsw i32 %i.bec, -1
  store i32 %i.bed, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bee = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bef = add nsw i32 %i.bee, -1
  store i32 %i.bef, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit180.i479

bb.mn:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit154.i687, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490
  %storemerge34617.i496 = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490 ], [ %i.bro, %_ZNSt6vectorIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceESaIS3_EED2Ev.exit154.i687 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc63.i509 unwind label %bb.mw

.noexc63.i509:                                    ; preds = %bb.mn
  %i.beg = load ptr, ptr %6, align 8, !tbaa !223
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 16
  %i.bei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.beh, i64 noundef %storemerge34617.i496)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515 unwind label %bb.mq ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515:    ; preds = %.noexc63.i509
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.mo unwind label %bb.mq

bb.mo:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %5)
          to label %bb.mp unwind label %bb.mr

bb.mp:                                            ; preds = %bb.mo
  %i.bej = load ptr, ptr %5, align 8, !tbaa !195  ; 2 uses
  %i.bek = icmp eq ptr %i.bej, %i.bbc
  br i1 %i.bek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i518

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i518: ; preds = %bb.mp
  %i.bel = load i64, ptr %i.bbc, align 8, !tbaa !198
  %i.bem = add i64 %i.bel, 1
  call void @_ZdlPvm(ptr noundef %i.bej, i64 noundef %i.bem) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519: ; preds = %bb.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i518
  %i.ben = load ptr, ptr %6, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i62.i520 = icmp eq ptr %i.ben, null
  br i1 %.not.i.i.i62.i520, label %bb.ms, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i521

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i521: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !169
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 8
  %i.beq = load ptr, ptr %i.bep, align 8
  call void %i.beq(ptr noundef nonnull align 8 dereferenceable(128) %i.ben) #36, !inline_history !7129
  br label %bb.ms

bb.mq:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515, %.noexc63.i509
  %i.ber = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510

bb.mr:                                            ; preds = %bb.mo
  %i.bes = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bet = load ptr, ptr %5, align 8, !tbaa !195  ; 2 uses
  %i.beu = icmp eq ptr %i.bet, %i.bbc
  br i1 %i.beu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516: ; preds = %bb.mr
  %i.bev = load i64, ptr %i.bbc, align 8, !tbaa !198
  %i.bew = add i64 %i.bev, 1
  call void @_ZdlPvm(ptr noundef %i.bet, i64 noundef %i.bew) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510: ; preds = %bb.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516, %bb.mq
  %.pn.i.i511 = phi { ptr, i32 } [ %i.ber, %bb.mq ], [ %i.bes, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516 ], [ %i.bes, %bb.mr ]
  %i.bex = load ptr, ptr %6, align 8, !tbaa !223  ; 3 uses
  %.not.i.i10.i.i512 = icmp eq ptr %i.bex, null
  br i1 %.not.i.i10.i.i512, label %_ZN7testing7MessageD2Ev.exit12.i.i514, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i513

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !169
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8
  call void %i.bfa(ptr noundef nonnull align 8 dereferenceable(128) %i.bex) #36, !inline_history !7129
  br label %_ZN7testing7MessageD2Ev.exit12.i.i514

_ZN7testing7MessageD2Ev.exit12.i.i514:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.body.i497

bb.ms:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i522 = icmp eq i64 %storemerge34617.i496, 0
end_hunk_20
begin_hunk_21_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv
define internal void @_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %8 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %9 = alloca %"class.absl::lts_20260526::InlinedVector.1556", align 8 ; 18 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 9 uses
  %30 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %31 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %32 = alloca %"class.absl::lts_20260526::InlinedVector.1556", align 8 ; 18 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %52 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.o = alloca i64, align 8                      ; 9 uses
  %53 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %54 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %55 = alloca %"class.std::__cxx11::list.1537", align 16 ; 17 uses
  %56 = alloca %"class.absl::lts_20260526::InlinedVector.1556", align 8 ; 18 uses
  %57 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %58 = alloca %"class.testing::Message", align 8 ; 7 uses
  %59 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %60 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %66 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %67 = alloca %"class.testing::Message", align 8 ; 7 uses
  %68 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %69 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %76 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.v = alloca i64, align 8                      ; 9 uses
  %77 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %78 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %79 = alloca %"class.std::__cxx11::list.1537", align 16 ; 17 uses
  %80 = alloca %"class.absl::lts_20260526::InlinedVector.1556", align 8 ; 18 uses
  %81 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %82 = alloca %"class.testing::Message", align 8 ; 7 uses
  %83 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %84 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %85 = alloca %"class.testing::Message", align 8 ; 7 uses
  %86 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %87 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %88 = alloca %"class.testing::Message", align 8 ; 7 uses
  %89 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %90 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %91 = alloca %"class.testing::Message", align 8 ; 7 uses
  %92 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %93 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %96 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %97 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %98 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #36
  call void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %95, ptr noundef nonnull @.str.3, i32 noundef 1607, ptr noundef nonnull @.str.549)
  call void @llvm.lifetime.start.p0(ptr nonnull %93)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  store i64 0, ptr %i.v, align 8, !tbaa !197
  %i.ac = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 4 uses
  %i.as = insertelement <2 x ptr> poison, ptr %79, i64 0
  %i.at = shufflevector <2 x ptr> %i.as, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %77, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc unwind label %bb.qu

.noexc:                                           ; preds = %bb.b
  %i.au = load i64, ptr %i.v, align 8, !tbaa !197 ; 9 uses
  %i.av = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ax = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.az = icmp ugt i64 %i.au, 1152921504606846975
  br i1 %i.az, label %bb.c, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.c:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %.noexc
  %.not.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ba = shl nuw nsw i64 %i.au, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre12.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter = and i64 %i.au, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol

.lr.ph.i.split.us.i.i.i.i.i.i.prol:               ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol
  %.014.i.us.i.i.i.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.bb, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ %i.au, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i.prol, align 4, !tbaa !453
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 4
  store i8 1, ptr %i.bc, align 4, !tbaa !454
  %i.bd = add nsw i64 %.01113.i.us.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i.prol, !llvm.loop !7168

.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit:      ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i
  %.lcssa9990.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.be, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.014.i.us.i.i.i.i.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.be, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %.01113.i.us.i.i.i.i.i.i.unr = phi i64 [ %i.au, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i ], [ %i.bd, %.lr.ph.i.split.us.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.au, 8
  br i1 %i.bf, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i

.lr.ph.i.split.us.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i
  %.014.i.us.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.014.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.split.us.i.i.i.i.i.i ], [ %.01113.i.us.i.i.i.i.i.i.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i, align 4, !tbaa !453
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 4
  store i8 1, ptr %i.bg, align 4, !tbaa !454
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 8
  store i32 12345, ptr %i.bh, align 4, !tbaa !453
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 12
  store i8 1, ptr %i.bi, align 4, !tbaa !454
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 16
  store i32 12345, ptr %i.bj, align 4, !tbaa !453
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 20
  store i8 1, ptr %i.bk, align 4, !tbaa !454
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 24
  store i32 12345, ptr %i.bl, align 4, !tbaa !453
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 28
  store i8 1, ptr %i.bm, align 4, !tbaa !454
  %i.bn = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 32
  store i32 12345, ptr %i.bn, align 4, !tbaa !453
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 36
  store i8 1, ptr %i.bo, align 4, !tbaa !454
  %i.bp = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 40
  store i32 12345, ptr %i.bp, align 4, !tbaa !453
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 44
  store i8 1, ptr %i.bq, align 4, !tbaa !454
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 48
  store i32 12345, ptr %i.br, align 4, !tbaa !453
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 52
  store i8 1, ptr %i.bs, align 4, !tbaa !454
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 56
  store i32 12345, ptr %i.bt, align 4, !tbaa !453
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 60
  store i8 1, ptr %i.bu, align 4, !tbaa !454
  %i.bv = add nsw i64 %.01113.i.us.i.i.i.i.i.i, -8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i.7 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.us.i.i.i.i.i.i.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, label %.lr.ph.i.split.us.i.i.i.i.i.i, !llvm.loop !78

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit
  %.lcssa9990 = phi ptr [ %.lcssa9990.unr, %.lr.ph.i.split.us.i.i.i.i.i.i.prol.loopexit ], [ %i.bw, %.lr.ph.i.split.us.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.au
  %i.by = trunc i64 %i.au to i32                  ; 3 uses
  %i.bz = add i32 %.pre12.i.i, %i.by              ; 2 uses
  %i.ca = add i32 %.pre13.i.i, %i.by              ; 2 uses
  %i.cb = add i32 %.pre14.i.i, %i.by
  store i32 %i.bz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.ca, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.cb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = add nsw i32 %i.bz, -1
  %i.ce = add nsw i32 %i.ca, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.cf = phi i32 [ %i.ax, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.ce, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ]
  %i.cg = phi i32 [ %i.av, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.cd, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ]
  %.sroa.13232.0.i = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.cc, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 2 uses
  %.sroa.0226.0.i = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.bb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa9990, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i ] ; 4 uses
  store i32 %i.cg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.cf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.ch = ptrtoint ptr %.sroa.0226.0.i to i64     ; 3 uses
  %i.ci = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i to i64
  %i.cj = sub i64 %i.ci, %i.ch                    ; 4 uses
  %i.ck = ashr exact i64 %i.cj, 3                 ; 6 uses
  %i.cl = icmp ugt i64 %i.ck, 3
  %.not.i.i.i65.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i, %.sroa.0226.0.i ; 3 uses
  %i.cm = icmp ugt i64 %i.ck, 1152921504606846975
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 6) ; 2 uses
  %i.cn = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 3
  %i.co = ashr exact i64 %i.cj, 2
  %i.cp = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cq = icmp eq i64 %i.cj, 8
  %unroll_iter = and i64 %i.ck, -2
  %i.cr = and i64 %i.cj, 8
  %lcmp.mod10395.not = icmp eq i64 %i.cr, 0
  %lcmp.mod10396 = trunc i64 %i.ck to i1
  br label %bb.g

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit136.i
  br i1 %.not.i.i.i65.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i ], [ %.sroa.0226.0.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.cs = phi i32 [ %i.cu, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.ct = phi i32 [ %i.cz, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.cu = add nsw i32 %i.cs, -1                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !454, !range !189, !noundef !190
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.e, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cy = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.cz = phi i32 [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.cy, %bb.e ]
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !80

._crit_edge.i.i.i.i:                              ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i
  store i32 %i.cu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.d
  %.not.i.i1.i.i = icmp eq ptr %.sroa.0226.0.i, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.db = sub i64 %.sroa.13232.0.i, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0226.0.i, i64 noundef %i.db) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %77) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #36
  %i.dc = load i64, ptr %i.v, align 8, !tbaa !197
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.v, align 8, !tbaa !197
  %i.de = icmp ult i64 %i.dd, 6
  br i1 %i.de, label %bb.b, label %bb.dj, !llvm.loop !7169

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lpad.loopexit240.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i: ; preds = %bb.c
  %lpad.loopexit.split-lp241.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i
  %lpad.phi242.i = phi { ptr, i32 } [ %lpad.loopexit240.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i ], [ %lpad.loopexit.split-lp241.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i ]
  %i.df = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dh = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i

bb.g:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit136.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %storemerge31577.i = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i ], [ %i.qg, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit136.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %75)
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %76)
          to label %.noexc58.i unwind label %bb.o

.noexc58.i:                                       ; preds = %bb.g
  %i.dj = load ptr, ptr %76, align 8, !tbaa !223
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i64 noundef %storemerge31577.i)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i:       ; preds = %.noexc58.i
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(8) %76)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %78, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %75)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %75, align 8, !tbaa !195  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ac
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.do = load i64, ptr %i.ac, align 8, !tbaa !198
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dq = load ptr, ptr %76, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i57.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i57.i, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !169
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(128) %i.dq) #36, !inline_history !7170
  br label %bb.l

bb.j:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i, %.noexc58.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

bb.k:                                             ; preds = %bb.h
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %75, align 8, !tbaa !195  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ac
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.k
  %i.dy = load i64, ptr %i.ac, align 8, !tbaa !198
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.du, %bb.j ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i ], [ %i.dv, %bb.k ]
  %i.ea = load ptr, ptr %76, align 8, !tbaa !223  ; 3 uses
  %.not.i.i10.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i10.i.i, label %_ZN7testing7MessageD2Ev.exit12.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !169
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #36, !inline_history !7170
  br label %_ZN7testing7MessageD2Ev.exit12.i.i

_ZN7testing7MessageD2Ev.exit12.i.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #36
  br label %.body.i

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %75)
  %.not.i = icmp eq i64 %storemerge31577.i, 0
end_hunk_21
begin_hunk_22_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.dd, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

bb.dd:                                            ; preds = %.lr.ph.i.i795
  %i.qo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.qp = add nsw i32 %i.qo, -1
  store i32 %i.qp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i: ; preds = %bb.dd, %.lr.ph.i.i795
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #39
  %.not.i.i796 = icmp eq ptr %i.qi, %79
  br i1 %.not.i.i796, label %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit, label %.lr.ph.i.i795, !llvm.loop !148

_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i, %.body59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #36
  br label %bb.de

bb.de:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i
  %.sroa.0205.0349.i = phi ptr [ %.sroa.0205.0569.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i ], [ %.sroa.0205.0.lcssa978.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit ] ; 5 uses
  %.sroa.9.0299.i = phi ptr [ %.sroa.16.0571.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i ], [ %.sroa.9.0.lcssa991.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit ] ; 2 uses
  %.sroa.16.0249.i = phi ptr [ %.sroa.16.0571.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i ], [ %.sroa.16.0.lcssa995.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit ]
  %.pn51.i = phi { ptr, i32 } [ %lpad.phi.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i ], [ %.pn43.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit ]
  %.not4.i.i.i137.i = icmp eq ptr %.sroa.0205.0349.i, %.sroa.9.0299.i
  br i1 %.not4.i.i.i137.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i, label %.lr.ph.preheader.i.i.i138.i

.lr.ph.preheader.i.i.i138.i:                      ; preds = %bb.de
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i139.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i140.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i141.i

.lr.ph.i.i.i141.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i, %.lr.ph.preheader.i.i.i138.i
  %.05.i.i.i142.i = phi ptr [ %i.qy, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i ], [ %.sroa.0205.0349.i, %.lr.ph.preheader.i.i.i138.i ] ; 2 uses
  %i.qq = phi i32 [ %i.qs, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i140.i, %.lr.ph.preheader.i.i.i138.i ]
  %i.qr = phi i32 [ %i.qx, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i139.i, %.lr.ph.preheader.i.i.i138.i ] ; 2 uses
  %i.qs = add nsw i32 %i.qq, -1                   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.05.i.i.i142.i, i64 4
  %i.qu = load i8, ptr %i.qt, align 4, !tbaa !454, !range !189, !noundef !190
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %bb.df, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i

bb.df:                                            ; preds = %.lr.ph.i.i.i141.i
  %i.qw = add nsw i32 %i.qr, -1                   ; 2 uses
  store i32 %i.qw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i: ; preds = %bb.df, %.lr.ph.i.i.i141.i
  %i.qx = phi i32 [ %i.qr, %.lr.ph.i.i.i141.i ], [ %i.qw, %bb.df ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.05.i.i.i142.i, i64 8 ; 2 uses
  %.not.i.i.i144.i = icmp eq ptr %i.qy, %.sroa.9.0299.i
  br i1 %.not.i.i.i144.i, label %._crit_edge.i.i.i145.i, label %.lr.ph.i.i.i141.i, !llvm.loop !80

._crit_edge.i.i.i145.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i
  store i32 %i.qs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i: ; preds = %._crit_edge.i.i.i145.i, %bb.de
  %.not.i.i1.i147.i = icmp eq ptr %.sroa.0205.0349.i, null
  br i1 %.not.i.i1.i147.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i
  %i.qz = ptrtoint ptr %.sroa.16.0249.i to i64
  %i.ra = ptrtoint ptr %.sroa.0205.0349.i to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0349.i, i64 noundef %i.rb) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i: ; preds = %bb.dg, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %78) #36
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i, %bb.o, %_ZN7testing7MessageD2Ev.exit12.i.i
  %.pn51.pn.i = phi { ptr, i32 } [ %.pn51.i, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i ], [ %i.ew, %bb.o ], [ %.pn.i.i, %_ZN7testing7MessageD2Ev.exit12.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #36
  br i1 %.not.i.i.i65.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i, label %.lr.ph.preheader.i.i.i150.i

.lr.ph.preheader.i.i.i150.i:                      ; preds = %.body.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i151.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i152.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i153.i

.lr.ph.i.i.i153.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i, %.lr.ph.preheader.i.i.i150.i
  %.05.i.i.i154.i = phi ptr [ %i.rk, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i ], [ %.sroa.0226.0.i, %.lr.ph.preheader.i.i.i150.i ] ; 2 uses
  %i.rc = phi i32 [ %i.re, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i152.i, %.lr.ph.preheader.i.i.i150.i ]
  %i.rd = phi i32 [ %i.rj, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i151.i, %.lr.ph.preheader.i.i.i150.i ] ; 2 uses
  %i.re = add nsw i32 %i.rc, -1                   ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.05.i.i.i154.i, i64 4
  %i.rg = load i8, ptr %i.rf, align 4, !tbaa !454, !range !189, !noundef !190
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %bb.dh, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i

bb.dh:                                            ; preds = %.lr.ph.i.i.i153.i
  %i.ri = add nsw i32 %i.rd, -1                   ; 2 uses
  store i32 %i.ri, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i: ; preds = %bb.dh, %.lr.ph.i.i.i153.i
  %i.rj = phi i32 [ %i.rd, %.lr.ph.i.i.i153.i ], [ %i.ri, %bb.dh ]
  %i.rk = getelementptr inbounds nuw i8, ptr %.05.i.i.i154.i, i64 8 ; 2 uses
  %.not.i.i.i156.i = icmp eq ptr %i.rk, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not.i.i.i156.i, label %._crit_edge.i.i.i157.i, label %.lr.ph.i.i.i153.i, !llvm.loop !80

._crit_edge.i.i.i157.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i
  store i32 %i.re, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i: ; preds = %._crit_edge.i.i.i157.i, %.body.i
  %.not.i.i1.i159.i = icmp eq ptr %.sroa.0226.0.i, null
  br i1 %.not.i.i1.i159.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i, label %bb.di

bb.di:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i
  %i.rl = sub i64 %.sroa.13232.0.i, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0226.0.i, i64 noundef %i.rl) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i: ; preds = %bb.di, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i
  %.pn51.pn.pn.i = phi { ptr, i32 } [ %lpad.phi242.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i ], [ %.pn51.pn.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i ], [ %.pn51.pn.i, %bb.di ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %77) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #36
  br label %.body

bb.dj:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %93)
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #36
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %96, ptr noundef nonnull @.str.3, i32 noundef 1609, ptr noundef nonnull @.str.550)
          to label %bb.dk unwind label %bb.qv

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #36
  store i64 0, ptr %i.o, align 8, !tbaa !197
  %i.rm = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 7 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.sa = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.sb = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.sc = insertelement <2 x ptr> poison, ptr %55, i64 0
  %i.sd = shufflevector <2 x ptr> %i.sc, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i226, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %53, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc313 unwind label %bb.qw

.noexc313:                                        ; preds = %bb.dl
  %i.se = load i64, ptr %i.o, align 8, !tbaa !197 ; 9 uses
  %i.sf = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.sg = add nsw i32 %i.sf, 1
  store i32 %i.sg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.sh = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.si = add nsw i32 %i.sh, 1
  store i32 %i.si, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.sj = icmp ugt i64 %i.se, 1152921504606846975
  br i1 %i.sj, label %bb.dm, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13

bb.dm:                                            ; preds = %.noexc313
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i312 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i310

.noexc.i312:                                      ; preds = %bb.dm
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13: ; preds = %.noexc313
  %.not.i.i.i.i.i14 = icmp eq i64 %i.se, 0
  br i1 %.not.i.i.i.i.i14, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31, label %.lr.ph.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i15:                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13
  %i.sk = shl nuw nsw i64 %i.se, 3
  %i.sl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sk) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i16 ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i22:        ; preds = %.lr.ph.i.i.i.i.i.i.i15
  %.pre12.i.i23 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i24 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i25 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter10397 = and i64 %i.se, 7               ; 2 uses
  %lcmp.mod10398.not = icmp eq i64 %xtraiter10397, 0
  br i1 %lcmp.mod10398.not, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol

.lr.ph.i.split.us.i.i.i.i.i.i26.prol:             ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol
  %.014.i.us.i.i.i.i.i.i27.prol = phi ptr [ %i.so, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ], [ %i.sl, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i28.prol = phi i64 [ %i.sn, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ], [ %i.se, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ]
  %prol.iter10399 = phi i64 [ %prol.iter10399.next, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i27.prol, align 4, !tbaa !453
  %i.sm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27.prol, i64 4
  store i8 1, ptr %i.sm, align 4, !tbaa !454
  %i.sn = add nsw i64 %.01113.i.us.i.i.i.i.i.i28.prol, -1 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27.prol, i64 8 ; 3 uses
  %prol.iter10399.next = add i64 %prol.iter10399, 1 ; 2 uses
  %prol.iter10399.cmp.not = icmp eq i64 %prol.iter10399.next, %xtraiter10397
  br i1 %prol.iter10399.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i26.prol, !llvm.loop !7181

.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit:    ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i26.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22
  %.lcssa9588.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ], [ %i.so, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ]
  %.014.i.us.i.i.i.i.i.i27.unr = phi ptr [ %i.sl, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ], [ %i.so, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ]
  %.01113.i.us.i.i.i.i.i.i28.unr = phi i64 [ %i.se, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i22 ], [ %i.sn, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol ]
  %i.sp = icmp ult i64 %i.se, 8
  br i1 %i.sp, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30, label %.lr.ph.i.split.us.i.i.i.i.i.i26

.lr.ph.i.split.us.i.i.i.i.i.i26:                  ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i26
  %.014.i.us.i.i.i.i.i.i27 = phi ptr [ %i.tg, %.lr.ph.i.split.us.i.i.i.i.i.i26 ], [ %.014.i.us.i.i.i.i.i.i27.unr, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i28 = phi i64 [ %i.tf, %.lr.ph.i.split.us.i.i.i.i.i.i26 ], [ %.01113.i.us.i.i.i.i.i.i28.unr, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i27, align 4, !tbaa !453
  %i.sq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 4
  store i8 1, ptr %i.sq, align 4, !tbaa !454
  %i.sr = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 8
  store i32 12345, ptr %i.sr, align 4, !tbaa !453
  %i.ss = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 12
  store i8 1, ptr %i.ss, align 4, !tbaa !454
  %i.st = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 16
  store i32 12345, ptr %i.st, align 4, !tbaa !453
  %i.su = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 20
  store i8 1, ptr %i.su, align 4, !tbaa !454
  %i.sv = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 24
  store i32 12345, ptr %i.sv, align 4, !tbaa !453
  %i.sw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 28
  store i8 1, ptr %i.sw, align 4, !tbaa !454
  %i.sx = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 32
  store i32 12345, ptr %i.sx, align 4, !tbaa !453
  %i.sy = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 36
  store i8 1, ptr %i.sy, align 4, !tbaa !454
  %i.sz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 40
  store i32 12345, ptr %i.sz, align 4, !tbaa !453
  %i.ta = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 44
  store i8 1, ptr %i.ta, align 4, !tbaa !454
  %i.tb = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 48
  store i32 12345, ptr %i.tb, align 4, !tbaa !453
  %i.tc = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 52
  store i8 1, ptr %i.tc, align 4, !tbaa !454
  %i.td = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 56
  store i32 12345, ptr %i.td, align 4, !tbaa !453
  %i.te = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 60
  store i8 1, ptr %i.te, align 4, !tbaa !454
  %i.tf = add nsw i64 %.01113.i.us.i.i.i.i.i.i28, -8 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i27, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i29.7 = icmp eq i64 %i.tf, 0
  br i1 %.not.i.us.i.i.i.i.i.i29.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30, label %.lr.ph.i.split.us.i.i.i.i.i.i26, !llvm.loop !78

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i26, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit
  %.lcssa9588 = phi ptr [ %.lcssa9588.unr, %.lr.ph.i.split.us.i.i.i.i.i.i26.prol.loopexit ], [ %i.tg, %.lr.ph.i.split.us.i.i.i.i.i.i26 ]
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.se
  %i.ti = trunc i64 %i.se to i32                  ; 3 uses
  %i.tj = add i32 %.pre12.i.i23, %i.ti            ; 2 uses
  %i.tk = add i32 %.pre13.i.i24, %i.ti            ; 2 uses
  %i.tl = add i32 %.pre14.i.i25, %i.ti
  store i32 %i.tj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.tk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.tl, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.tm = ptrtoint ptr %i.th to i64
  %i.tn = add nsw i32 %i.tj, -1
  %i.to = add nsw i32 %i.tk, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13
  %i.tp = phi i32 [ %i.sh, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.to, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ]
  %i.tq = phi i32 [ %i.sf, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.tn, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ]
  %.sroa.13232.0.i32 = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.tm, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ] ; 2 uses
  %.sroa.0226.0.i33 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %i.sl, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i34 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i13 ], [ %.lcssa9588, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i30 ] ; 4 uses
  store i32 %i.tq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.tp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.tr = ptrtoint ptr %.sroa.0226.0.i33 to i64   ; 3 uses
  %i.ts = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i34 to i64
  %i.tt = sub i64 %i.ts, %i.tr                    ; 4 uses
  %i.tu = ashr exact i64 %i.tt, 3                 ; 6 uses
  %i.tv = icmp ugt i64 %i.tu, 3
  %.not.i.i.i65.i35 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i34, %.sroa.0226.0.i33 ; 3 uses
  %i.tw = icmp ugt i64 %i.tu, 1152921504606846975
  %.sroa.speculated.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.tu, i64 6) ; 2 uses
  %i.tx = shl nuw nsw i64 %.sroa.speculated.i.i.i.i36, 3
  %i.ty = ashr exact i64 %i.tt, 2
  %i.tz = trunc i64 %i.tu to i32                  ; 2 uses
  %i.ua = icmp eq i64 %i.tt, 8
  %unroll_iter10407 = and i64 %i.tu, -2
  %i.ub = and i64 %i.tt, 8
  %lcmp.mod10405.not = icmp eq i64 %i.ub, 0
  %lcmp.mod10406 = trunc i64 %i.tu to i1
  br label %bb.dq

bb.dn:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit136.i214
  br i1 %.not.i.i.i65.i35, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i224, label %.lr.ph.preheader.i.i.i.i216

.lr.ph.preheader.i.i.i.i216:                      ; preds = %bb.dn
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i217 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i218 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i219

.lr.ph.i.i.i.i219:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221, %.lr.ph.preheader.i.i.i.i216
  %.05.i.i.i.i220 = phi ptr [ %i.uk, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221 ], [ %.sroa.0226.0.i33, %.lr.ph.preheader.i.i.i.i216 ] ; 2 uses
  %i.uc = phi i32 [ %i.ue, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i218, %.lr.ph.preheader.i.i.i.i216 ]
  %i.ud = phi i32 [ %i.uj, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i217, %.lr.ph.preheader.i.i.i.i216 ] ; 2 uses
  %i.ue = add nsw i32 %i.uc, -1                   ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i220, i64 4
  %i.ug = load i8, ptr %i.uf, align 4, !tbaa !454, !range !189, !noundef !190
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %bb.do, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221

bb.do:                                            ; preds = %.lr.ph.i.i.i.i219
  %i.ui = add nsw i32 %i.ud, -1                   ; 2 uses
  store i32 %i.ui, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221: ; preds = %bb.do, %.lr.ph.i.i.i.i219
  %i.uj = phi i32 [ %i.ud, %.lr.ph.i.i.i.i219 ], [ %i.ui, %bb.do ]
  %i.uk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i220, i64 8 ; 2 uses
  %.not.i.i.i.i222 = icmp eq ptr %i.uk, %.0.lcssa.i.i.i.i.i.i.i34
  br i1 %.not.i.i.i.i222, label %._crit_edge.i.i.i.i223, label %.lr.ph.i.i.i.i219, !llvm.loop !80

._crit_edge.i.i.i.i223:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i221
  store i32 %i.ue, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i224

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i224: ; preds = %._crit_edge.i.i.i.i223, %bb.dn
  %.not.i.i1.i.i225 = icmp eq ptr %.sroa.0226.0.i33, null
  br i1 %.not.i.i1.i.i225, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i226, label %bb.dp

bb.dp:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i224
  %i.ul = sub i64 %.sroa.13232.0.i32, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0226.0.i33, i64 noundef %i.ul) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i226

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i226: ; preds = %bb.dp, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i224
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  %i.um = load i64, ptr %i.o, align 8, !tbaa !197
  %i.un = add i64 %i.um, 1                        ; 2 uses
  store i64 %i.un, ptr %i.o, align 8, !tbaa !197
  %i.uo = icmp ult i64 %i.un, 6
  br i1 %i.uo, label %bb.dl, label %bb.ht, !llvm.loop !7182

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i16: ; preds = %.lr.ph.i.i.i.i.i.i.i15
  %lpad.loopexit240.i17 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i18

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i310: ; preds = %bb.dm
  %lpad.loopexit.split-lp241.i311 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i18

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i18: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i310, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i16
  %lpad.phi242.i19 = phi { ptr, i32 } [ %lpad.loopexit240.i17, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i16 ], [ %lpad.loopexit.split-lp241.i311, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i310 ]
  %i.up = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.uq = add nsw i32 %i.up, -1
  store i32 %i.uq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ur = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.us = add nsw i32 %i.ur, -1
  store i32 %i.us, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i20

bb.dq:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit136.i214, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31
  %storemerge31577.i37 = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i31 ], [ %i.ahq, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit136.i214 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %.noexc58.i50 unwind label %bb.dy

.noexc58.i50:                                     ; preds = %bb.dq
  %i.ut = load ptr, ptr %52, align 8, !tbaa !223
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.uu, i64 noundef %storemerge31577.i37)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56 unwind label %bb.dt ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56:     ; preds = %.noexc58.i50
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %54, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %51)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.uw = load ptr, ptr %51, align 8, !tbaa !195  ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.rm
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59: ; preds = %bb.ds
  %i.uy = load i64, ptr %i.rm, align 8, !tbaa !198
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59
  %i.va = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i57.i61 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i57.i61, label %bb.dv, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i62

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !169
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8
  call void %i.vd(ptr noundef nonnull align 8 dereferenceable(128) %i.va) #36, !inline_history !7183
  br label %bb.dv

bb.dt:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i56, %.noexc58.i50
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51

bb.du:                                            ; preds = %bb.dr
  %i.vf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vg = load ptr, ptr %51, align 8, !tbaa !195  ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.rm
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57: ; preds = %bb.du
  %i.vi = load i64, ptr %i.rm, align 8, !tbaa !198
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57, %bb.dt
  %.pn.i.i52 = phi { ptr, i32 } [ %i.ve, %bb.dt ], [ %i.vf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i57 ], [ %i.vf, %bb.du ]
  %i.vk = load ptr, ptr %52, align 8, !tbaa !223  ; 3 uses
  %.not.i.i10.i.i53 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i10.i.i53, label %_ZN7testing7MessageD2Ev.exit12.i.i55, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i54

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !169
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8
  call void %i.vn(ptr noundef nonnull align 8 dereferenceable(128) %i.vk) #36, !inline_history !7183
  br label %_ZN7testing7MessageD2Ev.exit12.i.i55

_ZN7testing7MessageD2Ev.exit12.i.i55:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  br label %.body.i38

bb.dv:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  %.not.i63 = icmp eq i64 %storemerge31577.i37, 0
end_hunk_22
begin_hunk_23_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a
  store i32 %i.ahu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ahv = getelementptr inbounds nuw i8, ptr %.09.i.i799, i64 20
  %i.ahw = load i8, ptr %i.ahv, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ahx = trunc nuw i8 %i.ahw to i1
  br i1 %i.ahx, label %bb.hn, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i800

bb.hn:                                            ; preds = %.lr.ph.i.i798
  %i.ahy = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.ahz = add nsw i32 %i.ahy, -1
  store i32 %i.ahz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i800

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i800: ; preds = %bb.hn, %.lr.ph.i.i798
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i799, i64 noundef 24) #39
  %.not.i.i801 = icmp eq ptr %i.ahs, %55
  br i1 %.not.i.i801, label %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit802, label %.lr.ph.i.i798, !llvm.loop !148

_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit802: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i800, %.body59.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  br label %bb.ho

bb.ho:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit802, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i281
  %.sroa.0205.0349.i86 = phi ptr [ %.sroa.0205.0569.i70, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i281 ], [ %.sroa.0205.0.lcssa978.i84, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit802 ] ; 5 uses
  %.sroa.9.0299.i87 = phi ptr [ %.sroa.16.0571.i68, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i281 ], [ %.sroa.9.0.lcssa991.i83, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit802 ] ; 2 uses
  %.sroa.16.0249.i88 = phi ptr [ %.sroa.16.0571.i68, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i281 ], [ %.sroa.16.0.lcssa995.i82, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit802 ]
  %.pn51.i89 = phi { ptr, i32 } [ %lpad.phi.i282, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit64.i281 ], [ %.pn43.pn.pn.pn.pn.pn.pn.i85, %_ZNSt7__cxx1110_List_baseIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS4_EED2Ev.exit802 ]
  %.not4.i.i.i137.i90 = icmp eq ptr %.sroa.0205.0349.i86, %.sroa.9.0299.i87
  br i1 %.not4.i.i.i137.i90, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i99, label %.lr.ph.preheader.i.i.i138.i91

.lr.ph.preheader.i.i.i138.i91:                    ; preds = %bb.ho
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i139.i92 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i140.i93 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i141.i94

.lr.ph.i.i.i141.i94:                              ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96, %.lr.ph.preheader.i.i.i138.i91
  %.05.i.i.i142.i95 = phi ptr [ %i.aii, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96 ], [ %.sroa.0205.0349.i86, %.lr.ph.preheader.i.i.i138.i91 ] ; 2 uses
  %i.aia = phi i32 [ %i.aic, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i140.i93, %.lr.ph.preheader.i.i.i138.i91 ]
  %i.aib = phi i32 [ %i.aih, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i139.i92, %.lr.ph.preheader.i.i.i138.i91 ] ; 2 uses
  %i.aic = add nsw i32 %i.aia, -1                 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.05.i.i.i142.i95, i64 4
  %i.aie = load i8, ptr %i.aid, align 4, !tbaa !454, !range !189, !noundef !190
  %i.aif = trunc nuw i8 %i.aie to i1
  br i1 %i.aif, label %bb.hp, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96

bb.hp:                                            ; preds = %.lr.ph.i.i.i141.i94
  %i.aig = add nsw i32 %i.aib, -1                 ; 2 uses
  store i32 %i.aig, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96: ; preds = %bb.hp, %.lr.ph.i.i.i141.i94
  %i.aih = phi i32 [ %i.aib, %.lr.ph.i.i.i141.i94 ], [ %i.aig, %bb.hp ]
  %i.aii = getelementptr inbounds nuw i8, ptr %.05.i.i.i142.i95, i64 8 ; 2 uses
  %.not.i.i.i144.i97 = icmp eq ptr %i.aii, %.sroa.9.0299.i87
  br i1 %.not.i.i.i144.i97, label %._crit_edge.i.i.i145.i98, label %.lr.ph.i.i.i141.i94, !llvm.loop !80

._crit_edge.i.i.i145.i98:                         ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i143.i96
  store i32 %i.aic, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i99

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i99: ; preds = %._crit_edge.i.i.i145.i98, %bb.ho
  %.not.i.i1.i147.i100 = icmp eq ptr %.sroa.0205.0349.i86, null
  br i1 %.not.i.i1.i147.i100, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i101, label %bb.hq

bb.hq:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i99
  %i.aij = ptrtoint ptr %.sroa.16.0249.i88 to i64
  %i.aik = ptrtoint ptr %.sroa.0205.0349.i86 to i64
  %i.ail = sub i64 %i.aij, %i.aik
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0349.i86, i64 noundef %i.ail) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i101

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i101: ; preds = %bb.hq, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i146.i99
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %54) #36
  br label %.body.i38

.body.i38:                                        ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i101, %bb.dy, %_ZN7testing7MessageD2Ev.exit12.i.i55
  %.pn51.pn.i39 = phi { ptr, i32 } [ %.pn51.i89, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit148.i101 ], [ %i.wg, %bb.dy ], [ %.pn.i.i52, %_ZN7testing7MessageD2Ev.exit12.i.i55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #36
  br i1 %.not.i.i.i65.i35, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i48, label %.lr.ph.preheader.i.i.i150.i40

.lr.ph.preheader.i.i.i150.i40:                    ; preds = %.body.i38
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i151.i41 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i152.i42 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i153.i43

.lr.ph.i.i.i153.i43:                              ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45, %.lr.ph.preheader.i.i.i150.i40
  %.05.i.i.i154.i44 = phi ptr [ %i.aiu, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45 ], [ %.sroa.0226.0.i33, %.lr.ph.preheader.i.i.i150.i40 ] ; 2 uses
  %i.aim = phi i32 [ %i.aio, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i152.i42, %.lr.ph.preheader.i.i.i150.i40 ]
  %i.ain = phi i32 [ %i.ait, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i151.i41, %.lr.ph.preheader.i.i.i150.i40 ] ; 2 uses
  %i.aio = add nsw i32 %i.aim, -1                 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.05.i.i.i154.i44, i64 4
  %i.aiq = load i8, ptr %i.aip, align 4, !tbaa !454, !range !189, !noundef !190
  %i.air = trunc nuw i8 %i.aiq to i1
  br i1 %i.air, label %bb.hr, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45

bb.hr:                                            ; preds = %.lr.ph.i.i.i153.i43
  %i.ais = add nsw i32 %i.ain, -1                 ; 2 uses
  store i32 %i.ais, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45: ; preds = %bb.hr, %.lr.ph.i.i.i153.i43
  %i.ait = phi i32 [ %i.ain, %.lr.ph.i.i.i153.i43 ], [ %i.ais, %bb.hr ]
  %i.aiu = getelementptr inbounds nuw i8, ptr %.05.i.i.i154.i44, i64 8 ; 2 uses
  %.not.i.i.i156.i46 = icmp eq ptr %i.aiu, %.0.lcssa.i.i.i.i.i.i.i34
  br i1 %.not.i.i.i156.i46, label %._crit_edge.i.i.i157.i47, label %.lr.ph.i.i.i153.i43, !llvm.loop !80

._crit_edge.i.i.i157.i47:                         ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i155.i45
  store i32 %i.aio, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i48

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i48: ; preds = %._crit_edge.i.i.i157.i47, %.body.i38
  %.not.i.i1.i159.i49 = icmp eq ptr %.sroa.0226.0.i33, null
  br i1 %.not.i.i1.i159.i49, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i20, label %bb.hs

bb.hs:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i48
  %i.aiv = sub i64 %.sroa.13232.0.i32, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0226.0.i33, i64 noundef %i.aiv) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i20

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit160.i20: ; preds = %bb.hs, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i48, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i18
  %.pn51.pn.pn.i21 = phi { ptr, i32 } [ %lpad.phi242.i19, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i18 ], [ %.pn51.pn.i39, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i158.i48 ], [ %.pn51.pn.i39, %bb.hs ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #36
  br label %.body314

bb.ht:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #36
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %97, ptr noundef nonnull @.str.3, i32 noundef 1611, ptr noundef nonnull @.str.551)
          to label %bb.hu unwind label %bb.qx

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store i64 0, ptr %i.h, align 8, !tbaa !197
  %i.aiw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.aji = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  br label %bb.hv

bb.hv:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i436, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc469 unwind label %bb.qy

.noexc469:                                        ; preds = %bb.hv
  %i.ajl = load i64, ptr %i.h, align 8, !tbaa !197 ; 9 uses
  %i.ajm = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.ajn = add nsw i32 %i.ajm, 1
  store i32 %i.ajn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ajo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.ajp = add nsw i32 %i.ajo, 1
  store i32 %i.ajp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.ajq = icmp ugt i64 %i.ajl, 1152921504606846975
  br i1 %i.ajq, label %bb.hw, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316

bb.hw:                                            ; preds = %.noexc469
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i468 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i467

.noexc.i468:                                      ; preds = %bb.hw
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316: ; preds = %.noexc469
  %.not.i.i.i.i.i317 = icmp eq i64 %i.ajl, 0
  br i1 %.not.i.i.i.i.i317, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i331, label %.lr.ph.i.i.i.i.i.i.i318

.lr.ph.i.i.i.i.i.i.i318:                          ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316
  %i.ajr = shl nuw nsw i64 %i.ajl, 3
  %i.ajs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajr) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i319 ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i322:       ; preds = %.lr.ph.i.i.i.i.i.i.i318
  %.pre12.i.i323 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i324 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i325 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter10409 = and i64 %i.ajl, 7              ; 2 uses
  %lcmp.mod10410.not = icmp eq i64 %xtraiter10409, 0
  br i1 %lcmp.mod10410.not, label %.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i326.prol

.lr.ph.i.split.us.i.i.i.i.i.i326.prol:            ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol
  %.014.i.us.i.i.i.i.i.i327.prol = phi ptr [ %i.ajv, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol ], [ %i.ajs, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322 ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i328.prol = phi i64 [ %i.aju, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol ], [ %i.ajl, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322 ]
  %prol.iter10411 = phi i64 [ %prol.iter10411.next, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322 ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i327.prol, align 4, !tbaa !453
  %i.ajt = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327.prol, i64 4
  store i8 1, ptr %i.ajt, align 4, !tbaa !454
  %i.aju = add nsw i64 %.01113.i.us.i.i.i.i.i.i328.prol, -1 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327.prol, i64 8 ; 3 uses
  %prol.iter10411.next = add i64 %prol.iter10411, 1 ; 2 uses
  %prol.iter10411.cmp.not = icmp eq i64 %prol.iter10411.next, %xtraiter10409
  br i1 %prol.iter10411.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i326.prol, !llvm.loop !7192

.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit:   ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i326.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322
  %.lcssa9064.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322 ], [ %i.ajv, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol ]
  %.014.i.us.i.i.i.i.i.i327.unr = phi ptr [ %i.ajs, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322 ], [ %i.ajv, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol ]
  %.01113.i.us.i.i.i.i.i.i328.unr = phi i64 [ %i.ajl, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i322 ], [ %i.aju, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol ]
  %i.ajw = icmp ult i64 %i.ajl, 8
  br i1 %i.ajw, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330, label %.lr.ph.i.split.us.i.i.i.i.i.i326

.lr.ph.i.split.us.i.i.i.i.i.i326:                 ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i326
  %.014.i.us.i.i.i.i.i.i327 = phi ptr [ %i.akn, %.lr.ph.i.split.us.i.i.i.i.i.i326 ], [ %.014.i.us.i.i.i.i.i.i327.unr, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i328 = phi i64 [ %i.akm, %.lr.ph.i.split.us.i.i.i.i.i.i326 ], [ %.01113.i.us.i.i.i.i.i.i328.unr, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i327, align 4, !tbaa !453
  %i.ajx = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 4
  store i8 1, ptr %i.ajx, align 4, !tbaa !454
  %i.ajy = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 8
  store i32 12345, ptr %i.ajy, align 4, !tbaa !453
  %i.ajz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 12
  store i8 1, ptr %i.ajz, align 4, !tbaa !454
  %i.aka = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 16
  store i32 12345, ptr %i.aka, align 4, !tbaa !453
  %i.akb = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 20
  store i8 1, ptr %i.akb, align 4, !tbaa !454
  %i.akc = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 24
  store i32 12345, ptr %i.akc, align 4, !tbaa !453
  %i.akd = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 28
  store i8 1, ptr %i.akd, align 4, !tbaa !454
  %i.ake = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 32
  store i32 12345, ptr %i.ake, align 4, !tbaa !453
  %i.akf = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 36
  store i8 1, ptr %i.akf, align 4, !tbaa !454
  %i.akg = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 40
  store i32 12345, ptr %i.akg, align 4, !tbaa !453
  %i.akh = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 44
  store i8 1, ptr %i.akh, align 4, !tbaa !454
  %i.aki = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 48
  store i32 12345, ptr %i.aki, align 4, !tbaa !453
  %i.akj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 52
  store i8 1, ptr %i.akj, align 4, !tbaa !454
  %i.akk = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 56
  store i32 12345, ptr %i.akk, align 4, !tbaa !453
  %i.akl = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 60
  store i8 1, ptr %i.akl, align 4, !tbaa !454
  %i.akm = add nsw i64 %.01113.i.us.i.i.i.i.i.i328, -8 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i327, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i329.7 = icmp eq i64 %i.akm, 0
  br i1 %.not.i.us.i.i.i.i.i.i329.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330, label %.lr.ph.i.split.us.i.i.i.i.i.i326, !llvm.loop !78

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i326, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit
  %.lcssa9064 = phi ptr [ %.lcssa9064.unr, %.lr.ph.i.split.us.i.i.i.i.i.i326.prol.loopexit ], [ %i.akn, %.lr.ph.i.split.us.i.i.i.i.i.i326 ]
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.ajl
  %i.akp = trunc i64 %i.ajl to i32                ; 3 uses
  %i.akq = add i32 %.pre12.i.i323, %i.akp         ; 2 uses
  %i.akr = add i32 %.pre13.i.i324, %i.akp         ; 2 uses
  %i.aks = add i32 %.pre14.i.i325, %i.akp
  store i32 %i.akq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.akr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.aks, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.akt = ptrtoint ptr %i.ako to i64
  %i.aku = add nsw i32 %i.akq, -1
  %i.akv = add nsw i32 %i.akr, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i331

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i331: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316
  %i.akw = phi i32 [ %i.ajo, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316 ], [ %i.akv, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330 ]
  %i.akx = phi i32 [ %i.ajm, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316 ], [ %i.aku, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330 ]
  %.sroa.13247.0.i = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316 ], [ %i.akt, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330 ] ; 2 uses
  %.sroa.0241.0.i = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316 ], [ %i.ajs, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330 ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i332 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i316 ], [ %.lcssa9064, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i330 ] ; 4 uses
  store i32 %i.akx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.akw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.aky = ptrtoint ptr %.sroa.0241.0.i to i64    ; 3 uses
  %i.akz = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i332 to i64
  %i.ala = sub i64 %i.akz, %i.aky                 ; 4 uses
  %i.alb = ashr exact i64 %i.ala, 3               ; 6 uses
  %i.alc = icmp ugt i64 %i.alb, 3
  %.not.i.i.i68.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i332, %.sroa.0241.0.i ; 3 uses
  %i.ald = icmp ugt i64 %i.alb, 1152921504606846975
  %.sroa.speculated.i.i.i.i333 = call i64 @llvm.umax.i64(i64 %i.alb, i64 6) ; 2 uses
  %i.ale = shl nuw nsw i64 %.sroa.speculated.i.i.i.i333, 3
  %i.alf = ashr exact i64 %i.ala, 2
  %i.alg = trunc i64 %i.alb to i32                ; 2 uses
  %i.alh = icmp eq i64 %i.ala, 8
  %unroll_iter10419 = and i64 %i.alb, -2
  %i.ali = and i64 %i.ala, 8
  %lcmp.mod10417.not = icmp eq i64 %i.ali, 0
  %lcmp.mod10418 = trunc i64 %i.alb to i1
  br label %bb.ia

bb.hx:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit149.i
  br i1 %.not.i.i.i68.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i434, label %.lr.ph.preheader.i.i.i.i426

.lr.ph.preheader.i.i.i.i426:                      ; preds = %bb.hx
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i427 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i428 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i429

.lr.ph.i.i.i.i429:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431, %.lr.ph.preheader.i.i.i.i426
  %.05.i.i.i.i430 = phi ptr [ %i.alr, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431 ], [ %.sroa.0241.0.i, %.lr.ph.preheader.i.i.i.i426 ] ; 2 uses
  %i.alj = phi i32 [ %i.all, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i428, %.lr.ph.preheader.i.i.i.i426 ]
  %i.alk = phi i32 [ %i.alq, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i427, %.lr.ph.preheader.i.i.i.i426 ] ; 2 uses
  %i.all = add nsw i32 %i.alj, -1                 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i430, i64 4
  %i.aln = load i8, ptr %i.alm, align 4, !tbaa !454, !range !189, !noundef !190
  %i.alo = trunc nuw i8 %i.aln to i1
  br i1 %i.alo, label %bb.hy, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431

bb.hy:                                            ; preds = %.lr.ph.i.i.i.i429
  %i.alp = add nsw i32 %i.alk, -1                 ; 2 uses
  store i32 %i.alp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431: ; preds = %bb.hy, %.lr.ph.i.i.i.i429
  %i.alq = phi i32 [ %i.alk, %.lr.ph.i.i.i.i429 ], [ %i.alp, %bb.hy ]
  %i.alr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i430, i64 8 ; 2 uses
  %.not.i.i.i.i432 = icmp eq ptr %i.alr, %.0.lcssa.i.i.i.i.i.i.i332
  br i1 %.not.i.i.i.i432, label %._crit_edge.i.i.i.i433, label %.lr.ph.i.i.i.i429, !llvm.loop !80

._crit_edge.i.i.i.i433:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i431
  store i32 %i.all, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i434

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i434: ; preds = %._crit_edge.i.i.i.i433, %bb.hx
  %.not.i.i1.i.i435 = icmp eq ptr %.sroa.0241.0.i, null
  br i1 %.not.i.i1.i.i435, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i436, label %bb.hz

bb.hz:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i434
  %i.als = sub i64 %.sroa.13247.0.i, %i.aky
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0.i, i64 noundef %i.als) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i436

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i436: ; preds = %bb.hz, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i434
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.alt = load i64, ptr %i.h, align 8, !tbaa !197
  %i.alu = add i64 %i.alt, 1                      ; 2 uses
  store i64 %i.alu, ptr %i.h, align 8, !tbaa !197
  %i.alv = icmp ult i64 %i.alu, 6
  br i1 %i.alv, label %bb.hv, label %bb.mg, !llvm.loop !7193

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i319: ; preds = %.lr.ph.i.i.i.i.i.i.i318
  %lpad.loopexit262.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i320

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i467: ; preds = %bb.hw
  %lpad.loopexit.split-lp263.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i320

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i320: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i467, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i319
  %lpad.phi264.i = phi { ptr, i32 } [ %lpad.loopexit262.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i319 ], [ %lpad.loopexit.split-lp263.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i467 ]
  %i.alw = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.alx = add nsw i32 %i.alw, -1
  store i32 %i.alx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.aly = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.alz = add nsw i32 %i.aly, -1
  store i32 %i.alz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit175.i

bb.ia:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit149.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i331
  %storemerge31613.i = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i331 ], [ %i.azc, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit149.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %.noexc58.i336 unwind label %bb.ij

.noexc58.i336:                                    ; preds = %bb.ia
  %i.ama = load ptr, ptr %29, align 8, !tbaa !223
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 16
  %i.amc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.amb, i64 noundef %storemerge31613.i)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i342 unwind label %bb.id ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i342:    ; preds = %.noexc58.i336
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ib unwind label %bb.id

bb.ib:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i342
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %28)
          to label %bb.ic unwind label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.amd = load ptr, ptr %28, align 8, !tbaa !195 ; 2 uses
  %i.ame = icmp eq ptr %i.amd, %i.aiw
  br i1 %i.ame, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i345: ; preds = %bb.ic
  %i.amf = load i64, ptr %i.aiw, align 8, !tbaa !198
  %i.amg = add i64 %i.amf, 1
  call void @_ZdlPvm(ptr noundef %i.amd, i64 noundef %i.amg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i346: ; preds = %bb.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i345
  %i.amh = load ptr, ptr %29, align 8, !tbaa !223 ; 3 uses
  %.not.i.i.i57.i347 = icmp eq ptr %i.amh, null
  br i1 %.not.i.i.i57.i347, label %bb.if, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i348

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i346
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !169
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  %i.amk = load ptr, ptr %i.amj, align 8
  call void %i.amk(ptr noundef nonnull align 8 dereferenceable(128) %i.amh) #36, !inline_history !7194
  br label %bb.if

bb.id:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i342, %.noexc58.i336
  %i.aml = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i337

bb.ie:                                            ; preds = %bb.ib
  %i.amm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amn = load ptr, ptr %28, align 8, !tbaa !195 ; 2 uses
  %i.amo = icmp eq ptr %i.amn, %i.aiw
  br i1 %i.amo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i343: ; preds = %bb.ie
  %i.amp = load i64, ptr %i.aiw, align 8, !tbaa !198
  %i.amq = add i64 %i.amp, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i337: ; preds = %bb.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i343, %bb.id
  %.pn.i.i338 = phi { ptr, i32 } [ %i.aml, %bb.id ], [ %i.amm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i343 ], [ %i.amm, %bb.ie ]
  %i.amr = load ptr, ptr %29, align 8, !tbaa !223 ; 3 uses
  %.not.i.i10.i.i339 = icmp eq ptr %i.amr, null
  br i1 %.not.i.i10.i.i339, label %_ZN7testing7MessageD2Ev.exit12.i.i341, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i340

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i337
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !169
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8
  call void %i.amu(ptr noundef nonnull align 8 dereferenceable(128) %i.amr) #36, !inline_history !7194
  br label %_ZN7testing7MessageD2Ev.exit12.i.i341

_ZN7testing7MessageD2Ev.exit12.i.i341:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %.body.i334

bb.if:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.not.i349 = icmp eq i64 %storemerge31613.i, 0
end_hunk_23
begin_hunk_24_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_12RangedAssignIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i: ; preds = %bb.ma, %.lr.ph.i.i.i806
  %i.azk = phi i32 [ %i.aze, %.lr.ph.i.i.i806 ], [ %i.azj, %bb.ma ]
  %i.azl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i807 = icmp eq ptr %i.azl, %i.aqa
  br i1 %.not.i.i.i807, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i806, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i
  store i32 %i.azf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %._crit_edge.i.i.i, %.body72.i
  %.not.i.i1.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i1.i, label %.body63.i, label %bb.mb

bb.mb:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i
  %i.azm = ptrtoint ptr %.sroa.0.0 to i64
  %i.azn = sub i64 %.sroa.10.0, %i.azm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.azn) #39
  br label %.body63.i

.body63.i:                                        ; preds = %.loopexit253.i, %.loopexit.split-lp.i449, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i, %bb.mb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit67.i
  %.sroa.0220.0375.i = phi ptr [ %.sroa.0220.0605.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit67.i ], [ %.sroa.0220.1.i, %.loopexit.split-lp.i449 ], [ %.sroa.0220.1.i, %.loopexit253.i ], [ %.sroa.0220.0.lcssa10271072.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.0220.0.lcssa10271072.i, %bb.mb ] ; 5 uses
  %.sroa.9.0323.i = phi ptr [ %.sroa.16.0607.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit67.i ], [ %.sroa.9.1.i354, %.loopexit.split-lp.i449 ], [ %.sroa.9.1.i354, %.loopexit253.i ], [ %.sroa.9.0.lcssa10431070.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.9.0.lcssa10431070.i, %bb.mb ] ; 2 uses
  %.sroa.16.0271.i = phi ptr [ %.sroa.16.0607.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit67.i ], [ %.sroa.16.1.i355, %.loopexit.split-lp.i449 ], [ %.sroa.16.1.i355, %.loopexit253.i ], [ %.sroa.16.0.lcssa10481068.i, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.sroa.16.0.lcssa10481068.i, %bb.mb ]
  %.pn51.i359 = phi { ptr, i32 } [ %lpad.phi.i454, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit67.i ], [ %lpad.loopexit.split-lp255.i, %.loopexit.split-lp.i449 ], [ %lpad.loopexit254.i, %.loopexit253.i ], [ %.pn43.pn.pn.pn.pn.pn.i368, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i ], [ %.pn43.pn.pn.pn.pn.pn.i368, %bb.mb ]
  %.not4.i.i.i150.i = icmp eq ptr %.sroa.0220.0375.i, %.sroa.9.0323.i
  br i1 %.not4.i.i.i150.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i159.i, label %.lr.ph.preheader.i.i.i151.i

.lr.ph.preheader.i.i.i151.i:                      ; preds = %.body63.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i152.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i153.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i154.i

.lr.ph.i.i.i154.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i, %.lr.ph.preheader.i.i.i151.i
  %.05.i.i.i155.i = phi ptr [ %i.azw, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i ], [ %.sroa.0220.0375.i, %.lr.ph.preheader.i.i.i151.i ] ; 2 uses
  %i.azo = phi i32 [ %i.azq, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i153.i, %.lr.ph.preheader.i.i.i151.i ]
  %i.azp = phi i32 [ %i.azv, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i152.i, %.lr.ph.preheader.i.i.i151.i ] ; 2 uses
  %i.azq = add nsw i32 %i.azo, -1                 ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %.05.i.i.i155.i, i64 4
  %i.azs = load i8, ptr %i.azr, align 4, !tbaa !454, !range !189, !noundef !190
  %i.azt = trunc nuw i8 %i.azs to i1
  br i1 %i.azt, label %bb.mc, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i

bb.mc:                                            ; preds = %.lr.ph.i.i.i154.i
  %i.azu = add nsw i32 %i.azp, -1                 ; 2 uses
  store i32 %i.azu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i: ; preds = %bb.mc, %.lr.ph.i.i.i154.i
  %i.azv = phi i32 [ %i.azp, %.lr.ph.i.i.i154.i ], [ %i.azu, %bb.mc ]
  %i.azw = getelementptr inbounds nuw i8, ptr %.05.i.i.i155.i, i64 8 ; 2 uses
  %.not.i.i.i157.i = icmp eq ptr %i.azw, %.sroa.9.0323.i
  br i1 %.not.i.i.i157.i, label %._crit_edge.i.i.i158.i, label %.lr.ph.i.i.i154.i, !llvm.loop !80

._crit_edge.i.i.i158.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i156.i
  store i32 %i.azq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i159.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i159.i: ; preds = %._crit_edge.i.i.i158.i, %.body63.i
  %.not.i.i1.i160.i = icmp eq ptr %.sroa.0220.0375.i, null
  br i1 %.not.i.i1.i160.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit162.i, label %bb.md

bb.md:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i159.i
  %i.azx = ptrtoint ptr %.sroa.16.0271.i to i64
  %i.azy = ptrtoint ptr %.sroa.0220.0375.i to i64
  %i.azz = sub i64 %i.azx, %i.azy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0220.0375.i, i64 noundef %i.azz) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit162.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit162.i: ; preds = %bb.md, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i159.i
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %31) #36
  br label %.body.i334

.body.i334:                                       ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit162.i, %bb.ij, %_ZN7testing7MessageD2Ev.exit12.i.i341
  %.pn51.pn.i335 = phi { ptr, i32 } [ %.pn51.i359, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit162.i ], [ %i.anp, %bb.ij ], [ %.pn.i.i338, %_ZN7testing7MessageD2Ev.exit12.i.i341 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br i1 %.not.i.i.i68.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i172.i, label %.lr.ph.preheader.i.i.i164.i

.lr.ph.preheader.i.i.i164.i:                      ; preds = %.body.i334
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i165.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i166.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i167.i

.lr.ph.i.i.i167.i:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i, %.lr.ph.preheader.i.i.i164.i
  %.05.i.i.i168.i = phi ptr [ %i.bai, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i ], [ %.sroa.0241.0.i, %.lr.ph.preheader.i.i.i164.i ] ; 2 uses
  %i.baa = phi i32 [ %i.bac, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i166.i, %.lr.ph.preheader.i.i.i164.i ]
  %i.bab = phi i32 [ %i.bah, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i165.i, %.lr.ph.preheader.i.i.i164.i ] ; 2 uses
  %i.bac = add nsw i32 %i.baa, -1                 ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 4
  %i.bae = load i8, ptr %i.bad, align 4, !tbaa !454, !range !189, !noundef !190
  %i.baf = trunc nuw i8 %i.bae to i1
  br i1 %i.baf, label %bb.me, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i

bb.me:                                            ; preds = %.lr.ph.i.i.i167.i
  %i.bag = add nsw i32 %i.bab, -1                 ; 2 uses
  store i32 %i.bag, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i: ; preds = %bb.me, %.lr.ph.i.i.i167.i
  %i.bah = phi i32 [ %i.bab, %.lr.ph.i.i.i167.i ], [ %i.bag, %bb.me ]
  %i.bai = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 8 ; 2 uses
  %.not.i.i.i170.i = icmp eq ptr %i.bai, %.0.lcssa.i.i.i.i.i.i.i332
  br i1 %.not.i.i.i170.i, label %._crit_edge.i.i.i171.i, label %.lr.ph.i.i.i167.i, !llvm.loop !80

._crit_edge.i.i.i171.i:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i169.i
  store i32 %i.bac, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i172.i

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i172.i: ; preds = %._crit_edge.i.i.i171.i, %.body.i334
  %.not.i.i1.i173.i = icmp eq ptr %.sroa.0241.0.i, null
  br i1 %.not.i.i1.i173.i, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit175.i, label %bb.mf

bb.mf:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i172.i
  %i.baj = sub i64 %.sroa.13247.0.i, %i.aky
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0.i, i64 noundef %i.baj) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit175.i

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit175.i: ; preds = %bb.mf, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i172.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i320
  %.pn51.pn.pn.i321 = phi { ptr, i32 } [ %lpad.phi264.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i320 ], [ %.pn51.pn.i335, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i172.i ], [ %.pn51.pn.i335, %bb.mf ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  br label %.body470

bb.mg:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #36
  invoke void @_ZN7testing11ScopedTraceC2EPKciS2_(ptr noundef nonnull align 1 dereferenceable(1) %98, ptr noundef nonnull @.str.3, i32 noundef 1613, ptr noundef nonnull @.str.552)
          to label %bb.mh unwind label %bb.qz

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !197
  %i.bak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.baw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bax = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bay = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  br label %bb.mi

bb.mi:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i697, %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.3, i32 noundef 1569, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc791 unwind label %bb.ra

.noexc791:                                        ; preds = %bb.mi
  %i.baz = load i64, ptr %i.a, align 8, !tbaa !197 ; 9 uses
  %i.bba = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bbb = add nsw i32 %i.bba, 1
  store i32 %i.bbb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bbc = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.bbd = add nsw i32 %i.bbc, 1
  store i32 %i.bbd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bbe = icmp ugt i64 %i.baz, 1152921504606846975
  br i1 %i.bbe, label %bb.mj, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472

bb.mj:                                            ; preds = %.noexc791
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc.i790 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i788

.noexc.i790:                                      ; preds = %bb.mj
  unreachable

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472: ; preds = %.noexc791
  %.not.i.i.i.i.i473 = icmp eq i64 %i.baz, 0
  br i1 %.not.i.i.i.i.i473, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490, label %.lr.ph.i.i.i.i.i.i.i474

.lr.ph.i.i.i.i.i.i.i474:                          ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472
  %i.bbf = shl nuw nsw i64 %i.baz, 3
  %i.bbg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbf) #41
          to label %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 unwind label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i475 ; 4 uses

.lr.ph.i.split.us.i.i.i.i.preheader.i.i481:       ; preds = %.lr.ph.i.i.i.i.i.i.i474
  %.pre12.i.i482 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.pre13.i.i483 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.pre14.i.i484 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter10421 = and i64 %i.baz, 7              ; 2 uses
  %lcmp.mod10422.not = icmp eq i64 %xtraiter10421, 0
  br i1 %lcmp.mod10422.not, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol

.lr.ph.i.split.us.i.i.i.i.i.i485.prol:            ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol
  %.014.i.us.i.i.i.i.i.i486.prol = phi ptr [ %i.bbj, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ], [ %i.bbg, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ] ; 3 uses
  %.01113.i.us.i.i.i.i.i.i487.prol = phi i64 [ %i.bbi, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ], [ %i.baz, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ]
  %prol.iter10423 = phi i64 [ %prol.iter10423.next, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ], [ 0, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i486.prol, align 4, !tbaa !453
  %i.bbh = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486.prol, i64 4
  store i8 1, ptr %i.bbh, align 4, !tbaa !454
  %i.bbi = add nsw i64 %.01113.i.us.i.i.i.i.i.i487.prol, -1 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486.prol, i64 8 ; 3 uses
  %prol.iter10423.next = add i64 %prol.iter10423, 1 ; 2 uses
  %prol.iter10423.cmp.not = icmp eq i64 %prol.iter10423.next, %xtraiter10421
  br i1 %prol.iter10423.cmp.not, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit, label %.lr.ph.i.split.us.i.i.i.i.i.i485.prol, !llvm.loop !7204

.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit:   ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i485.prol, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481
  %.lcssa8540.unr = phi ptr [ poison, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ], [ %i.bbj, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ]
  %.014.i.us.i.i.i.i.i.i486.unr = phi ptr [ %i.bbg, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ], [ %i.bbj, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ]
  %.01113.i.us.i.i.i.i.i.i487.unr = phi i64 [ %i.baz, %.lr.ph.i.split.us.i.i.i.i.preheader.i.i481 ], [ %i.bbi, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol ]
  %i.bbk = icmp ult i64 %i.baz, 8
  br i1 %i.bbk, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489, label %.lr.ph.i.split.us.i.i.i.i.i.i485

.lr.ph.i.split.us.i.i.i.i.i.i485:                 ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit, %.lr.ph.i.split.us.i.i.i.i.i.i485
  %.014.i.us.i.i.i.i.i.i486 = phi ptr [ %i.bcb, %.lr.ph.i.split.us.i.i.i.i.i.i485 ], [ %.014.i.us.i.i.i.i.i.i486.unr, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit ] ; 17 uses
  %.01113.i.us.i.i.i.i.i.i487 = phi i64 [ %i.bca, %.lr.ph.i.split.us.i.i.i.i.i.i485 ], [ %.01113.i.us.i.i.i.i.i.i487.unr, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit ]
  store i32 12345, ptr %.014.i.us.i.i.i.i.i.i486, align 4, !tbaa !453
  %i.bbl = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 4
  store i8 1, ptr %i.bbl, align 4, !tbaa !454
  %i.bbm = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 8
  store i32 12345, ptr %i.bbm, align 4, !tbaa !453
  %i.bbn = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 12
  store i8 1, ptr %i.bbn, align 4, !tbaa !454
  %i.bbo = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 16
  store i32 12345, ptr %i.bbo, align 4, !tbaa !453
  %i.bbp = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 20
  store i8 1, ptr %i.bbp, align 4, !tbaa !454
  %i.bbq = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 24
  store i32 12345, ptr %i.bbq, align 4, !tbaa !453
  %i.bbr = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 28
  store i8 1, ptr %i.bbr, align 4, !tbaa !454
  %i.bbs = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 32
  store i32 12345, ptr %i.bbs, align 4, !tbaa !453
  %i.bbt = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 36
  store i8 1, ptr %i.bbt, align 4, !tbaa !454
  %i.bbu = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 40
  store i32 12345, ptr %i.bbu, align 4, !tbaa !453
  %i.bbv = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 44
  store i8 1, ptr %i.bbv, align 4, !tbaa !454
  %i.bbw = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 48
  store i32 12345, ptr %i.bbw, align 4, !tbaa !453
  %i.bbx = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 52
  store i8 1, ptr %i.bbx, align 4, !tbaa !454
  %i.bby = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 56
  store i32 12345, ptr %i.bby, align 4, !tbaa !453
  %i.bbz = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 60
  store i8 1, ptr %i.bbz, align 4, !tbaa !454
  %i.bca = add nsw i64 %.01113.i.us.i.i.i.i.i.i487, -8 ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.014.i.us.i.i.i.i.i.i486, i64 64 ; 2 uses
  %.not.i.us.i.i.i.i.i.i488.7 = icmp eq i64 %i.bca, 0
  br i1 %.not.i.us.i.i.i.i.i.i488.7, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489, label %.lr.ph.i.split.us.i.i.i.i.i.i485, !llvm.loop !78

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489: ; preds = %.lr.ph.i.split.us.i.i.i.i.i.i485, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit
  %.lcssa8540 = phi ptr [ %.lcssa8540.unr, %.lr.ph.i.split.us.i.i.i.i.i.i485.prol.loopexit ], [ %i.bcb, %.lr.ph.i.split.us.i.i.i.i.i.i485 ]
  %i.bcc = getelementptr inbounds nuw [8 x i8], ptr %i.bbg, i64 %i.baz
  %i.bcd = trunc i64 %i.baz to i32                ; 3 uses
  %i.bce = add i32 %.pre12.i.i482, %i.bcd         ; 2 uses
  %i.bcf = add i32 %.pre13.i.i483, %i.bcd         ; 2 uses
  %i.bcg = add i32 %.pre14.i.i484, %i.bcd
  store i32 %i.bce, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.bcf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  store i32 %i.bcg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bch = ptrtoint ptr %i.bcc to i64
  %i.bci = add nsw i32 %i.bce, -1
  %i.bcj = add nsw i32 %i.bcf, -1
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472
  %i.bck = phi i32 [ %i.bbc, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bcj, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ]
  %i.bcl = phi i32 [ %i.bba, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bci, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ]
  %.sroa.13247.0.i491 = phi i64 [ 0, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bch, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ] ; 2 uses
  %.sroa.0241.0.i492 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %i.bbg, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.i493 = phi ptr [ null, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i472 ], [ %.lcssa8540, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.loopexit.i489 ] ; 4 uses
  store i32 %i.bcl, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.bck, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bcm = ptrtoint ptr %.sroa.0241.0.i492 to i64 ; 3 uses
  %i.bcn = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i493 to i64
  %i.bco = sub i64 %i.bcn, %i.bcm                 ; 4 uses
  %i.bcp = ashr exact i64 %i.bco, 3               ; 6 uses
  %i.bcq = icmp ugt i64 %i.bcp, 3
  %.not.i.i.i68.i494 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i493, %.sroa.0241.0.i492 ; 3 uses
  %i.bcr = icmp ugt i64 %i.bcp, 1152921504606846975
  %.sroa.speculated.i.i.i.i495 = call i64 @llvm.umax.i64(i64 %i.bcp, i64 6) ; 2 uses
  %i.bcs = shl nuw nsw i64 %.sroa.speculated.i.i.i.i495, 3
  %i.bct = ashr exact i64 %i.bco, 2
  %i.bcu = trunc i64 %i.bcp to i32                ; 2 uses
  %i.bcv = icmp eq i64 %i.bco, 8
  %unroll_iter10431 = and i64 %i.bcp, -2
  %i.bcw = and i64 %i.bco, 8
  %lcmp.mod10429.not = icmp eq i64 %i.bcw, 0
  %lcmp.mod10430 = trunc i64 %i.bcp to i1
  br label %bb.mn

bb.mk:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit149.i685
  br i1 %.not.i.i.i68.i494, label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i695, label %.lr.ph.preheader.i.i.i.i687

.lr.ph.preheader.i.i.i.i687:                      ; preds = %bb.mk
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i688 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i689 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %.lr.ph.i.i.i.i690

.lr.ph.i.i.i.i690:                                ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692, %.lr.ph.preheader.i.i.i.i687
  %.05.i.i.i.i691 = phi ptr [ %i.bdf, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692 ], [ %.sroa.0241.0.i492, %.lr.ph.preheader.i.i.i.i687 ] ; 2 uses
  %i.bcx = phi i32 [ %i.bcz, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i689, %.lr.ph.preheader.i.i.i.i687 ]
  %i.bcy = phi i32 [ %i.bde, %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692 ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i688, %.lr.ph.preheader.i.i.i.i687 ] ; 2 uses
  %i.bcz = add nsw i32 %i.bcx, -1                 ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i691, i64 4
  %i.bdb = load i8, ptr %i.bda, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bdc = trunc nuw i8 %i.bdb to i1
  br i1 %i.bdc, label %bb.ml, label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692

bb.ml:                                            ; preds = %.lr.ph.i.i.i.i690
  %i.bdd = add nsw i32 %i.bcy, -1                 ; 2 uses
  store i32 %i.bdd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692

_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692: ; preds = %bb.ml, %.lr.ph.i.i.i.i690
  %i.bde = phi i32 [ %i.bcy, %.lr.ph.i.i.i.i690 ], [ %i.bdd, %bb.ml ]
  %i.bdf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i691, i64 8 ; 2 uses
  %.not.i.i.i.i693 = icmp eq ptr %i.bdf, %.0.lcssa.i.i.i.i.i.i.i493
  br i1 %.not.i.i.i.i693, label %._crit_edge.i.i.i.i694, label %.lr.ph.i.i.i.i690, !llvm.loop !80

._crit_edge.i.i.i.i694:                           ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEEvPT_.exit.i.i.i.i692
  store i32 %i.bcz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i695

_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i695: ; preds = %._crit_edge.i.i.i.i694, %bb.mk
  %.not.i.i1.i.i696 = icmp eq ptr %.sroa.0241.0.i492, null
  br i1 %.not.i.i1.i.i696, label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i697, label %bb.mm

bb.mm:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i695
  %i.bdg = sub i64 %.sroa.13247.0.i491, %i.bcm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0.i492, i64 noundef %i.bdg) #39
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i697

_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit.i697: ; preds = %bb.mm, %_ZSt8_DestroyIPN4absl12lts_2026052613test_internal23CopyableMovableInstanceES3_EvT_S5_RSaIT0_E.exit.i.i695
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bdh = load i64, ptr %i.a, align 8, !tbaa !197
  %i.bdi = add i64 %i.bdh, 1                      ; 2 uses
  store i64 %i.bdi, ptr %i.a, align 8, !tbaa !197
  %i.bdj = icmp ult i64 %i.bdi, 6
  br i1 %i.bdj, label %bb.mi, label %bb.qt, !llvm.loop !7205

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i475: ; preds = %.lr.ph.i.i.i.i.i.i.i474
  %lpad.loopexit262.i476 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i477

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i788: ; preds = %bb.mj
  %lpad.loopexit.split-lp263.i789 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i477

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.i477: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i788, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i475
  %lpad.phi264.i478 = phi { ptr, i32 } [ %lpad.loopexit262.i476, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.i475 ], [ %lpad.loopexit.split-lp263.i789, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit56.loopexit.split-lp.i788 ]
  %i.bdk = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bdl = add nsw i32 %i.bdk, -1
  store i32 %i.bdl, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bdm = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bdn = add nsw i32 %i.bdm, -1
  store i32 %i.bdn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit175.i479

bb.mn:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit149.i685, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490
  %storemerge31613.i496 = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i490 ], [ %i.bqq, %_ZNSt6vectorIN4absl12lts_2026052613test_internal23CopyableMovableInstanceESaIS3_EED2Ev.exit149.i685 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc58.i509 unwind label %bb.mw

.noexc58.i509:                                    ; preds = %bb.mn
  %i.bdo = load ptr, ptr %6, align 8, !tbaa !223
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 16
  %i.bdq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bdp, i64 noundef %storemerge31613.i496)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515 unwind label %bb.mq ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515:    ; preds = %.noexc58.i509
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.mo unwind label %bb.mq

bb.mo:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull @.str.3, i32 noundef 1574, ptr noundef nonnull align 8 %5)
          to label %bb.mp unwind label %bb.mr

bb.mp:                                            ; preds = %bb.mo
  %i.bdr = load ptr, ptr %5, align 8, !tbaa !195  ; 2 uses
  %i.bds = icmp eq ptr %i.bdr, %i.bak
  br i1 %i.bds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i518

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i518: ; preds = %bb.mp
  %i.bdt = load i64, ptr %i.bak, align 8, !tbaa !198
  %i.bdu = add i64 %i.bdt, 1
  call void @_ZdlPvm(ptr noundef %i.bdr, i64 noundef %i.bdu) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519: ; preds = %bb.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i518
  %i.bdv = load ptr, ptr %6, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i57.i520 = icmp eq ptr %i.bdv, null
  br i1 %.not.i.i.i57.i520, label %bb.ms, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i521

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i521: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !169
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8
  %i.bdy = load ptr, ptr %i.bdx, align 8
  call void %i.bdy(ptr noundef nonnull align 8 dereferenceable(128) %i.bdv) #36, !inline_history !7206
  br label %bb.ms

bb.mq:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i.i515, %.noexc58.i509
  %i.bdz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510

bb.mr:                                            ; preds = %bb.mo
  %i.bea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.beb = load ptr, ptr %5, align 8, !tbaa !195  ; 2 uses
  %i.bec = icmp eq ptr %i.beb, %i.bak
  br i1 %i.bec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516: ; preds = %bb.mr
  %i.bed = load i64, ptr %i.bak, align 8, !tbaa !198
  %i.bee = add i64 %i.bed, 1
  call void @_ZdlPvm(ptr noundef %i.beb, i64 noundef %i.bee) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510: ; preds = %bb.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516, %bb.mq
  %.pn.i.i511 = phi { ptr, i32 } [ %i.bdz, %bb.mq ], [ %i.bea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i516 ], [ %i.bea, %bb.mr ]
  %i.bef = load ptr, ptr %6, align 8, !tbaa !223  ; 3 uses
  %.not.i.i10.i.i512 = icmp eq ptr %i.bef, null
  br i1 %.not.i.i10.i.i512, label %_ZN7testing7MessageD2Ev.exit12.i.i514, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i513

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !169
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 8
  %i.bei = load ptr, ptr %i.beh, align 8
  call void %i.bei(ptr noundef nonnull align 8 dereferenceable(128) %i.bef) #36, !inline_history !7206
  br label %_ZN7testing7MessageD2Ev.exit12.i.i514

_ZN7testing7MessageD2Ev.exit12.i.i514:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i.i513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.body.i497

bb.ms:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i522 = icmp eq i64 %storemerge31613.i496, 0
end_hunk_24
