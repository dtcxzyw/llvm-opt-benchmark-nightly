inline.NumInlined: 684
inline.NumDeleted: 352
begin_hunk_0_@_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EED2Ev:bb.a

bb.d:                                             ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #19
  br label %_ZNKSt14default_deleteIN10duckdb_re210SparseSetTIvEEEclEPS2_.exit

_ZNKSt14default_deleteIN10duckdb_re210SparseSetTIvEEEclEPS2_.exit: ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN10duckdb_re210SparseSetTIvEEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN10duckdb_re24ProgD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISB_EELb1EE8_S_do_itERSD_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 6 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !82
  %i.m = load ptr, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.m, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !37
  %i.t = load i64, ptr %i.n, align 8, !tbaa !70
  store i64 %i.t, ptr %i.l, align 8, !tbaa !70
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !68
  br label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !68
  store ptr %i.n, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !37
  store i64 0, ptr %i.v, align 8, !tbaa !68
  store i8 0, ptr %i.n, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  store ptr %i.z, ptr %i.x, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !163

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ac, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %.09) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !35    ; 4 uses
  %.pre16 = load ptr, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %0, align 8, !tbaa !35
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !34
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !48
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre16
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ag) #19
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, %.pre16
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit
  %i.ak = phi ptr [ %i.a, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread ], [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit ], [ %.pre, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #19
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #20
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_M_realloc_insertIJS6_RS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %4 = mul nuw nsw i64 %i.l, 40
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #21 ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.n ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %7, ptr %6, align 8, !tbaa !82
  %8 = load ptr, ptr %2, align 8, !tbaa !37       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not.i.a = icmp eq ptr %8, %9
  br i1 %.not.i.a, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !68   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %i.r, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit
  store ptr %8, ptr %6, align 8, !tbaa !37
  %i.s = load i64, ptr %9, align 8, !tbaa !70
  store i64 %i.s, ptr %7, align 8, !tbaa !70
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !68
  store ptr %9, ptr %2, align 8, !tbaa !37
  store i64 0, ptr %i.u, align 8, !tbaa !68
  store i8 0, ptr %9, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.x = load ptr, ptr %3, align 8, !tbaa !76
  store ptr %i.x, ptr %i.w, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %5, %bb.d ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %bb.d ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.012.i.i.i.i, align 8, !tbaa !82, !alias.scope !164, !noalias !167
  %i.z = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !167, !noalias !164 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68, !alias.scope !167, !noalias !164 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !169
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %.012.i.i.i.i, align 8, !tbaa !37, !alias.scope !164, !noalias !167
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !70, !alias.scope !167, !noalias !164
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !70, !alias.scope !164, !noalias !167
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !68, !alias.scope !167, !noalias !164
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !68, !alias.scope !164, !noalias !167
  store ptr %i.aa, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !167, !noalias !164
  store i64 0, ptr %i.ai, align 8, !tbaa !68, !alias.scope !167, !noalias !164
  store i8 0, ptr %i.aa, align 8, !tbaa !70, !alias.scope !167, !noalias !164
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43, !alias.scope !167, !noalias !164
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !43, !alias.scope !164, !noalias !167
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !170

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi ptr [ %5, %bb.d ], [ %i.ao, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34
  %.012.i.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ], [ %i.ap, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 6 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i.i29, align 8, !tbaa !82, !alias.scope !171, !noalias !174
  %i.ar = load ptr, ptr %.0911.i.i.i.i30, align 8, !tbaa !37, !alias.scope !174, !noalias !171 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

bb.f:                                             ; preds = %.lr.ph.i.i.i.i28
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !68, !alias.scope !174, !noalias !171 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !176
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i28
  store ptr %i.ar, ptr %.012.i.i.i.i29, align 8, !tbaa !37, !alias.scope !171, !noalias !174
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !70, !alias.scope !174, !noalias !171
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !70, !alias.scope !171, !noalias !174
  %.phi.trans.insert.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %.pre.i.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i.i32, align 8, !tbaa !68, !alias.scope !174, !noalias !171
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31, %bb.f
  %i.az = phi i64 [ %i.av, %bb.f ], [ %.pre.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !68, !alias.scope !171, !noalias !174
  store ptr %i.as, ptr %.0911.i.i.i.i30, align 8, !tbaa !37, !alias.scope !174, !noalias !171
  store i64 0, ptr %i.ba, align 8, !tbaa !68, !alias.scope !174, !noalias !171
  store i8 0, ptr %i.as, align 8, !tbaa !70, !alias.scope !174, !noalias !171
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43, !alias.scope !174, !noalias !171
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !43, !alias.scope !171, !noalias !174
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i.i35, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, label %.lr.ph.i.i.i.i28, !llvm.loop !170

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i.i36 = phi ptr [ %i.ap, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.bg, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ]
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #19
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %0, align 8, !tbaa !35
  store ptr %.0.lcssa.i.i.i.i36, ptr %i.a, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %5, i64 %i.l
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 10 uses
  %4 = alloca %"struct.std::pair", align 8        ; 9 uses
  %5 = alloca %"struct.std::pair", align 8        ; 8 uses
  %6 = alloca %"struct.std::pair", align 8        ; 9 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph68

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEET_SO_SO_T0_.exit"
  %i.k = icmp eq i64 %i.cn, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph68, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa64 = phi i64 [ %i.c, %.lr.ph ], [ %i.eu, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.023.1.i.i, %bb.b ]
  %i.l = udiv exact i64 %.lcssa64, 40             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.m = add nsw i64 %i.l, -2
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.ao, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.u = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i.i.i ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.v, ptr %5, align 8, !tbaa !37
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !70
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !68
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.ad = phi ptr [ %i.o, %bb.d ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 2 uses
  %i.ae = phi i64 [ %i.z, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %i.u, align 8, !tbaa !37
  store i64 0, ptr %i.af, align 8, !tbaa !68
  store i8 0, ptr %i.w, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !43
  store ptr %i.r, ptr %6, align 8, !tbaa !82
  %i.ai = icmp eq ptr %i.ad, %i.o
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i

bb.e:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i
  %i.aj = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ak, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !37
  %i.al = load i64, ptr %i.o, align 8, !tbaa !70
  store i64 %i.al, ptr %i.r, align 8, !tbaa !70
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i, %bb.e
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !68
  store ptr %i.o, ptr %5, align 8, !tbaa !37
  store i64 0, ptr %i.p, align 8, !tbaa !68
  store i8 0, ptr %i.o, align 8, !tbaa !70
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !43
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEElSC_NS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.l, ptr noundef %6)
  %i.am = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.r
  br i1 %i.an, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i
  call void @_ZdlPv(ptr noundef %i.am) #19
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ao = add nsw i64 %.010.i.i.i, -1
  %i.ap = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.o
  br i1 %i.aq, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ap) #19
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i", label %bb.c, !llvm.loop !178

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i": ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.ay, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_RT0_.exit" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i" ] ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.ar, ptr %3, align 8, !tbaa !82
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 9 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !68 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.az, ptr %3, align 8, !tbaa !37
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !70
  store i64 %i.bg, ptr %i.ar, align 8, !tbaa !70
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.bh = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bd, %bb.f ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 3 uses
  store i64 %i.bh, ptr %i.as, align 8, !tbaa !68
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !37
  store i64 0, ptr %i.bi, align 8, !tbaa !68
  store i8 0, ptr %i.ba, align 8, !tbaa !70
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !43
  %i.bl = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.bm = icmp eq ptr %i.bl, %i.au
  br i1 %i.bm, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.bn = load i64, ptr %i.i, align 8, !tbaa !68  ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %.not21.i.i.i = icmp eq ptr %0, %i.ay
  br i1 %.not21.i.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  switch i64 %i.bn, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !70
  store i8 %i.bp, ptr %i.ba, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.j:                                             ; preds = %bb.h
end_hunk_0
