Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/static_matrix?download=true
inline.NumInlined: 1395
inline.NumDeleted: 604
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2lp13static_matrixI8rationalS1_E16init_row_columnsEjj:bb.a
_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split.i: ; preds = %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i

_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i: ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split.i, %_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split.i ], [ %.pre, %_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.q)
          to label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #22
  unreachable

_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i.thread, %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.t = add nuw i32 %.01016, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %1
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !153

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit, %.preheader
  ret void

bb.h:                                             ; preds = %.lr.ph18, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit
  %.017 = phi i32 [ 0, %.lr.ph18 ], [ %i.aa, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !72   ; 4 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !81
  %.not.i.i13 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i13, label %bb.i, label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.x, ptr %i.e, align 8, !tbaa !72
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit unwind label %bb.l

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %4, align 8, !tbaa !76     ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pr)
          to label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aa = add nuw i32 %.017, 1                    ; 2 uses
  %exitcond20.not = icmp eq i32 %i.aa, %2
  br i1 %exitcond20.not, label %._crit_edge, label %bb.h, !llvm.loop !154

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %.not5.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i, label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i
  %.06.i = phi ptr [ %i.i, %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.b

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i: ; preds = %.noexc.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !4

_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split: ; preds = %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit

_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit: ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.j)
          to label %_ZNSt12_Vector_baseIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #22
  unreachable

_ZNSt12_Vector_baseIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable

_ZNSt12_Vector_baseIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN2lp13static_matrixI8rationalS1_E3refaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !157, !nonnull !158, !align !159
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !161
  tail call void @_ZN2lp13static_matrixI8rationalS1_E3setEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i32 noundef %i.c, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_E3setEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.lp::row_cell", align 8      ; 13 uses
  %i.a = load i32, ptr %3, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = zext i32 %2 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 6 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !76   ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = sdiv exact i64 %i.p, 12                  ; 4 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 40
  %.sroa.2.0.insert.ext.i = shl i64 %i.y, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i, %i.d ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.l, %i.aa
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.l, align 4, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !75
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.ac, label %bb.e, label %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.q
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 768614336404564650)
  %i.ag = select i1 %i.ae, i64 768614336404564650, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = mul nuw nsw i64 %i.ag, 12
  %i.ai = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ah) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.p
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.aj, align 4, !tbaa !37
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !83, !alias.scope !167
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.m)
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !76
  store ptr %i.am, ptr %i.k, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.an, ptr %i.z, align 8, !tbaa !82
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  store i32 %2, ptr %4, align 8, !tbaa !68, !alias.scope !168
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.r, ptr %i.ao, align 4, !tbaa !73, !alias.scope !168
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !54, !alias.scope !168
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 4, !alias.scope !168
  %i.as = and i8 %i.ar, -4                        ; 2 uses
  store i8 %i.as, ptr %i.aq, align 4, !alias.scope !168
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !55, !alias.scope !168
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store i32 1, ptr %i.au, align 8, !tbaa !54, !alias.scope !168
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.aw = load i8, ptr %i.av, align 4, !alias.scope !168
  %i.ax = and i8 %i.aw, -4
  store i8 %i.ax, ptr %i.av, align 4, !alias.scope !168
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.ay, align 8, !tbaa !55, !alias.scope !168
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51, !noalias !168 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !noalias !168
  %i.bc = and i8 %i.bb, 1
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.be = load i32, ptr %3, align 8, !tbaa !54, !noalias !168
  store i32 %i.be, ptr %i.ap, align 8, !tbaa !54, !alias.scope !168
  store i8 %i.as, ptr %i.aq, align 4, !alias.scope !168
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bh = load i8, ptr %i.bg, align 4, !noalias !168
  %i.bi = and i8 %i.bh, 1
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i
  %i.bk = load i32, ptr %i.bf, align 8, !tbaa !54, !noalias !168
  store i32 %i.bk, ptr %i.au, align 8, !tbaa !54, !alias.scope !168
  %i.bl = load i8, ptr %i.av, align 4, !alias.scope !168
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.av, align 4, !alias.scope !168
  br label %_ZN2lp13static_matrixI8rationalS1_E13make_row_cellEjjRKS1_.exit

bb.j:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
  br label %_ZN2lp13static_matrixI8rationalS1_E13make_row_cellEjjRKS1_.exit

_ZN2lp13static_matrixI8rationalS1_E13make_row_cellEjjRKS1_.exit: ; preds = %bb.i, %bb.j
  %i.bn = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit unwind label %bb.m ; 0 uses

_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %_ZN2lp13static_matrixI8rationalS1_E13make_row_cellEjjRKS1_.exit
  %i.bo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZN2lp8row_cellI8rationalED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i.i, %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #22
  unreachable

_ZN2lp8row_cellI8rationalED2Ev.exit:              ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN2lp8row_cellI8rationalED2Ev.exit
  ret void

bb.m:                                             ; preds = %_ZN2lp13static_matrixI8rationalS1_E13make_row_cellEjjRKS1_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2lp8row_cellI8rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.br
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2lp8row_cellI8rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_EC2Ejj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN2lp13static_matrixI8rationalS1_EC5Ejj) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIN2lp13static_matrixI8rationalS2_E3dimESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !86
  %.not.not.i.i = icmp eq i32 %2, 0
  br i1 %.not.not.i.i, label %_ZN6vectorIiLb1EjEC2EjRKi.exit, label %.preheader.i

thread-pre-split.i.i:                             ; preds = %_ZNK6vectorIiLb1EjE8capacityEv.exit.i.i, %.preheader.i
  invoke void @_ZN6vectorIiLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %thread-pre-split.i.i
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !86
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.noexc
  %i.b = phi ptr [ %.pr.pre.i.i, %.noexc ], [ null, %bb.a ] ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %thread-pre-split.i.i, label %_ZNK6vectorIiLb1EjE8capacityEv.exit.i.i

_ZNK6vectorIiLb1EjE8capacityEv.exit.i.i:          ; preds = %.preheader.i
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37
  %i.f = icmp ugt i32 %2, %i.e
  br i1 %i.f, label %thread-pre-split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK6vectorIiLb1EjE8capacityEv.exit.i.i
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 %2, ptr %i.g, align 4, !tbaa !37
  %i.h = zext i32 %2 to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.b, i8 -1, i64 %i.i, i1 false), !tbaa !37
  br label %_ZN6vectorIiLb1EjEC2EjRKi.exit

_ZN6vectorIiLb1EjEC2EjRKi.exit:                   ; preds = %.lr.ph.preheader.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, i8 0, i64 96, i1 false)
  invoke void @_ZN2lp13static_matrixI8rationalS1_E16init_row_columnsEjj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6vectorIiLb1EjEC2EjRKi.exit
  ret void

bb.c:                                             ; preds = %thread-pre-split.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6vectorIiLb1EjEC2EjRKi.exit
  %i.l = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE17init_empty_matrixEjj:bb.a
  %i.z = icmp ugt i32 %.ph, %i.y
  br i1 %i.z, label %_ZNK6vectorIiLb1EjE8capacityEv.exit.thread.i.i, label %.lr.ph.preheader.i.i

_ZNK6vectorIiLb1EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIiLb1EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorIiLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !86
  br label %thread-pre-split.i.i, !llvm.loop !180

.lr.ph.preheader.i.i:                             ; preds = %_ZNK6vectorIiLb1EjE8capacityEv.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4
  store i32 %.ph, ptr %i.aa, align 4, !tbaa !37
  %i.ab = zext i32 %.ph to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.v, i8 -1, i64 %i.ac, i1 false), !tbaa !37
  br label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE26init_vector_of_row_offsetsEv.exit

_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE26init_vector_of_row_offsetsEv.exit: ; preds = %_ZNK6vectorIiLb1EjE4sizeEv.exit.i.i, %_ZNK6vectorIiLb1EjE4sizeEv.exit.thread.i.i, %.lr.ph.preheader.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE16init_row_columnsEjj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.15", align 8    ; 9 uses
  %4 = alloca %"class.std::vector.29", align 8    ; 7 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit, %bb.a
  %.not19 = icmp eq i32 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit
  %.01016 = phi i32 [ 0, %.lr.ph ], [ %i.t, %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.c, label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i.thread

_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i.thread: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.j, ptr %i.a, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit unwind label %bb.g

_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit: ; preds = %bb.c
  %.pre = load ptr, ptr %3, align 8, !tbaa !49    ; 3 uses
  %.pre21 = load ptr, ptr %i.c, align 8, !tbaa !78 ; 2 uses
  %.not5.i.i = icmp eq ptr %.pre, %.pre21
  br i1 %.not5.i.i, label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit, %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i.i
  %.06.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i.i ], [ %.pre, %_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.l = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.d

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.p, %.pre21
  br i1 %.not.i.i12, label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split.i: ; preds = %_ZNSt16allocator_traitsI13std_allocatorIN2lp8row_cellI8rationalEEEE7destroyIS4_EEvRS5_PT_.exit.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i

_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i: ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split.i, %_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exitthread-pre-split.i ], [ %.pre, %_ZNSt6vectorIS_IN2lp8row_cellI8rationalEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.q)
          to label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #22
  unreachable

_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i.thread, %_ZSt8_DestroyIPN2lp8row_cellI8rationalEE13std_allocatorIS3_EEvT_S7_RT0_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.t = add nuw i32 %.01016, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %1
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !181

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit, %.preheader
  ret void

bb.h:                                             ; preds = %.lr.ph18, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit
  %.017 = phi i32 [ 0, %.lr.ph18 ], [ %i.aa, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !72   ; 4 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !81
  %.not.i.i13 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i13, label %bb.i, label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.x, ptr %i.e, align 8, !tbaa !72
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit unwind label %bb.l

_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %4, align 8, !tbaa !76     ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pr)
          to label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorIS_IN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EES4_IS6_EE9push_backEOS6_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aa = add nuw i32 %.017, 1                    ; 2 uses
  %exitcond20.not = icmp eq i32 %i.aa, %2
  br i1 %exitcond20.not, label %._crit_edge, label %bb.h, !llvm.loop !182

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE3setEjjRKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.lp::row_cell", align 8      ; 13 uses
  %i.a = load i32, ptr %3, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = zext i32 %2 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 6 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !76   ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = sdiv exact i64 %i.p, 12                  ; 4 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 40
  %.sroa.2.0.insert.ext.i = shl i64 %i.y, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i, %i.d ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.l, %i.aa
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.l, align 4, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !75
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.ac, label %bb.e, label %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.q
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 768614336404564650)
  %i.ag = select i1 %i.ae, i64 768614336404564650, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = mul nuw nsw i64 %i.ag, 12
  %i.ai = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ah) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.p
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.aj, align 4, !tbaa !37
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !83, !alias.scope !188
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.m)
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !76
  store ptr %i.am, ptr %i.k, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.an, ptr %i.z, align 8, !tbaa !82
  br label %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  store i32 %2, ptr %4, align 8, !tbaa !68, !alias.scope !189
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.r, ptr %i.ao, align 4, !tbaa !73, !alias.scope !189
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !54, !alias.scope !189
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 4, !alias.scope !189
  %i.as = and i8 %i.ar, -4                        ; 2 uses
  store i8 %i.as, ptr %i.aq, align 4, !alias.scope !189
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !55, !alias.scope !189
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store i32 1, ptr %i.au, align 8, !tbaa !54, !alias.scope !189
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.aw = load i8, ptr %i.av, align 4, !alias.scope !189
  %i.ax = and i8 %i.aw, -4
  store i8 %i.ax, ptr %i.av, align 4, !alias.scope !189
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.ay, align 8, !tbaa !55, !alias.scope !189
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51, !noalias !189 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !noalias !189
  %i.bc = and i8 %i.bb, 1
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.be = load i32, ptr %3, align 8, !tbaa !54, !noalias !189
  store i32 %i.be, ptr %i.ap, align 8, !tbaa !54, !alias.scope !189
  store i8 %i.as, ptr %i.aq, align 4, !alias.scope !189
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE9push_backEOS3_.exit
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bh = load i8, ptr %i.bg, align 4, !noalias !189
  %i.bi = and i8 %i.bh, 1
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i
  %i.bk = load i32, ptr %i.bf, align 8, !tbaa !54, !noalias !189
  store i32 %i.bk, ptr %i.au, align 8, !tbaa !54, !alias.scope !189
  %i.bl = load i8, ptr %i.av, align 4, !alias.scope !189
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.av, align 4, !alias.scope !189
  br label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit

bb.j:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
  br label %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit

_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit: ; preds = %bb.i, %bb.j
  %i.bn = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit unwind label %bb.m ; 0 uses

_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit
  %i.bo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZN2lp8row_cellI8rationalED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i.i, %_ZNSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #22
  unreachable

_ZN2lp8row_cellI8rationalED2Ev.exit:              ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN2lp8row_cellI8rationalED2Ev.exit
  ret void

bb.m:                                             ; preds = %_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE13make_row_cellEjjRKS1_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2lp8row_cellI8rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.br
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp13static_matrixI8rationalS1_E27pivot_row_to_row_given_cellEjRNS_8row_cellINS_12empty_structEEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 17 uses
  %5 = alloca %class.rational, align 8            ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  store i32 0, ptr %4, align 8, !tbaa !54, !alias.scope !195
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !alias.scope !195
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !195
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !55, !alias.scope !195
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !54, !alias.scope !195
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !195
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4, !alias.scope !195
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !55, !alias.scope !195
  %i.u = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51, !noalias !195 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.w = load i8, ptr %i.v, align 4, !noalias !195
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.k, align 8, !tbaa !54, !noalias !195
  store i32 %i.z, ptr %4, align 8, !tbaa !54, !alias.scope !195
  store i8 %i.n, ptr %i.l, align 4, !alias.scope !195
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !noalias !195
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !54, !noalias !195
  store i32 %i.af, ptr %i.p, align 8, !tbaa !54, !alias.scope !195
  %i.ag = load i8, ptr %i.q, align 4, !alias.scope !195
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.q, align 4, !alias.scope !195
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !51, !noalias !195
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZngRK8rational.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.aa, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn.pn.pn.pn, %bb.aa ]
end_hunk_1
