Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat?download=true
inline.NumInlined: 13193
inline.NumDeleted: 4330
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 115
begin_hunk_0_@"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_":._crit_edge.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !453
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.d
  %i.ak = phi i64 [ %i.aj, %bb.d ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  ret i64 %i.ak

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.f
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !63
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET0_T_SF_SF_SF_SE_T1_"(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4, ptr nofree readonly captures(address) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %class.common_json, align 8         ; 5 uses
  %7 = alloca %class.common_json, align 8         ; 5 uses
  %8 = alloca %class.common_json, align 8         ; 3 uses
  %9 = alloca %class.common_json, align 8         ; 3 uses
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond24 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond24, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.027 = phi ptr [ %i.j, %bb.d ], [ %4, %bb.a ]  ; 3 uses
  %.sroa.020.026 = phi ptr [ %.sroa.020.1, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %.sroa.016.025 = phi ptr [ %.sroa.016.1, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %i.c = call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.025)
  %i.d = call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.026)
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.025) #32
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.027, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %8) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #32
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.026) #32
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.027, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %9) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.020.026, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.016.1 = phi ptr [ %i.g, %bb.b ], [ %.sroa.016.025, %bb.c ] ; 3 uses
  %.sroa.020.1 = phi ptr [ %.sroa.020.026, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.027, i64 32 ; 2 uses
  %i.k = icmp ne ptr %.sroa.020.1, %1
  %i.l = icmp ne ptr %.sroa.016.1, %3
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !2156

.critedge:                                        ; preds = %bb.d, %bb.a
  %.sroa.016.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.016.1, %bb.d ] ; 2 uses
  %.sroa.020.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.020.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %.sroa.020.0.lcssa to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 5                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.p, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.critedge ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %.sroa.020.0.lcssa, %.critedge ] ; 2 uses
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i) #32
  %i.r = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #32
  %i.s = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.u = add nsw i64 %.012.i.i.i.i.i, -1
  %i.v = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, !llvm.loop !37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.w = ptrtoint ptr %3 to i64
  %i.x = ptrtoint ptr %.sroa.016.0.lcssa to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 5                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit14

.lr.ph.i.i.i.i.i10:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i.i10
  %.012.i.i.i.i.i11 = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i10 ], [ %i.z, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0811.i.i.i.i.i12 = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i10 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0910.i.i.i.i.i13 = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i10 ], [ %.sroa.016.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 2 uses
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i13) #32
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i12, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %6) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12, i64 32 ; 2 uses
  %i.ae = add nsw i64 %.012.i.i.i.i.i11, -1
  %i.af = icmp samesign ugt i64 %.012.i.i.i.i.i11, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit14, !llvm.loop !37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit14: ; preds = %.lr.ph.i.i.i.i.i10, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit
  %.08.lcssa.i.i.i.i.i9 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %.08.lcssa.i.i.i.i.i9
}

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @"_ZSt12__move_mergeIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS0_E3$_0EEET0_T_SF_SF_SF_SE_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr nofree readonly captures(address) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %class.common_json, align 8         ; 5 uses
  %7 = alloca %class.common_json, align 8         ; 5 uses
  %8 = alloca %class.common_json, align 8         ; 3 uses
  %9 = alloca %class.common_json, align 8         ; 3 uses
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.030 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 4 uses
  %.01629 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %.sroa.024.028 = phi ptr [ %i.k, %bb.d ], [ %4, %bb.a ] ; 3 uses
  %i.d = call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %.01629)
  %i.e = call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %.030)
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.01629) #32
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.024.028, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %8) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #32
  %i.h = getelementptr inbounds nuw i8, ptr %.01629, i64 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %.030) #32
  %i.i = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.024.028, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %9) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  %i.j = getelementptr inbounds nuw i8, ptr %.030, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117 = phi ptr [ %i.h, %bb.b ], [ %.01629, %bb.c ] ; 3 uses
  %.1 = phi ptr [ %.030, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 32 ; 2 uses
  %i.l = icmp ne ptr %.1, %1
  %i.m = icmp ne ptr %.117, %3
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !2157

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.024.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.k, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.o = ptrtoint ptr %1 to i64
  %i.p = ptrtoint ptr %.0.lcssa to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 5                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.r, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %.sroa.024.0.lcssa, %._crit_edge ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i) #32
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i, -1
  %i.x = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit, !llvm.loop !37

_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.024.0.lcssa, %._crit_edge ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.y = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.z = ptrtoint ptr %.sroa.024.0.lcssa to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds i8, ptr %.sroa.024.0.lcssa, i64 %i.aa ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = ptrtoint ptr %.016.lcssa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 5                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit23

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i19 ], [ %i.af, %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ] ; 2 uses
  %.0811.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i19 ], [ %i.ab, %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ] ; 2 uses
  %.0910.i.i.i.i.i22 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i19 ], [ %.016.lcssa, %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ] ; 2 uses
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i22) #32
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i21, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %6) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 32 ; 2 uses
  %i.ak = add nsw i64 %.012.i.i.i.i.i20, -1
  %i.al = icmp samesign ugt i64 %.012.i.i.i.i.i20, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit23, !llvm.loop !37

_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit
  %.08.lcssa.i.i.i.i.i18 = phi ptr [ %i.ab, %_ZSt4moveIP11common_jsonN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ], [ %i.aj, %.lr.ph.i.i.i.i.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %10 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18 to i64
  %i.am = sub i64 %10, %i.y
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 %i.am
  ret ptr %i.an
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEEvT_SE_SE_T0_SF_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree readonly captures(address) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %class.common_json, align 8         ; 5 uses
  %7 = alloca %class.common_json, align 8         ; 5 uses
  %8 = alloca %class.common_json, align 8         ; 5 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond85 = or i1 %i.a, %i.b
  br i1 %or.cond85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8191 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 4 uses
  %.tr8090 = phi i64 [ %3, %.lr.ph ], [ %i.au, %tailrecurse ] ; 4 uses
  %.tr7888 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr86 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8191, %.tr8090
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %.tr7888)
  %i.g = tail call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %.tr86)
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.tr86) #32
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %.tr7888) #32
  %i.i = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.tr86, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #32
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %.tr7888, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %8) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #32
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr8090, %.tr8191
  %i.l = ptrtoint ptr %.tr7888 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr8090, 2                     ; 2 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %.tr86, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.c, %i.l
  %i.p = ashr exact i64 %i.o, 5                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7888, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.r = lshr i64 %.017.i, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.016.i, i64 %i.r ; 2 uses
  %i.t = tail call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  %i.u = tail call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.v = icmp ult i64 %i.t, %i.u                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.017.i, %i.x
  %.sroa.012.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", !llvm.loop !39

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %.tr7888, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.l
  %i.ab = ashr exact i64 %i.aa, 5
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.ac = sdiv i64 %.tr8191, 2                    ; 2 uses
  %i.ad = getelementptr inbounds [32 x i8], ptr %.tr7888, i64 %i.ac ; 2 uses
  %i.ae = ptrtoint ptr %.tr86 to i64              ; 3 uses
  %i.af = sub i64 %i.l, %i.ae
  %i.ag = ashr exact i64 %i.af, 5                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.017.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.012.016.i59 = phi ptr [ %.sroa.012.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.ai = lshr i64 %.017.i58, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.016.i59, i64 %i.ai ; 2 uses
  %i.ak = tail call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %i.al = tail call fastcc noundef i64 @"_ZZZL29deepseek_v4_sort_tool_resultsRK11common_jsonENK3$_0clES1_S1_ENKUlS1_E_clES1_"(ptr readonly %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.am = icmp ult i64 %i.ak, %i.al               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ao = xor i64 %i.ai, -1
  %i.ap = add nsw i64 %.017.i58, %i.ao
  %.sroa.012.1.i62 = select i1 %i.am, ptr %.sroa.012.016.i59, ptr %i.an ; 3 uses
  %.1.i63 = select i1 %i.am, i64 %i.ai, i64 %i.ap ; 2 uses
  %i.aq = icmp sgt i64 %.1.i63, 0
  br i1 %i.aq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", !llvm.loop !40

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre94 = ptrtoint ptr %.sroa.012.1.i62 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi95 = phi i64 [ %.pre94, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.012.0.lcssa.i56 = phi ptr [ %.sroa.012.1.i62, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.ar = sub i64 %.pre-phi95, %i.ae
  %i.as = ashr exact i64 %i.ar, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit"
  %.sroa.066.0 = phi ptr [ %i.n, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %.sroa.012.0.lcssa.i56, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.ad, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.049 = phi i64 [ %i.ab, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.ac, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.m, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Iter_comp_valIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ], [ %i.as, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES2_NS0_5__ops14_Val_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEET_SE_SE_RKT0_T1_.exit" ] ; 2 uses
  %i.at = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %.tr7888, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZL29deepseek_v4_sort_tool_resultsRKS2_E3$_0EEEvT_SE_SE_T0_SF_T1_"(ptr %.tr86, ptr %.sroa.066.0, ptr %i.at, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.au = sub nsw i64 %.tr8090, %.0               ; 2 uses
  %i.av = sub nsw i64 %.tr8191, %.049             ; 2 uses
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = icmp eq i64 %i.av, 0
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.common_json, align 8         ; 5 uses
  %4 = alloca %class.common_json, align 8         ; 5 uses
  %5 = alloca %class.common_json, align 8         ; 5 uses
  %6 = alloca %class.common_json, align 8         ; 5 uses
  %7 = alloca %class.common_json, align 8         ; 5 uses
  %8 = alloca %class.common_json, align 8         ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIP11common_jsonSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_(ptr %0, ptr %1, ptr %1) ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.m = sub i64 %i.c, %i.g
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.056 = phi i64 [ %i.f, %bb.e ], [ %.056.be, %.backedge ] ; 4 uses
  %.0 = phi i64 [ %i.i, %bb.e ], [ %.0.be, %.backedge ] ; 8 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.e ], [ %.sroa.026.0.be, %.backedge ] ; 5 uses
  %i.o = sub nsw i64 %.056, %.0                   ; 6 uses
  %i.p = icmp slt i64 %.0, %i.o
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i64 %i.o, 0
  br i1 %i.q, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %bb.g
  %i.r = getelementptr inbounds [32 x i8], ptr %.sroa.026.0, i64 %.0
  br label %.lr.ph65

._crit_edge66:                                    ; preds = %.lr.ph65, %bb.g
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.0, %bb.g ], [ %i.v, %.lr.ph65 ]
end_hunk_0
