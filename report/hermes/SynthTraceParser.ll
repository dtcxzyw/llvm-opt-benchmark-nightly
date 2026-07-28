inline.NumInlined: 2500
inline.NumDeleted: 1013
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12GlobalRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_:bb.a
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af
  %scevgep6 = getelementptr i8, ptr %i.l, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep6
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.ak = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  %wide.load8 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !409, !alias.scope !1020, !noalias !1017
  store <2 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !409, !alias.scope !1020, !noalias !1017
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !409, !alias.scope !1017, !noalias !1012
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1015, !noalias !1012
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1012, !noalias !1015
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !409, !alias.scope !1015, !noalias !1012
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1023

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !411
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !408
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.as, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %.not30.i = icmp samesign eq i64 %1, 0
  br i1 %.not30.i, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = add nsw i32 %2, 48
  %i.c = add nsw i32 %2, 87
  %i.d = sitofp i32 %2 to double
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.3 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.p, %bb.e ]
  %.01731.i = phi ptr [ %0, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.e = load i8, ptr %.01731.i, align 1, !tbaa !147 ; 3 uses
  %i.f = or i8 %i.e, 32                           ; 3 uses
  %i.g = add i8 %i.e, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.g, 10
  %i.h = zext nneg i8 %i.e to i32
  %i.i = icmp sgt i32 %i.b, %i.h
  %or.cond24.i = select i1 %or.cond.i, i1 %i.i, i1 false
  br i1 %or.cond24.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i8 %i.f, 96
  %i.k = zext nneg i8 %i.f to i32
  %i.l = icmp sgt i32 %i.c, %i.k
  %or.cond38.i = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond38.i, label %bb.d, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i8 %i.f, -87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink42.i = phi i8 [ %i.m, %bb.d ], [ %i.g, %bb.b ]
  %i.n = fmul double %.3, %i.d
  %i.o = uitofp nneg i8 %.sink42.i to double
  %i.p = fadd double %i.n, %i.o                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01731.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.a
  br i1 %.not.i, label %bb.f, label %bb.b, !llvm.loop !1024

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp oge double %i.p, f0x4340000000000000
  %.not.i56 = icmp ne i32 %2, 0
  %or.cond72.not74 = and i1 %.not.i56, %i.r
  %i.s = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %2)
  %.not3.i = icmp samesign ult i32 %i.s, 2
  %or.cond73 = select i1 %or.cond72.not74, i1 %.not3.i, i1 false
  br i1 %or.cond73, label %.preheader, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

.preheader:                                       ; preds = %bb.f
  %i.t = lshr i32 %2, 1
  %i.u = zext nneg i32 %i.t to i64                ; 7 uses
  %i.v = load i8, ptr %0, align 1, !tbaa !147     ; 3 uses
  %i.w = or i8 %i.v, 32
  %i.x = add i8 %i.v, -48
  %or.cond = icmp ult i8 %i.x, 10
  %3 = and i8 %i.v, 15
  %4 = zext nneg i8 %3 to i64
  %i.y = sext i8 %i.w to i64
  %i.z = add nsw i64 %i.y, -87
  %.143 = select i1 %or.cond, i64 %4, i64 %i.z    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ab = and i64 %.143, %i.u
  %.not215 = icmp eq i64 %i.ab, 0
  %i.ac = lshr i64 %i.u, 1                        ; 2 uses
  br i1 %.not215, label %.lr.ph, label %._crit_edge.preheader

.preheader201:                                    ; preds = %bb.s, %bb.r
  %i.ad = phi i64 [ %i.bq, %bb.r ], [ %i.bt, %bb.s ] ; 2 uses
  %.145114 = phi ptr [ %.145.jt4, %bb.r ], [ %.145.jt3, %bb.s ] ; 3 uses
  %.139.jt4 = phi double [ %i.br, %bb.r ], [ %i.bu, %bb.s ] ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.r

spec.select.si.unfold.false.jt3:                  ; preds = %bb.s, %bb.t
  %i.af = phi i64 [ %i.bx, %bb.t ], [ %i.bt, %bb.s ] ; 2 uses
  %.2123 = phi i64 [ %.2.jt2, %bb.t ], [ %.2.jt3, %bb.s ]
  %.145115 = phi ptr [ %.145.jt2, %bb.t ], [ %.145.jt3, %bb.s ] ; 4 uses
  %.139.jt3 = phi double [ 2.000000e+00, %bb.t ], [ %i.bu, %bb.s ] ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.s

bb.g:                                             ; preds = %bb.v
  %i.ah = icmp eq i64 %i.cc, 0
  br i1 %i.ah, label %bb.j, label %bb.t

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %i.ai = phi i64 [ %i.bz, %bb.u ], [ %i.ac, %.preheader ] ; 2 uses
  %.145110217 = phi ptr [ %.145.jt0, %bb.u ], [ %i.aa, %.preheader ] ; 4 uses
  %.2118216 = phi i64 [ %.2.jt0, %bb.u ], [ %.143, %.preheader ]
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.u

._crit_edge:                                      ; preds = %._crit_edge.preheader, %bb.v
  %i.ak = phi i64 [ %i.cc, %bb.v ], [ %.ph, %._crit_edge.preheader ] ; 2 uses
  %.2124 = phi i64 [ %.2.jt1, %bb.v ], [ %.2124.ph, %._crit_edge.preheader ]
  %.145116 = phi ptr [ %.145.jt1, %bb.v ], [ %.145116.ph, %._crit_edge.preheader ] ; 4 uses
  %.166.jt1 = phi double [ %i.cf, %bb.v ], [ 1.000000e+00, %._crit_edge.preheader ] ; 2 uses
  %.1.jt1 = phi i64 [ %i.cg, %bb.v ], [ 52, %._crit_edge.preheader ]
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.v

bb.h:                                             ; preds = %.preheader201
  %i.am = icmp eq ptr %.145114, %i.a
  br i1 %i.am, label %.thread130, label %bb.m

bb.i:                                             ; preds = %spec.select.si.unfold.false.jt3
  %i.an = icmp eq ptr %.145115, %i.a
  br i1 %i.an, label %.thread139, label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.ao = icmp eq ptr %.145.jt1, %i.a
  br i1 %i.ao, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %bb.o

bb.k:                                             ; preds = %.lr.ph
  %i.ap = icmp eq ptr %.145110217, %i.a
  br i1 %i.ap, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.aq = icmp eq ptr %.145116, %i.a
  br i1 %i.aq, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.145114, i64 1
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  %i.as = load i8, ptr %.145115, align 1, !tbaa !147 ; 3 uses
  %i.at = or i8 %i.as, 32
  %i.au = add i8 %i.as, -48
  %or.cond.jt3 = icmp ult i8 %i.au, 10
  %5 = and i8 %i.as, 15
  %6 = zext nneg i8 %5 to i64
  %i.av = sext i8 %i.at to i64
  %i.aw = add nsw i64 %i.av, -87
  %.143.jt3 = select i1 %or.cond.jt3, i64 %6, i64 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %.145115, i64 1
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %.145.jt1, align 1, !tbaa !147 ; 3 uses
  %i.az = or i8 %i.ay, 32
  %i.ba = add i8 %i.ay, -48
  %or.cond.jt2 = icmp ult i8 %i.ba, 10
  %7 = and i8 %i.ay, 15
  %8 = zext nneg i8 %7 to i64
  %i.bb = sext i8 %i.az to i64
  %i.bc = add nsw i64 %i.bb, -87
  %.143.jt2 = select i1 %or.cond.jt2, i64 %8, i64 %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.145.jt1, i64 1
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.be = load i8, ptr %.145110217, align 1, !tbaa !147 ; 3 uses
  %i.bf = or i8 %i.be, 32
  %i.bg = add i8 %i.be, -48
  %or.cond.jt0 = icmp ult i8 %i.bg, 10
  %9 = and i8 %i.be, 15
  %10 = zext nneg i8 %9 to i64
  %i.bh = sext i8 %i.bf to i64
  %i.bi = add nsw i64 %i.bh, -87
  %.143.jt0 = select i1 %or.cond.jt0, i64 %10, i64 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.145110217, i64 1
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %.145116, align 1, !tbaa !147 ; 3 uses
  %i.bl = or i8 %i.bk, 32
  %i.bm = add i8 %i.bk, -48
  %or.cond.jt1 = icmp ult i8 %i.bm, 10
  %11 = and i8 %i.bk, 15
  %12 = zext nneg i8 %11 to i64
  %i.bn = sext i8 %i.bl to i64
  %i.bo = add nsw i64 %i.bn, -87
  %.143.jt1 = select i1 %or.cond.jt1, i64 %12, i64 %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %.145116, i64 1
  br label %bb.v

bb.r:                                             ; preds = %.preheader201, %bb.m
  %.145.jt4 = phi ptr [ %.145114, %.preheader201 ], [ %i.ar, %bb.m ]
  %.141.jt4 = phi i64 [ %i.ad, %.preheader201 ], [ %i.u, %bb.m ]
  %i.bq = lshr i64 %.141.jt4, 1
  %i.br = fmul double %.139.jt4, 2.000000e+00
  br label %.preheader201

bb.s:                                             ; preds = %spec.select.si.unfold.false.jt3, %bb.n
  %.145.jt3 = phi ptr [ %.145115, %spec.select.si.unfold.false.jt3 ], [ %i.ax, %bb.n ] ; 2 uses
  %.2.jt3 = phi i64 [ %.2123, %spec.select.si.unfold.false.jt3 ], [ %.143.jt3, %bb.n ] ; 2 uses
  %.141.jt3 = phi i64 [ %i.af, %spec.select.si.unfold.false.jt3 ], [ %i.u, %bb.n ] ; 2 uses
  %i.bs = and i64 %.141.jt3, %.2.jt3
  %.not200 = icmp eq i64 %i.bs, 0
  %i.bt = lshr i64 %.141.jt3, 1                   ; 2 uses
  %i.bu = fmul double %.139.jt3, 2.000000e+00     ; 2 uses
  br i1 %.not200, label %spec.select.si.unfold.false.jt3, label %.preheader201

bb.t:                                             ; preds = %bb.g, %bb.o
  %.145.jt2 = phi ptr [ %.145.jt1, %bb.g ], [ %i.bd, %bb.o ]
  %.2.jt2 = phi i64 [ %.2.jt1, %bb.g ], [ %.143.jt2, %bb.o ] ; 2 uses
  %.141.jt2 = phi i64 [ %i.cc, %bb.g ], [ %i.u, %bb.o ] ; 2 uses
  %i.bv = and i64 %.141.jt2, %.2.jt2
  %i.bw = icmp ne i64 %i.bv, 0                    ; 2 uses
  %i.bx = lshr i64 %.141.jt2, 1
  br label %spec.select.si.unfold.false.jt3

bb.u:                                             ; preds = %.lr.ph, %bb.p
  %.145.jt0 = phi ptr [ %.145110217, %.lr.ph ], [ %i.bj, %bb.p ] ; 2 uses
  %.2.jt0 = phi i64 [ %.2118216, %.lr.ph ], [ %.143.jt0, %bb.p ] ; 3 uses
  %.141.jt0 = phi i64 [ %i.ai, %.lr.ph ], [ %i.u, %bb.p ] ; 2 uses
  %i.by = and i64 %.141.jt0, %.2.jt0
  %.not = icmp eq i64 %i.by, 0
  %i.bz = lshr i64 %.141.jt0, 1                   ; 2 uses
  br i1 %.not, label %.lr.ph, label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %bb.u, %.preheader
  %.ph = phi i64 [ %i.ac, %.preheader ], [ %i.bz, %bb.u ]
  %.2124.ph = phi i64 [ %.143, %.preheader ], [ %.2.jt0, %bb.u ]
  %.145116.ph = phi ptr [ %i.aa, %.preheader ], [ %.145.jt0, %bb.u ]
  br label %._crit_edge

bb.v:                                             ; preds = %._crit_edge, %bb.q
  %.145.jt1 = phi ptr [ %.145116, %._crit_edge ], [ %i.bp, %bb.q ] ; 5 uses
  %.2.jt1 = phi i64 [ %.2124, %._crit_edge ], [ %.143.jt1, %bb.q ] ; 3 uses
  %.141.jt1 = phi i64 [ %i.ak, %._crit_edge ], [ %i.u, %bb.q ] ; 2 uses
  %i.ca = and i64 %.141.jt1, %.2.jt1
  %i.cb = icmp ne i64 %i.ca, 0                    ; 2 uses
  %i.cc = lshr i64 %.141.jt1, 1                   ; 3 uses
  %i.cd = fmul double %.166.jt1, 2.000000e+00
  %i.ce = uitofp i1 %i.cb to double
  %i.cf = fadd double %i.cd, %i.ce                ; 4 uses
  %i.cg = add i64 %.1.jt1, -1                     ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.g, label %._crit_edge

.thread139:                                       ; preds = %bb.i
  %i.ci = uitofp i1 %i.cb to double
  %i.cj = select i1 %i.bw, double %i.ci, double 0.000000e+00
  %i.ck = fadd double %i.cf, %i.cj
  %i.cl = fmul double %i.ck, %.139.jt3
  br label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

.thread130:                                       ; preds = %bb.h
  %i.cm = uitofp i1 %i.bw to double
  %i.cn = fadd double %i.cf, %i.cm
  %i.co = fmul double %i.cn, %.139.jt4
  br label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit: ; preds = %bb.c, %bb.k, %bb.l, %bb.j, %bb.a, %bb.f, %.thread130, %.thread139
  %.sroa.063.0 = phi double [ 0.000000e+00, %bb.a ], [ %i.p, %bb.f ], [ 0.000000e+00, %bb.k ], [ %i.co, %.thread130 ], [ %i.cl, %.thread139 ], [ %.166.jt1, %bb.l ], [ %i.cf, %bb.j ], [ 0.000000e+00, %bb.c ]
  %.sroa.364.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.k ], [ 1, %.thread130 ], [ 1, %.thread139 ], [ 1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.063.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.364.0, 1
  ret { double, i8 } %.fca.1.insert
}

declare void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !558    ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !146  ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !147
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.b
  %i.m = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 %i.b, ptr %i.n, align 1, !tbaa !147
  store i64 %i.e, ptr %i.c, align 8, !tbaa !146
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  store i8 0, ptr %i.p, align 1, !tbaa !147
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !216    ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !147   ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.c, !prof !557

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !147
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  tail call void @llvm.assume(i1 %.not77)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !216
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.e, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %bb.d, label %bb.e, !prof !557

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !147   ; 2 uses
  %.not75 = icmp slt i8 %i.t, -64
  tail call void @llvm.assume(i1 %.not75)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !147   ; 2 uses
  %.not76 = icmp slt i8 %i.v, -64
  tail call void @llvm.assume(i1 %.not76)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.w, ptr %0, align 8, !tbaa !216
  %i.x = shl nsw i32 %i.e, 12
  %i.y = and i32 %i.x, 61440
  %i.z = and i8 %i.t, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = and i8 %i.v, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ag = and i32 %i.e, 248
  %i.ah = icmp eq i32 %i.ag, 240
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !147 ; 2 uses
end_hunk_0
