inline.NumInlined: 37317
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_121BindReservoirQuantileERNS_13ClientContextERNS_17AggregateFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #30
  br label %bb.bw

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
  %i.j = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(88) %i.j)
  br i1 %i.n, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bx unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.050 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.r) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.050, label %bb.j, label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.050, label %bb.j, label %bb.bw

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn135 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #30
  br label %bb.bw

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
  %i.v = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  call void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i1 noundef zeroext false)
  %i.w = load i8, ptr %6, align 8, !tbaa !154
  %.not = icmp eq i8 %i.w, 101
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = invoke fastcc noundef double @_ZN6duckdb12_GLOBAL__N_122CheckReservoirQuantileERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.n

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.y = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.m unwind label %bb.n       ; 3 uses

bb.m:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  store double %i.x, ptr %i.y, align 8, !tbaa !776
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %.loopexit

bb.n:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit116

bb.o:                                             ; preds = %bb.k
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ListValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !230 ; 2 uses
  %.not149156 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not149156, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit116

.lr.ph:                                           ; preds = %bb.p, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84
  %.sroa.0127.0160 = phi ptr [ %.sroa.0127.4, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84 ], [ null, %bb.p ] ; 7 uses
  %.sroa.12.0159 = phi ptr [ %.sroa.12.3, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84 ], [ null, %bb.p ] ; 4 uses
  %.sroa.20.0158 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84 ], [ null, %bb.p ] ; 2 uses
  %.sroa.0122.0157 = phi ptr [ %i.av, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84 ], [ %i.ac, %bb.p ] ; 2 uses
  %i.ag = invoke fastcc noundef double @_ZN6duckdb12_GLOBAL__N_122CheckReservoirQuantileERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0122.0157)
          to label %bb.r unwind label %.loopexit150 ; 2 uses

bb.r:                                             ; preds = %.lr.ph
  %.not.i.i75 = icmp eq ptr %.sroa.12.0159, %.sroa.20.0158
  br i1 %.not.i.i75, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store double %i.ag, ptr %.sroa.12.0159, align 8, !tbaa !776
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84

bb.t:                                             ; preds = %bb.r
  %i.ah = ptrtoint ptr %.sroa.12.0159 to i64
  %i.ai = ptrtoint ptr %.sroa.0127.0160 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.u, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i76

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i76: ; preds = %bb.t
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i77 = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i77, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i78 = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i78)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #31
          to label %.noexc83 unwind label %.loopexit150 ; 4 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i76
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store double %i.ag, ptr %i.as, align 8, !tbaa !776
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.v, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i79

bb.v:                                             ; preds = %.noexc83
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %.sroa.0127.0160, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i79

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i79: ; preds = %bb.v, %.noexc83
  %.not.i17.i.i.i80 = icmp eq ptr %.sroa.0127.0160, null
  br i1 %.not.i17.i.i.i80, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i81, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i79
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0127.0160) #34
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i81

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i81: ; preds = %bb.w, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i79
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84

_ZNSt6vectorIdSaIdEE9push_backEOd.exit84:         ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i81, %bb.s
  %.sroa.20.1 = phi ptr [ %i.au, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i81 ], [ %.sroa.20.0158, %bb.s ]
  %.pn = phi ptr [ %i.as, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i81 ], [ %.sroa.12.0159, %bb.s ]
  %.sroa.0127.4 = phi ptr [ %i.ar, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i81 ], [ %.sroa.0127.0160, %bb.s ] ; 2 uses
  %.sroa.12.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0122.0157, i64 64 ; 2 uses
  %.not149 = icmp eq ptr %i.av, %i.ae
  br i1 %.not149, label %.loopexit, label %.lr.ph

.loopexit150:                                     ; preds = %.lr.ph, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i76
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84, %bb.p, %bb.m
  %.sroa.12.1 = phi ptr [ %i.z, %bb.m ], [ null, %bb.p ], [ %.sroa.12.3, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84 ] ; 4 uses
  %.sroa.0127.1 = phi ptr [ %i.y, %bb.m ], [ null, %bb.p ], [ %.sroa.0127.4, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit84 ] ; 17 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !328 ; 2 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !330
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %14 = lshr exact i64 %i.bb, 3
  %i.bc = icmp eq i64 %i.bb, 16
  br i1 %i.bc, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !15
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp eq i64 %i.bj, 48
  br i1 %i.bk, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bl = add nsw i64 %14, -1
  invoke void @_ZN6duckdb8Function13EraseArgumentERNS_14SimpleFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEm(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bl)
          to label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.x
  %i.bn = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.aw, align 8, !tbaa !328
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !335 ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i85, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(88) %i.bo) #30, !inline_history !827
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %bb.aa, %bb.y
  %i.bs = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %.noexc86 unwind label %bb.ag  ; 7 uses

.noexc86:                                         ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit
  %i.bt = ptrtoint ptr %.sroa.12.1 to i64
  %i.bu = ptrtoint ptr %.sroa.0127.1 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.12.1, %.sroa.0127.1
  br i1 %.not.i.i.i.i.i.i, label %.thread.i, label %bb.ab

.thread.i:                                        ; preds = %.noexc86
  %i.bw = getelementptr inbounds i8, ptr null, i64 %i.bv
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125ReservoirQuantileBindDataESt14default_deleteIS2_EED2Ev.exit

bb.ab:                                            ; preds = %.noexc86
  %i.bx = icmp ugt i64 %i.bv, 9223372036854775800
  br i1 %i.bx, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !54

.noexc.i.i.i.i:                                   ; preds = %bb.ab
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc.i unwind label %bb.af, !noalias !828

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ab
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #31
          to label %.noexc4.i unwind label %bb.af, !noalias !828 ; 6 uses

.noexc4.i:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv ; 3 uses
  %i.ca = icmp samesign ugt i64 %i.bv, 8
  br i1 %i.ca, label %bb.ac, label %bb.ad, !prof !831

bb.ac:                                            ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 8 %.sroa.0127.1, i64 %i.bv, i1 false), !noalias !828
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125ReservoirQuantileBindDataESt14default_deleteIS2_EED2Ev.exit

bb.ad:                                            ; preds = %.noexc4.i
  %i.cb = icmp eq i64 %i.bv, 8
  br i1 %i.cb, label %bb.ae, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125ReservoirQuantileBindDataESt14default_deleteIS2_EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load double, ptr %.sroa.0127.1, align 8, !tbaa !776, !noalias !828
  store double %i.cc, ptr %i.by, align 8, !tbaa !776, !noalias !828
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125ReservoirQuantileBindDataESt14default_deleteIS2_EED2Ev.exit

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #34, !noalias !828
  br label %.body

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125ReservoirQuantileBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread.i, %bb.ac, %bb.ad, %bb.ae
  %i.ce = phi ptr [ %i.bz, %bb.ac ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.ae ], [ %i.bw, %.thread.i ] ; 2 uses
  %i.cf = phi ptr [ %i.by, %bb.ac ], [ %i.by, %bb.ad ], [ %i.by, %bb.ae ], [ null, %.thread.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125ReservoirQuantileBindDataE, i64 16), ptr %i.bs, align 8, !tbaa !51, !noalias !828
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !773, !noalias !828
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !770, !noalias !828
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !832, !noalias !828
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i64 8192, ptr %i.cj, align 8, !tbaa !833, !noalias !828
  store ptr %i.bs, ptr %0, align 8, !tbaa !176
  br label %bb.bt

bb.ag:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE8pop_backEv.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %.loopexit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2)
          to label %bb.ai unwind label %bb.z

bb.ai:                                            ; preds = %bb.ah
  %i.cm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.aj unwind label %bb.z      ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 120
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(88) %i.cm)
          to label %bb.ak unwind label %bb.z

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.cq, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bx unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread: ; preds = %bb.al
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.038 = phi i1 [ false, %bb.an ], [ true, %bb.am ] ; 2 uses
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cu = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.cu) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.038, label %bb.ap, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.038, label %bb.ap, label %.body

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %.pn56138 = phi { ptr, i32 } [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ]
  call void @__cxa_free_exception(ptr %i.cr) #30
  br label %.body

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.cy = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.cy, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !331, !range !234, !noundef !235
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.dc = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
end_hunk_0
begin_hunk_1_@_ZSt13__introselectIPalN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph65, !llvm.loop !951

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.031.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01729.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @_ZSt13__heap_selectIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.031.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01729.lcssa)
  %i.h = load i8, ptr %.031.lcssa, align 1, !tbaa !14
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %.031.lcssa, align 1, !tbaa !14
  store i8 %i.h, ptr %1, align 1, !tbaa !14
  br label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0163063 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.03162 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0163063, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.03162, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03162, i64 1 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0172964, i64 -1 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !tbaa !14    ; 5 uses
  %i.q = load i8, ptr %i.m, align 1, !tbaa !14    ; 5 uses
  %i.r = icmp slt i8 %i.p, %i.q
  %i.s = load i8, ptr %i.o, align 1, !tbaa !14    ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = icmp slt i8 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i8, ptr %.03162, align 1, !tbaa !14
  store i8 %i.q, ptr %.03162, align 1, !tbaa !14
  store i8 %i.u, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i8 %i.p, %i.s
  %i.w = load i8, ptr %.03162, align 1, !tbaa !14 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 %i.s, ptr %.03162, align 1, !tbaa !14
  store i8 %i.w, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i8 %i.p, ptr %.03162, align 1, !tbaa !14
  store i8 %i.w, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = icmp slt i8 %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %.03162, align 1, !tbaa !14
  store i8 %i.p, ptr %.03162, align 1, !tbaa !14
  store i8 %i.y, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i8 %i.q, %i.s
  %i.aa = load i8, ptr %.03162, align 1, !tbaa !14 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 %i.s, ptr %.03162, align 1, !tbaa !14
  store i8 %i.aa, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i8 %i.q, ptr %.03162, align 1, !tbaa !14
  store i8 %i.aa, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0172964, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load i8, ptr %.03162, align 1, !tbaa !14 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load i8, ptr %.1.i.i, align 1, !tbaa !14 ; 2 uses
  %i.ad = icmp slt i8 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !952

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -1 ; 5 uses
  %i.af = load i8, ptr %.114.i.i, align 1, !tbaa !14 ; 2 uses
  %i.ag = icmp slt i8 %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !953

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i8 %i.af, ptr %.1.i.i, align 1, !tbaa !14
  store i8 %i.ac, ptr %.114.i.i, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !954

_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172964 ; 4 uses
  %.0. = select i1 %.not, ptr %.03162, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..017 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 3
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !951

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.017.lcssa
  br i1 %i.am, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 3 uses
  %.not17.i = icmp eq ptr %.016.i, %.017.lcssa
  br i1 %.not17.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i
  %.019.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.016.i, %.preheader.i ] ; 6 uses
  %.pn18.i = phi ptr [ %.019.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %.preheader.i ] ; 3 uses
  %i.an = load i8, ptr %.019.i, align 1, !tbaa !14 ; 4 uses
  %i.ao = load i8, ptr %.0.lcssa, align 1, !tbaa !14 ; 2 uses
  %i.ap = icmp slt i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.019.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.p, label %bb.q, !prof !233

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.r, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 1
  store i8 %i.ao, ptr %i.au, align 1, !tbaa !14
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.av = load i8, ptr %.pn18.i, align 1, !tbaa !14 ; 2 uses
  %i.aw = icmp slt i8 %i.an, %i.av
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.ax = phi i8 [ %i.ay, %.lr.ph.i.i ], [ %i.av, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn18.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.019.i, %bb.s ]
  store i8 %i.ax, ptr %.0912.i.i, align 1, !tbaa !14
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -1 ; 2 uses
  %i.ay = load i8, ptr %.0.i.i22, align 1, !tbaa !14 ; 2 uses
  %i.az = icmp slt i8 %i.an, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, !llvm.loop !955

_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.019.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i8 %i.an, ptr %.sink.i, align 1, !tbaa !14
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !956

_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 6 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.b = icmp ult ptr %1, %2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %4 = lshr i64 %i.f, 1
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add i64 %i.e, -2                         ; 3 uses
  %i.k = ashr exact i64 %i.j, 1                   ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i8, ptr %.011.us, align 1, !tbaa !14 ; 3 uses
  %i.p = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %i.q = icmp slt i8 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i8 %i.p, ptr %.011.us, align 1, !tbaa !14
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.t, align 1, !tbaa !14
  %i.x = load i8, ptr %i.v, align 1, !tbaa !14
  %i.y = icmp slt i8 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.us
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %.029.i.i.us
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !14
  %i.ad = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !957

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i8, ptr %i.m, align 1, !tbaa !14
  store i8 %i.ae, ptr %i.n, align 1, !tbaa !14
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.l, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i67.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i67.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i67.i.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14  ; 2 uses
  %i.ah = icmp slt i8 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.01317.i.i.i.us
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !14
  %.not8.i.us = icmp eq i64 %.018.i.i67.i.us, 0
  br i1 %.not8.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !958

_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.013.lcssa.i.i.i.us
  store i8 %i.o, ptr %i.aj, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 1 ; 2 uses
  %exitcond33.not = icmp eq ptr %i.ak, %2
  br i1 %exitcond33.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !959

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.al = icmp eq i64 %spec.select.i.i.us, %i.k
  %or.cond = select i1 %i.i, i1 %i.al, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i8, ptr %0, align 1, !tbaa !14     ; 2 uses
  %i.an = sub i64 %i.a, %i.c
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.prol.loopexit, label %.lr.ph.split.split.prol

.lr.ph.split.split.prol:                          ; preds = %.lr.ph.split.split.preheader, %bb.e
  %i.ao = phi i8 [ %i.ar, %bb.e ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011.prol = phi ptr [ %i.as, %bb.e ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.split.split.preheader ]
  %i.ap = load i8, ptr %.011.prol, align 1, !tbaa !14 ; 3 uses
  %i.aq = icmp slt i8 %i.ap, %i.ao
  br i1 %i.aq, label %._crit_edge.i.i.prol, label %bb.e

._crit_edge.i.i.prol:                             ; preds = %.lr.ph.split.split.prol
  store i8 %i.ao, ptr %.011.prol, align 1, !tbaa !14
  store i8 %i.ap, ptr %0, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.prol, %.lr.ph.split.split.prol
  %i.ar = phi i8 [ %i.ao, %.lr.ph.split.split.prol ], [ %i.ap, %._crit_edge.i.i.prol ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.011.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.prol.loopexit, label %.lr.ph.split.split.prol, !llvm.loop !960

.lr.ph.split.split.prol.loopexit:                 ; preds = %bb.e, %.lr.ph.split.split.preheader
  %.unr = phi i8 [ %.pre, %.lr.ph.split.split.preheader ], [ %i.ar, %bb.e ]
  %.011.unr = phi ptr [ %1, %.lr.ph.split.split.preheader ], [ %i.as, %bb.e ]
  %i.at = sub i64 %i.c, %i.a
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.av = icmp eq i64 %i.j, 0
  br i1 %i.av, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %i.aw = sub i64 %i.a, %i.c
  %xtraiter64 = and i64 %i.aw, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.ax = load i8, ptr %1, align 1, !tbaa !14     ; 3 uses
  %i.ay = load i8, ptr %0, align 1, !tbaa !14     ; 2 uses
  %i.az = icmp slt i8 %i.ax, %i.ay
  br i1 %i.az, label %._crit_edge.i.i.us13.us.prol, label %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa

._crit_edge.i.i.us13.us.prol:                     ; preds = %.lr.ph.split.split.us.split.us.prol
  store i8 %i.ay, ptr %1, align 1, !tbaa !14
  %i.ba = load i8, ptr %i.am, align 1, !tbaa !14  ; 2 uses
  store i8 %i.ba, ptr %0, align 1, !tbaa !14
  %i.bb = icmp sge i8 %i.ba, %i.ax
  %spec.select.prol = zext i1 %i.bb to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.prol
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !14
  br label %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa

.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.us13.us.prol, %.lr.ph.split.split.us.split.us.prol
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa, %.lr.ph.split.split.us.split.us.preheader
  %.011.us12.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bd, %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa ]
  %i.be = add i64 %i.a, -1
  %i.bf = icmp eq i64 %i.be, %i.c
  br i1 %i.bf, label %._crit_edge, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre34 = load i8, ptr %0, align 1, !tbaa !14   ; 2 uses
  %i.bg = sub i64 %i.a, %i.c
  %xtraiter60 = and i64 %i.bg, 3                  ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol

.lr.ph.split.split.us.split.prol:                 ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bh = phi i8 [ %i.bk, %bb.f ], [ %.pre34, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12.prol = phi ptr [ %i.bl, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %prol.iter62 = phi i64 [ %prol.iter62.next, %bb.f ], [ 0, %.lr.ph.split.split.us.split.preheader ]
  %i.bi = load i8, ptr %.011.us12.prol, align 1, !tbaa !14 ; 3 uses
  %i.bj = icmp slt i8 %i.bi, %i.bh
  br i1 %i.bj, label %._crit_edge.i.i.us13.prol, label %bb.f

._crit_edge.i.i.us13.prol:                        ; preds = %.lr.ph.split.split.us.split.prol
  store i8 %i.bh, ptr %.011.us12.prol, align 1, !tbaa !14
  store i8 %i.bi, ptr %0, align 1, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13.prol, %.lr.ph.split.split.us.split.prol
  %i.bk = phi i8 [ %i.bi, %._crit_edge.i.i.us13.prol ], [ %i.bh, %.lr.ph.split.split.us.split.prol ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.us12.prol, i64 1 ; 2 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol, !llvm.loop !961

.lr.ph.split.split.us.split.prol.loopexit:        ; preds = %bb.f, %.lr.ph.split.split.us.split.preheader
  %.unr63 = phi i8 [ %.pre34, %.lr.ph.split.split.us.split.preheader ], [ %i.bk, %bb.f ]
  %.011.us12.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.preheader ], [ %i.bl, %bb.f ]
  %i.bm = sub i64 %i.c, %i.a
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %bb.g
  %.011.us12.us = phi ptr [ %i.cb, %bb.g ], [ %.011.us12.us.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 4 uses
  %i.bo = load i8, ptr %.011.us12.us, align 1, !tbaa !14 ; 3 uses
  %i.bp = load i8, ptr %0, align 1, !tbaa !14     ; 2 uses
  %i.bq = icmp slt i8 %i.bo, %i.bp
  br i1 %i.bq, label %._crit_edge.i.i.us13.us, label %.lr.ph.split.split.us.split.us.1

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i8 %i.bp, ptr %.011.us12.us, align 1, !tbaa !14
  %i.br = load i8, ptr %i.am, align 1, !tbaa !14  ; 2 uses
  store i8 %i.br, ptr %0, align 1, !tbaa !14
  %i.bs = icmp sge i8 %i.br, %i.bo
  %spec.select = zext i1 %i.bs to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select
  store i8 %i.bo, ptr %i.bt, align 1, !tbaa !14
  br label %.lr.ph.split.split.us.split.us.1
end_hunk_1
begin_hunk_2_@_ZSt13__introselectIPslN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.031.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01729.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.031.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01729.lcssa)
  %i.h = load i16, ptr %.031.lcssa, align 2, !tbaa !218
  %i.i = load i16, ptr %1, align 2, !tbaa !218
  store i16 %i.i, ptr %.031.lcssa, align 2, !tbaa !218
  store i16 %i.h, ptr %1, align 2, !tbaa !218
  br label %_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0163063 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.03162 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0163063, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 2
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.03162, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03162, i64 2 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0172964, i64 -2 ; 3 uses
  %i.p = load i16, ptr %i.n, align 2, !tbaa !218  ; 5 uses
  %i.q = load i16, ptr %i.m, align 2, !tbaa !218  ; 5 uses
  %i.r = icmp slt i16 %i.p, %i.q
  %i.s = load i16, ptr %i.o, align 2, !tbaa !218  ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = icmp slt i16 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i16, ptr %.03162, align 2, !tbaa !218
  store i16 %i.q, ptr %.03162, align 2, !tbaa !218
  store i16 %i.u, ptr %i.m, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i16 %i.p, %i.s
  %i.w = load i16, ptr %.03162, align 2, !tbaa !218 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 %i.s, ptr %.03162, align 2, !tbaa !218
  store i16 %i.w, ptr %i.o, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i16 %i.p, ptr %.03162, align 2, !tbaa !218
  store i16 %i.w, ptr %i.n, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = icmp slt i16 %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr %.03162, align 2, !tbaa !218
  store i16 %i.p, ptr %.03162, align 2, !tbaa !218
  store i16 %i.y, ptr %i.n, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i16 %i.q, %i.s
  %i.aa = load i16, ptr %.03162, align 2, !tbaa !218 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %i.s, ptr %.03162, align 2, !tbaa !218
  store i16 %i.aa, ptr %i.o, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i16 %i.q, ptr %.03162, align 2, !tbaa !218
  store i16 %i.aa, ptr %i.m, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0172964, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load i16, ptr %.03162, align 2, !tbaa !218 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load i16, ptr %.1.i.i, align 2, !tbaa !218 ; 2 uses
  %i.ad = icmp slt i16 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !1038

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -2 ; 5 uses
  %i.af = load i16, ptr %.114.i.i, align 2, !tbaa !218 ; 2 uses
  %i.ag = icmp slt i16 %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !1039

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i16 %i.af, ptr %.1.i.i, align 2, !tbaa !218
  store i16 %i.ac, ptr %.114.i.i, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1040

_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172964 ; 4 uses
  %.0. = select i1 %.not, ptr %.03162, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..017 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 6
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !1037

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %.017.lcssa
  %or.cond = select i1 %i.am, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i
  %.019.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i ], [ %.016.i, %._crit_edge ] ; 6 uses
  %.pn18.i = phi ptr [ %.019.i, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.an = load i16, ptr %.019.i, align 2, !tbaa !218 ; 4 uses
  %i.ao = load i16, ptr %.0.lcssa, align 2, !tbaa !218 ; 2 uses
  %i.ap = icmp slt i16 %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.019.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 1                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.p, label %bb.q, !prof !233

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.aw, ptr noundef nonnull align 2 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = icmp eq i64 %i.ar, 2
  br i1 %i.ax, label %bb.r, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 2
  store i16 %i.ao, ptr %i.ay, align 2, !tbaa !218
  br label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.az = load i16, ptr %.pn18.i, align 2, !tbaa !218 ; 2 uses
  %i.ba = icmp slt i16 %i.an, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bb = phi i16 [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn18.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.019.i, %bb.s ]
  store i16 %i.bb, ptr %.0912.i.i, align 2, !tbaa !218
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -2 ; 2 uses
  %i.bc = load i16, ptr %.0.i.i22, align 2, !tbaa !218 ; 2 uses
  %i.bd = icmp slt i16 %i.an, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1041

_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.019.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i16 %i.an, ptr %.sink.i, align 2, !tbaa !218
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !1042

_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 1                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %4 = lshr i64 %i.f, 1
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = and i64 %i.d, 2
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add nsw i64 %i.e, -2                     ; 4 uses
  %i.k = ashr exact i64 %i.j, 1
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i16, ptr %.011.us, align 2, !tbaa !218 ; 3 uses
  %i.p = load i16, ptr %0, align 2, !tbaa !218    ; 2 uses
  %i.q = icmp slt i16 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i16 %i.p, ptr %.011.us, align 2, !tbaa !218
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [2 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %i.w = load i16, ptr %i.t, align 2, !tbaa !218
  %i.x = load i16, ptr %i.v, align 2, !tbaa !218
  %i.y = icmp slt i16 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !218
  %i.ac = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i.i.us
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !218
  %i.ad = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !1043

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i16, ptr %i.m, align 2, !tbaa !218
  store i16 %i.ae, ptr %i.n, align 2, !tbaa !218
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.l, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i67.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i67.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i67.i.us
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !218 ; 2 uses
  %i.ah = icmp slt i16 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [2 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !218
  %.not8.i.us = icmp eq i64 %.018.i.i67.i.us, 0
  br i1 %.not8.i.us, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !1044

_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i16 %i.o, ptr %i.aj, align 2, !tbaa !218
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 2 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1045

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.k
  %or.cond = select i1 %i.i, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i16, ptr %0, align 2, !tbaa !218
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.j, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre29 = load i16, ptr %0, align 2, !tbaa !218
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.av, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ap = load i16, ptr %.011.us12.us, align 2, !tbaa !218 ; 3 uses
  %i.aq = load i16, ptr %0, align 2, !tbaa !218   ; 2 uses
  %i.ar = icmp slt i16 %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i16 %i.aq, ptr %.011.us12.us, align 2, !tbaa !218
  %i.as = load i16, ptr %i.an, align 2, !tbaa !218 ; 2 uses
  store i16 %i.as, ptr %0, align 2, !tbaa !218
  %i.at = icmp sge i16 %i.as, %i.ap
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %spec.select
  store i16 %i.ap, ptr %i.au, align 2, !tbaa !218
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 2 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1045

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi i16 [ %i.ba, %bb.f ], [ %.pre29, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load i16, ptr %.011.us12, align 2, !tbaa !218 ; 3 uses
  %i.az = icmp slt i16 %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i16 %i.ax, ptr %.011.us12, align 2, !tbaa !218
  store i16 %i.ay, ptr %0, align 2, !tbaa !218
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi i16 [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.us12, i64 2 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1045

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi i16 [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load i16, ptr %.011, align 2, !tbaa !218 ; 3 uses
  %i.bf = icmp slt i16 %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i16 %i.bd, ptr %.011, align 2, !tbaa !218
  store i16 %i.be, ptr %0, align 2, !tbaa !218
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi i16 [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011, i64 2 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1045
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 2
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.us
  %i.q = load i16, ptr %i.p, align 2, !tbaa !218  ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [2 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.u, align 2, !tbaa !218
  %i.y = load i16, ptr %i.w, align 2, !tbaa !218
  %i.z = icmp slt i16 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.us
end_hunk_2
begin_hunk_3_@_ZSt13__introselectIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.031.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01729.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.031.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01729.lcssa)
  %i.h = load i32, ptr %.031.lcssa, align 4, !tbaa !3
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.i, ptr %.031.lcssa, align 4, !tbaa !3
  store i32 %i.h, ptr %1, align 4, !tbaa !3
  br label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0163063 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.03162 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0163063, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 3
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.03162, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03162, i64 4 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0172964, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3    ; 5 uses
  %i.q = load i32, ptr %i.m, align 4, !tbaa !3    ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 4, !tbaa !3    ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %.03162, align 4, !tbaa !3
  store i32 %i.q, ptr %.03162, align 4, !tbaa !3
  store i32 %i.u, ptr %i.m, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i32 %i.p, %i.s
  %i.w = load i32, ptr %.03162, align 4, !tbaa !3 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %.03162, align 4, !tbaa !3
  store i32 %i.w, ptr %i.o, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.p, ptr %.03162, align 4, !tbaa !3
  store i32 %i.w, ptr %i.n, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = icmp slt i32 %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %.03162, align 4, !tbaa !3
  store i32 %i.p, ptr %.03162, align 4, !tbaa !3
  store i32 %i.y, ptr %i.n, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i32 %i.q, %i.s
  %i.aa = load i32, ptr %.03162, align 4, !tbaa !3 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.s, ptr %.03162, align 4, !tbaa !3
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i32 %i.q, ptr %.03162, align 4, !tbaa !3
  store i32 %i.aa, ptr %i.m, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0172964, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load i32, ptr %.03162, align 4, !tbaa !3 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !1121

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.af = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ag = icmp slt i32 %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !1122

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i32 %i.af, ptr %.1.i.i, align 4, !tbaa !3
  store i32 %i.ac, ptr %.114.i.i, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1123

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172964 ; 4 uses
  %.0. = select i1 %.not, ptr %.03162, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..017 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 12
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !1120

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %.017.lcssa
  %or.cond = select i1 %i.am, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %.019.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.016.i, %._crit_edge ] ; 6 uses
  %.pn18.i = phi ptr [ %.019.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.an = load i32, ptr %.019.i, align 4, !tbaa !3 ; 4 uses
  %i.ao = load i32, ptr %.0.lcssa, align 4, !tbaa !3 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.019.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.p, label %bb.q, !prof !233

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aw, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = icmp eq i64 %i.ar, 4
  br i1 %i.ax, label %bb.r, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.ao, ptr %i.ay, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.az = load i32, ptr %.pn18.i, align 4, !tbaa !3 ; 2 uses
  %i.ba = icmp slt i32 %i.an, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bb = phi i32 [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn18.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.019.i, %bb.s ]
  store i32 %i.bb, ptr %.0912.i.i, align 4, !tbaa !3
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -4 ; 2 uses
  %i.bc = load i32, ptr %.0.i.i22, align 4, !tbaa !3 ; 2 uses
  %i.bd = icmp slt i32 %i.an, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1124

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.019.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i32 %i.an, ptr %.sink.i, align 4, !tbaa !3
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !1125

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %4 = lshr i64 %i.f, 1
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = and i64 %i.d, 4
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add nsw i64 %i.e, -2                     ; 3 uses
  %i.k = ashr exact i64 %i.j, 1                   ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i32, ptr %.011.us, align 4, !tbaa !3 ; 3 uses
  %i.p = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.p, ptr %.011.us, align 4, !tbaa !3
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.t, align 4, !tbaa !3
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !1126

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i32, ptr %i.m, align 4, !tbaa !3
  store i32 %i.ae, ptr %i.n, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.l, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i67.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i67.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i67.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !3
  %.not8.i.us = icmp eq i64 %.018.i.i67.i.us, 0
  br i1 %.not8.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !1127

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i32 %i.o, ptr %i.aj, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1128

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.k
  %or.cond = select i1 %i.i, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !3
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.j, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre29 = load i32, ptr %0, align 4, !tbaa !3
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.av, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ap = load i32, ptr %.011.us12.us, align 4, !tbaa !3 ; 3 uses
  %i.aq = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.aq, ptr %.011.us12.us, align 4, !tbaa !3
  %i.as = load i32, ptr %i.an, align 4, !tbaa !3  ; 2 uses
  store i32 %i.as, ptr %0, align 4, !tbaa !3
  %i.at = icmp sge i32 %i.as, %i.ap
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  store i32 %i.ap, ptr %i.au, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 4 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1128

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi i32 [ %i.ba, %bb.f ], [ %.pre29, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load i32, ptr %.011.us12, align 4, !tbaa !3 ; 3 uses
  %i.az = icmp slt i32 %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i32 %i.ax, ptr %.011.us12, align 4, !tbaa !3
  store i32 %i.ay, ptr %0, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi i32 [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.us12, i64 4 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1128

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi i32 [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load i32, ptr %.011, align 4, !tbaa !3  ; 3 uses
  %i.bf = icmp slt i32 %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i32 %i.bd, ptr %.011, align 4, !tbaa !3
  store i32 %i.be, ptr %0, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi i32 [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1128
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
end_hunk_3
begin_hunk_4_@_ZSt13__introselectIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.031.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01729.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.031.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01729.lcssa)
  %i.h = load i64, ptr %.031.lcssa, align 8, !tbaa !59
  %i.i = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.i, ptr %.031.lcssa, align 8, !tbaa !59
  store i64 %i.h, ptr %1, align 8, !tbaa !59
  br label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0163063 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.03162 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0163063, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 4
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.03162, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03162, i64 8 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0172964, i64 -8 ; 3 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !59   ; 5 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !59   ; 5 uses
  %i.r = icmp slt i64 %i.p, %i.q
  %i.s = load i64, ptr %i.o, align 8, !tbaa !59   ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = icmp slt i64 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %.03162, align 8, !tbaa !59
  store i64 %i.q, ptr %.03162, align 8, !tbaa !59
  store i64 %i.u, ptr %i.m, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i64 %i.p, %i.s
  %i.w = load i64, ptr %.03162, align 8, !tbaa !59 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.s, ptr %.03162, align 8, !tbaa !59
  store i64 %i.w, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.p, ptr %.03162, align 8, !tbaa !59
  store i64 %i.w, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = icmp slt i64 %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %.03162, align 8, !tbaa !59
  store i64 %i.p, ptr %.03162, align 8, !tbaa !59
  store i64 %i.y, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i64 %i.q, %i.s
  %i.aa = load i64, ptr %.03162, align 8, !tbaa !59 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.s, ptr %.03162, align 8, !tbaa !59
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.q, ptr %.03162, align 8, !tbaa !59
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0172964, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load i64, ptr %.03162, align 8, !tbaa !59 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load i64, ptr %.1.i.i, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !1204

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.af = load i64, ptr %.114.i.i, align 8, !tbaa !59 ; 2 uses
  %i.ag = icmp slt i64 %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !1205

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.af, ptr %.1.i.i, align 8, !tbaa !59
  store i64 %i.ac, ptr %.114.i.i, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1206

_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172964 ; 4 uses
  %.0. = select i1 %.not, ptr %.03162, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..017 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !1203

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %.017.lcssa
  %or.cond = select i1 %i.am, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.019.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %.016.i, %._crit_edge ] ; 6 uses
  %.pn18.i = phi ptr [ %.019.i, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.an = load i64, ptr %.019.i, align 8, !tbaa !59 ; 4 uses
  %i.ao = load i64, ptr %.0.lcssa, align 8, !tbaa !59 ; 2 uses
  %i.ap = icmp slt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.019.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.p, label %bb.q, !prof !233

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = icmp eq i64 %i.ar, 8
  br i1 %i.ax, label %bb.r, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store i64 %i.ao, ptr %i.ay, align 8, !tbaa !59
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.az = load i64, ptr %.pn18.i, align 8, !tbaa !59 ; 2 uses
  %i.ba = icmp slt i64 %i.an, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bb = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn18.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.019.i, %bb.s ]
  store i64 %i.bb, ptr %.0912.i.i, align 8, !tbaa !59
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -8 ; 2 uses
  %i.bc = load i64, ptr %.0.i.i22, align 8, !tbaa !59 ; 2 uses
  %i.bd = icmp slt i64 %i.an, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1207

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.019.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i64 %i.an, ptr %.sink.i, align 8, !tbaa !59
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !1208

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %4 = lshr i64 %i.f, 1
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = and i64 %i.d, 8
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add nsw i64 %i.e, -2                     ; 3 uses
  %i.k = ashr exact i64 %i.j, 1                   ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i64, ptr %.011.us, align 8, !tbaa !59 ; 3 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.p, ptr %.011.us, align 8, !tbaa !59
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !59
  %i.x = load i64, ptr %i.v, align 8, !tbaa !59
  %i.y = icmp slt i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !59
  %i.ad = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !1209

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !59
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.l, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i67.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i67.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !59
  %.not8.i.us = icmp eq i64 %.018.i.i67.i.us, 0
  br i1 %.not8.i.us, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !1210

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1211

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.k
  %or.cond = select i1 %i.i, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.j, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre29 = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.av, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ap = load i64, ptr %.011.us12.us, align 8, !tbaa !59 ; 3 uses
  %i.aq = load i64, ptr %0, align 8, !tbaa !59    ; 2 uses
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.aq, ptr %.011.us12.us, align 8, !tbaa !59
  %i.as = load i64, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  store i64 %i.as, ptr %0, align 8, !tbaa !59
  %i.at = icmp sge i64 %i.as, %i.ap
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1211

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi i64 [ %i.ba, %bb.f ], [ %.pre29, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load i64, ptr %.011.us12, align 8, !tbaa !59 ; 3 uses
  %i.az = icmp slt i64 %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.ax, ptr %.011.us12, align 8, !tbaa !59
  store i64 %i.ay, ptr %0, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi i64 [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1211

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi i64 [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load i64, ptr %.011, align 8, !tbaa !59 ; 3 uses
  %i.bf = icmp slt i64 %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i64 %i.bd, ptr %.011, align 8, !tbaa !59
  store i64 %i.be, ptr %0, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi i64 [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1211
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59   ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.u, align 8, !tbaa !59
  %i.y = load i64, ptr %i.w, align 8, !tbaa !59
  %i.z = icmp slt i64 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
end_hunk_4
begin_hunk_5_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv:bb.a
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__introselectIPN6duckdb9hugeint_tElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 48
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph45

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit
  %i.f = add nsw i64 %.0162743, -1                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph45, !llvm.loop !1287

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.028.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01726.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZSt13__heap_selectIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_(ptr noundef %.028.lcssa, ptr noundef nonnull %i.h, ptr noundef %.01726.lcssa)
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.028.lcssa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.028.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !206
  store <2 x i64> %.sroa.0.0.copyload, ptr %1, align 8
  br label %_ZSt16__insertion_sortIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit

.lr.ph45:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172644 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0162743 = phi i64 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.02842 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %i.i = phi i64 [ %i.t, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = lshr i64 %i.i, 5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.02842, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.02842, i64 16 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.0172644, i64 -16
  tail call void @_ZSt22__move_median_to_firstIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_(ptr noundef %.02842, ptr noundef nonnull %i.l, ptr noundef %i.k, ptr noundef nonnull %i.m)
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph45
  %.013.i.i = phi ptr [ %.0172644, %.lr.ph45 ], [ %.114.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.l, %.lr.ph45 ], [ %i.o, %bb.e ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %i.o, %bb.c ] ; 8 uses
  %i.n = tail call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.02842)
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  br i1 %i.n, label %bb.c, label %.preheader.i.i, !llvm.loop !1288

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.c ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 6 uses
  %i.p = tail call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.02842, ptr noundef nonnull align 8 dereferenceable(16) %.114.i.i)
  br i1 %i.p, label %.preheader.i.i, label %bb.d, !llvm.loop !1289

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.q, label %bb.e, label %_ZSt27__unguarded_partition_pivotIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit

bb.e:                                             ; preds = %bb.d
  %.sroa.052.0.copyload = load <2 x i64>, ptr %.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.114.i.i, i64 16, i1 false), !tbaa.struct !206
  store <2 x i64> %.sroa.052.0.copyload, ptr %.114.i.i, align 8
  br label %bb.b, !llvm.loop !1290

_ZSt27__unguarded_partition_pivotIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit: ; preds = %bb.d
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172644 ; 4 uses
  %.0. = select i1 %.not, ptr %.02842, ptr %.1.i.i ; 4 uses
  %i.r = ptrtoint ptr %..017 to i64
  %i.s = ptrtoint ptr %.0. to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 48
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !1287

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit ] ; 7 uses
  %.lcssa22 = phi i64 [ %i.b, %bb.a ], [ %i.s, %_ZSt27__unguarded_partition_pivotIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit ]
  %i.v = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %.017.lcssa
  %or.cond = select i1 %i.v, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.k
  %.019.i = phi ptr [ %.0.i, %bb.k ], [ %.016.i, %._crit_edge ] ; 8 uses
  %.pn18.i = phi ptr [ %.019.i, %bb.k ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.w = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.019.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa)
  br i1 %i.w, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph.i
  %.sroa.054.0.copyload = load <2 x i64>, ptr %.019.i, align 8
  %i.x = ptrtoint ptr %.019.i to i64
  %i.y = sub i64 %i.x, %.lcssa22                  ; 3 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !233

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ac
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb9hugeint_tES2_ET0_T_S4_S3_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i64 %i.y, 16
  br i1 %i.ae, label %bb.i, label %_ZSt13move_backwardIPN6duckdb9hugeint_tES2_ET0_T_S4_S3_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa, i64 16, i1 false), !tbaa.struct !206
  br label %_ZSt13move_backwardIPN6duckdb9hugeint_tES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN6duckdb9hugeint_tES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  store <2 x i64> %.sroa.054.0.copyload, ptr %.0.lcssa, align 8
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i, i64 16, i1 false), !tbaa.struct !206
  %i.ag = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.pn18.i)
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.0.i.i21, %.lr.ph.i.i ], [ %.pn18.i, %bb.j ] ; 4 uses
  %.0911.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i, i64 16, i1 false), !tbaa.struct !206
  %.0.i.i21 = getelementptr inbounds i8, ptr %.012.i.i, i64 -16 ; 2 uses
  %i.ah = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i21)
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !1291

_ZSt25__unguarded_linear_insertIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.j
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.j ], [ %.012.i.i, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !206
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.k

bb.k:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIPN6duckdb9hugeint_tES2_ET0_T_S4_S3_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i, !llvm.loop !1292

_ZSt16__insertion_sortIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.k, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::hugeint_t", align 8 ; 10 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %5 = lshr i64 %i.f, 1
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = and i64 %i.d, 16
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add nsw i64 %i.e, -2                     ; 3 uses
  %i.k = ashr exact i64 %i.j, 1                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = icmp eq i64 %i.j, 0
  %or.cond16 = select i1 %i.i, i1 %i.m, i1 false
  %i.n = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.011 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %bb.f ] ; 5 uses
  %i.q = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.011, ptr noundef nonnull align 8 dereferenceable(16) %0)
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i = load i64, ptr %.011, align 8, !tbaa !59 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !59 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !206
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i.thread

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.r = shl i64 %.030.i.i, 1                     ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [16 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.x = or disjoint i64 %i.r, 1
  %spec.select.i.i = select i1 %i.w, i64 %i.x, i64 %i.s ; 6 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !206
  %i.aa = icmp slt i64 %spec.select.i.i, %5
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1293

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ab = icmp eq i64 %spec.select.i.i, %i.k
  %or.cond = select i1 %i.i, i1 %i.ab, i1 false
  br i1 %or.cond, label %.thread.i, label %bb.d

._crit_edge.i.i.thread:                           ; preds = %bb.c
  br i1 %or.cond16, label %.thread.i, label %.thread

.thread:                                          ; preds = %._crit_edge.i.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i64 %.sroa.4.0.copyload.i, ptr %i.l, align 8
  br label %_ZSt10__pop_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

.thread.i:                                        ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !206
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i64 %.sroa.4.0.copyload.i, ptr %i.l, align 8
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i64 %.sroa.4.0.copyload.i, ptr %i.l, align 8
  %.not.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.01316.i.i.i.ph = phi i64 [ %spec.select.i.i, %bb.d ], [ %i.n, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.01316.i.i.i = phi i64 [ %.017.i.i78.i, %bb.e ], [ %.01316.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i78.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.017.i.i78.i ; 2 uses
  %i.ad = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ad, label %bb.e, label %_ZSt10__pop_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %.01316.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !206
  %.not9.i = icmp eq i64 %.017.i.i78.i, 0
  br i1 %.not9.i, label %_ZSt10__pop_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1294

_ZSt10__pop_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %.thread, %bb.d
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %.thread ], [ %.01316.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !206
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZSt10__pop_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.011, i64 16 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %2
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !1295
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::hugeint_t", align 16 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6duckdb9hugeint_tElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.aj, %_ZSt13__adjust_heapIPN6duckdb9hugeint_tElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !59
  %i.r = icmp slt i64 %.013, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.030.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %bb.c ] ; 2 uses
  %i.s = shl i64 %.030.i, 1                       ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [16 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.y = or disjoint i64 %i.s, 1
  %spec.select.i = select i1 %i.x, i64 %i.y, i64 %i.t ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !206
  %i.ab = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1293

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.013, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !206
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x i64> %i.q, ptr %3, align 16
  %i.ad = icmp sgt i64 %.1.i, %.013
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6duckdb9hugeint_tElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.af = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIPN6duckdb9hugeint_tElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.01316.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !206
  %i.ah = icmp sgt i64 %.017.i.i, %.013
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6duckdb9hugeint_tElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, !llvm.loop !1294

_ZSt13__adjust_heapIPN6duckdb9hugeint_tElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.017.i.i, %bb.f ], [ %.01316.i.i, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !206
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.013, 0
  %i.aj = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1296

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6duckdb9hugeint_tElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPN6duckdb9hugeint_tEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !206
  store <2 x i64> %.sroa.0.0.copyload, ptr %2, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.031.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01729.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.031.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01729.lcssa)
  %i.h = load float, ptr %.031.lcssa, align 4, !tbaa !1313
  %i.i = load float, ptr %1, align 4, !tbaa !1313
  store float %i.i, ptr %.031.lcssa, align 4, !tbaa !1313
  store float %i.h, ptr %1, align 4, !tbaa !1313
  br label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0163063 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.03162 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0163063, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 3
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.03162, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03162, i64 4 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0172964, i64 -4 ; 3 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !1313 ; 5 uses
  %i.q = load float, ptr %i.m, align 4, !tbaa !1313 ; 5 uses
  %i.r = fcmp olt float %i.p, %i.q
  %i.s = load float, ptr %i.o, align 4, !tbaa !1313 ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = fcmp olt float %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load float, ptr %.03162, align 4, !tbaa !1313
  store float %i.q, ptr %.03162, align 4, !tbaa !1313
  store float %i.u, ptr %i.m, align 4, !tbaa !1313
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = fcmp olt float %i.p, %i.s
  %i.w = load float, ptr %.03162, align 4, !tbaa !1313 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.s, ptr %.03162, align 4, !tbaa !1313
  store float %i.w, ptr %i.o, align 4, !tbaa !1313
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store float %i.p, ptr %.03162, align 4, !tbaa !1313
  store float %i.w, ptr %i.n, align 4, !tbaa !1313
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = fcmp olt float %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load float, ptr %.03162, align 4, !tbaa !1313
  store float %i.p, ptr %.03162, align 4, !tbaa !1313
  store float %i.y, ptr %i.n, align 4, !tbaa !1313
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = fcmp olt float %i.q, %i.s
  %i.aa = load float, ptr %.03162, align 4, !tbaa !1313 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.s, ptr %.03162, align 4, !tbaa !1313
  store float %i.aa, ptr %i.o, align 4, !tbaa !1313
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store float %i.q, ptr %.03162, align 4, !tbaa !1313
  store float %i.aa, ptr %i.m, align 4, !tbaa !1313
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0172964, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load float, ptr %.03162, align 4, !tbaa !1313 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load float, ptr %.1.i.i, align 4, !tbaa !1313 ; 2 uses
  %i.ad = fcmp olt float %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !1373

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.af = load float, ptr %.114.i.i, align 4, !tbaa !1313 ; 2 uses
  %i.ag = fcmp olt float %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !1374

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store float %i.af, ptr %.1.i.i, align 4, !tbaa !1313
  store float %i.ac, ptr %.114.i.i, align 4, !tbaa !1313
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1375

_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172964 ; 4 uses
  %.0. = select i1 %.not, ptr %.03162, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..017 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 12
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !1372

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.017.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.017.lcssa
  %or.cond = select i1 %i.am, i1 true, i1 %.not18.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ], [ %.017.i, %._crit_edge ] ; 6 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.an = load float, ptr %.020.i, align 4, !tbaa !1313 ; 4 uses
  %i.ao = load float, ptr %.0.lcssa, align 4, !tbaa !1313 ; 2 uses
  %i.ap = fcmp olt float %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.020.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.p, label %bb.q, !prof !233

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aw, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = icmp eq i64 %i.ar, 4
  br i1 %i.ax, label %bb.r, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store float %i.ao, ptr %i.ay, align 4, !tbaa !1313
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.az = load float, ptr %.pn19.i, align 4, !tbaa !1313 ; 2 uses
  %i.ba = fcmp olt float %i.an, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bb = phi float [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn19.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.020.i, %bb.s ]
  store float %i.bb, ptr %.0912.i.i, align 4, !tbaa !1313
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -4 ; 2 uses
  %i.bc = load float, ptr %.0.i.i22, align 4, !tbaa !1313 ; 2 uses
  %i.bd = fcmp olt float %i.an, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1376

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.020.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store float %i.an, ptr %.sink.i, align 4, !tbaa !1313
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !1377

_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %4 = lshr i64 %i.f, 1
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = and i64 %i.d, 4
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add nsw i64 %i.e, -2                     ; 3 uses
  %i.k = ashr exact i64 %i.j, 1                   ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load float, ptr %.011.us, align 4, !tbaa !1313 ; 3 uses
  %i.p = load float, ptr %0, align 4, !tbaa !1313 ; 2 uses
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store float %i.p, ptr %.011.us, align 4, !tbaa !1313
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.t, align 4, !tbaa !1313
  %i.x = load float, ptr %i.v, align 4, !tbaa !1313
  %i.y = fcmp olt float %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !1313
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.us
  store float %i.ab, ptr %i.ac, align 4, !tbaa !1313
  %i.ad = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !1378

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load float, ptr %i.m, align 4, !tbaa !1313
  store float %i.ae, ptr %i.n, align 4, !tbaa !1313
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.l, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i78.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i78.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i78.i.us
  %i.ag = load float, ptr %i.af, align 4, !tbaa !1313 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.us
  store float %i.ag, ptr %i.ai, align 4, !tbaa !1313
  %.not9.i.us = icmp eq i64 %.018.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !1379

_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store float %i.o, ptr %i.aj, align 4, !tbaa !1313
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1380

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.k
  %or.cond = select i1 %i.i, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load float, ptr %0, align 4, !tbaa !1313
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.j, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre29 = load float, ptr %0, align 4, !tbaa !1313
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.av, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ap = load float, ptr %.011.us12.us, align 4, !tbaa !1313 ; 3 uses
  %i.aq = load float, ptr %0, align 4, !tbaa !1313 ; 2 uses
  %i.ar = fcmp olt float %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store float %i.aq, ptr %.011.us12.us, align 4, !tbaa !1313
  %i.as = load float, ptr %i.an, align 4, !tbaa !1313 ; 2 uses
  store float %i.as, ptr %0, align 4, !tbaa !1313
  %i.at = fcmp uge float %i.as, %i.ap
  %.013.lcssa.i.i.i.ph.us23.us = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.ph.us23.us
  store float %i.ap, ptr %i.au, align 4, !tbaa !1313
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 4 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1380

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi float [ %i.ba, %bb.f ], [ %.pre29, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load float, ptr %.011.us12, align 4, !tbaa !1313 ; 3 uses
  %i.az = fcmp olt float %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store float %i.ax, ptr %.011.us12, align 4, !tbaa !1313
  store float %i.ay, ptr %0, align 4, !tbaa !1313
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi float [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.us12, i64 4 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1380

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi float [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load float, ptr %.011, align 4, !tbaa !1313 ; 3 uses
  %i.bf = fcmp olt float %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store float %i.bd, ptr %.011, align 4, !tbaa !1313
  store float %i.be, ptr %0, align 4, !tbaa !1313
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi float [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1380
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load float, ptr %i.p, align 4, !tbaa !1313 ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.u, align 4, !tbaa !1313
  %i.y = load float, ptr %i.w, align 4, !tbaa !1313
  %i.z = fcmp olt float %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
end_hunk_6
begin_hunk_7_@_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.031.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01729.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.031.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01729.lcssa)
  %i.h = load double, ptr %.031.lcssa, align 8, !tbaa !776
  %i.i = load double, ptr %1, align 8, !tbaa !776
  store double %i.i, ptr %.031.lcssa, align 8, !tbaa !776
  store double %i.h, ptr %1, align 8, !tbaa !776
  br label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0163063 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.03162 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0163063, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 4
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.03162, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03162, i64 8 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0172964, i64 -8 ; 3 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !776 ; 5 uses
  %i.q = load double, ptr %i.m, align 8, !tbaa !776 ; 5 uses
  %i.r = fcmp olt double %i.p, %i.q
  %i.s = load double, ptr %i.o, align 8, !tbaa !776 ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load double, ptr %.03162, align 8, !tbaa !776
  store double %i.q, ptr %.03162, align 8, !tbaa !776
  store double %i.u, ptr %i.m, align 8, !tbaa !776
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = fcmp olt double %i.p, %i.s
  %i.w = load double, ptr %.03162, align 8, !tbaa !776 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.s, ptr %.03162, align 8, !tbaa !776
  store double %i.w, ptr %i.o, align 8, !tbaa !776
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.p, ptr %.03162, align 8, !tbaa !776
  store double %i.w, ptr %i.n, align 8, !tbaa !776
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = fcmp olt double %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load double, ptr %.03162, align 8, !tbaa !776
  store double %i.p, ptr %.03162, align 8, !tbaa !776
  store double %i.y, ptr %i.n, align 8, !tbaa !776
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = fcmp olt double %i.q, %i.s
  %i.aa = load double, ptr %.03162, align 8, !tbaa !776 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.s, ptr %.03162, align 8, !tbaa !776
  store double %i.aa, ptr %i.o, align 8, !tbaa !776
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store double %i.q, ptr %.03162, align 8, !tbaa !776
  store double %i.aa, ptr %i.m, align 8, !tbaa !776
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0172964, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load double, ptr %.03162, align 8, !tbaa !776 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load double, ptr %.1.i.i, align 8, !tbaa !776 ; 2 uses
  %i.ad = fcmp olt double %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !1456

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.af = load double, ptr %.114.i.i, align 8, !tbaa !776 ; 2 uses
  %i.ag = fcmp olt double %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !1457

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store double %i.af, ptr %.1.i.i, align 8, !tbaa !776
  store double %i.ac, ptr %.114.i.i, align 8, !tbaa !776
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1458

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172964 ; 4 uses
  %.0. = select i1 %.not, ptr %.03162, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..017 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !1455

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.017.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.017.lcssa
  %or.cond = select i1 %i.am, i1 true, i1 %.not18.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ], [ %.017.i, %._crit_edge ] ; 6 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.an = load double, ptr %.020.i, align 8, !tbaa !776 ; 4 uses
  %i.ao = load double, ptr %.0.lcssa, align 8, !tbaa !776 ; 2 uses
  %i.ap = fcmp olt double %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.020.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.p, label %bb.q, !prof !233

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = icmp eq i64 %i.ar, 8
  br i1 %i.ax, label %bb.r, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.ao, ptr %i.ay, align 8, !tbaa !776
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.az = load double, ptr %.pn19.i, align 8, !tbaa !776 ; 2 uses
  %i.ba = fcmp olt double %i.an, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bb = phi double [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn19.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.020.i, %bb.s ]
  store double %i.bb, ptr %.0912.i.i, align 8, !tbaa !776
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -8 ; 2 uses
  %i.bc = load double, ptr %.0.i.i22, align 8, !tbaa !776 ; 2 uses
  %i.bd = fcmp olt double %i.an, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1459

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.020.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store double %i.an, ptr %.sink.i, align 8, !tbaa !776
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !1460

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %4 = lshr i64 %i.f, 1
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = and i64 %i.d, 8
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add nsw i64 %i.e, -2                     ; 3 uses
  %i.k = ashr exact i64 %i.j, 1                   ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load double, ptr %.011.us, align 8, !tbaa !776 ; 3 uses
  %i.p = load double, ptr %0, align 8, !tbaa !776 ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store double %i.p, ptr %.011.us, align 8, !tbaa !776
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !776
  %i.x = load double, ptr %i.v, align 8, !tbaa !776
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !776
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !776
  %i.ad = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !1461

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load double, ptr %i.m, align 8, !tbaa !776
  store double %i.ae, ptr %i.n, align 8, !tbaa !776
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.l, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i78.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i78.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i78.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !776 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !776
  %.not9.i.us = icmp eq i64 %.018.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !1462

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store double %i.o, ptr %i.aj, align 8, !tbaa !776
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1463

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.k
  %or.cond = select i1 %i.i, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load double, ptr %0, align 8, !tbaa !776
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.j, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre29 = load double, ptr %0, align 8, !tbaa !776
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.av, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ap = load double, ptr %.011.us12.us, align 8, !tbaa !776 ; 3 uses
  %i.aq = load double, ptr %0, align 8, !tbaa !776 ; 2 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store double %i.aq, ptr %.011.us12.us, align 8, !tbaa !776
  %i.as = load double, ptr %i.an, align 8, !tbaa !776 ; 2 uses
  store double %i.as, ptr %0, align 8, !tbaa !776
  %i.at = fcmp uge double %i.as, %i.ap
  %.013.lcssa.i.i.i.ph.us23.us = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.ph.us23.us
  store double %i.ap, ptr %i.au, align 8, !tbaa !776
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1463

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi double [ %i.ba, %bb.f ], [ %.pre29, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load double, ptr %.011.us12, align 8, !tbaa !776 ; 3 uses
  %i.az = fcmp olt double %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store double %i.ax, ptr %.011.us12, align 8, !tbaa !776
  store double %i.ay, ptr %0, align 8, !tbaa !776
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi double [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1463

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi double [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load double, ptr %.011, align 8, !tbaa !776 ; 3 uses
  %i.bf = fcmp olt double %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store double %i.bd, ptr %.011, align 8, !tbaa !776
  store double %i.be, ptr %0, align 8, !tbaa !776
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi double [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1463
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !776 ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.u, align 8, !tbaa !776
  %i.y = load double, ptr %i.w, align 8, !tbaa !776
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
end_hunk_7
begin_hunk_8_@_ZN18duckdb_skiplistlib9skip_list10ValueErrorD0Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN18duckdb_skiplistlib9skip_list9ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #34, !inline_history !2304
  br label %_ZN18duckdb_skiplistlib9skip_list9ExceptionD2Ev.exit

_ZN18duckdb_skiplistlib9skip_list9ExceptionD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #30, !inline_history !2304
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPmN6duckdb15QuantileCompareINS1_16QuantileComposedINS1_12_GLOBAL__N_111MadAccessorIfffEENS1_16QuantileIndirectIfEEEEEEEvT_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.568") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.572", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.570", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.570", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.570", align 8 ; 21 uses
  %i.c = icmp eq ptr %0, %2
  %i.d = icmp eq ptr %1, %2
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.h = icmp sgt i64 %i.g, 24
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = lshr exact i64 %i.g, 3
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEET_SF_SF_T0_.exit.i
  %i.m = icmp eq i64 %i.dz, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !2321

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.fa                      ; 3 uses
  %i.q = ashr i64 %i.p, 3                         ; 6 uses
  %i.r = icmp slt i64 %i.q, 2
  br i1 %i.r, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.s = add nsw i64 %i.q, -2                     ; 2 uses
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = add nsw i64 %i.q, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = and i64 %i.p, 8
  %i.x = icmp eq i64 %i.w, 0
  %i.y = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.t
  br i1 %i.x, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.av, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i ], [ %i.t, %bb.c ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp slt i64 %.014.i.us.i.i, %i.v
  br i1 %i.ad, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.thread.i.i

._crit_edge.i.i.us.thread.i.i:                    ; preds = %.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.029.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ae = shl i64 %.029.i.i.us.i.i, 1             ; 3 uses
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.us.i.i = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.aj = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ai)
  %i.ak = or disjoint i64 %i.ae, 1
  %spec.select.i.i.us.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.af ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.us.i.i
  store i64 %i.am, ptr %i.an, align 8, !tbaa !59
  %i.ao = icmp slt i64 %spec.select.i.i.us.i.i, %i.v
  br i1 %i.ao, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.i.i, !llvm.loop !2322

._crit_edge.i.i.us.i.i:                           ; preds = %.lr.ph.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.us.i.i
  %.01316.i.i.i.us.i.i = phi i64 [ %.01721.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %._crit_edge.i.i.us.i.i ] ; 3 uses
  %.017.in.i.i.i.us.i.i = add nsw i64 %.01316.i.i.i.us.i.i, -1
  %.01721.i.i.i.us.i.i = lshr i64 %.017.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.aq = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.aq, label %bb.d, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.us.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !59
  %i.at = icmp samesign ugt i64 %.01721.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i, !llvm.loop !2323

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %._crit_edge.i.i.us.thread.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %._crit_edge.i.i.us.thread.i.i ], [ %.01316.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ], [ %.01721.i.i.i.us.i.i, %bb.d ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i64 %i.ac, ptr %i.au, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.av = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !2324

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.bt, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59 ; 2 uses
  %i.ay = icmp slt i64 %.014.i.i.i, %i.v
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.az = shl i64 %.029.i.i.i.i, 1                ; 3 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.be = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.bd)
  %i.bf = or disjoint i64 %i.az, 1
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %i.ba ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.i.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !59
  %i.bj = icmp slt i64 %spec.select.i.i.i.i, %i.v
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2322

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.t
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !59
  store i64 %i.bl, ptr %i.aa, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.y, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !59
  %i.bm = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01316.i.i.i.i.i = phi i64 [ %.01721.i.i.i.i.i, %bb.g ], [ %.128.i.i.i.i, %bb.f ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.01721.i.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bo = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.bo, label %bb.g, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !59
  %i.br = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i, !llvm.loop !2323

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01721.i.i.i.i.i, %bb.g ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ax, ptr %i.bs, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.bt = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !2324

_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bu = icmp ult ptr %i.n, %..017.i
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_RT0_.exit.i.i
  %i.bv = add nsw i64 %i.q, -1
  %8 = lshr i64 %i.bv, 1
  %i.bw = icmp sgt i64 %i.q, 2
  %i.bx = and i64 %i.p, 8
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  %i.bz = add nsw i64 %i.q, -2                    ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 1                 ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.cb = or disjoint i64 %i.bz, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ca
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.025.us.i.i = phi ptr [ %i.cy, %bb.j ], [ %i.n, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i64, ptr %.025.us.i.i, align 8, !tbaa !59
  %i.ce = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.ce, label %.lr.ph.i.i21.preheader.us.i.i, label %bb.j

.lr.ph.i.i21.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.cf = load i64, ptr %.025.us.i.i, align 8, !tbaa !59 ; 3 uses
  %i.cg = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.cg, ptr %.025.us.i.i, align 8, !tbaa !59
  br label %.lr.ph.i.i21.us.i.i

.lr.ph.i.i21.us.i.i:                              ; preds = %.lr.ph.i.i21.us.i.i, %.lr.ph.i.i21.preheader.us.i.i
  %.029.i.i22.us.i.i = phi i64 [ %spec.select.i.i24.us.i.i, %.lr.ph.i.i21.us.i.i ], [ 0, %.lr.ph.i.i21.preheader.us.i.i ] ; 2 uses
  %i.ch = shl i64 %.029.i.i22.us.i.i, 1           ; 3 uses
  %i.ci = add i64 %i.ch, 2                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val.i.i23.us.i.i = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i23.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.cl)
  %i.cn = or disjoint i64 %i.ch, 1
  %spec.select.i.i24.us.i.i = select i1 %i.cm, i64 %i.cn, i64 %i.ci ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i24.us.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i22.us.i.i
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !59
  %i.cr = icmp slt i64 %spec.select.i.i24.us.i.i, %8
  br i1 %i.cr, label %.lr.ph.i.i21.us.i.i, label %._crit_edge.i.i11.loopexit.us.i.i, !llvm.loop !2322

bb.h:                                             ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  %.not.i13.us.i.i = icmp eq i64 %spec.select.i.i24.us.i.i, 0
  br i1 %.not.i13.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %i.cs = load i64, ptr %i.cc, align 8, !tbaa !59
  store i64 %i.cs, ptr %i.cd, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  br label %.lr.ph.i.i.i14.us.i.i.preheader

.lr.ph.i.i.i14.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01316.i.i.i15.us.i.i.ph = phi i64 [ %spec.select.i.i24.us.i.i, %bb.h ], [ %i.cb, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i14.us.i.i

.lr.ph.i.i.i14.us.i.i:                            ; preds = %.lr.ph.i.i.i14.us.i.i.preheader, %bb.i
  %.01316.i.i.i15.us.i.i = phi i64 [ %.01721.i.i.i17.us.i.i, %bb.i ], [ %.01316.i.i.i15.us.i.i.ph, %.lr.ph.i.i.i14.us.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i16.us.i.i = add nsw i64 %.01316.i.i.i15.us.i.i, -1
  %.01721.i.i.i17.us.i.i = lshr i64 %.017.in.i.i.i16.us.i.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i17.us.i.i ; 2 uses
  %.val.i.i.i18.us.i.i = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cu = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i18.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.cu, label %bb.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i14.us.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i15.us.i.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !59
  %.not7.i.us.i.i = icmp eq i64 %.01721.i.i.i17.us.i.i, 0
  br i1 %.not7.i.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i, !llvm.loop !2323

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i14.us.i.i, %bb.h
  %.013.lcssa.i.i.i20.us.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i15.us.i.i, %.lr.ph.i.i.i14.us.i.i ], [ 0, %bb.i ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.us.i.i
  store i64 %i.cf, ptr %i.cx, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.025.us.i.i, i64 8 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %..017.i
  br i1 %i.cz, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2325

._crit_edge.i.i11.loopexit.us.i.i:                ; preds = %.lr.ph.i.i21.us.i.i
  %i.da = icmp eq i64 %spec.select.i.i24.us.i.i, %i.ca
  %or.cond.i.i = select i1 %i.by, i1 %i.da, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.0..i, i64 8 ; 2 uses
  br i1 %i.by, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.dc = icmp eq i64 %i.bz, 0
  br i1 %i.dc, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.025.us26.us.i.i = phi ptr [ %i.dj, %bb.l ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.us.i.i = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dd = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dd, label %._crit_edge.i.i11.us28.us.i.i, label %bb.l

._crit_edge.i.i11.us28.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %i.de = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59 ; 2 uses
  %i.df = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.df, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !59 ; 2 uses
  store i64 %i.dg, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.de, ptr %i.a, align 8, !tbaa !59
  %i.dh = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.dh, label %bb.k, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i11.us28.us.i.i
  %i.di = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.di, ptr %i.db, align 8, !tbaa !59
  br label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.us26.us.i.i, i64 8 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %..017.i
  br i1 %i.dk, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2325

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i: ; preds = %bb.k, %._crit_edge.i.i11.us28.us.i.i
  %.013.lcssa.i.i.i20.ph.us39.us.i.i = phi i64 [ 1, %._crit_edge.i.i11.us28.us.i.i ], [ 0, %bb.k ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.ph.us39.us.i.i
  store i64 %i.de, ptr %i.dl, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.025.us26.i.i = phi ptr [ %i.dp, %bb.m ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.i.i = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.dm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dm, label %._crit_edge.i.i11.us28.i.i, label %bb.m

._crit_edge.i.i11.us28.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %i.dn = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.do = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.do, ptr %.025.us26.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dn, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i11.us28.i.i, %.lr.ph.split.split.us.split.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.025.us26.i.i, i64 8 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %..017.i
  br i1 %i.dq, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2325

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.025.i.i = phi ptr [ %i.du, %bb.n ], [ %i.n, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dr = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dr, label %._crit_edge.i.i11.i.i, label %bb.n

._crit_edge.i.i11.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %i.ds = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dt = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dt, ptr %.025.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ds, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i11.i.i, %.lr.ph.split.split.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  %i.dv = icmp ult ptr %i.du, %..017.i
  br i1 %i.dv, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2325

_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_RT0_.exit.i.i
  %i.dw = load i64, ptr %.0..i, align 8, !tbaa !59
  %i.dx = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.dx, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dw, ptr %1, align 8, !tbaa !59
  br label %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01735.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01636.i21 = phi i64 [ %i.dz, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader ]
  %.037.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dy = phi i64 [ %i.fb, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader ]
  %i.dz = add nsw i64 %.01636.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ea = lshr i64 %i.dy, 4
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.037.i20, i64 %i.ea ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.037.i20, i64 8 ; 6 uses
  %i.ed = getelementptr inbounds i8, ptr %.01735.i22, i64 -8 ; 8 uses
  %.val25.i.i.i = load i64, ptr %i.ec, align 8, !tbaa !59
  %i.ee = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val25.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.eb)
  br i1 %i.ee, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val24.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !59
end_hunk_8
begin_hunk_9_@_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImdEN6duckdb8SkipLessIS3_EEE14_adjRemoveRefsEmPS7_:bb.a
  %i.cp = add nuw i64 %.322, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cp, %i.bp
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph23, !llvm.loop !2652

._crit_edge:                                      ; preds = %.lr.ph23, %.lr.ph23.prol.loopexit
  %i.cq = add i64 %.promoted, %i.bp
  %i.cr = sub i64 %i.cq, %.2
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !2620
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.critedge
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPmN6duckdb15QuantileCompareINS1_16QuantileComposedINS1_12_GLOBAL__N_111MadAccessorIdddEENS1_16QuantileIndirectIdEEEEEEEvT_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.711") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.715", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.713", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.713", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.713", align 8 ; 21 uses
  %i.c = icmp eq ptr %0, %2
  %i.d = icmp eq ptr %1, %2
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.h = icmp sgt i64 %i.g, 24
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = lshr exact i64 %i.g, 3
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEET_SF_SF_T0_.exit.i
  %i.m = icmp eq i64 %i.dz, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !2653

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.fa                      ; 3 uses
  %i.q = ashr i64 %i.p, 3                         ; 6 uses
  %i.r = icmp slt i64 %i.q, 2
  br i1 %i.r, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.s = add nsw i64 %i.q, -2                     ; 2 uses
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = add nsw i64 %i.q, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = and i64 %i.p, 8
  %i.x = icmp eq i64 %i.w, 0
  %i.y = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.t
  br i1 %i.x, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.av, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i ], [ %i.t, %bb.c ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp slt i64 %.014.i.us.i.i, %i.v
  br i1 %i.ad, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.thread.i.i

._crit_edge.i.i.us.thread.i.i:                    ; preds = %.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.029.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ae = shl i64 %.029.i.i.us.i.i, 1             ; 3 uses
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.us.i.i = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.aj = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ai)
  %i.ak = or disjoint i64 %i.ae, 1
  %spec.select.i.i.us.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.af ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.us.i.i
  store i64 %i.am, ptr %i.an, align 8, !tbaa !59
  %i.ao = icmp slt i64 %spec.select.i.i.us.i.i, %i.v
  br i1 %i.ao, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.i.i, !llvm.loop !2654

._crit_edge.i.i.us.i.i:                           ; preds = %.lr.ph.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.us.i.i
  %.01316.i.i.i.us.i.i = phi i64 [ %.01721.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %._crit_edge.i.i.us.i.i ] ; 3 uses
  %.017.in.i.i.i.us.i.i = add nsw i64 %.01316.i.i.i.us.i.i, -1
  %.01721.i.i.i.us.i.i = lshr i64 %.017.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.aq = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.aq, label %bb.d, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.us.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !59
  %i.at = icmp samesign ugt i64 %.01721.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i, !llvm.loop !2655

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %._crit_edge.i.i.us.thread.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %._crit_edge.i.i.us.thread.i.i ], [ %.01316.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ], [ %.01721.i.i.i.us.i.i, %bb.d ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i64 %i.ac, ptr %i.au, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.av = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !2656

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.bt, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59 ; 2 uses
  %i.ay = icmp slt i64 %.014.i.i.i, %i.v
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.az = shl i64 %.029.i.i.i.i, 1                ; 3 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.be = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.bd)
  %i.bf = or disjoint i64 %i.az, 1
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %i.ba ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.i.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !59
  %i.bj = icmp slt i64 %spec.select.i.i.i.i, %i.v
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2654

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.t
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !59
  store i64 %i.bl, ptr %i.aa, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.y, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !59
  %i.bm = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01316.i.i.i.i.i = phi i64 [ %.01721.i.i.i.i.i, %bb.g ], [ %.128.i.i.i.i, %bb.f ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.01721.i.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bo = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.bo, label %bb.g, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !59
  %i.br = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i, !llvm.loop !2655

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01721.i.i.i.i.i, %bb.g ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ax, ptr %i.bs, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.bt = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !2656

_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_T0_SG_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bu = icmp ult ptr %i.n, %..017.i
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_RT0_.exit.i.i
  %i.bv = add nsw i64 %i.q, -1
  %8 = lshr i64 %i.bv, 1
  %i.bw = icmp sgt i64 %i.q, 2
  %i.bx = and i64 %i.p, 8
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  %i.bz = add nsw i64 %i.q, -2                    ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 1                 ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.cb = or disjoint i64 %i.bz, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ca
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.025.us.i.i = phi ptr [ %i.cy, %bb.j ], [ %i.n, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i64, ptr %.025.us.i.i, align 8, !tbaa !59
  %i.ce = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.ce, label %.lr.ph.i.i21.preheader.us.i.i, label %bb.j

.lr.ph.i.i21.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.cf = load i64, ptr %.025.us.i.i, align 8, !tbaa !59 ; 3 uses
  %i.cg = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.cg, ptr %.025.us.i.i, align 8, !tbaa !59
  br label %.lr.ph.i.i21.us.i.i

.lr.ph.i.i21.us.i.i:                              ; preds = %.lr.ph.i.i21.us.i.i, %.lr.ph.i.i21.preheader.us.i.i
  %.029.i.i22.us.i.i = phi i64 [ %spec.select.i.i24.us.i.i, %.lr.ph.i.i21.us.i.i ], [ 0, %.lr.ph.i.i21.preheader.us.i.i ] ; 2 uses
  %i.ch = shl i64 %.029.i.i22.us.i.i, 1           ; 3 uses
  %i.ci = add i64 %i.ch, 2                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val.i.i23.us.i.i = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i23.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.cl)
  %i.cn = or disjoint i64 %i.ch, 1
  %spec.select.i.i24.us.i.i = select i1 %i.cm, i64 %i.cn, i64 %i.ci ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i24.us.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i22.us.i.i
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !59
  %i.cr = icmp slt i64 %spec.select.i.i24.us.i.i, %8
  br i1 %i.cr, label %.lr.ph.i.i21.us.i.i, label %._crit_edge.i.i11.loopexit.us.i.i, !llvm.loop !2654

bb.h:                                             ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  %.not.i13.us.i.i = icmp eq i64 %spec.select.i.i24.us.i.i, 0
  br i1 %.not.i13.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %i.cs = load i64, ptr %i.cc, align 8, !tbaa !59
  store i64 %i.cs, ptr %i.cd, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  br label %.lr.ph.i.i.i14.us.i.i.preheader

.lr.ph.i.i.i14.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01316.i.i.i15.us.i.i.ph = phi i64 [ %spec.select.i.i24.us.i.i, %bb.h ], [ %i.cb, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i14.us.i.i

.lr.ph.i.i.i14.us.i.i:                            ; preds = %.lr.ph.i.i.i14.us.i.i.preheader, %bb.i
  %.01316.i.i.i15.us.i.i = phi i64 [ %.01721.i.i.i17.us.i.i, %bb.i ], [ %.01316.i.i.i15.us.i.i.ph, %.lr.ph.i.i.i14.us.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i16.us.i.i = add nsw i64 %.01316.i.i.i15.us.i.i, -1
  %.01721.i.i.i17.us.i.i = lshr i64 %.017.in.i.i.i16.us.i.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i17.us.i.i ; 2 uses
  %.val.i.i.i18.us.i.i = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cu = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i18.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.cu, label %bb.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i14.us.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i15.us.i.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !59
  %.not7.i.us.i.i = icmp eq i64 %.01721.i.i.i17.us.i.i, 0
  br i1 %.not7.i.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i, !llvm.loop !2655

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i14.us.i.i, %bb.h
  %.013.lcssa.i.i.i20.us.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i15.us.i.i, %.lr.ph.i.i.i14.us.i.i ], [ 0, %bb.i ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.us.i.i
  store i64 %i.cf, ptr %i.cx, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.025.us.i.i, i64 8 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %..017.i
  br i1 %i.cz, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2657

._crit_edge.i.i11.loopexit.us.i.i:                ; preds = %.lr.ph.i.i21.us.i.i
  %i.da = icmp eq i64 %spec.select.i.i24.us.i.i, %i.ca
  %or.cond.i.i = select i1 %i.by, i1 %i.da, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.0..i, i64 8 ; 2 uses
  br i1 %i.by, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.dc = icmp eq i64 %i.bz, 0
  br i1 %i.dc, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.025.us26.us.i.i = phi ptr [ %i.dj, %bb.l ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.us.i.i = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dd = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dd, label %._crit_edge.i.i11.us28.us.i.i, label %bb.l

._crit_edge.i.i11.us28.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %i.de = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59 ; 2 uses
  %i.df = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.df, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !59 ; 2 uses
  store i64 %i.dg, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.de, ptr %i.a, align 8, !tbaa !59
  %i.dh = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.dh, label %bb.k, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i11.us28.us.i.i
  %i.di = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.di, ptr %i.db, align 8, !tbaa !59
  br label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.us26.us.i.i, i64 8 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %..017.i
  br i1 %i.dk, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2657

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_RT0_.exit.loopexit.us38.us.i.i: ; preds = %bb.k, %._crit_edge.i.i11.us28.us.i.i
  %.013.lcssa.i.i.i20.ph.us39.us.i.i = phi i64 [ 1, %._crit_edge.i.i11.us28.us.i.i ], [ 0, %bb.k ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.ph.us39.us.i.i
  store i64 %i.de, ptr %i.dl, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.025.us26.i.i = phi ptr [ %i.dp, %bb.m ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.i.i = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.dm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dm, label %._crit_edge.i.i11.us28.i.i, label %bb.m

._crit_edge.i.i11.us28.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %i.dn = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.do = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.do, ptr %.025.us26.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dn, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i11.us28.i.i, %.lr.ph.split.split.us.split.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.025.us26.i.i, i64 8 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %..017.i
  br i1 %i.dq, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2657

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.025.i.i = phi ptr [ %i.du, %bb.n ], [ %i.n, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dr = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dr, label %._crit_edge.i.i11.i.i, label %bb.n

._crit_edge.i.i11.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %i.ds = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dt = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dt, ptr %.025.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ds, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i11.i.i, %.lr.ph.split.split.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  %i.dv = icmp ult ptr %i.du, %..017.i
  br i1 %i.dv, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_T0_.exit.i, !llvm.loop !2657

_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_RT0_.exit.i.i
  %i.dw = load i64, ptr %.0..i, align 8, !tbaa !59
  %i.dx = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.dx, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dw, ptr %1, align 8, !tbaa !59
  br label %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIdddEENS4_16QuantileIndirectIdEEEEEEEEEvT_SF_SF_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01735.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01636.i21 = phi i64 [ %i.dz, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader ]
  %.037.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dy = phi i64 [ %i.fb, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader ]
  %i.dz = add nsw i64 %.01636.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ea = lshr i64 %i.dy, 4
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.037.i20, i64 %i.ea ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.037.i20, i64 8 ; 6 uses
  %i.ed = getelementptr inbounds i8, ptr %.01735.i22, i64 -8 ; 8 uses
  %.val25.i.i.i = load i64, ptr %i.ec, align 8, !tbaa !59
  %i.ee = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIdddEENS_16QuantileIndirectIdEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val25.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.eb)
  br i1 %i.ee, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val24.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !59
end_hunk_9
begin_hunk_10_@_ZSt13__introselectIPslN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_T0_T1_:bb.a

bb.c:                                             ; preds = %.lr.ph59
  %i.w = icmp sgt i16 %i.r, %i.v
  %i.x = icmp sgt i16 %i.v, %i.r
  %i.y = select i1 %i.e, i1 %i.w, i1 %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i16, ptr %.03656, align 2, !tbaa !218
  store i16 %i.r, ptr %.03656, align 2, !tbaa !218
  store i16 %i.z, ptr %i.n, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp sgt i16 %i.q, %i.v
  %i.ab = icmp sgt i16 %i.v, %i.q
  %i.ac = select i1 %i.e, i1 %i.aa, i1 %i.ab
  %i.ad = load i16, ptr %.03656, align 2, !tbaa !218 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 %i.v, ptr %.03656, align 2, !tbaa !218
  store i16 %i.ad, ptr %i.p, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i16 %i.q, ptr %.03656, align 2, !tbaa !218
  store i16 %i.ad, ptr %i.o, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ae = icmp sgt i16 %i.q, %i.v
  %i.af = icmp sgt i16 %i.v, %i.q
  %i.ag = select i1 %i.e, i1 %i.ae, i1 %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i16, ptr %.03656, align 2, !tbaa !218
  store i16 %i.q, ptr %.03656, align 2, !tbaa !218
  store i16 %i.ah, ptr %i.o, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp sgt i16 %i.r, %i.v
  %i.aj = icmp sgt i16 %i.v, %i.r
  %i.ak = select i1 %i.e, i1 %i.ai, i1 %i.aj
  %i.al = load i16, ptr %.03656, align 2, !tbaa !218 ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 %i.v, ptr %.03656, align 2, !tbaa !218
  store i16 %i.al, ptr %i.p, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i16 %i.r, ptr %.03656, align 2, !tbaa !218
  store i16 %i.al, ptr %i.n, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.o, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.am = load i16, ptr %.03656, align 2, !tbaa !218 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i ], [ %i.ar, %bb.m ] ; 7 uses
  %i.an = load i16, ptr %.1.i.i, align 2, !tbaa !218 ; 3 uses
  %i.ao = icmp sgt i16 %i.an, %i.am
  %i.ap = icmp sgt i16 %i.am, %i.an
  %i.aq = select i1 %i.e, i1 %i.ao, i1 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !2787

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -2 ; 5 uses
  %i.as = load i16, ptr %.114.i.i, align 2, !tbaa !218 ; 3 uses
  %i.at = icmp sgt i16 %i.am, %i.as
  %i.au = icmp sgt i16 %i.as, %i.am
  %i.av = select i1 %i.e, i1 %i.at, i1 %i.au
  br i1 %i.av, label %.preheader.i.i, label %bb.n, !llvm.loop !2788

bb.n:                                             ; preds = %.preheader.i.i
  %i.aw = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.aw, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEET_SA_SA_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i16 %i.as, ptr %.1.i.i, align 2, !tbaa !218
  store i16 %i.an, ptr %.114.i.i, align 2, !tbaa !218
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !2789

_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEET_SA_SA_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.ax = ptrtoint ptr %..017 to i64
  %i.ay = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 6
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !2786

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEET_SA_SA_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEET_SA_SA_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEET_SA_SA_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.ay, %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEET_SA_SA_T0_.exit ]
  %i.bb = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.019.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, %.017.lcssa
  %or.cond = select i1 %i.bb, i1 true, i1 %.not20.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.bc = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i ], [ %.019.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn21.i = phi ptr [ %.022.i, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 4 uses
  %i.bd = load i16, ptr %.022.i, align 2, !tbaa !218 ; 7 uses
  %i.be = load i16, ptr %.0.lcssa, align 2, !tbaa !218 ; 3 uses
  %i.bf = icmp sgt i16 %i.bd, %i.be
  %i.bg = icmp sgt i16 %i.be, %i.bd
  %i.bh = select i1 %i.bc, i1 %i.bf, i1 %i.bg
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bi = ptrtoint ptr %.022.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa30                ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 1                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bo, ptr noundef nonnull align 2 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bp = icmp eq i64 %i.bj, 2
  br i1 %i.bp, label %bb.s, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 2
  store i16 %i.be, ptr %i.bq, align 2, !tbaa !218
  br label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.br = load i16, ptr %.pn21.i, align 2, !tbaa !218 ; 3 uses
  %i.bs = icmp sgt i16 %i.bd, %i.br
  %i.bt = icmp sgt i16 %i.br, %i.bd
  %i.bu = select i1 %i.bc, i1 %i.bs, i1 %i.bt
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bv = phi i16 [ %i.bw, %.lr.ph.i.i ], [ %i.br, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn21.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.022.i, %bb.t ]
  store i16 %i.bv, ptr %.0912.i.i, align 2, !tbaa !218
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -2 ; 2 uses
  %i.bw = load i16, ptr %.0.i.i22, align 2, !tbaa !218 ; 3 uses
  %i.bx = icmp sgt i16 %i.bd, %i.bw
  %i.by = icmp sgt i16 %i.bw, %i.bd
  %i.bz = select i1 %i.bc, i1 %i.bx, i1 %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i, !llvm.loop !2790

_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.022.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i16 %i.bd, ptr %.sink.i, align 2, !tbaa !218
  %.0.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !2791

_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_T0_.exit: ; preds = %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.752") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  call void @_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2792, !range !234, !noundef !235
  %i.d = trunc nuw i8 %i.c to i1                  ; 7 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 1                         ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %4 = lshr i64 %i.i, 1
  %i.j = icmp sgt i64 %i.h, 2
  %i.k = and i64 %i.g, 2
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add nsw i64 %i.h, -2                     ; 4 uses
  %i.n = ashr exact i64 %i.m, 1
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i16, ptr %.011.us, align 2, !tbaa !218 ; 5 uses
  %i.s = load i16, ptr %0, align 2, !tbaa !218    ; 3 uses
  %i.t = icmp sgt i16 %i.r, %i.s
  %i.u = icmp sgt i16 %i.s, %i.r
  %i.v = select i1 %i.d, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i16 %i.s, ptr %.011.us, align 2, !tbaa !218
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [2 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 2
  %i.ab = load i16, ptr %i.y, align 2, !tbaa !218 ; 2 uses
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !218 ; 2 uses
  %i.ad = icmp sgt i16 %i.ab, %i.ac
  %i.ae = icmp sgt i16 %i.ac, %i.ab
  %i.af = select i1 %i.d, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !218
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i.i.us
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !218
  %i.ak = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !2795

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i16, ptr %i.p, align 2, !tbaa !218
  store i16 %i.al, ptr %i.q, align 2, !tbaa !218
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1011.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1011.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i1011.i.us
  %i.an = load i16, ptr %i.am, align 2, !tbaa !218 ; 3 uses
  %i.ao = icmp sgt i16 %i.an, %i.r
  %i.ap = icmp sgt i16 %i.r, %i.an
  %i.aq = select i1 %i.d, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i16 %i.an, ptr %i.ar, align 2, !tbaa !218
  %.not12.i.us = icmp eq i64 %.018.i.i1011.i.us, 0
  br i1 %.not12.i.us, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !2796

_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds [2 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i16 %i.r, ptr %i.as, align 2, !tbaa !218
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_SA_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 2 ; 2 uses
  %i.au = icmp ult ptr %i.at, %2
  br i1 %i.au, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !2797

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.av = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.av, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i16, ptr %0, align 2, !tbaa !218
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ax = icmp eq i64 %i.m, 0
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre28 = load i16, ptr %0, align 2, !tbaa !218
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ay = load i16, ptr %.011.us12.us, align 2, !tbaa !218 ; 5 uses
  %i.az = load i16, ptr %0, align 2, !tbaa !218   ; 3 uses
  %i.ba = icmp sgt i16 %i.ay, %i.az
  %i.bb = icmp sgt i16 %i.az, %i.ay
  %i.bc = select i1 %i.d, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i16 %i.az, ptr %.011.us12.us, align 2, !tbaa !218
  %i.bd = load i16, ptr %i.aw, align 2, !tbaa !218 ; 3 uses
  store i16 %i.bd, ptr %0, align 2, !tbaa !218
  %i.be = icmp sle i16 %i.bd, %i.ay
  %i.bf = icmp sle i16 %i.ay, %i.bd
  %i.bg = select i1 %i.d, i1 %i.be, i1 %i.bf
  %spec.select = zext i1 %i.bg to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %spec.select
  store i16 %i.ay, ptr %i.bh, align 2, !tbaa !218
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 2 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !2797

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bk = phi i16 [ %i.bp, %bb.f ], [ %.pre28, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %.011.us12 = phi ptr [ %i.bq, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.bl = load i16, ptr %.011.us12, align 2, !tbaa !218 ; 4 uses
  %i.bm = icmp sgt i16 %i.bl, %i.bk
  %i.bn = icmp sgt i16 %i.bk, %i.bl
  %i.bo = select i1 %i.d, i1 %i.bm, i1 %i.bn
  br i1 %i.bo, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i16 %i.bk, ptr %.011.us12, align 2, !tbaa !218
  store i16 %i.bl, ptr %0, align 2, !tbaa !218
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bp = phi i16 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.us12, i64 2 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %2
  br i1 %i.br, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !2797

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bs = phi i16 [ %i.bx, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 4 uses
  %.011 = phi ptr [ %i.by, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bt = load i16, ptr %.011, align 2, !tbaa !218 ; 4 uses
  %i.bu = icmp sgt i16 %i.bt, %i.bs
  %i.bv = icmp sgt i16 %i.bs, %i.bt
  %i.bw = select i1 %i.d, i1 %i.bu, i1 %i.bv
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i16 %i.bs, ptr %.011, align 2, !tbaa !218
  store i16 %i.bt, ptr %0, align 2, !tbaa !218
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bx = phi i16 [ %i.bs, %.lr.ph.split.split ], [ %i.bt, %._crit_edge.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.011, i64 2 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %2
  br i1 %i.bz, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !2797
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 2
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1
  %i.m = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_T0_SB_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.ar, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIsEEEEEEEvT_T0_SB_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.014.us
end_hunk_10
begin_hunk_11_@_ZN6duckdbL17CastExceptionTextIssEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.ea) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPsN6duckdb15QuantileCompareINS1_12_GLOBAL__N_111MadAccessorIsssEEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.755") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.759", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.757", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.757", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.757", align 8 ; 21 uses
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.f = icmp sgt i64 %i.e, 6
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = lshr exact i64 %i.e, 1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEET_SB_SB_T0_.exit.i
  %i.k = icmp eq i64 %i.dx, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !2811

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 6 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.ey                      ; 3 uses
  %i.o = ashr i64 %i.n, 1                         ; 6 uses
  %i.p = icmp slt i64 %i.o, 2
  br i1 %i.p, label %_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.q = add nsw i64 %i.o, -2                     ; 3 uses
  %i.r = lshr i64 %i.q, 1                         ; 3 uses
  %i.s = add nsw i64 %i.o, -1
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = and i64 %i.n, 2
  %i.v = icmp eq i64 %i.u, 0
  %i.w = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0..i, i64 %i.q
  br i1 %i.v, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.at, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i ], [ %i.r, %bb.c ] ; 7 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !218 ; 2 uses
  %i.ab = icmp slt i64 %.014.i.us.i.i, %i.t
  br i1 %i.ab, label %.lr.ph.i.i.us.i.i, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.030.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ac = shl i64 %.030.i.i.us.i.i, 1             ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.ad
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.val.i.i.us.i.i = load i16, ptr %i.ae, align 2, !tbaa !218
  %.val29.i.i.us.i.i = load i16, ptr %i.ag, align 2
  %i.ah = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val.i.i.us.i.i, i16 %.val29.i.i.us.i.i)
  %i.ai = or disjoint i64 %i.ac, 1
  %spec.select.i.i.us.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ad ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !218
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.030.i.i.us.i.i
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !218
  %i.am = icmp slt i64 %spec.select.i.i.us.i.i, %i.t
  br i1 %i.am, label %.lr.ph.i.i.us.i.i, label %.lr.ph.i.i.i.us.i.i, !llvm.loop !2812

.lr.ph.i.i.i.us.i.i:                              ; preds = %.lr.ph.i.i.us.i.i, %bb.d
  %.01318.i.i.i.us.i.i = phi i64 [ %.01923.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ] ; 3 uses
  %.019.in.i.i.i.us.i.i = add nsw i64 %.01318.i.i.i.us.i.i, -1
  %.01923.i.i.i.us.i.i = lshr i64 %.019.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.01923.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i16, ptr %i.an, align 2, !tbaa !218
  %i.ao = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val.i.i.i.us.i.i, i16 %i.aa)
  br i1 %i.ao, label %bb.d, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !218
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.01318.i.i.i.us.i.i
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !218
  %i.ar = icmp samesign ugt i64 %.01923.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.ar, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i, !llvm.loop !2813

_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %.split.us.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %.split.us.i.i ], [ %.01923.i.i.i.us.i.i, %bb.d ], [ %.01318.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i16 %i.aa, ptr %i.as, align 2, !tbaa !218
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.at = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !2814

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.br, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i ], [ %i.r, %bb.c ] ; 8 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.014.i.i.i
  %i.av = load i16, ptr %i.au, align 2, !tbaa !218 ; 2 uses
  %i.aw = icmp slt i64 %.014.i.i.i, %i.t
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.ax = shl i64 %.030.i.i.i.i, 1                ; 3 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %.val.i.i.i.i = load i16, ptr %i.az, align 2, !tbaa !218
  %.val29.i.i.i.i = load i16, ptr %i.bb, align 2
  %i.bc = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val.i.i.i.i, i16 %.val29.i.i.i.i)
  %i.bd = or disjoint i64 %i.ax, 1
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.bd, i64 %i.ay ; 4 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !218
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.030.i.i.i.i
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !218
  %i.bh = icmp slt i64 %spec.select.i.i.i.i, %i.t
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2812

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.r
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = load i16, ptr %i.x, align 2, !tbaa !218
  store i16 %i.bj, ptr %i.y, align 2, !tbaa !218
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01318.i.i.i.i.i = phi i64 [ %.01923.i.i.i.i.i, %bb.g ], [ %.128.i.i.i.i, %bb.f ] ; 3 uses
  %.019.in.i.i.i.i.i = add nsw i64 %.01318.i.i.i.i.i, -1
  %.01923.i.i.i.i.i = lshr i64 %.019.in.i.i.i.i.i, 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.01923.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i16, ptr %i.bl, align 2, !tbaa !218
  %i.bm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val.i.i.i.i.i, i16 %i.av)
  br i1 %i.bm, label %bb.g, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = load i16, ptr %i.bl, align 2, !tbaa !218
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.01318.i.i.i.i.i
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !218
  %i.bp = icmp samesign ugt i64 %.01923.i.i.i.i.i, %.014.i.i.i
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i, !llvm.loop !2813

_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.01318.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01923.i.i.i.i.i, %bb.g ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i16 %i.av, ptr %i.bq, align 2, !tbaa !218
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.br = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !2814

_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bs = icmp ult ptr %i.l, %..017.i
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_RT0_.exit.i.i
  %i.bt = add nsw i64 %i.o, -1
  %8 = lshr i64 %i.bt, 1
  %i.bu = icmp sgt i64 %i.o, 2
  %i.bv = and i64 %i.n, 2
  %i.bw = icmp eq i64 %i.bv, 0                    ; 2 uses
  %i.bx = add nsw i64 %i.o, -2                    ; 4 uses
  %i.by = ashr exact i64 %i.bx, 1
  br i1 %i.bu, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.bz = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.0..i, i64 %i.bx
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.026.us.i.i = phi ptr [ %i.cw, %bb.j ], [ %i.l, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i16, ptr %.026.us.i.i, align 2, !tbaa !218
  %.val.us.i.i = load i16, ptr %.0..i, align 2
  %i.cc = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.0.val.us.i.i, i16 %.val.us.i.i)
  br i1 %i.cc, label %.lr.ph.i.i21.preheader.us.i.i, label %bb.j

.lr.ph.i.i21.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.cd = load i16, ptr %.026.us.i.i, align 2, !tbaa !218 ; 2 uses
  %i.ce = load i16, ptr %.0..i, align 2, !tbaa !218
  store i16 %i.ce, ptr %.026.us.i.i, align 2, !tbaa !218
  br label %.lr.ph.i.i21.us.i.i

.lr.ph.i.i21.us.i.i:                              ; preds = %.lr.ph.i.i21.us.i.i, %.lr.ph.i.i21.preheader.us.i.i
  %.030.i.i22.us.i.i = phi i64 [ %spec.select.i.i25.us.i.i, %.lr.ph.i.i21.us.i.i ], [ 0, %.lr.ph.i.i21.preheader.us.i.i ] ; 2 uses
  %i.cf = shl i64 %.030.i.i22.us.i.i, 1           ; 3 uses
  %i.cg = add i64 %i.cf, 2                        ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %.val.i.i23.us.i.i = load i16, ptr %i.ch, align 2, !tbaa !218
  %.val29.i.i24.us.i.i = load i16, ptr %i.cj, align 2
  %i.ck = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val.i.i23.us.i.i, i16 %.val29.i.i24.us.i.i)
  %i.cl = or disjoint i64 %i.cf, 1
  %spec.select.i.i25.us.i.i = select i1 %i.ck, i64 %i.cl, i64 %i.cg ; 6 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %spec.select.i.i25.us.i.i
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !218
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.030.i.i22.us.i.i
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !218
  %i.cp = icmp slt i64 %spec.select.i.i25.us.i.i, %8
  br i1 %i.cp, label %.lr.ph.i.i21.us.i.i, label %._crit_edge.i.i11.loopexit.us.i.i, !llvm.loop !2812

bb.h:                                             ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %.not.i13.us.i.i = icmp eq i64 %spec.select.i.i25.us.i.i, 0
  br i1 %.not.i13.us.i.i, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !218
  store i16 %i.cq, ptr %i.cb, align 2, !tbaa !218
  br label %.lr.ph.i.i.i14.us.i.i.preheader

.lr.ph.i.i.i14.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01318.i.i.i15.us.i.i.ph = phi i64 [ %spec.select.i.i25.us.i.i, %bb.h ], [ %i.bz, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i14.us.i.i

.lr.ph.i.i.i14.us.i.i:                            ; preds = %.lr.ph.i.i.i14.us.i.i.preheader, %bb.i
  %.01318.i.i.i15.us.i.i = phi i64 [ %.01923.i.i.i17.us.i.i, %bb.i ], [ %.01318.i.i.i15.us.i.i.ph, %.lr.ph.i.i.i14.us.i.i.preheader ] ; 3 uses
  %.019.in.i.i.i16.us.i.i = add nsw i64 %.01318.i.i.i15.us.i.i, -1
  %.01923.i.i.i17.us.i.i = lshr i64 %.019.in.i.i.i16.us.i.i, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.01923.i.i.i17.us.i.i ; 2 uses
  %.val.i.i.i18.us.i.i = load i16, ptr %i.cr, align 2, !tbaa !218
  %i.cs = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val.i.i.i18.us.i.i, i16 %i.cd)
  br i1 %i.cs, label %bb.i, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i14.us.i.i
  %i.ct = load i16, ptr %i.cr, align 2, !tbaa !218
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.01318.i.i.i15.us.i.i
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !218
  %.not7.i.us.i.i = icmp eq i64 %.01923.i.i.i17.us.i.i, 0
  br i1 %.not7.i.us.i.i, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i, !llvm.loop !2813

_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i14.us.i.i, %bb.h
  %.013.lcssa.i.i.i20.us.i.i = phi i64 [ 0, %bb.h ], [ %.01318.i.i.i15.us.i.i, %.lr.ph.i.i.i14.us.i.i ], [ 0, %bb.i ]
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.us.i.i
  store i16 %i.cd, ptr %i.cv, align 2, !tbaa !218
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.026.us.i.i, i64 2 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %..017.i
  br i1 %i.cx, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2815

._crit_edge.i.i11.loopexit.us.i.i:                ; preds = %.lr.ph.i.i21.us.i.i
  %i.cy = icmp eq i64 %spec.select.i.i25.us.i.i, %i.by
  %or.cond.i.i = select i1 %i.bw, i1 %i.cy, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.0..i, i64 2 ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.da = icmp eq i64 %i.bx, 0
  br i1 %i.da, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.026.us27.us.i.i = phi ptr [ %i.dh, %bb.l ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.us.i.i = load i16, ptr %.026.us27.us.i.i, align 2, !tbaa !218
  %.val.us29.us.i.i = load i16, ptr %.0..i, align 2
  %i.db = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.0.val.us28.us.i.i, i16 %.val.us29.us.i.i)
  br i1 %i.db, label %._crit_edge.i.i11.us30.us.i.i, label %bb.l

._crit_edge.i.i11.us30.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %i.dc = load i16, ptr %.026.us27.us.i.i, align 2, !tbaa !218 ; 2 uses
  %i.dd = load i16, ptr %.0..i, align 2, !tbaa !218
  store i16 %i.dd, ptr %.026.us27.us.i.i, align 2, !tbaa !218
  %i.de = load i16, ptr %i.cz, align 2, !tbaa !218 ; 2 uses
  store i16 %i.de, ptr %.0..i, align 2, !tbaa !218
  %i.df = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %i.de, i16 %i.dc)
  br i1 %i.df, label %bb.k, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i11.us30.us.i.i
  %i.dg = load i16, ptr %.0..i, align 2, !tbaa !218
  store i16 %i.dg, ptr %i.cz, align 2, !tbaa !218
  br label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.026.us27.us.i.i, i64 2 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %..017.i
  br i1 %i.di, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2815

_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i: ; preds = %bb.k, %._crit_edge.i.i11.us30.us.i.i
  %.013.lcssa.i.i.i20.ph.us41.us.i.i = phi i64 [ 1, %._crit_edge.i.i11.us30.us.i.i ], [ 0, %bb.k ]
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.ph.us41.us.i.i
  store i16 %i.dc, ptr %i.dj, align 2, !tbaa !218
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.026.us27.i.i = phi ptr [ %i.dn, %bb.m ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.i.i = load i16, ptr %.026.us27.i.i, align 2, !tbaa !218
  %.val.us29.i.i = load i16, ptr %.0..i, align 2
  %i.dk = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.0.val.us28.i.i, i16 %.val.us29.i.i)
  br i1 %i.dk, label %._crit_edge.i.i11.us30.i.i, label %bb.m

._crit_edge.i.i11.us30.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %i.dl = load i16, ptr %.026.us27.i.i, align 2, !tbaa !218
  %i.dm = load i16, ptr %.0..i, align 2, !tbaa !218
  store i16 %i.dm, ptr %.026.us27.i.i, align 2, !tbaa !218
  store i16 %i.dl, ptr %.0..i, align 2, !tbaa !218
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i11.us30.i.i, %.lr.ph.split.split.us.split.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.026.us27.i.i, i64 2 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %..017.i
  br i1 %i.do, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2815

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.026.i.i = phi ptr [ %i.ds, %bb.n ], [ %i.l, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i16, ptr %.026.i.i, align 2, !tbaa !218
  %.val.i.i = load i16, ptr %.0..i, align 2
  %i.dp = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.0.val.i.i, i16 %.val.i.i)
  br i1 %i.dp, label %._crit_edge.i.i11.i.i, label %bb.n

._crit_edge.i.i11.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %i.dq = load i16, ptr %.026.i.i, align 2, !tbaa !218
  %i.dr = load i16, ptr %.0..i, align 2, !tbaa !218
  store i16 %i.dr, ptr %.026.i.i, align 2, !tbaa !218
  store i16 %i.dq, ptr %.0..i, align 2, !tbaa !218
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i11.i.i, %.lr.ph.split.split.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2 ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %..017.i
  br i1 %i.dt, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !2815

_ZSt13__heap_selectIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_RT0_.exit.i.i
  %i.du = load i16, ptr %.0..i, align 2, !tbaa !218
  %i.dv = load i16, ptr %1, align 2, !tbaa !218
  store i16 %i.dv, ptr %.0..i, align 2, !tbaa !218
  store i16 %i.du, ptr %1, align 2, !tbaa !218
  br label %_ZSt13__introselectIPslN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIsssEEEEEEEvT_SB_SB_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01736.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01637.i21 = phi i64 [ %i.dx, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader ]
  %.038.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dw = phi i64 [ %i.ez, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader ]
  %i.dx = add nsw i64 %.01637.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.dy = lshr i64 %i.dw, 2
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.038.i20, i64 %i.dy ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.038.i20, i64 2 ; 6 uses
  %i.eb = getelementptr inbounds i8, ptr %.01736.i22, i64 -2 ; 7 uses
  %.val29.i.i.i = load i16, ptr %i.ea, align 2, !tbaa !218
  %.val30.i.i.i = load i16, ptr %i.dz, align 2
  %i.ec = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val29.i.i.i, i16 %.val30.i.i.i)
  %.val28.i.i.i = load i16, ptr %i.eb, align 2    ; 2 uses
  br i1 %i.ec, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val27.i.i.i = load i16, ptr %i.dz, align 2, !tbaa !218
  %i.ed = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIsssEEEclERKsS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i16 %.val27.i.i.i, i16 %.val28.i.i.i)
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = load i16, ptr %.038.i20, align 2, !tbaa !218
end_hunk_11
begin_hunk_12_@_ZSt13__introselectIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_T0_T1_:bb.a

bb.c:                                             ; preds = %.lr.ph59
  %i.w = icmp sgt i32 %i.r, %i.v
  %i.x = icmp sgt i32 %i.v, %i.r
  %i.y = select i1 %i.e, i1 %i.w, i1 %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %.03656, align 4, !tbaa !3
  store i32 %i.r, ptr %.03656, align 4, !tbaa !3
  store i32 %i.z, ptr %i.n, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp sgt i32 %i.q, %i.v
  %i.ab = icmp sgt i32 %i.v, %i.q
  %i.ac = select i1 %i.e, i1 %i.aa, i1 %i.ab
  %i.ad = load i32, ptr %.03656, align 4, !tbaa !3 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %.03656, align 4, !tbaa !3
  store i32 %i.ad, ptr %i.p, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.q, ptr %.03656, align 4, !tbaa !3
  store i32 %i.ad, ptr %i.o, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ae = icmp sgt i32 %i.q, %i.v
  %i.af = icmp sgt i32 %i.v, %i.q
  %i.ag = select i1 %i.e, i1 %i.ae, i1 %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %.03656, align 4, !tbaa !3
  store i32 %i.q, ptr %.03656, align 4, !tbaa !3
  store i32 %i.ah, ptr %i.o, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp sgt i32 %i.r, %i.v
  %i.aj = icmp sgt i32 %i.v, %i.r
  %i.ak = select i1 %i.e, i1 %i.ai, i1 %i.aj
  %i.al = load i32, ptr %.03656, align 4, !tbaa !3 ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.v, ptr %.03656, align 4, !tbaa !3
  store i32 %i.al, ptr %i.p, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.r, ptr %.03656, align 4, !tbaa !3
  store i32 %i.al, ptr %i.n, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.o, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.am = load i32, ptr %.03656, align 4, !tbaa !3 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i ], [ %i.ar, %bb.m ] ; 7 uses
  %i.an = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, %i.am
  %i.ap = icmp sgt i32 %i.am, %i.an
  %i.aq = select i1 %i.e, i1 %i.ao, i1 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !3060

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.as = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 3 uses
  %i.at = icmp sgt i32 %i.am, %i.as
  %i.au = icmp sgt i32 %i.as, %i.am
  %i.av = select i1 %i.e, i1 %i.at, i1 %i.au
  br i1 %i.av, label %.preheader.i.i, label %bb.n, !llvm.loop !3061

bb.n:                                             ; preds = %.preheader.i.i
  %i.aw = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.aw, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEET_SA_SA_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.as, ptr %.1.i.i, align 4, !tbaa !3
  store i32 %i.an, ptr %.114.i.i, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !3062

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEET_SA_SA_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.ax = ptrtoint ptr %..017 to i64
  %i.ay = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 12
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !3059

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEET_SA_SA_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEET_SA_SA_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEET_SA_SA_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.ay, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEET_SA_SA_T0_.exit ]
  %i.bb = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.019.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, %.017.lcssa
  %or.cond = select i1 %i.bb, i1 true, i1 %.not20.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.bc = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.019.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn21.i = phi ptr [ %.022.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 4 uses
  %i.bd = load i32, ptr %.022.i, align 4, !tbaa !3 ; 7 uses
  %i.be = load i32, ptr %.0.lcssa, align 4, !tbaa !3 ; 3 uses
  %i.bf = icmp sgt i32 %i.bd, %i.be
  %i.bg = icmp sgt i32 %i.be, %i.bd
  %i.bh = select i1 %i.bc, i1 %i.bf, i1 %i.bg
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bi = ptrtoint ptr %.022.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa30                ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.s, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.be, ptr %i.bq, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.br = load i32, ptr %.pn21.i, align 4, !tbaa !3 ; 3 uses
  %i.bs = icmp sgt i32 %i.bd, %i.br
  %i.bt = icmp sgt i32 %i.br, %i.bd
  %i.bu = select i1 %i.bc, i1 %i.bs, i1 %i.bt
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bv = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %i.br, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn21.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.022.i, %bb.t ]
  store i32 %i.bv, ptr %.0912.i.i, align 4, !tbaa !3
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -4 ; 2 uses
  %i.bw = load i32, ptr %.0.i.i22, align 4, !tbaa !3 ; 3 uses
  %i.bx = icmp sgt i32 %i.bd, %i.bw
  %i.by = icmp sgt i32 %i.bw, %i.bd
  %i.bz = select i1 %i.bc, i1 %i.bx, i1 %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, !llvm.loop !3063

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.022.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i32 %i.bd, ptr %.sink.i, align 4, !tbaa !3
  %.0.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !3064

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.840") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3065, !range !234, !noundef !235
  %i.d = trunc nuw i8 %i.c to i1                  ; 7 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 2                         ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %4 = lshr i64 %i.i, 1
  %i.j = icmp sgt i64 %i.h, 2
  %i.k = and i64 %i.g, 4
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add nsw i64 %i.h, -2                     ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i32, ptr %.011.us, align 4, !tbaa !3 ; 5 uses
  %i.s = load i32, ptr %0, align 4, !tbaa !3      ; 3 uses
  %i.t = icmp sgt i32 %i.r, %i.s
  %i.u = icmp sgt i32 %i.s, %i.r
  %i.v = select i1 %i.d, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.s, ptr %.011.us, align 4, !tbaa !3
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  %i.ae = icmp sgt i32 %i.ac, %i.ab
  %i.af = select i1 %i.d, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !3068

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i32, ptr %i.p, align 4, !tbaa !3
  store i32 %i.al, ptr %i.q, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1011.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1011.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i1011.i.us
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 3 uses
  %i.ao = icmp sgt i32 %i.an, %i.r
  %i.ap = icmp sgt i32 %i.r, %i.an
  %i.aq = select i1 %i.d, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i32 %i.an, ptr %i.ar, align 4, !tbaa !3
  %.not12.i.us = icmp eq i64 %.018.i.i1011.i.us, 0
  br i1 %.not12.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !3069

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i32 %i.r, ptr %i.as, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_SA_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 4 ; 2 uses
  %i.au = icmp ult ptr %i.at, %2
  br i1 %i.au, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3070

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.av = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.av, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !3
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ax = icmp eq i64 %i.m, 0
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre28 = load i32, ptr %0, align 4, !tbaa !3
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ay = load i32, ptr %.011.us12.us, align 4, !tbaa !3 ; 5 uses
  %i.az = load i32, ptr %0, align 4, !tbaa !3     ; 3 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  %i.bb = icmp sgt i32 %i.az, %i.ay
  %i.bc = select i1 %i.d, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.az, ptr %.011.us12.us, align 4, !tbaa !3
  %i.bd = load i32, ptr %i.aw, align 4, !tbaa !3  ; 3 uses
  store i32 %i.bd, ptr %0, align 4, !tbaa !3
  %i.be = icmp sle i32 %i.bd, %i.ay
  %i.bf = icmp sle i32 %i.ay, %i.bd
  %i.bg = select i1 %i.d, i1 %i.be, i1 %i.bf
  %spec.select = zext i1 %i.bg to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  store i32 %i.ay, ptr %i.bh, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 4 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !3070

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bk = phi i32 [ %i.bp, %bb.f ], [ %.pre28, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %.011.us12 = phi ptr [ %i.bq, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.bl = load i32, ptr %.011.us12, align 4, !tbaa !3 ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, %i.bk
  %i.bn = icmp sgt i32 %i.bk, %i.bl
  %i.bo = select i1 %i.d, i1 %i.bm, i1 %i.bn
  br i1 %i.bo, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i32 %i.bk, ptr %.011.us12, align 4, !tbaa !3
  store i32 %i.bl, ptr %0, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bp = phi i32 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.us12, i64 4 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %2
  br i1 %i.br, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !3070

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bs = phi i32 [ %i.bx, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 4 uses
  %.011 = phi ptr [ %i.by, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bt = load i32, ptr %.011, align 4, !tbaa !3  ; 4 uses
  %i.bu = icmp sgt i32 %i.bt, %i.bs
  %i.bv = icmp sgt i32 %i.bs, %i.bt
  %i.bw = select i1 %i.d, i1 %i.bu, i1 %i.bv
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i32 %i.bs, ptr %.011, align 4, !tbaa !3
  store i32 %i.bt, ptr %0, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bx = phi i32 [ %i.bs, %.lr.ph.split.split ], [ %i.bt, %._crit_edge.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %2
  br i1 %i.bz, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3070
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_T0_SB_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.ar, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIiEEEEEEEvT_T0_SB_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
end_hunk_12
begin_hunk_13_@_ZN6duckdbL17CastExceptionTextIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.ea) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPiN6duckdb15QuantileCompareINS1_12_GLOBAL__N_111MadAccessorIiiiEEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.843") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.847", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.845", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.845", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.845", align 8 ; 21 uses
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.f = icmp sgt i64 %i.e, 12
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = lshr exact i64 %i.e, 2
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEET_SB_SB_T0_.exit.i
  %i.k = icmp eq i64 %i.dx, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !3084

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.ey                      ; 3 uses
  %i.o = ashr i64 %i.n, 2                         ; 6 uses
  %i.p = icmp slt i64 %i.o, 2
  br i1 %i.p, label %_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.q = add nsw i64 %i.o, -2                     ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 4 uses
  %i.s = add nsw i64 %i.o, -1
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = and i64 %i.n, 4
  %i.v = icmp eq i64 %i.u, 0
  %i.w = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.r
  br i1 %i.v, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.at, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i ], [ %i.r, %bb.c ] ; 7 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = icmp slt i64 %.014.i.us.i.i, %i.t
  br i1 %i.ab, label %.lr.ph.i.i.us.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.030.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ac = shl i64 %.030.i.i.us.i.i, 1             ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.val.i.i.us.i.i = load i32, ptr %i.ae, align 4, !tbaa !3
  %.val29.i.i.us.i.i = load i32, ptr %i.ag, align 4
  %i.ah = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val.i.i.us.i.i, i32 %.val29.i.i.us.i.i)
  %i.ai = or disjoint i64 %i.ac, 1
  %spec.select.i.i.us.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ad ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.030.i.i.us.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = icmp slt i64 %spec.select.i.i.us.i.i, %i.t
  br i1 %i.am, label %.lr.ph.i.i.us.i.i, label %.lr.ph.i.i.i.us.i.i, !llvm.loop !3085

.lr.ph.i.i.i.us.i.i:                              ; preds = %.lr.ph.i.i.us.i.i, %bb.d
  %.01318.i.i.i.us.i.i = phi i64 [ %.01923.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ] ; 3 uses
  %.019.in.i.i.i.us.i.i = add nsw i64 %.01318.i.i.i.us.i.i, -1
  %.01923.i.i.i.us.i.i = lshr i64 %.019.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.01923.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ao = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val.i.i.i.us.i.i, i32 %i.aa)
  br i1 %i.ao, label %bb.d, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.01318.i.i.i.us.i.i
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !3
  %i.ar = icmp samesign ugt i64 %.01923.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.ar, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i, !llvm.loop !3086

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %.split.us.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %.split.us.i.i ], [ %.01923.i.i.i.us.i.i, %bb.d ], [ %.01318.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i32 %i.aa, ptr %i.as, align 4, !tbaa !3
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.at = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !3087

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.br, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i ], [ %i.r, %bb.c ] ; 8 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.014.i.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 2 uses
  %i.aw = icmp slt i64 %.014.i.i.i, %i.t
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.ax = shl i64 %.030.i.i.i.i, 1                ; 3 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.val.i.i.i.i = load i32, ptr %i.az, align 4, !tbaa !3
  %.val29.i.i.i.i = load i32, ptr %i.bb, align 4
  %i.bc = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val.i.i.i.i, i32 %.val29.i.i.i.i)
  %i.bd = or disjoint i64 %i.ax, 1
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.bd, i64 %i.ay ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.030.i.i.i.i
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !3
  %i.bh = icmp slt i64 %spec.select.i.i.i.i, %i.t
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3085

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.r
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = load i32, ptr %i.x, align 4, !tbaa !3
  store i32 %i.bj, ptr %i.y, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01318.i.i.i.i.i = phi i64 [ %.01923.i.i.i.i.i, %bb.g ], [ %.128.i.i.i.i, %bb.f ] ; 3 uses
  %.019.in.i.i.i.i.i = add nsw i64 %.01318.i.i.i.i.i, -1
  %.01923.i.i.i.i.i = lshr i64 %.019.in.i.i.i.i.i, 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.01923.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val.i.i.i.i.i, i32 %i.av)
  br i1 %i.bm, label %bb.g, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.01318.i.i.i.i.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  %i.bp = icmp samesign ugt i64 %.01923.i.i.i.i.i, %.014.i.i.i
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i, !llvm.loop !3086

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.01318.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01923.i.i.i.i.i, %bb.g ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.av, ptr %i.bq, align 4, !tbaa !3
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.br = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !3087

_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bs = icmp ult ptr %i.l, %..017.i
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_RT0_.exit.i.i
  %i.bt = add nsw i64 %i.o, -1
  %8 = lshr i64 %i.bt, 1
  %i.bu = icmp sgt i64 %i.o, 2
  %i.bv = and i64 %i.n, 4
  %i.bw = icmp eq i64 %i.bv, 0                    ; 2 uses
  %i.bx = add nsw i64 %i.o, -2                    ; 3 uses
  %i.by = ashr exact i64 %i.bx, 1                 ; 2 uses
  br i1 %i.bu, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.bz = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.by
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.026.us.i.i = phi ptr [ %i.cw, %bb.j ], [ %i.l, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i32, ptr %.026.us.i.i, align 4, !tbaa !3
  %.val.us.i.i = load i32, ptr %.0..i, align 4
  %i.cc = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.0.val.us.i.i, i32 %.val.us.i.i)
  br i1 %i.cc, label %.lr.ph.i.i21.preheader.us.i.i, label %bb.j

.lr.ph.i.i21.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.cd = load i32, ptr %.026.us.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ce = load i32, ptr %.0..i, align 4, !tbaa !3
  store i32 %i.ce, ptr %.026.us.i.i, align 4, !tbaa !3
  br label %.lr.ph.i.i21.us.i.i

.lr.ph.i.i21.us.i.i:                              ; preds = %.lr.ph.i.i21.us.i.i, %.lr.ph.i.i21.preheader.us.i.i
  %.030.i.i22.us.i.i = phi i64 [ %spec.select.i.i25.us.i.i, %.lr.ph.i.i21.us.i.i ], [ 0, %.lr.ph.i.i21.preheader.us.i.i ] ; 2 uses
  %i.cf = shl i64 %.030.i.i22.us.i.i, 1           ; 3 uses
  %i.cg = add i64 %i.cf, 2                        ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.val.i.i23.us.i.i = load i32, ptr %i.ch, align 4, !tbaa !3
  %.val29.i.i24.us.i.i = load i32, ptr %i.cj, align 4
  %i.ck = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val.i.i23.us.i.i, i32 %.val29.i.i24.us.i.i)
  %i.cl = or disjoint i64 %i.cf, 1
  %spec.select.i.i25.us.i.i = select i1 %i.ck, i64 %i.cl, i64 %i.cg ; 6 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %spec.select.i.i25.us.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.030.i.i22.us.i.i
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !3
  %i.cp = icmp slt i64 %spec.select.i.i25.us.i.i, %8
  br i1 %i.cp, label %.lr.ph.i.i21.us.i.i, label %._crit_edge.i.i11.loopexit.us.i.i, !llvm.loop !3085

bb.h:                                             ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %.not.i13.us.i.i = icmp eq i64 %spec.select.i.i25.us.i.i, 0
  br i1 %.not.i13.us.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %i.cq = load i32, ptr %i.ca, align 4, !tbaa !3
  store i32 %i.cq, ptr %i.cb, align 4, !tbaa !3
  br label %.lr.ph.i.i.i14.us.i.i.preheader

.lr.ph.i.i.i14.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01318.i.i.i15.us.i.i.ph = phi i64 [ %spec.select.i.i25.us.i.i, %bb.h ], [ %i.bz, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i14.us.i.i

.lr.ph.i.i.i14.us.i.i:                            ; preds = %.lr.ph.i.i.i14.us.i.i.preheader, %bb.i
  %.01318.i.i.i15.us.i.i = phi i64 [ %.01923.i.i.i17.us.i.i, %bb.i ], [ %.01318.i.i.i15.us.i.i.ph, %.lr.ph.i.i.i14.us.i.i.preheader ] ; 3 uses
  %.019.in.i.i.i16.us.i.i = add nsw i64 %.01318.i.i.i15.us.i.i, -1
  %.01923.i.i.i17.us.i.i = lshr i64 %.019.in.i.i.i16.us.i.i, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.01923.i.i.i17.us.i.i ; 2 uses
  %.val.i.i.i18.us.i.i = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.cs = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val.i.i.i18.us.i.i, i32 %i.cd)
  br i1 %i.cs, label %bb.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i14.us.i.i
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.01318.i.i.i15.us.i.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  %.not7.i.us.i.i = icmp eq i64 %.01923.i.i.i17.us.i.i, 0
  br i1 %.not7.i.us.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i, !llvm.loop !3086

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i14.us.i.i, %bb.h
  %.013.lcssa.i.i.i20.us.i.i = phi i64 [ 0, %bb.h ], [ %.01318.i.i.i15.us.i.i, %.lr.ph.i.i.i14.us.i.i ], [ 0, %bb.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.us.i.i
  store i32 %i.cd, ptr %i.cv, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.026.us.i.i, i64 4 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %..017.i
  br i1 %i.cx, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3088

._crit_edge.i.i11.loopexit.us.i.i:                ; preds = %.lr.ph.i.i21.us.i.i
  %i.cy = icmp eq i64 %spec.select.i.i25.us.i.i, %i.by
  %or.cond.i.i = select i1 %i.bw, i1 %i.cy, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.0..i, i64 4 ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.da = icmp eq i64 %i.bx, 0
  br i1 %i.da, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.026.us27.us.i.i = phi ptr [ %i.dh, %bb.l ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.us.i.i = load i32, ptr %.026.us27.us.i.i, align 4, !tbaa !3
  %.val.us29.us.i.i = load i32, ptr %.0..i, align 4
  %i.db = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.0.val.us28.us.i.i, i32 %.val.us29.us.i.i)
  br i1 %i.db, label %._crit_edge.i.i11.us30.us.i.i, label %bb.l

._crit_edge.i.i11.us30.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %i.dc = load i32, ptr %.026.us27.us.i.i, align 4, !tbaa !3 ; 2 uses
  %i.dd = load i32, ptr %.0..i, align 4, !tbaa !3
  store i32 %i.dd, ptr %.026.us27.us.i.i, align 4, !tbaa !3
  %i.de = load i32, ptr %i.cz, align 4, !tbaa !3  ; 2 uses
  store i32 %i.de, ptr %.0..i, align 4, !tbaa !3
  %i.df = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %i.de, i32 %i.dc)
  br i1 %i.df, label %bb.k, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i11.us30.us.i.i
  %i.dg = load i32, ptr %.0..i, align 4, !tbaa !3
  store i32 %i.dg, ptr %i.cz, align 4, !tbaa !3
  br label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.026.us27.us.i.i, i64 4 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %..017.i
  br i1 %i.di, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3088

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i: ; preds = %bb.k, %._crit_edge.i.i11.us30.us.i.i
  %.013.lcssa.i.i.i20.ph.us41.us.i.i = phi i64 [ 1, %._crit_edge.i.i11.us30.us.i.i ], [ 0, %bb.k ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.ph.us41.us.i.i
  store i32 %i.dc, ptr %i.dj, align 4, !tbaa !3
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.026.us27.i.i = phi ptr [ %i.dn, %bb.m ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.i.i = load i32, ptr %.026.us27.i.i, align 4, !tbaa !3
  %.val.us29.i.i = load i32, ptr %.0..i, align 4
  %i.dk = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.0.val.us28.i.i, i32 %.val.us29.i.i)
  br i1 %i.dk, label %._crit_edge.i.i11.us30.i.i, label %bb.m

._crit_edge.i.i11.us30.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %i.dl = load i32, ptr %.026.us27.i.i, align 4, !tbaa !3
  %i.dm = load i32, ptr %.0..i, align 4, !tbaa !3
  store i32 %i.dm, ptr %.026.us27.i.i, align 4, !tbaa !3
  store i32 %i.dl, ptr %.0..i, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i11.us30.i.i, %.lr.ph.split.split.us.split.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.026.us27.i.i, i64 4 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %..017.i
  br i1 %i.do, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3088

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.026.i.i = phi ptr [ %i.ds, %bb.n ], [ %i.l, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i32, ptr %.026.i.i, align 4, !tbaa !3
  %.val.i.i = load i32, ptr %.0..i, align 4
  %i.dp = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.0.val.i.i, i32 %.val.i.i)
  br i1 %i.dp, label %._crit_edge.i.i11.i.i, label %bb.n

._crit_edge.i.i11.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %i.dq = load i32, ptr %.026.i.i, align 4, !tbaa !3
  %i.dr = load i32, ptr %.0..i, align 4, !tbaa !3
  store i32 %i.dr, ptr %.026.i.i, align 4, !tbaa !3
  store i32 %i.dq, ptr %.0..i, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i11.i.i, %.lr.ph.split.split.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %..017.i
  br i1 %i.dt, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3088

_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_RT0_.exit.i.i
  %i.du = load i32, ptr %.0..i, align 4, !tbaa !3
  %i.dv = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.dv, ptr %.0..i, align 4, !tbaa !3
  store i32 %i.du, ptr %1, align 4, !tbaa !3
  br label %_ZSt13__introselectIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIiiiEEEEEEEvT_SB_SB_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01736.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01637.i21 = phi i64 [ %i.dx, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader ]
  %.038.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dw = phi i64 [ %i.ez, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader ]
  %i.dx = add nsw i64 %.01637.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.dy = lshr i64 %i.dw, 3
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.038.i20, i64 %i.dy ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.038.i20, i64 4 ; 6 uses
  %i.eb = getelementptr inbounds i8, ptr %.01736.i22, i64 -4 ; 7 uses
  %.val29.i.i.i = load i32, ptr %i.ea, align 4, !tbaa !3
  %.val30.i.i.i = load i32, ptr %i.dz, align 4
  %i.ec = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val29.i.i.i, i32 %.val30.i.i.i)
  %.val28.i.i.i = load i32, ptr %i.eb, align 4    ; 2 uses
  br i1 %i.ec, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val27.i.i.i = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ed = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIiiiEEEclERKiS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 %.val27.i.i.i, i32 %.val28.i.i.i)
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = load i32, ptr %.038.i20, align 4, !tbaa !3
end_hunk_13
begin_hunk_14_@_ZSt13__introselectIPllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_T0_T1_:bb.a

bb.c:                                             ; preds = %.lr.ph59
  %i.w = icmp sgt i64 %i.r, %i.v
  %i.x = icmp sgt i64 %i.v, %i.r
  %i.y = select i1 %i.e, i1 %i.w, i1 %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %.03656, align 8, !tbaa !59
  store i64 %i.r, ptr %.03656, align 8, !tbaa !59
  store i64 %i.z, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp sgt i64 %i.q, %i.v
  %i.ab = icmp sgt i64 %i.v, %i.q
  %i.ac = select i1 %i.e, i1 %i.aa, i1 %i.ab
  %i.ad = load i64, ptr %.03656, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.v, ptr %.03656, align 8, !tbaa !59
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i64 %i.q, ptr %.03656, align 8, !tbaa !59
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ae = icmp sgt i64 %i.q, %i.v
  %i.af = icmp sgt i64 %i.v, %i.q
  %i.ag = select i1 %i.e, i1 %i.ae, i1 %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %.03656, align 8, !tbaa !59
  store i64 %i.q, ptr %.03656, align 8, !tbaa !59
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp sgt i64 %i.r, %i.v
  %i.aj = icmp sgt i64 %i.v, %i.r
  %i.ak = select i1 %i.e, i1 %i.ai, i1 %i.aj
  %i.al = load i64, ptr %.03656, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.v, ptr %.03656, align 8, !tbaa !59
  store i64 %i.al, ptr %i.p, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.r, ptr %.03656, align 8, !tbaa !59
  store i64 %i.al, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.o, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.am = load i64, ptr %.03656, align 8, !tbaa !59 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i ], [ %i.ar, %bb.m ] ; 7 uses
  %i.an = load i64, ptr %.1.i.i, align 8, !tbaa !59 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, %i.am
  %i.ap = icmp sgt i64 %i.am, %i.an
  %i.aq = select i1 %i.e, i1 %i.ao, i1 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !3332

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.as = load i64, ptr %.114.i.i, align 8, !tbaa !59 ; 3 uses
  %i.at = icmp sgt i64 %i.am, %i.as
  %i.au = icmp sgt i64 %i.as, %i.am
  %i.av = select i1 %i.e, i1 %i.at, i1 %i.au
  br i1 %i.av, label %.preheader.i.i, label %bb.n, !llvm.loop !3333

bb.n:                                             ; preds = %.preheader.i.i
  %i.aw = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.aw, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEET_SA_SA_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i64 %i.as, ptr %.1.i.i, align 8, !tbaa !59
  store i64 %i.an, ptr %.114.i.i, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !3334

_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEET_SA_SA_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.ax = ptrtoint ptr %..017 to i64
  %i.ay = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 24
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !3331

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEET_SA_SA_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEET_SA_SA_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEET_SA_SA_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.ay, %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEET_SA_SA_T0_.exit ]
  %i.bb = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.019.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, %.017.lcssa
  %or.cond = select i1 %i.bb, i1 true, i1 %.not20.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.bc = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %.019.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn21.i = phi ptr [ %.022.i, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 4 uses
  %i.bd = load i64, ptr %.022.i, align 8, !tbaa !59 ; 7 uses
  %i.be = load i64, ptr %.0.lcssa, align 8, !tbaa !59 ; 3 uses
  %i.bf = icmp sgt i64 %i.bd, %i.be
  %i.bg = icmp sgt i64 %i.be, %i.bd
  %i.bh = select i1 %i.bc, i1 %i.bf, i1 %i.bg
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bi = ptrtoint ptr %.022.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa30                ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 16
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bp = icmp eq i64 %i.bj, 8
  br i1 %i.bp, label %bb.s, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 8
  store i64 %i.be, ptr %i.bq, align 8, !tbaa !59
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.br = load i64, ptr %.pn21.i, align 8, !tbaa !59 ; 3 uses
  %i.bs = icmp sgt i64 %i.bd, %i.br
  %i.bt = icmp sgt i64 %i.br, %i.bd
  %i.bu = select i1 %i.bc, i1 %i.bs, i1 %i.bt
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bv = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %i.br, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn21.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.022.i, %bb.t ]
  store i64 %i.bv, ptr %.0912.i.i, align 8, !tbaa !59
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -8 ; 2 uses
  %i.bw = load i64, ptr %.0.i.i22, align 8, !tbaa !59 ; 3 uses
  %i.bx = icmp sgt i64 %i.bd, %i.bw
  %i.by = icmp sgt i64 %i.bw, %i.bd
  %i.bz = select i1 %i.bc, i1 %i.bx, i1 %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, !llvm.loop !3335

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.022.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i64 %i.bd, ptr %.sink.i, align 8, !tbaa !59
  %.0.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !3336

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_T0_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.928") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  call void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3337, !range !234, !noundef !235
  %i.d = trunc nuw i8 %i.c to i1                  ; 7 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 3                         ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %4 = lshr i64 %i.i, 1
  %i.j = icmp sgt i64 %i.h, 2
  %i.k = and i64 %i.g, 8
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add nsw i64 %i.h, -2                     ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i64, ptr %.011.us, align 8, !tbaa !59 ; 5 uses
  %i.s = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.t = icmp sgt i64 %i.r, %i.s
  %i.u = icmp sgt i64 %i.s, %i.r
  %i.v = select i1 %i.d, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.s, ptr %.011.us, align 8, !tbaa !59
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !59  ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp sgt i64 %i.ab, %i.ac
  %i.ae = icmp sgt i64 %i.ac, %i.ab
  %i.af = select i1 %i.d, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !59
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !59
  %i.ak = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !3340

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i64, ptr %i.p, align 8, !tbaa !59
  store i64 %i.al, ptr %i.q, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1011.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1011.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i1011.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, %i.r
  %i.ap = icmp sgt i64 %i.r, %i.an
  %i.aq = select i1 %i.d, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !59
  %.not12.i.us = icmp eq i64 %.018.i.i1011.i.us, 0
  br i1 %.not12.i.us, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !3341

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.r, ptr %i.as, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_SA_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.au = icmp ult ptr %i.at, %2
  br i1 %i.au, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3342

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.av = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.av, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ax = icmp eq i64 %i.m, 0
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre28 = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ay = load i64, ptr %.011.us12.us, align 8, !tbaa !59 ; 5 uses
  %i.az = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %i.ba = icmp sgt i64 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.az, %i.ay
  %i.bc = select i1 %i.d, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.az, ptr %.011.us12.us, align 8, !tbaa !59
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !59 ; 3 uses
  store i64 %i.bd, ptr %0, align 8, !tbaa !59
  %i.be = icmp sle i64 %i.bd, %i.ay
  %i.bf = icmp sle i64 %i.ay, %i.bd
  %i.bg = select i1 %i.d, i1 %i.be, i1 %i.bf
  %spec.select = zext i1 %i.bg to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ay, ptr %i.bh, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !3342

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bk = phi i64 [ %i.bp, %bb.f ], [ %.pre28, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %.011.us12 = phi ptr [ %i.bq, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.bl = load i64, ptr %.011.us12, align 8, !tbaa !59 ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, %i.bk
  %i.bn = icmp sgt i64 %i.bk, %i.bl
  %i.bo = select i1 %i.d, i1 %i.bm, i1 %i.bn
  br i1 %i.bo, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.bk, ptr %.011.us12, align 8, !tbaa !59
  store i64 %i.bl, ptr %0, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bp = phi i64 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %2
  br i1 %i.br, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !3342

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bs = phi i64 [ %i.bx, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 4 uses
  %.011 = phi ptr [ %i.by, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bt = load i64, ptr %.011, align 8, !tbaa !59 ; 4 uses
  %i.bu = icmp sgt i64 %i.bt, %i.bs
  %i.bv = icmp sgt i64 %i.bs, %i.bt
  %i.bw = select i1 %i.d, i1 %i.bu, i1 %i.bv
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i64 %i.bs, ptr %.011, align 8, !tbaa !59
  store i64 %i.bt, ptr %0, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bx = phi i64 [ %i.bs, %.lr.ph.split.split ], [ %i.bt, %._crit_edge.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %2
  br i1 %i.bz, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3342
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_T0_SB_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.ar, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIlEEEEEEEvT_T0_SB_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
end_hunk_14
begin_hunk_15_@_ZN6duckdbL17CastExceptionTextIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.ea) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPlN6duckdb15QuantileCompareINS1_12_GLOBAL__N_111MadAccessorIlllEEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.931") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.935", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.933", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.933", align 8 ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.933", align 8 ; 21 uses
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.f = icmp sgt i64 %i.e, 24
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = lshr exact i64 %i.e, 3
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEET_SB_SB_T0_.exit.i
  %i.k = icmp eq i64 %i.dx, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !3356

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.ey                      ; 3 uses
  %i.o = ashr i64 %i.n, 3                         ; 6 uses
  %i.p = icmp slt i64 %i.o, 2
  br i1 %i.p, label %_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.q = add nsw i64 %i.o, -2                     ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 4 uses
  %i.s = add nsw i64 %i.o, -1
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = and i64 %i.n, 8
  %i.v = icmp eq i64 %i.u, 0
  %i.w = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.r
  br i1 %i.v, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.at, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i ], [ %i.r, %bb.c ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59  ; 2 uses
  %i.ab = icmp slt i64 %.014.i.us.i.i, %i.t
  br i1 %i.ab, label %.lr.ph.i.i.us.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.030.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ac = shl i64 %.030.i.i.us.i.i, 1             ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val.i.i.us.i.i = load i64, ptr %i.ae, align 8, !tbaa !59
  %.val29.i.i.us.i.i = load i64, ptr %i.ag, align 8
  %i.ah = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.us.i.i, i64 %.val29.i.i.us.i.i)
  %i.ai = or disjoint i64 %i.ac, 1
  %spec.select.i.i.us.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ad ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.030.i.i.us.i.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !59
  %i.am = icmp slt i64 %spec.select.i.i.us.i.i, %i.t
  br i1 %i.am, label %.lr.ph.i.i.us.i.i, label %.lr.ph.i.i.i.us.i.i, !llvm.loop !3357

.lr.ph.i.i.i.us.i.i:                              ; preds = %.lr.ph.i.i.us.i.i, %bb.d
  %.01318.i.i.i.us.i.i = phi i64 [ %.01923.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ] ; 3 uses
  %.019.in.i.i.i.us.i.i = add nsw i64 %.01318.i.i.i.us.i.i, -1
  %.01923.i.i.i.us.i.i = lshr i64 %.019.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01923.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i64, ptr %i.an, align 8, !tbaa !59
  %i.ao = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.us.i.i, i64 %i.aa)
  br i1 %i.ao, label %bb.d, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01318.i.i.i.us.i.i
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !59
  %i.ar = icmp samesign ugt i64 %.01923.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.ar, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i, !llvm.loop !3358

_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %.split.us.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %.split.us.i.i ], [ %.01923.i.i.i.us.i.i, %bb.d ], [ %.01318.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i64 %i.aa, ptr %i.as, align 8, !tbaa !59
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.at = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !3359

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.br, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i ], [ %i.r, %bb.c ] ; 8 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !59 ; 2 uses
  %i.aw = icmp slt i64 %.014.i.i.i, %i.t
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.ax = shl i64 %.030.i.i.i.i, 1                ; 3 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val.i.i.i.i = load i64, ptr %i.az, align 8, !tbaa !59
  %.val29.i.i.i.i = load i64, ptr %i.bb, align 8
  %i.bc = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i, i64 %.val29.i.i.i.i)
  %i.bd = or disjoint i64 %i.ax, 1
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.bd, i64 %i.ay ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.030.i.i.i.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !59
  %i.bh = icmp slt i64 %spec.select.i.i.i.i, %i.t
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3357

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.r
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !59
  store i64 %i.bj, ptr %i.y, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01318.i.i.i.i.i = phi i64 [ %.01923.i.i.i.i.i, %bb.g ], [ %.128.i.i.i.i, %bb.f ] ; 3 uses
  %.019.in.i.i.i.i.i = add nsw i64 %.01318.i.i.i.i.i, -1
  %.01923.i.i.i.i.i = lshr i64 %.019.in.i.i.i.i.i, 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01923.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !59
  %i.bm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i.i, i64 %i.av)
  br i1 %i.bm, label %bb.g, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01318.i.i.i.i.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !59
  %i.bp = icmp samesign ugt i64 %.01923.i.i.i.i.i, %.014.i.i.i
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i, !llvm.loop !3358

_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.01318.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01923.i.i.i.i.i, %bb.g ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.av, ptr %i.bq, align 8, !tbaa !59
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.br = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !3359

_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_T0_SC_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bs = icmp ult ptr %i.l, %..017.i
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_RT0_.exit.i.i
  %i.bt = add nsw i64 %i.o, -1
  %8 = lshr i64 %i.bt, 1
  %i.bu = icmp sgt i64 %i.o, 2
  %i.bv = and i64 %i.n, 8
  %i.bw = icmp eq i64 %i.bv, 0                    ; 2 uses
  %i.bx = add nsw i64 %i.o, -2                    ; 3 uses
  %i.by = ashr exact i64 %i.bx, 1                 ; 2 uses
  br i1 %i.bu, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.bz = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.by
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.026.us.i.i = phi ptr [ %i.cw, %bb.j ], [ %i.l, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i64, ptr %.026.us.i.i, align 8, !tbaa !59
  %.val.us.i.i = load i64, ptr %.0..i, align 8
  %i.cc = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us.i.i, i64 %.val.us.i.i)
  br i1 %i.cc, label %.lr.ph.i.i21.preheader.us.i.i, label %bb.j

.lr.ph.i.i21.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.cd = load i64, ptr %.026.us.i.i, align 8, !tbaa !59 ; 2 uses
  %i.ce = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.ce, ptr %.026.us.i.i, align 8, !tbaa !59
  br label %.lr.ph.i.i21.us.i.i

.lr.ph.i.i21.us.i.i:                              ; preds = %.lr.ph.i.i21.us.i.i, %.lr.ph.i.i21.preheader.us.i.i
  %.030.i.i22.us.i.i = phi i64 [ %spec.select.i.i25.us.i.i, %.lr.ph.i.i21.us.i.i ], [ 0, %.lr.ph.i.i21.preheader.us.i.i ] ; 2 uses
  %i.cf = shl i64 %.030.i.i22.us.i.i, 1           ; 3 uses
  %i.cg = add i64 %i.cf, 2                        ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.val.i.i23.us.i.i = load i64, ptr %i.ch, align 8, !tbaa !59
  %.val29.i.i24.us.i.i = load i64, ptr %i.cj, align 8
  %i.ck = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i23.us.i.i, i64 %.val29.i.i24.us.i.i)
  %i.cl = or disjoint i64 %i.cf, 1
  %spec.select.i.i25.us.i.i = select i1 %i.ck, i64 %i.cl, i64 %i.cg ; 6 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i25.us.i.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !59
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.030.i.i22.us.i.i
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !59
  %i.cp = icmp slt i64 %spec.select.i.i25.us.i.i, %8
  br i1 %i.cp, label %.lr.ph.i.i21.us.i.i, label %._crit_edge.i.i11.loopexit.us.i.i, !llvm.loop !3357

bb.h:                                             ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %.not.i13.us.i.i = icmp eq i64 %spec.select.i.i25.us.i.i, 0
  br i1 %.not.i13.us.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %i.cq = load i64, ptr %i.ca, align 8, !tbaa !59
  store i64 %i.cq, ptr %i.cb, align 8, !tbaa !59
  br label %.lr.ph.i.i.i14.us.i.i.preheader

.lr.ph.i.i.i14.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01318.i.i.i15.us.i.i.ph = phi i64 [ %spec.select.i.i25.us.i.i, %bb.h ], [ %i.bz, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i14.us.i.i

.lr.ph.i.i.i14.us.i.i:                            ; preds = %.lr.ph.i.i.i14.us.i.i.preheader, %bb.i
  %.01318.i.i.i15.us.i.i = phi i64 [ %.01923.i.i.i17.us.i.i, %bb.i ], [ %.01318.i.i.i15.us.i.i.ph, %.lr.ph.i.i.i14.us.i.i.preheader ] ; 3 uses
  %.019.in.i.i.i16.us.i.i = add nsw i64 %.01318.i.i.i15.us.i.i, -1
  %.01923.i.i.i17.us.i.i = lshr i64 %.019.in.i.i.i16.us.i.i, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01923.i.i.i17.us.i.i ; 2 uses
  %.val.i.i.i18.us.i.i = load i64, ptr %i.cr, align 8, !tbaa !59
  %i.cs = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i18.us.i.i, i64 %i.cd)
  br i1 %i.cs, label %bb.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i14.us.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !59
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01318.i.i.i15.us.i.i
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !59
  %.not7.i.us.i.i = icmp eq i64 %.01923.i.i.i17.us.i.i, 0
  br i1 %.not7.i.us.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i, !llvm.loop !3358

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i14.us.i.i, %bb.h
  %.013.lcssa.i.i.i20.us.i.i = phi i64 [ 0, %bb.h ], [ %.01318.i.i.i15.us.i.i, %.lr.ph.i.i.i14.us.i.i ], [ 0, %bb.i ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.us.i.i
  store i64 %i.cd, ptr %i.cv, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.026.us.i.i, i64 8 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %..017.i
  br i1 %i.cx, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3360

._crit_edge.i.i11.loopexit.us.i.i:                ; preds = %.lr.ph.i.i21.us.i.i
  %i.cy = icmp eq i64 %spec.select.i.i25.us.i.i, %i.by
  %or.cond.i.i = select i1 %i.bw, i1 %i.cy, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.0..i, i64 8 ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.da = icmp eq i64 %i.bx, 0
  br i1 %i.da, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.026.us27.us.i.i = phi ptr [ %i.dh, %bb.l ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.us.i.i = load i64, ptr %.026.us27.us.i.i, align 8, !tbaa !59
  %.val.us29.us.i.i = load i64, ptr %.0..i, align 8
  %i.db = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us28.us.i.i, i64 %.val.us29.us.i.i)
  br i1 %i.db, label %._crit_edge.i.i11.us30.us.i.i, label %bb.l

._crit_edge.i.i11.us30.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %i.dc = load i64, ptr %.026.us27.us.i.i, align 8, !tbaa !59 ; 2 uses
  %i.dd = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dd, ptr %.026.us27.us.i.i, align 8, !tbaa !59
  %i.de = load i64, ptr %i.cz, align 8, !tbaa !59 ; 2 uses
  store i64 %i.de, ptr %.0..i, align 8, !tbaa !59
  %i.df = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %i.de, i64 %i.dc)
  br i1 %i.df, label %bb.k, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i11.us30.us.i.i
  %i.dg = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dg, ptr %i.cz, align 8, !tbaa !59
  br label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.026.us27.us.i.i, i64 8 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %..017.i
  br i1 %i.di, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3360

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_RT0_.exit.loopexit.us40.us.i.i: ; preds = %bb.k, %._crit_edge.i.i11.us30.us.i.i
  %.013.lcssa.i.i.i20.ph.us41.us.i.i = phi i64 [ 1, %._crit_edge.i.i11.us30.us.i.i ], [ 0, %bb.k ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.ph.us41.us.i.i
  store i64 %i.dc, ptr %i.dj, align 8, !tbaa !59
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.026.us27.i.i = phi ptr [ %i.dn, %bb.m ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.i.i = load i64, ptr %.026.us27.i.i, align 8, !tbaa !59
  %.val.us29.i.i = load i64, ptr %.0..i, align 8
  %i.dk = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us28.i.i, i64 %.val.us29.i.i)
  br i1 %i.dk, label %._crit_edge.i.i11.us30.i.i, label %bb.m

._crit_edge.i.i11.us30.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %i.dl = load i64, ptr %.026.us27.i.i, align 8, !tbaa !59
  %i.dm = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dm, ptr %.026.us27.i.i, align 8, !tbaa !59
  store i64 %i.dl, ptr %.0..i, align 8, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i11.us30.i.i, %.lr.ph.split.split.us.split.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.026.us27.i.i, i64 8 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %..017.i
  br i1 %i.do, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3360

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.026.i.i = phi ptr [ %i.ds, %bb.n ], [ %i.l, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.026.i.i, align 8, !tbaa !59
  %.val.i.i = load i64, ptr %.0..i, align 8
  %i.dp = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.i.i, i64 %.val.i.i)
  br i1 %i.dp, label %._crit_edge.i.i11.i.i, label %bb.n

._crit_edge.i.i11.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %i.dq = load i64, ptr %.026.i.i, align 8, !tbaa !59
  %i.dr = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dr, ptr %.026.i.i, align 8, !tbaa !59
  store i64 %i.dq, ptr %.0..i, align 8, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i11.i.i, %.lr.ph.split.split.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %..017.i
  br i1 %i.dt, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_T0_.exit.i, !llvm.loop !3360

_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_RT0_.exit.i.i
  %i.du = load i64, ptr %.0..i, align 8, !tbaa !59
  %i.dv = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.dv, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.du, ptr %1, align 8, !tbaa !59
  br label %_ZSt13__introselectIPllN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIlllEEEEEEEvT_SB_SB_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01736.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01637.i21 = phi i64 [ %i.dx, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader ]
  %.038.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dw = phi i64 [ %i.ez, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader ]
  %i.dx = add nsw i64 %.01637.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.dy = lshr i64 %i.dw, 4
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.038.i20, i64 %i.dy ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.038.i20, i64 8 ; 6 uses
  %i.eb = getelementptr inbounds i8, ptr %.01736.i22, i64 -8 ; 7 uses
  %.val29.i.i.i = load i64, ptr %i.ea, align 8, !tbaa !59
  %.val30.i.i.i = load i64, ptr %i.dz, align 8
  %i.ec = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val29.i.i.i, i64 %.val30.i.i.i)
  %.val28.i.i.i = load i64, ptr %i.eb, align 8    ; 2 uses
  br i1 %i.ec, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val27.i.i.i = load i64, ptr %i.dz, align 8, !tbaa !59
  %i.ed = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorIlllEEEclERKlS6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val27.i.i.i, i64 %.val28.i.i.i)
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = load i64, ptr %.038.i20, align 8, !tbaa !59
end_hunk_15
begin_hunk_16_@_ZSt13__introselectIPN6duckdb6date_tElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_T1_:bb.a

bb.c:                                             ; preds = %.lr.ph59
  %i.v = icmp sgt i32 %i.q, %i.u
  %i.w = icmp sgt i32 %i.u, %i.q
  %i.x = select i1 %i.e, i1 %i.v, i1 %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.03656, align 4, !tbaa !3
  store i32 %i.q, ptr %.03656, align 4, !tbaa !3
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.m, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp sgt i32 %i.p, %i.u
  %i.z = icmp sgt i32 %i.u, %i.p
  %i.aa = select i1 %i.e, i1 %i.y, i1 %i.z
  %.sroa.0.0.copyload.i.i22.i.i = load i32, ptr %.03656, align 4, !tbaa !3 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.u, ptr %.03656, align 4, !tbaa !3
  store i32 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.o, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %.03656, align 4, !tbaa !3
  store i32 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ab = icmp sgt i32 %i.p, %i.u
  %i.ac = icmp sgt i32 %i.u, %i.p
  %i.ad = select i1 %i.e, i1 %i.ab, i1 %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i24.i.i = load i32, ptr %.03656, align 4, !tbaa !3
  store i32 %i.p, ptr %.03656, align 4, !tbaa !3
  store i32 %.sroa.0.0.copyload.i.i24.i.i, ptr %i.n, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp sgt i32 %i.q, %i.u
  %i.af = icmp sgt i32 %i.u, %i.q
  %i.ag = select i1 %i.e, i1 %i.ae, i1 %i.af
  %.sroa.0.0.copyload.i.i25.i.i = load i32, ptr %.03656, align 4, !tbaa !3 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.u, ptr %.03656, align 4, !tbaa !3
  store i32 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.o, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %.03656, align 4, !tbaa !3
  store i32 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.m, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i

_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.am, %bb.o ], [ %i.n, %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %i.ah = load i32, ptr %.03656, align 4, !tbaa !3 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i ], [ %i.am, %bb.m ] ; 7 uses
  %i.ai = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ah
  %i.ak = icmp sgt i32 %i.ah, %i.ai
  %i.al = select i1 %i.e, i1 %i.aj, i1 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.al, label %bb.m, label %.preheader.i.i, !llvm.loop !3881

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.an = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 3 uses
  %i.ao = icmp sgt i32 %i.ah, %i.an
  %i.ap = icmp sgt i32 %i.an, %i.ah
  %i.aq = select i1 %i.e, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %.preheader.i.i, label %bb.n, !llvm.loop !3882

bb.n:                                             ; preds = %.preheader.i.i
  %i.ar = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ar, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.an, ptr %.1.i.i, align 4, !tbaa !3
  store i32 %i.ai, ptr %.114.i.i, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i, !llvm.loop !3883

_ZSt27__unguarded_partition_pivotIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.as = ptrtoint ptr %..017 to i64
  %i.at = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp sgt i64 %i.au, 12
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !3880

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.at, %_ZSt27__unguarded_partition_pivotIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ]
  %i.aw = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.020.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not21.i = icmp eq ptr %.020.i, %.017.lcssa
  %or.cond = select i1 %i.aw, i1 true, i1 %.not21.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.ax = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i
  %.023.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i ], [ %.020.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn22.i = phi ptr [ %.023.i, %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 4 uses
  %i.ay = load i32, ptr %.023.i, align 4, !tbaa !3 ; 7 uses
  %i.az = load i32, ptr %.0.lcssa, align 4, !tbaa !3 ; 3 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  %i.bb = icmp sgt i32 %i.az, %i.ay
  %i.bc = select i1 %i.ax, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bd = ptrtoint ptr %.023.i to i64
  %i.be = sub i64 %i.bd, %.lcssa30                ; 3 uses
  %i.bf = ashr exact i64 %i.be, 2                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 8
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bj, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa, i64 %i.be, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bk = icmp eq i64 %i.be, 4
  br i1 %i.bk, label %bb.s, label %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 4
  store i32 %i.az, ptr %i.bl, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.bm = load i32, ptr %.pn22.i, align 4, !tbaa !3 ; 3 uses
  %i.bn = icmp sgt i32 %i.ay, %i.bm
  %i.bo = icmp sgt i32 %i.bm, %i.ay
  %i.bp = select i1 %i.ax, i1 %i.bn, i1 %i.bo
  br i1 %i.bp, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bq = phi i32 [ %i.br, %.lr.ph.i.i ], [ %i.bm, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn22.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.023.i, %bb.t ]
  store i32 %i.bq, ptr %.0912.i.i, align 4, !tbaa !3
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -4 ; 2 uses
  %i.br = load i32, ptr %.0.i.i22, align 4, !tbaa !3 ; 3 uses
  %i.bs = icmp sgt i32 %i.ay, %i.br
  %i.bt = icmp sgt i32 %i.br, %i.ay
  %i.bu = select i1 %i.ax, i1 %i.bs, i1 %i.bt
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i, !llvm.loop !3884

_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.023.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i32 %i.ay, ptr %.sink.i, align 4, !tbaa !3
  %.0.i = getelementptr inbounds nuw i8, ptr %.023.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit, label %.lr.ph.i, !llvm.loop !3885

_ZSt16__insertion_sortIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit: ; preds = %_ZSt13move_backwardIPN6duckdb6date_tES2_ET0_T_S4_S3_.exit.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1102") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  call void @_ZSt11__make_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3886, !range !234, !noundef !235
  %i.d = trunc nuw i8 %i.c to i1                  ; 7 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 2                         ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %4 = lshr i64 %i.i, 1
  %i.j = icmp sgt i64 %i.h, 2
  %i.k = and i64 %i.g, 4
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add nsw i64 %i.h, -2                     ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i32, ptr %.011.us, align 4, !tbaa !3 ; 5 uses
  %i.s = load i32, ptr %0, align 4, !tbaa !3      ; 3 uses
  %i.t = icmp sgt i32 %i.r, %i.s
  %i.u = icmp sgt i32 %i.s, %i.r
  %i.v = select i1 %i.d, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.s, ptr %.011.us, align 4, !tbaa !3
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  %i.ae = icmp sgt i32 %i.ac, %i.ab
  %i.af = select i1 %i.d, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.us
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !3
  %i.ak = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !3889

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i32, ptr %i.p, align 4, !tbaa !3
  store i32 %i.al, ptr %i.q, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1112.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1112.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i1112.i.us
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 3 uses
  %i.ao = icmp sgt i32 %i.an, %i.r
  %i.ap = icmp sgt i32 %i.r, %i.an
  %i.aq = select i1 %i.d, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i32 %i.an, ptr %i.ar, align 4, !tbaa !3
  %.not13.i.us = icmp eq i64 %.018.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !3890

_ZSt10__pop_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i32 %i.r, ptr %i.as, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 4 ; 2 uses
  %i.au = icmp ult ptr %i.at, %2
  br i1 %i.au, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3891

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.av = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.av, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !3
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ax = icmp eq i64 %i.m, 0
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre28 = load i32, ptr %0, align 4, !tbaa !3
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ay = load i32, ptr %.011.us12.us, align 4, !tbaa !3 ; 5 uses
  %i.az = load i32, ptr %0, align 4, !tbaa !3     ; 3 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  %i.bb = icmp sgt i32 %i.az, %i.ay
  %i.bc = select i1 %i.d, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.az, ptr %.011.us12.us, align 4, !tbaa !3
  %i.bd = load i32, ptr %i.aw, align 4, !tbaa !3  ; 3 uses
  store i32 %i.bd, ptr %0, align 4, !tbaa !3
  %i.be = icmp sle i32 %i.bd, %i.ay
  %i.bf = icmp sle i32 %i.ay, %i.bd
  %i.bg = select i1 %i.d, i1 %i.be, i1 %i.bf
  %spec.select = zext i1 %i.bg to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  store i32 %i.ay, ptr %i.bh, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 4 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !3891

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bk = phi i32 [ %i.bp, %bb.f ], [ %.pre28, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %.011.us12 = phi ptr [ %i.bq, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.bl = load i32, ptr %.011.us12, align 4, !tbaa !3 ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, %i.bk
  %i.bn = icmp sgt i32 %i.bk, %i.bl
  %i.bo = select i1 %i.d, i1 %i.bm, i1 %i.bn
  br i1 %i.bo, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i32 %i.bk, ptr %.011.us12, align 4, !tbaa !3
  store i32 %i.bl, ptr %0, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bp = phi i32 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.us12, i64 4 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %2
  br i1 %i.br, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !3891

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bs = phi i32 [ %i.bx, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 4 uses
  %.011 = phi ptr [ %i.by, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bt = load i32, ptr %.011, align 4, !tbaa !3  ; 4 uses
  %i.bu = icmp sgt i32 %i.bt, %i.bs
  %i.bv = icmp sgt i32 %i.bs, %i.bt
  %i.bw = select i1 %i.d, i1 %i.bu, i1 %i.bv
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i32 %i.bs, ptr %.011, align 4, !tbaa !3
  store i32 %i.bt, ptr %0, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bx = phi i32 [ %i.bs, %.lr.ph.split.split ], [ %i.bt, %._crit_edge.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %2
  br i1 %i.bz, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3891
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.aq, %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
end_hunk_16
begin_hunk_17_@_ZSt11nth_elementIPN6duckdb6date_tENS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEvT_SA_SA_T0_:bb.a
  %sext.i20.i.i.i = shl i64 %i.by, 32
  %i.cg = ashr exact i64 %sext.i20.i.i.i, 32
  %i.ch = add nsw i64 %i.ce, %i.cg                ; 2 uses
  %i.ci = sdiv i64 %i.bw, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i6.i21.i.i.i = mul nsw i64 %i.ci, -86400000000
  %i.cj = add i64 %.neg.i8.i.i.i.i6.i21.i.i.i, %i.bw
  %i.ck = ashr i64 %i.bv, 32
  %i.cl = add nsw i64 %i.ci, %i.ck                ; 2 uses
  %i.cm = sdiv i64 %i.cl, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i7.i22.i.i.i = mul nsw i64 %i.cm, -30
  %i.cn = add nsw i64 %.neg16.i9.i.i.i.i7.i22.i.i.i, %i.cl ; 2 uses
  %sext16.i23.i.i.i = shl i64 %i.bv, 32
  %i.co = ashr exact i64 %sext16.i23.i.i.i, 32
  %i.cp = add nsw i64 %i.cm, %i.co                ; 2 uses
  %i.cq = icmp sgt i64 %i.ch, %i.cp
  br i1 %i.cq, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cr = icmp slt i64 %i.ch, %i.cp
  br i1 %i.cr, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = icmp sgt i64 %i.cf, %i.cn
  br i1 %i.cs, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ct = icmp sge i64 %i.cf, %i.cn
  %i.cu = icmp sgt i64 %i.cb, %i.cj
  %spec.select.i.i.i.i8.i24.i.i.i = select i1 %i.ct, i1 %i.cu, i1 false
  %cond.fr41.i.i.i = freeze i1 %spec.select.i.i.i.i8.i24.i.i.i
  br i1 %cond.fr41.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.i.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i.i
  %i.cv = or disjoint i64 %i.bp, 1
  br label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.i.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread.i.i.i, %bb.i, %bb.g
  %i.cw = phi i64 [ %i.cv, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread.i.i.i ], [ %i.bq, %bb.g ], [ %i.bq, %bb.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.029.i.i.i.i
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !3
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !3
  %i.da = icmp slt i64 %i.cw, %i.u
  br i1 %i.da, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3906

._crit_edge.i.i.i.i:                              ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.us.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %bb.d ], [ %i.bk, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.us.i.i.i ], [ %i.cw, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit32.thread39.i.i.i ] ; 2 uses
  %i.db = icmp eq i64 %.0.lcssa.i.i.i.i, %i.s
  %or.cond.i.i.i = select i1 %i.w, i1 %i.db, i1 false
  br i1 %or.cond.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dc = load i32, ptr %i.y, align 4, !tbaa !3
  store i32 %i.dc, ptr %i.z, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.x, %bb.j ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.dd = icmp samesign ugt i64 %.1.i.i.i.i, %.014.i.i.i
  br i1 %i.dd, label %.lr.ph.i.i.preheader.i.i.i, label %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.k
  br i1 %i.aa, label %.lr.ph.i.i.us.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.i.preheader.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i
  %.01316.i.i.us.i.i.i = phi i64 [ %.01721.i.i.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i ], [ %.1.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 4 uses
  %.017.in.i.i.us.i.i.i = add nsw i64 %.01316.i.i.us.i.i.i, -1
  %.01721.i.i.us.i.i.i = lshr i64 %.017.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.01721.i.i.us.i.i.i ; 2 uses
  %.val.i.i.us.i.i.i = load i32, ptr %i.de, align 4, !tbaa !3
  %i.df = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.sroa.0.0.copyload.i.i.i, i32 %.val.i.i.us.i.i.i) ; 2 uses
  %i.dg = extractvalue { i64, i64 } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { i64, i64 } %i.df, 1      ; 2 uses
  %i.di = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.sroa.2.0.copyload.i.i.i, i32 %.sroa.01.0.copyload.i.i.i) ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { i64, i64 } %i.di, 1      ; 2 uses
  %i.dl = sdiv i64 %i.dh, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.dl, -86400000000
  %i.dm = add i64 %.neg.i.i.i.i.i.i.us.i.i.i, %i.dh
  %i.dn = ashr i64 %i.dg, 32
  %i.do = add nsw i64 %i.dl, %i.dn                ; 2 uses
  %i.dp = sdiv i64 %i.do, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.dp, -30
  %i.dq = add nsw i64 %.neg16.i.i.i.i.i.i.us.i.i.i, %i.do ; 2 uses
  %sext18.i.us.i.i.i = shl i64 %i.dg, 32
  %i.dr = ashr exact i64 %sext18.i.us.i.i.i, 32
  %i.ds = add nsw i64 %i.dp, %i.dr                ; 2 uses
  %i.dt = sdiv i64 %i.dk, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.dt, -86400000000
  %i.du = add i64 %.neg.i8.i.i.i.i.i.us.i.i.i, %i.dk
  %i.dv = ashr i64 %i.dj, 32
  %i.dw = add nsw i64 %i.dt, %i.dv                ; 2 uses
  %i.dx = sdiv i64 %i.dw, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.dx, -30
  %i.dy = add nsw i64 %.neg16.i9.i.i.i.i.i.us.i.i.i, %i.dw ; 2 uses
  %sext20.i.us.i.i.i = shl i64 %i.dj, 32
  %i.dz = ashr exact i64 %sext20.i.us.i.i.i, 32
  %i.ea = add nsw i64 %i.dx, %i.dz                ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, %i.ea
  br i1 %i.eb, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ec = icmp slt i64 %i.ds, %i.ea
  br i1 %i.ec, label %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = icmp sgt i64 %i.dq, %i.dy
  br i1 %i.ed, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.us.i.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.us.i.i.i: ; preds = %bb.m
  %i.ee = icmp sge i64 %i.dq, %i.dy
  %i.ef = icmp sgt i64 %i.dm, %i.du
  %spec.select.i.i.i.i.i.us.i.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %spec.select.i.i.i.i.i.us.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i, label %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.us.i.i.i, %bb.m, %.lr.ph.i.i.us.i.i.i
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.01316.i.i.us.i.i.i
  %i.eh = load i32, ptr %i.de, align 4, !tbaa !3
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !3
  %i.ei = icmp samesign ugt i64 %.01721.i.i.us.i.i.i, %.014.i.i.i
  br i1 %i.ei, label %.lr.ph.i.i.us.i.i.i, label %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i, !llvm.loop !3907

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.preheader.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i
  %.01316.i.i.i.i.i = phi i64 [ %.01721.i.i.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i ], [ %.1.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 4 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.01721.i.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 4 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.01721.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.ek = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.sroa.0.0.copyload.i.i.i, i32 %.val.i.i.i.i.i) ; 2 uses
  %i.el = extractvalue { i64, i64 } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { i64, i64 } %i.ek, 1      ; 2 uses
  %i.en = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.sroa.2.0.copyload.i.i.i, i32 %.sroa.01.0.copyload.i.i.i) ; 2 uses
  %i.eo = extractvalue { i64, i64 } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { i64, i64 } %i.en, 1      ; 2 uses
  %i.eq = sdiv i64 %i.ep, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i4.i.i.i.i = mul nsw i64 %i.eq, -86400000000
  %i.er = add i64 %.neg.i.i.i.i.i4.i.i.i.i, %i.ep
  %i.es = ashr i64 %i.eo, 32
  %i.et = add nsw i64 %i.eq, %i.es                ; 2 uses
  %i.eu = sdiv i64 %i.et, 30                      ; 2 uses
  %.neg16.i.i.i.i.i5.i.i.i.i = mul nsw i64 %i.eu, -30
  %i.ev = add nsw i64 %.neg16.i.i.i.i.i5.i.i.i.i, %i.et ; 2 uses
  %sext.i.i.i.i = shl i64 %i.eo, 32
  %i.ew = ashr exact i64 %sext.i.i.i.i, 32
  %i.ex = add nsw i64 %i.eu, %i.ew                ; 2 uses
  %i.ey = sdiv i64 %i.em, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i6.i.i.i.i = mul nsw i64 %i.ey, -86400000000
  %i.ez = add i64 %.neg.i8.i.i.i.i6.i.i.i.i, %i.em
  %i.fa = ashr i64 %i.el, 32
  %i.fb = add nsw i64 %i.ey, %i.fa                ; 2 uses
  %i.fc = sdiv i64 %i.fb, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i7.i.i.i.i = mul nsw i64 %i.fc, -30
  %i.fd = add nsw i64 %.neg16.i9.i.i.i.i7.i.i.i.i, %i.fb ; 2 uses
  %sext16.i.i.i.i = shl i64 %i.el, 32
  %i.fe = ashr exact i64 %sext16.i.i.i.i, 32
  %i.ff = add nsw i64 %i.fc, %i.fe                ; 2 uses
  %i.fg = icmp sgt i64 %i.ex, %i.ff
  br i1 %i.fg, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fh = icmp slt i64 %i.ex, %i.ff
  br i1 %i.fh, label %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = icmp sgt i64 %i.ev, %i.fd
  br i1 %i.fi, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = icmp sge i64 %i.ev, %i.fd
  %i.fk = icmp sgt i64 %i.er, %i.ez
  %spec.select.i.i.i.i8.i.i.i.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %spec.select.i.i.i.i8.i.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i, label %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.01316.i.i.i.i.i
  %i.fm = load i32, ptr %i.ej, align 4, !tbaa !3
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !3
  %i.fn = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i, !llvm.loop !3907

_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i, %bb.p, %bb.n, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.us.i.i.i, %bb.l, %bb.k
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.k ], [ %.01721.i.i.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i.i ], [ %.01316.i.i.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.us.i.i.i ], [ %.01316.i.i.us.i.i.i, %bb.l ], [ %.01316.i.i.i.i.i, %bb.p ], [ %.01316.i.i.i.i.i, %bb.n ], [ %.01721.i.i.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.i.i.i ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.013.lcssa.i.i.i.i.i
  store i32 %.sroa.01.0.copyload.i.i.i, ptr %i.fo, align 4, !tbaa !3
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.fp = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_SE_RT0_.exit.i.i, label %bb.d, !llvm.loop !3908

_ZSt11__make_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_SE_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPN6duckdb6date_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_T0_SF_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.fq = icmp ult ptr %i.m, %.01778.i.lcssa
  br i1 %i.fq, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_SE_SE_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_SE_RT0_.exit.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %5, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %.sroa.7.0.copyload.fr.i.i = freeze i8 %.sroa.7.0.copyload.i.i
  %i.fr = add nsw i64 %i.p, -1
  %7 = lshr i64 %i.fr, 1                          ; 2 uses
  %i.fs = icmp sgt i64 %i.p, 2
  %i.ft = trunc i8 %.sroa.7.0.copyload.fr.i.i to i1 ; 2 uses
  %i.fu = and i64 %i.o, 4
  %i.fv = icmp eq i64 %i.fu, 0                    ; 2 uses
  %i.fw = add nsw i64 %i.p, -2                    ; 3 uses
  %i.fx = ashr exact i64 %i.fw, 1                 ; 2 uses
  %i.fy = icmp eq i64 %i.fw, 0
  %or.cond116.i.i = select i1 %i.fv, i1 %i.fy, i1 false
  %i.fz = or disjoint i64 %i.fw, 1                ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.fx
  br label %bb.q

bb.q:                                             ; preds = %bb.ad, %.lr.ph.i.i
  %.060.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.ln, %bb.ad ] ; 4 uses
  %.0.val.i.i = load i32, ptr %.060.i.i, align 4, !tbaa !3
  %i.gc = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i32 %.0.val.i.i, ptr noundef nonnull readonly align 4 dereferenceable(4) %.080.i.lcssa)
  br i1 %i.gc, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %.sroa.01.0.copyload.i11.i.i = load i32, ptr %.060.i.i, align 4, !tbaa !3 ; 3 uses
  %i.gd = load i32, ptr %.080.i.lcssa, align 4, !tbaa !3
  store i32 %i.gd, ptr %.060.i.i, align 4, !tbaa !3
  br i1 %i.fs, label %.lr.ph.i.i23.preheader.i.i, label %._crit_edge.i.i12.thread.i.i

.lr.ph.i.i23.preheader.i.i:                       ; preds = %bb.r
  br i1 %i.ft, label %.lr.ph.i.i23.us.i.i, label %.lr.ph.i.i23.i.i

.lr.ph.i.i23.us.i.i:                              ; preds = %.lr.ph.i.i23.preheader.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i
  %.029.i.i24.us.i.i = phi i64 [ %i.hl, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i ], [ 0, %.lr.ph.i.i23.preheader.i.i ] ; 2 uses
  %i.ge = shl i64 %.029.i.i24.us.i.i, 1           ; 3 uses
  %i.gf = add i64 %i.ge, 2                        ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %.val.i.i25.us.i.i = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gj = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i32 %.val.i.i25.us.i.i) ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0      ; 2 uses
  %i.gl = extractvalue { i64, i64 } %i.gj, 1      ; 2 uses
  %.val.i26.us.i.i = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gm = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5.0.copyload.i.i, i32 %.val.i26.us.i.i) ; 2 uses
  %i.gn = extractvalue { i64, i64 } %i.gm, 0      ; 2 uses
  %i.go = extractvalue { i64, i64 } %i.gm, 1      ; 2 uses
  %i.gp = sdiv i64 %i.gl, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i34.us.i.i = mul nsw i64 %i.gp, -86400000000
  %i.gq = add i64 %.neg.i.i.i.i.i.i34.us.i.i, %i.gl
  %i.gr = ashr i64 %i.gk, 32
  %i.gs = add nsw i64 %i.gp, %i.gr                ; 2 uses
  %i.gt = sdiv i64 %i.gs, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i35.us.i.i = mul nsw i64 %i.gt, -30
  %i.gu = add nsw i64 %.neg16.i.i.i.i.i.i35.us.i.i, %i.gs ; 2 uses
  %sext18.i36.us.i.i = shl i64 %i.gk, 32
  %i.gv = ashr exact i64 %sext18.i36.us.i.i, 32
  %i.gw = add nsw i64 %i.gt, %i.gv                ; 2 uses
  %i.gx = sdiv i64 %i.go, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i37.us.i.i = mul nsw i64 %i.gx, -86400000000
  %i.gy = add i64 %.neg.i8.i.i.i.i.i37.us.i.i, %i.go
  %i.gz = ashr i64 %i.gn, 32
  %i.ha = add nsw i64 %i.gx, %i.gz                ; 2 uses
  %i.hb = sdiv i64 %i.ha, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i38.us.i.i = mul nsw i64 %i.hb, -30
  %i.hc = add nsw i64 %.neg16.i9.i.i.i.i.i38.us.i.i, %i.ha ; 2 uses
  %sext20.i39.us.i.i = shl i64 %i.gn, 32
  %i.hd = ashr exact i64 %sext20.i39.us.i.i, 32
  %i.he = add nsw i64 %i.hb, %i.hd                ; 2 uses
  %i.hf = icmp sgt i64 %i.gw, %i.he
  br i1 %i.hf, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.us.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i23.us.i.i
  %i.hg = icmp slt i64 %i.gw, %i.he
  br i1 %i.hg, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hh = icmp sgt i64 %i.gu, %i.hc
  br i1 %i.hh, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.us.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.us.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.us.i.i: ; preds = %bb.t
  %i.hi = icmp sge i64 %i.gu, %i.hc
  %i.hj = icmp sgt i64 %i.gq, %i.gy
  %spec.select.i.i.i.i.i40.us.i.i = select i1 %i.hi, i1 %i.hj, i1 false
  %cond.fr.us.i.i = freeze i1 %spec.select.i.i.i.i.i40.us.i.i
  br i1 %cond.fr.us.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.us.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.us.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.us.i.i, %bb.t, %.lr.ph.i.i23.us.i.i
  %i.hk = or disjoint i64 %i.ge, 1
  br label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.us.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.us.i.i, %bb.s
  %i.hl = phi i64 [ %i.hk, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.us.i.i ], [ %i.gf, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.us.i.i ], [ %i.gf, %bb.s ] ; 4 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.hl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.029.i.i24.us.i.i
  %i.ho = load i32, ptr %i.hm, align 4, !tbaa !3
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !3
  %i.hp = icmp slt i64 %i.hl, %7
  br i1 %i.hp, label %.lr.ph.i.i23.us.i.i, label %._crit_edge.i.i12.i.i, !llvm.loop !3906

.lr.ph.i.i23.i.i:                                 ; preds = %.lr.ph.i.i23.preheader.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i
  %.029.i.i24.i.i = phi i64 [ %i.ix, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i ], [ 0, %.lr.ph.i.i23.preheader.i.i ] ; 2 uses
  %i.hq = shl i64 %.029.i.i24.i.i, 1              ; 3 uses
  %i.hr = add i64 %i.hq, 2                        ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.hq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %.val.i.i25.i.i = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hv = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i32 %.val.i.i25.i.i) ; 2 uses
  %i.hw = extractvalue { i64, i64 } %i.hv, 0      ; 2 uses
  %i.hx = extractvalue { i64, i64 } %i.hv, 1      ; 2 uses
  %.val.i26.i.i = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hy = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5.0.copyload.i.i, i32 %.val.i26.i.i) ; 2 uses
  %i.hz = extractvalue { i64, i64 } %i.hy, 0      ; 2 uses
  %i.ia = extractvalue { i64, i64 } %i.hy, 1      ; 2 uses
  %i.ib = sdiv i64 %i.ia, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i4.i27.i.i = mul nsw i64 %i.ib, -86400000000
  %i.ic = add i64 %.neg.i.i.i.i.i4.i27.i.i, %i.ia
  %i.id = ashr i64 %i.hz, 32
  %i.ie = add nsw i64 %i.ib, %i.id                ; 2 uses
  %i.if = sdiv i64 %i.ie, 30                      ; 2 uses
  %.neg16.i.i.i.i.i5.i28.i.i = mul nsw i64 %i.if, -30
  %i.ig = add nsw i64 %.neg16.i.i.i.i.i5.i28.i.i, %i.ie ; 2 uses
  %sext.i29.i.i = shl i64 %i.hz, 32
  %i.ih = ashr exact i64 %sext.i29.i.i, 32
  %i.ii = add nsw i64 %i.if, %i.ih                ; 2 uses
  %i.ij = sdiv i64 %i.hx, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i6.i30.i.i = mul nsw i64 %i.ij, -86400000000
  %i.ik = add i64 %.neg.i8.i.i.i.i6.i30.i.i, %i.hx
  %i.il = ashr i64 %i.hw, 32
  %i.im = add nsw i64 %i.ij, %i.il                ; 2 uses
  %i.in = sdiv i64 %i.im, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i7.i31.i.i = mul nsw i64 %i.in, -30
  %i.io = add nsw i64 %.neg16.i9.i.i.i.i7.i31.i.i, %i.im ; 2 uses
  %sext16.i32.i.i = shl i64 %i.hw, 32
  %i.ip = ashr exact i64 %sext16.i32.i.i, 32
  %i.iq = add nsw i64 %i.in, %i.ip                ; 2 uses
  %i.ir = icmp sgt i64 %i.ii, %i.iq
  br i1 %i.ir, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i23.i.i
  %i.is = icmp slt i64 %i.ii, %i.iq
  br i1 %i.is, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.it = icmp sgt i64 %i.ig, %i.io
  br i1 %i.it, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iu = icmp sge i64 %i.ig, %i.io
  %i.iv = icmp sgt i64 %i.ic, %i.ik
  %spec.select.i.i.i.i8.i33.i.i = select i1 %i.iu, i1 %i.iv, i1 false
  %cond.fr50.i.i = freeze i1 %spec.select.i.i.i.i8.i33.i.i
  br i1 %cond.fr50.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i23.i.i
  %i.iw = or disjoint i64 %i.hq, 1
  br label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.i.i, %bb.w, %bb.u
  %i.ix = phi i64 [ %i.iw, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread.i.i ], [ %i.hr, %bb.u ], [ %i.hr, %bb.w ] ; 4 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %i.ix
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.029.i.i24.i.i
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !3
  store i32 %i.ja, ptr %i.iz, align 4, !tbaa !3
  %i.jb = icmp slt i64 %i.ix, %7
  br i1 %i.jb, label %.lr.ph.i.i23.i.i, label %._crit_edge.i.i12.i.i, !llvm.loop !3906

._crit_edge.i.i12.i.i:                            ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i
  %.0.lcssa.i.i13.i.i = phi i64 [ %i.hl, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.us.i.i ], [ %i.ix, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit41.thread48.i.i ] ; 3 uses
  %i.jc = icmp eq i64 %.0.lcssa.i.i13.i.i, %i.fx
  %or.cond.i.i = select i1 %i.fv, i1 %i.jc, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i.i, label %bb.x

._crit_edge.i.i12.thread.i.i:                     ; preds = %bb.r
  br i1 %or.cond116.i.i, label %.thread.i.i.i, label %_ZSt10__pop_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_SE_SE_RT0_.exit.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i12.thread.i.i, %._crit_edge.i.i12.i.i
  %i.jd = load i32, ptr %i.ga, align 4, !tbaa !3
  store i32 %i.jd, ptr %i.gb, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i15.i.i

bb.x:                                             ; preds = %._crit_edge.i.i12.i.i
  %.not.i14.i.i = icmp eq i64 %.0.lcssa.i.i13.i.i, 0
  br i1 %.not.i14.i.i, label %_ZSt10__pop_heapIPN6duckdb6date_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tENS0_11timestamp_tEEEEEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.preheader.i15.i.i

.lr.ph.i.i.preheader.i15.i.i:                     ; preds = %bb.x, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.fz, %.thread.i.i.i ], [ %.0.lcssa.i.i13.i.i, %bb.x ] ; 2 uses
  br i1 %i.ft, label %.lr.ph.i.i.i16.us.i.i, label %.lr.ph.i.i.i16.i.i

.lr.ph.i.i.i16.us.i.i:                            ; preds = %.lr.ph.i.i.preheader.i15.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i
  %.01316.i.i.i17.us.i.i = phi i64 [ %.01721.i.i.i19.us.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEEEclERKS3_S9_.exit.thread.us.i.i ], [ %.1.i11.i.i.i, %.lr.ph.i.i.preheader.i15.i.i ] ; 4 uses
  %.017.in.i.i.i18.us.i.i = add nsw i64 %.01316.i.i.i17.us.i.i, -1
  %.01721.i.i.i19.us.i.i = lshr i64 %.017.in.i.i.i18.us.i.i, 1 ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.080.i.lcssa, i64 %.01721.i.i.i19.us.i.i ; 2 uses
  %.val.i.i.i20.us.i.i = load i32, ptr %i.je, align 4, !tbaa !3
  %i.jf = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i32 %.val.i.i.i20.us.i.i) ; 2 uses
  %i.jg = extractvalue { i64, i64 } %i.jf, 0      ; 2 uses
  %i.jh = extractvalue { i64, i64 } %i.jf, 1      ; 2 uses
  %i.ji = tail call fastcc { i64, i64 } @_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEclERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5.0.copyload.i.i, i32 %.sroa.01.0.copyload.i11.i.i) ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.ji, 0      ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.ji, 1      ; 2 uses
  %i.jl = sdiv i64 %i.jh, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.us.i.i = mul nsw i64 %i.jl, -86400000000
end_hunk_17
begin_hunk_18_@_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb6date_tEENS3_8SkipLessIS5_EEE14_adjRemoveRefsEmPS8_:bb.a
  %i.cp = add nuw i64 %.322, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cp, %i.bp
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph23, !llvm.loop !4024

._crit_edge:                                      ; preds = %.lr.ph23, %.lr.ph23.prol.loopexit
  %i.cq = add i64 %.promoted, %i.bp
  %i.cr = sub i64 %i.cq, %.2
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !3991
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.critedge
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPmN6duckdb15QuantileCompareINS1_16QuantileComposedINS1_12_GLOBAL__N_111MadAccessorINS1_6date_tENS1_10interval_tENS1_11timestamp_tEEENS1_16QuantileIndirectIS6_EEEEEEEvT_SE_SE_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.1152") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1156", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1154", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1154", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1154", align 8 ; 21 uses
  %i.c = icmp eq ptr %0, %2
  %i.d = icmp eq ptr %1, %2
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.h = icmp sgt i64 %i.g, 24
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = lshr exact i64 %i.g, 3
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEET_SI_SI_T0_.exit.i
  %i.m = icmp eq i64 %i.dz, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !4025

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.fa                      ; 3 uses
  %i.q = ashr i64 %i.p, 3                         ; 6 uses
  %i.r = icmp slt i64 %i.q, 2
  br i1 %i.r, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.s = add nsw i64 %i.q, -2                     ; 2 uses
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = add nsw i64 %i.q, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = and i64 %i.p, 8
  %i.x = icmp eq i64 %i.w, 0
  %i.y = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.t
  br i1 %i.x, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.av, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.us.i.i ], [ %i.t, %bb.c ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp slt i64 %.014.i.us.i.i, %i.v
  br i1 %i.ad, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.thread.i.i

._crit_edge.i.i.us.thread.i.i:                    ; preds = %.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.029.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ae = shl i64 %.029.i.i.us.i.i, 1             ; 3 uses
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.us.i.i = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.aj = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ai)
  %i.ak = or disjoint i64 %i.ae, 1
  %spec.select.i.i.us.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.af ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.us.i.i
  store i64 %i.am, ptr %i.an, align 8, !tbaa !59
  %i.ao = icmp slt i64 %spec.select.i.i.us.i.i, %i.v
  br i1 %i.ao, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.i.i, !llvm.loop !4026

._crit_edge.i.i.us.i.i:                           ; preds = %.lr.ph.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.us.i.i
  %.01316.i.i.i.us.i.i = phi i64 [ %.01721.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %._crit_edge.i.i.us.i.i ] ; 3 uses
  %.017.in.i.i.i.us.i.i = add nsw i64 %.01316.i.i.i.us.i.i, -1
  %.01721.i.i.i.us.i.i = lshr i64 %.017.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.aq = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.aq, label %bb.d, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.us.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !59
  %i.at = icmp samesign ugt i64 %.01721.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.us.i.i, !llvm.loop !4027

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %._crit_edge.i.i.us.thread.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %._crit_edge.i.i.us.thread.i.i ], [ %.01316.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ], [ %.01721.i.i.i.us.i.i, %bb.d ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i64 %i.ac, ptr %i.au, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.av = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !4028

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.bt, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59 ; 2 uses
  %i.ay = icmp slt i64 %.014.i.i.i, %i.v
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.az = shl i64 %.029.i.i.i.i, 1                ; 3 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.be = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.bd)
  %i.bf = or disjoint i64 %i.az, 1
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %i.ba ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.i.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !59
  %i.bj = icmp slt i64 %spec.select.i.i.i.i, %i.v
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4026

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.t
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !59
  store i64 %i.bl, ptr %i.aa, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.y, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !59
  %i.bm = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01316.i.i.i.i.i = phi i64 [ %.01721.i.i.i.i.i, %bb.g ], [ %.128.i.i.i.i, %bb.f ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.01721.i.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bo = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.bo, label %bb.g, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !59
  %i.br = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.i.i, !llvm.loop !4027

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01721.i.i.i.i.i, %bb.g ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ax, ptr %i.bs, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.bt = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !4028

_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SJ_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bu = icmp ult ptr %i.n, %..017.i
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_RT0_.exit.i.i
  %i.bv = add nsw i64 %i.q, -1
  %8 = lshr i64 %i.bv, 1
  %i.bw = icmp sgt i64 %i.q, 2
  %i.bx = and i64 %i.p, 8
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  %i.bz = add nsw i64 %i.q, -2                    ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 1                 ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.cb = or disjoint i64 %i.bz, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ca
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.025.us.i.i = phi ptr [ %i.cy, %bb.j ], [ %i.n, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i64, ptr %.025.us.i.i, align 8, !tbaa !59
  %i.ce = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.ce, label %.lr.ph.i.i21.preheader.us.i.i, label %bb.j

.lr.ph.i.i21.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.cf = load i64, ptr %.025.us.i.i, align 8, !tbaa !59 ; 3 uses
  %i.cg = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.cg, ptr %.025.us.i.i, align 8, !tbaa !59
  br label %.lr.ph.i.i21.us.i.i

.lr.ph.i.i21.us.i.i:                              ; preds = %.lr.ph.i.i21.us.i.i, %.lr.ph.i.i21.preheader.us.i.i
  %.029.i.i22.us.i.i = phi i64 [ %spec.select.i.i24.us.i.i, %.lr.ph.i.i21.us.i.i ], [ 0, %.lr.ph.i.i21.preheader.us.i.i ] ; 2 uses
  %i.ch = shl i64 %.029.i.i22.us.i.i, 1           ; 3 uses
  %i.ci = add i64 %i.ch, 2                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val.i.i23.us.i.i = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i23.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.cl)
  %i.cn = or disjoint i64 %i.ch, 1
  %spec.select.i.i24.us.i.i = select i1 %i.cm, i64 %i.cn, i64 %i.ci ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i24.us.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i22.us.i.i
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !59
  %i.cr = icmp slt i64 %spec.select.i.i24.us.i.i, %8
  br i1 %i.cr, label %.lr.ph.i.i21.us.i.i, label %._crit_edge.i.i11.loopexit.us.i.i, !llvm.loop !4026

bb.h:                                             ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  %.not.i13.us.i.i = icmp eq i64 %spec.select.i.i24.us.i.i, 0
  br i1 %.not.i13.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %i.cs = load i64, ptr %i.cc, align 8, !tbaa !59
  store i64 %i.cs, ptr %i.cd, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  br label %.lr.ph.i.i.i14.us.i.i.preheader

.lr.ph.i.i.i14.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01316.i.i.i15.us.i.i.ph = phi i64 [ %spec.select.i.i24.us.i.i, %bb.h ], [ %i.cb, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i14.us.i.i

.lr.ph.i.i.i14.us.i.i:                            ; preds = %.lr.ph.i.i.i14.us.i.i.preheader, %bb.i
  %.01316.i.i.i15.us.i.i = phi i64 [ %.01721.i.i.i17.us.i.i, %bb.i ], [ %.01316.i.i.i15.us.i.i.ph, %.lr.ph.i.i.i14.us.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i16.us.i.i = add nsw i64 %.01316.i.i.i15.us.i.i, -1
  %.01721.i.i.i17.us.i.i = lshr i64 %.017.in.i.i.i16.us.i.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i17.us.i.i ; 2 uses
  %.val.i.i.i18.us.i.i = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cu = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i18.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.cu, label %bb.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i14.us.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i15.us.i.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !59
  %.not7.i.us.i.i = icmp eq i64 %.01721.i.i.i17.us.i.i, 0
  br i1 %.not7.i.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i, !llvm.loop !4027

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i14.us.i.i, %bb.h
  %.013.lcssa.i.i.i20.us.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i15.us.i.i, %.lr.ph.i.i.i14.us.i.i ], [ 0, %bb.i ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.us.i.i
  store i64 %i.cf, ptr %i.cx, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.025.us.i.i, i64 8 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %..017.i
  br i1 %i.cz, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_T0_.exit.i, !llvm.loop !4029

._crit_edge.i.i11.loopexit.us.i.i:                ; preds = %.lr.ph.i.i21.us.i.i
  %i.da = icmp eq i64 %spec.select.i.i24.us.i.i, %i.ca
  %or.cond.i.i = select i1 %i.by, i1 %i.da, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.0..i, i64 8 ; 2 uses
  br i1 %i.by, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.dc = icmp eq i64 %i.bz, 0
  br i1 %i.dc, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.025.us26.us.i.i = phi ptr [ %i.dj, %bb.l ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.us.i.i = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dd = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dd, label %._crit_edge.i.i11.us28.us.i.i, label %bb.l

._crit_edge.i.i11.us28.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %i.de = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59 ; 2 uses
  %i.df = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.df, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !59 ; 2 uses
  store i64 %i.dg, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.de, ptr %i.a, align 8, !tbaa !59
  %i.dh = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.dh, label %bb.k, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.loopexit.us38.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i11.us28.us.i.i
  %i.di = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.di, ptr %i.db, align 8, !tbaa !59
  br label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.loopexit.us38.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.loopexit.us38.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.us26.us.i.i, i64 8 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %..017.i
  br i1 %i.dk, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_T0_.exit.i, !llvm.loop !4029

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_RT0_.exit.loopexit.us38.us.i.i: ; preds = %bb.k, %._crit_edge.i.i11.us28.us.i.i
  %.013.lcssa.i.i.i20.ph.us39.us.i.i = phi i64 [ 1, %._crit_edge.i.i11.us28.us.i.i ], [ 0, %bb.k ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.ph.us39.us.i.i
  store i64 %i.de, ptr %i.dl, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.025.us26.i.i = phi ptr [ %i.dp, %bb.m ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.i.i = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.dm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dm, label %._crit_edge.i.i11.us28.i.i, label %bb.m

._crit_edge.i.i11.us28.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %i.dn = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.do = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.do, ptr %.025.us26.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dn, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i11.us28.i.i, %.lr.ph.split.split.us.split.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.025.us26.i.i, i64 8 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %..017.i
  br i1 %i.dq, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_T0_.exit.i, !llvm.loop !4029

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.025.i.i = phi ptr [ %i.du, %bb.n ], [ %i.n, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dr = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dr, label %._crit_edge.i.i11.i.i, label %bb.n

._crit_edge.i.i11.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %i.ds = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dt = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dt, ptr %.025.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ds, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i11.i.i, %.lr.ph.split.split.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  %i.dv = icmp ult ptr %i.du, %..017.i
  br i1 %i.dv, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_T0_.exit.i, !llvm.loop !4029

_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_RT0_.exit.i.i
  %i.dw = load i64, ptr %.0..i, align 8, !tbaa !59
  %i.dx = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.dx, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dw, ptr %1, align 8, !tbaa !59
  br label %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_6date_tENS4_10interval_tENS4_11timestamp_tEEENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SI_SI_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01735.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01636.i21 = phi i64 [ %i.dz, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader ]
  %.037.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dy = phi i64 [ %i.fb, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader ]
  %i.dz = add nsw i64 %.01636.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ea = lshr i64 %i.dy, 4
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.037.i20, i64 %i.ea ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.037.i20, i64 8 ; 6 uses
  %i.ed = getelementptr inbounds i8, ptr %.01735.i22, i64 -8 ; 8 uses
  %.val25.i.i.i = load i64, ptr %i.ec, align 8, !tbaa !59
  %i.ee = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_6date_tENS_10interval_tENS_11timestamp_tEEENS_16QuantileIndirectIS4_EEEEEclERKmSD_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val25.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.eb)
  br i1 %i.ee, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val24.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !59
end_hunk_18
begin_hunk_19_@_ZSt13__introselectIPN6duckdb11timestamp_tElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_T1_:bb.a

bb.c:                                             ; preds = %.lr.ph59
  %i.v = icmp sgt i64 %i.q, %i.u
  %i.w = icmp sgt i64 %i.u, %i.q
  %i.x = select i1 %i.e, i1 %i.v, i1 %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.03656, align 8, !tbaa !59
  store i64 %i.q, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.m, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp sgt i64 %i.p, %i.u
  %i.z = icmp sgt i64 %i.u, %i.p
  %i.aa = select i1 %i.e, i1 %i.y, i1 %i.z
  %.sroa.0.0.copyload.i.i22.i.i = load i64, ptr %.03656, align 8, !tbaa !59 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.u, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i64 %i.p, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ab = icmp sgt i64 %i.p, %i.u
  %i.ac = icmp sgt i64 %i.u, %i.p
  %i.ad = select i1 %i.e, i1 %i.ab, i1 %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i24.i.i = load i64, ptr %.03656, align 8, !tbaa !59
  store i64 %i.p, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i24.i.i, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.q, %i.u
  %i.af = icmp sgt i64 %i.u, %i.q
  %i.ag = select i1 %i.e, i1 %i.ae, i1 %i.af
  %.sroa.0.0.copyload.i.i25.i.i = load i64, ptr %.03656, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.u, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.q, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.m, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i

_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.am, %bb.o ], [ %i.n, %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %i.ah = load i64, ptr %.03656, align 8, !tbaa !59 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i ], [ %i.am, %bb.m ] ; 7 uses
  %i.ai = load i64, ptr %.1.i.i, align 8, !tbaa !59 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, %i.ah
  %i.ak = icmp sgt i64 %i.ah, %i.ai
  %i.al = select i1 %i.e, i1 %i.aj, i1 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.al, label %bb.m, label %.preheader.i.i, !llvm.loop !4164

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.an = load i64, ptr %.114.i.i, align 8, !tbaa !59 ; 3 uses
  %i.ao = icmp sgt i64 %i.ah, %i.an
  %i.ap = icmp sgt i64 %i.an, %i.ah
  %i.aq = select i1 %i.e, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %.preheader.i.i, label %bb.n, !llvm.loop !4165

bb.n:                                             ; preds = %.preheader.i.i
  %i.ar = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ar, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i64 %i.an, ptr %.1.i.i, align 8, !tbaa !59
  store i64 %i.ai, ptr %.114.i.i, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i, !llvm.loop !4166

_ZSt27__unguarded_partition_pivotIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.as = ptrtoint ptr %..017 to i64
  %i.at = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp sgt i64 %i.au, 24
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !4163

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.at, %_ZSt27__unguarded_partition_pivotIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ]
  %i.aw = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.020.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not21.i = icmp eq ptr %.020.i, %.017.lcssa
  %or.cond = select i1 %i.aw, i1 true, i1 %.not21.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.ax = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i
  %.023.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i ], [ %.020.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn22.i = phi ptr [ %.023.i, %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 4 uses
  %i.ay = load i64, ptr %.023.i, align 8, !tbaa !59 ; 7 uses
  %i.az = load i64, ptr %.0.lcssa, align 8, !tbaa !59 ; 3 uses
  %i.ba = icmp sgt i64 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.az, %i.ay
  %i.bc = select i1 %i.ax, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bd = ptrtoint ptr %.023.i to i64
  %i.be = sub i64 %i.bd, %.lcssa30                ; 3 uses
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 16
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.be, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bk = icmp eq i64 %i.be, 8
  br i1 %i.bk, label %bb.s, label %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 8
  store i64 %i.az, ptr %i.bl, align 8, !tbaa !59
  br label %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.bm = load i64, ptr %.pn22.i, align 8, !tbaa !59 ; 3 uses
  %i.bn = icmp sgt i64 %i.ay, %i.bm
  %i.bo = icmp sgt i64 %i.bm, %i.ay
  %i.bp = select i1 %i.ax, i1 %i.bn, i1 %i.bo
  br i1 %i.bp, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bq = phi i64 [ %i.br, %.lr.ph.i.i ], [ %i.bm, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn22.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.023.i, %bb.t ]
  store i64 %i.bq, ptr %.0912.i.i, align 8, !tbaa !59
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -8 ; 2 uses
  %i.br = load i64, ptr %.0.i.i22, align 8, !tbaa !59 ; 3 uses
  %i.bs = icmp sgt i64 %i.ay, %i.br
  %i.bt = icmp sgt i64 %i.br, %i.ay
  %i.bu = select i1 %i.ax, i1 %i.bs, i1 %i.bt
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i, !llvm.loop !4167

_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.023.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i64 %i.ay, ptr %.sink.i, align 8, !tbaa !59
  %.0.i = getelementptr inbounds nuw i8, ptr %.023.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit, label %.lr.ph.i, !llvm.loop !4168

_ZSt16__insertion_sortIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit: ; preds = %_ZSt13move_backwardIPN6duckdb11timestamp_tES2_ET0_T_S4_S3_.exit.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1193") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  call void @_ZSt11__make_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !4169, !range !234, !noundef !235
  %i.d = trunc nuw i8 %i.c to i1                  ; 7 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 3                         ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %4 = lshr i64 %i.i, 1
  %i.j = icmp sgt i64 %i.h, 2
  %i.k = and i64 %i.g, 8
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add nsw i64 %i.h, -2                     ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i64, ptr %.011.us, align 8, !tbaa !59 ; 5 uses
  %i.s = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.t = icmp sgt i64 %i.r, %i.s
  %i.u = icmp sgt i64 %i.s, %i.r
  %i.v = select i1 %i.d, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.s, ptr %.011.us, align 8, !tbaa !59
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !59  ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp sgt i64 %i.ab, %i.ac
  %i.ae = icmp sgt i64 %i.ac, %i.ab
  %i.af = select i1 %i.d, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !59
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !59
  %i.ak = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !4172

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i64, ptr %i.p, align 8, !tbaa !59
  store i64 %i.al, ptr %i.q, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1112.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1112.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i1112.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, %i.r
  %i.ap = icmp sgt i64 %i.r, %i.an
  %i.aq = select i1 %i.d, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !59
  %.not13.i.us = icmp eq i64 %.018.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !4173

_ZSt10__pop_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.r, ptr %i.as, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.au = icmp ult ptr %i.at, %2
  br i1 %i.au, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !4174

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.av = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.av, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ax = icmp eq i64 %i.m, 0
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre28 = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ay = load i64, ptr %.011.us12.us, align 8, !tbaa !59 ; 5 uses
  %i.az = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %i.ba = icmp sgt i64 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.az, %i.ay
  %i.bc = select i1 %i.d, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.az, ptr %.011.us12.us, align 8, !tbaa !59
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !59 ; 3 uses
  store i64 %i.bd, ptr %0, align 8, !tbaa !59
  %i.be = icmp sle i64 %i.bd, %i.ay
  %i.bf = icmp sle i64 %i.ay, %i.bd
  %i.bg = select i1 %i.d, i1 %i.be, i1 %i.bf
  %spec.select = zext i1 %i.bg to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ay, ptr %i.bh, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !4174

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bk = phi i64 [ %i.bp, %bb.f ], [ %.pre28, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %.011.us12 = phi ptr [ %i.bq, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.bl = load i64, ptr %.011.us12, align 8, !tbaa !59 ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, %i.bk
  %i.bn = icmp sgt i64 %i.bk, %i.bl
  %i.bo = select i1 %i.d, i1 %i.bm, i1 %i.bn
  br i1 %i.bo, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.bk, ptr %.011.us12, align 8, !tbaa !59
  store i64 %i.bl, ptr %0, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bp = phi i64 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %2
  br i1 %i.br, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !4174

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bs = phi i64 [ %i.bx, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 4 uses
  %.011 = phi ptr [ %i.by, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bt = load i64, ptr %.011, align 8, !tbaa !59 ; 4 uses
  %i.bu = icmp sgt i64 %i.bt, %i.bs
  %i.bv = icmp sgt i64 %i.bs, %i.bt
  %i.bw = select i1 %i.d, i1 %i.bu, i1 %i.bv
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i64 %i.bs, ptr %.011, align 8, !tbaa !59
  store i64 %i.bt, ptr %0, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bx = phi i64 [ %i.bs, %.lr.ph.split.split ], [ %i.bt, %._crit_edge.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %2
  br i1 %i.bz, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !4174
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN6duckdb11timestamp_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.aq, %_ZSt13__adjust_heapIPN6duckdb11timestamp_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
end_hunk_19
begin_hunk_20_@_ZSt11nth_elementIPN6duckdb11timestamp_tENS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEvT_S9_S9_T0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %common.resume.sink.split.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i36.i.i.i = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dz = load ptr, ptr %32, align 8, !tbaa !22   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37.i.i.i: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dz) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br i1 %.0.i.i36.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br i1 %.0.i.i36.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.ab:                                            ; preds = %bb.z
  unreachable

_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit39.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ec = call noundef i64 @llvm.abs.i64(i64 %i.du, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ed = call { i64, i64 } @_ZN6duckdb8Interval9FromMicroEl(i64 noundef %i.ec) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0      ; 4 uses
  %i.ef = extractvalue { i64, i64 } %i.ed, 1      ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.5.0.copyload, align 8, !tbaa !4082
  %i.eg = call noundef i64 @_ZNK6duckdb11timestamp_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i.i.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.eg, ptr %i.n, align 8, !tbaa !59
  %i.eh = icmp eq i64 %i.eg, -9223372036854775808
  br i1 %i.eh, label %bb.ac, label %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit.i.i.i

bb.ac:                                            ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit39.i.i.i
  %i.ei = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.ei, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.ag unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %common.resume.sink.split.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.el = load ptr, ptr %34, align 8, !tbaa !22   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.el) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.ag:                                            ; preds = %bb.ae
  unreachable

_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit.i.i.i: ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit39.i.i.i
  %i.eo = call noundef i64 @llvm.abs.i64(i64 %i.eg, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = call { i64, i64 } @_ZN6duckdb8Interval9FromMicroEl(i64 noundef %i.eo) ; 2 uses
  %i.eq = extractvalue { i64, i64 } %i.ep, 0      ; 4 uses
  %i.er = extractvalue { i64, i64 } %i.ep, 1      ; 4 uses
  br i1 %i.ao, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit.i.i.i
  %i.es = sdiv i64 %i.ef, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.es, -86400000000
  %i.et = add i64 %.neg.i.i.i.i.i.i.i.i.i, %i.ef
  %i.eu = ashr i64 %i.ee, 32
  %i.ev = add nsw i64 %i.es, %i.eu                ; 2 uses
  %i.ew = sdiv i64 %i.ev, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ew, -30
  %i.ex = add nsw i64 %.neg16.i.i.i.i.i.i.i.i.i, %i.ev ; 2 uses
  %sext28.i.i.i.i = shl i64 %i.ee, 32
  %i.ey = ashr exact i64 %sext28.i.i.i.i, 32
  %i.ez = add nsw i64 %i.ew, %i.ey                ; 2 uses
  %i.fa = sdiv i64 %i.er, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i.i.i.i = mul nsw i64 %i.fa, -86400000000
  %i.fb = add i64 %.neg.i8.i.i.i.i.i.i.i.i, %i.er
  %i.fc = ashr i64 %i.eq, 32
  %i.fd = add nsw i64 %i.fa, %i.fc                ; 2 uses
  %i.fe = sdiv i64 %i.fd, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i.i.i = mul nsw i64 %i.fe, -30
  %i.ff = add nsw i64 %.neg16.i9.i.i.i.i.i.i.i.i, %i.fd ; 2 uses
  %sext30.i.i.i.i = shl i64 %i.eq, 32
  %i.fg = ashr exact i64 %sext30.i.i.i.i, 32
  %i.fh = add nsw i64 %i.fe, %i.fg                ; 2 uses
  %i.fi = icmp sgt i64 %i.ez, %i.fh
  br i1 %i.fi, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fj = icmp slt i64 %i.ez, %i.fh
  br i1 %i.fj, label %.critedge.loopexit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = icmp sgt i64 %i.ex, %i.ff
  br i1 %i.fk, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.i.i.i

bb.ak:                                            ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit.i.i.i
  %i.fl = sdiv i64 %i.er, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i4.i.i.i.i = mul nsw i64 %i.fl, -86400000000
  %i.fm = add i64 %.neg.i.i.i.i.i4.i.i.i.i, %i.er
  %i.fn = ashr i64 %i.eq, 32
  %i.fo = add nsw i64 %i.fl, %i.fn                ; 2 uses
  %i.fp = sdiv i64 %i.fo, 30                      ; 2 uses
  %.neg16.i.i.i.i.i5.i.i.i.i = mul nsw i64 %i.fp, -30
  %i.fq = add nsw i64 %.neg16.i.i.i.i.i5.i.i.i.i, %i.fo ; 2 uses
  %sext.i.i.i.i = shl i64 %i.eq, 32
  %i.fr = ashr exact i64 %sext.i.i.i.i, 32
  %i.fs = add nsw i64 %i.fp, %i.fr                ; 2 uses
  %i.ft = sdiv i64 %i.ef, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i6.i.i.i.i = mul nsw i64 %i.ft, -86400000000
  %i.fu = add i64 %.neg.i8.i.i.i.i6.i.i.i.i, %i.ef
  %i.fv = ashr i64 %i.ee, 32
  %i.fw = add nsw i64 %i.ft, %i.fv                ; 2 uses
  %i.fx = sdiv i64 %i.fw, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i7.i.i.i.i = mul nsw i64 %i.fx, -30
  %i.fy = add nsw i64 %.neg16.i9.i.i.i.i7.i.i.i.i, %i.fw ; 2 uses
  %sext26.i.i.i.i = shl i64 %i.ee, 32
  %i.fz = ashr exact i64 %sext26.i.i.i.i, 32
  %i.ga = add nsw i64 %i.fx, %i.fz                ; 2 uses
  %i.gb = icmp sgt i64 %i.fs, %i.ga
  br i1 %i.gb, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = icmp slt i64 %i.fs, %i.ga
  br i1 %i.gc, label %.critedge.loopexit.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gd = icmp sgt i64 %i.fq, %i.fy
  br i1 %i.gd, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = icmp sge i64 %i.fq, %i.fy
  %i.gf = icmp sgt i64 %i.fm, %i.fu
  %spec.select.i.i.i.i8.i.i.i.i = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %spec.select.i.i.i.i8.i.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i, label %.critedge.loopexit.i.i.i.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.i.i.i: ; preds = %bb.aj
  %i.gg = icmp sge i64 %i.ex, %i.ff
  %i.gh = icmp sgt i64 %i.et, %i.fb
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i, label %.critedge.loopexit.i.i.i.i.i

_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.i.i.i, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.lcssa, i64 %.01316.i.i.i.i.i
  %i.gj = load i64, ptr %i.dt, align 8, !tbaa !59
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !59
  %i.gk = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !4190

.critedge.loopexit.i.i.i.i.i:                     ; preds = %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.i.i.i, %bb.an, %bb.al, %bb.ai
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.i.i.i ], [ %.01721.i.i.i.i.i, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit.thread.i.i.i ], [ %.01316.i.i.i.i.i, %bb.an ], [ %.01316.i.i.i.i.i, %bb.al ], [ %.01316.i.i.i.i.i, %bb.ai ]
  %.pre.i.i.i.i.i = load i64, ptr %36, align 8, !tbaa !59
  br label %_ZSt13__adjust_heapIPN6duckdb11timestamp_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i

_ZSt13__adjust_heapIPN6duckdb11timestamp_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.w
  %i.gl = phi i64 [ %.sroa.01.0.copyload.i.i.i, %bb.w ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.w ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.lcssa, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.gn = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i, label %bb.d, !llvm.loop !4191

_ZSt11__make_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPN6duckdb11timestamp_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.go = icmp ult ptr %i.aa, %.017111.i.lcssa
  br i1 %i.go, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPN6duckdb11timestamp_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i
  %i.gp = add nsw i64 %i.ad, -1
  %38 = lshr i64 %i.gp, 1
  %i.gq = icmp sgt i64 %i.ad, 2
  %i.gr = trunc nuw i8 %.sroa.7.0.copyload to i1  ; 2 uses
  %i.gs = and i64 %i.ac, 8
  %i.gt = icmp eq i64 %i.gs, 0                    ; 2 uses
  %i.gu = add nsw i64 %i.ad, -2                   ; 3 uses
  %i.gv = ashr exact i64 %i.gu, 1                 ; 2 uses
  %i.gw = icmp eq i64 %i.gu, 0
  %or.cond135.i.i = select i1 %i.gt, i1 %i.gw, i1 false
  %i.gx = or disjoint i64 %i.gu, 1                ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.lcssa, i64 %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.lcssa, i64 %i.gv
  br label %bb.ao

bb.ao:                                            ; preds = %bb.bz, %.lr.ph.i.i
  %.076.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.mw, %bb.bz ] ; 4 uses
  %i.ha = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(8) %.076.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0113.i.lcssa)
  br i1 %i.ha, label %bb.ap, label %bb.bz

bb.ap:                                            ; preds = %bb.ao
  %.sroa.01.0.copyload.i11.i.i = load i64, ptr %.076.i.i, align 8, !tbaa !59 ; 4 uses
  %i.hb = load i64, ptr %.0113.i.lcssa, align 8, !tbaa !59
  store i64 %i.hb, ptr %.076.i.i, align 8, !tbaa !59
  br i1 %i.gq, label %.lr.ph.i.i25.i.i, label %._crit_edge.i.i12.thread.i.i

.lr.ph.i.i25.i.i:                                 ; preds = %bb.ap, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit43.thread70.i.i
  %.029.i.i26.i.i = phi i64 [ %i.jw, %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit43.thread70.i.i ], [ 0, %bb.ap ] ; 2 uses
  %i.hc = shl i64 %.029.i.i26.i.i, 1              ; 3 uses
  %i.hd = add i64 %i.hc, 2                        ; 5 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.lcssa, i64 %i.hd
  %.val3.i27.i.i = load ptr, ptr %.sroa.011.0.copyload, align 8, !tbaa !4082
  %i.hf = call noundef i64 @_ZNK6duckdb11timestamp_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull align 8 dereferenceable(8) %.val3.i27.i.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.hf, ptr %i.g, align 8, !tbaa !59
  %i.hg = icmp eq i64 %i.hf, -9223372036854775808
  br i1 %i.hg, label %bb.aq, label %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit64.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i25.i.i
  %i.hh = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i58.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.hh, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.au unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i58.i.i: ; preds = %bb.aq
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %common.resume.sink.split.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i61.i.i = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hk = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i63.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i62.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.hk) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br i1 %.0.i.i61.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i63.i.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br i1 %.0.i.i61.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.au:                                            ; preds = %bb.as
  unreachable

_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit64.i.i: ; preds = %.lr.ph.i.i25.i.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.lcssa, i64 %i.hc
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = call noundef i64 @llvm.abs.i64(i64 %i.hf, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.hq = call { i64, i64 } @_ZN6duckdb8Interval9FromMicroEl(i64 noundef %i.hp) ; 2 uses
  %i.hr = extractvalue { i64, i64 } %i.hq, 0      ; 4 uses
  %i.hs = extractvalue { i64, i64 } %i.hq, 1      ; 4 uses
  %.val.i28.i.i = load ptr, ptr %.sroa.5.0.copyload, align 8, !tbaa !4082
  %i.ht = call noundef i64 @_ZNK6duckdb11timestamp_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %.val.i28.i.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ht, ptr %i.h, align 8, !tbaa !59
  %i.hu = icmp eq i64 %i.ht, -9223372036854775808
  br i1 %i.hu, label %bb.av, label %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit57.i.i

bb.av:                                            ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit64.i.i
  %i.hv = call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.aw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i51.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_throw(ptr nonnull %i.hv, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.az unwind label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i51.i.i: ; preds = %bb.av
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %common.resume.sink.split.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i.i54.i.i = phi i1 [ false, %bb.ax ], [ true, %bb.aw ] ; 2 uses
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hy = load ptr, ptr %21, align 8, !tbaa !22   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i56.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55.i.i: ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef %i.hy) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br i1 %.0.i.i54.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i56.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br i1 %.0.i.i54.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.az:                                            ; preds = %bb.ax
  unreachable

_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit57.i.i: ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit64.i.i
  %i.ib = call noundef i64 @llvm.abs.i64(i64 %i.ht, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ic = call { i64, i64 } @_ZN6duckdb8Interval9FromMicroEl(i64 noundef %i.ib) ; 2 uses
  %i.id = extractvalue { i64, i64 } %i.ic, 0      ; 4 uses
  %i.ie = extractvalue { i64, i64 } %i.ic, 1      ; 4 uses
  br i1 %i.gr, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit57.i.i
  %i.if = sdiv i64 %i.hs, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i36.i.i = mul nsw i64 %i.if, -86400000000
  %i.ig = add i64 %.neg.i.i.i.i.i.i36.i.i, %i.hs
  %i.ih = ashr i64 %i.hr, 32
  %i.ii = add nsw i64 %i.if, %i.ih                ; 2 uses
  %i.ij = sdiv i64 %i.ii, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i37.i.i = mul nsw i64 %i.ij, -30
  %i.ik = add nsw i64 %.neg16.i.i.i.i.i.i37.i.i, %i.ii ; 2 uses
  %sext28.i38.i.i = shl i64 %i.hr, 32
  %i.il = ashr exact i64 %sext28.i38.i.i, 32
  %i.im = add nsw i64 %i.ij, %i.il                ; 2 uses
  %i.in = sdiv i64 %i.ie, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i39.i.i = mul nsw i64 %i.in, -86400000000
  %i.io = add i64 %.neg.i8.i.i.i.i.i39.i.i, %i.ie
  %i.ip = ashr i64 %i.id, 32
  %i.iq = add nsw i64 %i.in, %i.ip                ; 2 uses
  %i.ir = sdiv i64 %i.iq, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i40.i.i = mul nsw i64 %i.ir, -30
  %i.is = add nsw i64 %.neg16.i9.i.i.i.i.i40.i.i, %i.iq ; 2 uses
  %sext30.i41.i.i = shl i64 %i.id, 32
  %i.it = ashr exact i64 %sext30.i41.i.i, 32
  %i.iu = add nsw i64 %i.ir, %i.it                ; 2 uses
  %i.iv = icmp sgt i64 %i.im, %i.iu
  br i1 %i.iv, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit43.thread.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = icmp slt i64 %i.im, %i.iu
  br i1 %i.iw, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit43.thread70.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ix = icmp sgt i64 %i.ik, %i.is
  br i1 %i.ix, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit43.thread.i.i, label %_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_.exit43.i.i

bb.bd:                                            ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES2_EclERKS2_.exit57.i.i
  %i.iy = sdiv i64 %i.ie, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i4.i29.i.i = mul nsw i64 %i.iy, -86400000000
  %i.iz = add i64 %.neg.i.i.i.i.i4.i29.i.i, %i.ie
  %i.ja = ashr i64 %i.id, 32
  %i.jb = add nsw i64 %i.iy, %i.ja                ; 2 uses
  %i.jc = sdiv i64 %i.jb, 30                      ; 2 uses
  %.neg16.i.i.i.i.i5.i30.i.i = mul nsw i64 %i.jc, -30
  %i.jd = add nsw i64 %.neg16.i.i.i.i.i5.i30.i.i, %i.jb ; 2 uses
  %sext.i31.i.i = shl i64 %i.id, 32
  %i.je = ashr exact i64 %sext.i31.i.i, 32
  %i.jf = add nsw i64 %i.jc, %i.je                ; 2 uses
  %i.jg = sdiv i64 %i.hs, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i6.i32.i.i = mul nsw i64 %i.jg, -86400000000
  %i.jh = add i64 %.neg.i8.i.i.i.i6.i32.i.i, %i.hs
  %i.ji = ashr i64 %i.hr, 32
  %i.jj = add nsw i64 %i.jg, %i.ji                ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN18duckdb_skiplistlib9skip_list4NodeISt4pairImN6duckdb11timestamp_tEENS3_8SkipLessIS5_EEE14_adjRemoveRefsEmPS8_:bb.a
  %i.cp = add nuw i64 %.322, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cp, %i.bp
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph23, !llvm.loop !4293

._crit_edge:                                      ; preds = %.lr.ph23, %.lr.ph23.prol.loopexit
  %i.cq = add i64 %.promoted, %i.bp
  %i.cr = sub i64 %i.cq, %.2
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !4260
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.critedge
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPmN6duckdb15QuantileCompareINS1_16QuantileComposedINS1_12_GLOBAL__N_111MadAccessorINS1_11timestamp_tENS1_10interval_tES6_EENS1_16QuantileIndirectIS6_EEEEEEEvT_SD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.1239") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1243", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1241", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1241", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1241", align 8 ; 21 uses
  %i.c = icmp eq ptr %0, %2
  %i.d = icmp eq ptr %1, %2
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.h = icmp sgt i64 %i.g, 24
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = lshr exact i64 %i.g, 3
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEET_SH_SH_T0_.exit.i
  %i.m = icmp eq i64 %i.dz, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !4294

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.fa                      ; 3 uses
  %i.q = ashr i64 %i.p, 3                         ; 6 uses
  %i.r = icmp slt i64 %i.q, 2
  br i1 %i.r, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.s = add nsw i64 %i.q, -2                     ; 2 uses
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = add nsw i64 %i.q, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = and i64 %i.p, 8
  %i.x = icmp eq i64 %i.w, 0
  %i.y = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.t
  br i1 %i.x, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.av, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.us.i.i ], [ %i.t, %bb.c ] ; 7 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp slt i64 %.014.i.us.i.i, %i.v
  br i1 %i.ad, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.thread.i.i

._crit_edge.i.i.us.thread.i.i:                    ; preds = %.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.029.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ae = shl i64 %.029.i.i.us.i.i, 1             ; 3 uses
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.us.i.i = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.aj = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ai)
  %i.ak = or disjoint i64 %i.ae, 1
  %spec.select.i.i.us.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.af ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.us.i.i
  store i64 %i.am, ptr %i.an, align 8, !tbaa !59
  %i.ao = icmp slt i64 %spec.select.i.i.us.i.i, %i.v
  br i1 %i.ao, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.i.i, !llvm.loop !4295

._crit_edge.i.i.us.i.i:                           ; preds = %.lr.ph.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.us.i.i
  %.01316.i.i.i.us.i.i = phi i64 [ %.01721.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %._crit_edge.i.i.us.i.i ] ; 3 uses
  %.017.in.i.i.i.us.i.i = add nsw i64 %.01316.i.i.i.us.i.i, -1
  %.01721.i.i.i.us.i.i = lshr i64 %.017.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.aq = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.aq, label %bb.d, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.us.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !59
  %i.at = icmp samesign ugt i64 %.01721.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.us.i.i, !llvm.loop !4296

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %._crit_edge.i.i.us.thread.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %._crit_edge.i.i.us.thread.i.i ], [ %.01316.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ], [ %.01721.i.i.i.us.i.i, %bb.d ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i64 %i.ac, ptr %i.au, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.av = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !4297

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.bt, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i ], [ %i.t, %bb.c ] ; 8 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59 ; 2 uses
  %i.ay = icmp slt i64 %.014.i.i.i, %i.v
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.az = shl i64 %.029.i.i.i.i, 1                ; 3 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.be = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.bd)
  %i.bf = or disjoint i64 %i.az, 1
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %i.ba ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.i.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !59
  %i.bj = icmp slt i64 %spec.select.i.i.i.i, %i.v
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4295

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.t
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !59
  store i64 %i.bl, ptr %i.aa, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.y, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !59
  %i.bm = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01316.i.i.i.i.i = phi i64 [ %.01721.i.i.i.i.i, %bb.g ], [ %.128.i.i.i.i, %bb.f ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.01721.i.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bo = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br i1 %i.bo, label %bb.g, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !59
  %i.br = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i, !llvm.loop !4296

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01721.i.i.i.i.i, %bb.g ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ax, ptr %i.bs, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.bt = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !4297

_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bu = icmp ult ptr %i.n, %..017.i
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i
  %i.bv = add nsw i64 %i.q, -1
  %8 = lshr i64 %i.bv, 1
  %i.bw = icmp sgt i64 %i.q, 2
  %i.bx = and i64 %i.p, 8
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  %i.bz = add nsw i64 %i.q, -2                    ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 1                 ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.cb = or disjoint i64 %i.bz, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ca
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.025.us.i.i = phi ptr [ %i.cy, %bb.j ], [ %i.n, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i64, ptr %.025.us.i.i, align 8, !tbaa !59
  %i.ce = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.ce, label %.lr.ph.i.i21.preheader.us.i.i, label %bb.j

.lr.ph.i.i21.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %i.cf = load i64, ptr %.025.us.i.i, align 8, !tbaa !59 ; 3 uses
  %i.cg = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.cg, ptr %.025.us.i.i, align 8, !tbaa !59
  br label %.lr.ph.i.i21.us.i.i

.lr.ph.i.i21.us.i.i:                              ; preds = %.lr.ph.i.i21.us.i.i, %.lr.ph.i.i21.preheader.us.i.i
  %.029.i.i22.us.i.i = phi i64 [ %spec.select.i.i24.us.i.i, %.lr.ph.i.i21.us.i.i ], [ 0, %.lr.ph.i.i21.preheader.us.i.i ] ; 2 uses
  %i.ch = shl i64 %.029.i.i22.us.i.i, 1           ; 3 uses
  %i.ci = add i64 %i.ch, 2                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val.i.i23.us.i.i = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i23.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.cl)
  %i.cn = or disjoint i64 %i.ch, 1
  %spec.select.i.i24.us.i.i = select i1 %i.cm, i64 %i.cn, i64 %i.ci ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i24.us.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !59
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i22.us.i.i
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !59
  %i.cr = icmp slt i64 %spec.select.i.i24.us.i.i, %8
  br i1 %i.cr, label %.lr.ph.i.i21.us.i.i, label %._crit_edge.i.i11.loopexit.us.i.i, !llvm.loop !4295

bb.h:                                             ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  %.not.i13.us.i.i = icmp eq i64 %spec.select.i.i24.us.i.i, 0
  br i1 %.not.i13.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i11.loopexit.us.i.i
  %i.cs = load i64, ptr %i.cc, align 8, !tbaa !59
  store i64 %i.cs, ptr %i.cd, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !59
  br label %.lr.ph.i.i.i14.us.i.i.preheader

.lr.ph.i.i.i14.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01316.i.i.i15.us.i.i.ph = phi i64 [ %spec.select.i.i24.us.i.i, %bb.h ], [ %i.cb, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i14.us.i.i

.lr.ph.i.i.i14.us.i.i:                            ; preds = %.lr.ph.i.i.i14.us.i.i.preheader, %bb.i
  %.01316.i.i.i15.us.i.i = phi i64 [ %.01721.i.i.i17.us.i.i, %bb.i ], [ %.01316.i.i.i15.us.i.i.ph, %.lr.ph.i.i.i14.us.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i16.us.i.i = add nsw i64 %.01316.i.i.i15.us.i.i, -1
  %.01721.i.i.i17.us.i.i = lshr i64 %.017.in.i.i.i16.us.i.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i17.us.i.i ; 2 uses
  %.val.i.i.i18.us.i.i = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cu = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val.i.i.i18.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.cu, label %bb.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i14.us.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i15.us.i.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !59
  %.not7.i.us.i.i = icmp eq i64 %.01721.i.i.i17.us.i.i, 0
  br i1 %.not7.i.us.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.us.i.i, label %.lr.ph.i.i.i14.us.i.i, !llvm.loop !4296

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i14.us.i.i, %bb.h
  %.013.lcssa.i.i.i20.us.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i15.us.i.i, %.lr.ph.i.i.i14.us.i.i ], [ 0, %bb.i ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.us.i.i
  store i64 %i.cf, ptr %i.cx, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.025.us.i.i, i64 8 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %..017.i
  br i1 %i.cz, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_.exit.i, !llvm.loop !4298

._crit_edge.i.i11.loopexit.us.i.i:                ; preds = %.lr.ph.i.i21.us.i.i
  %i.da = icmp eq i64 %spec.select.i.i24.us.i.i, %i.ca
  %or.cond.i.i = select i1 %i.by, i1 %i.da, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.0..i, i64 8 ; 2 uses
  br i1 %i.by, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.dc = icmp eq i64 %i.bz, 0
  br i1 %i.dc, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.025.us26.us.i.i = phi ptr [ %i.dj, %bb.l ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.us.i.i = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dd = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dd, label %._crit_edge.i.i11.us28.us.i.i, label %bb.l

._crit_edge.i.i11.us28.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %i.de = load i64, ptr %.025.us26.us.i.i, align 8, !tbaa !59 ; 2 uses
  %i.df = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.df, ptr %.025.us26.us.i.i, align 8, !tbaa !59
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !59 ; 2 uses
  store i64 %i.dg, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.de, ptr %i.a, align 8, !tbaa !59
  %i.dh = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br i1 %i.dh, label %bb.k, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.loopexit.us38.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i11.us28.us.i.i
  %i.di = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.di, ptr %i.db, align 8, !tbaa !59
  br label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.loopexit.us38.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.loopexit.us38.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.us26.us.i.i, i64 8 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %..017.i
  br i1 %i.dk, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_.exit.i, !llvm.loop !4298

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.loopexit.us38.us.i.i: ; preds = %bb.k, %._crit_edge.i.i11.us28.us.i.i
  %.013.lcssa.i.i.i20.ph.us39.us.i.i = phi i64 [ 1, %._crit_edge.i.i11.us28.us.i.i ], [ 0, %bb.k ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i20.ph.us39.us.i.i
  store i64 %i.de, ptr %i.dl, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.025.us26.i.i = phi ptr [ %i.dp, %bb.m ], [ %i.n, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us27.i.i = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.dm = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.us27.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dm, label %._crit_edge.i.i11.us28.i.i, label %bb.m

._crit_edge.i.i11.us28.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %i.dn = load i64, ptr %.025.us26.i.i, align 8, !tbaa !59
  %i.do = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.do, ptr %.025.us26.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dn, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i11.us28.i.i, %.lr.ph.split.split.us.split.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.025.us26.i.i, i64 8 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %..017.i
  br i1 %i.dq, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_.exit.i, !llvm.loop !4298

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.025.i.i = phi ptr [ %i.du, %bb.n ], [ %i.n, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dr = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.0.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dr, label %._crit_edge.i.i11.i.i, label %bb.n

._crit_edge.i.i11.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %i.ds = load i64, ptr %.025.i.i, align 8, !tbaa !59
  %i.dt = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dt, ptr %.025.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ds, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i11.i.i, %.lr.ph.split.split.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  %i.dv = icmp ult ptr %i.du, %..017.i
  br i1 %i.dv, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_.exit.i, !llvm.loop !4298

_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i
  %i.dw = load i64, ptr %.0..i, align 8, !tbaa !59
  %i.dx = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.dx, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dw, ptr %1, align 8, !tbaa !59
  br label %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_11timestamp_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01735.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01636.i21 = phi i64 [ %i.dz, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader ]
  %.037.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dy = phi i64 [ %i.fb, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader ]
  %i.dz = add nsw i64 %.01636.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ea = lshr i64 %i.dy, 4
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.037.i20, i64 %i.ea ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.037.i20, i64 8 ; 6 uses
  %i.ed = getelementptr inbounds i8, ptr %.01735.i22, i64 -8 ; 8 uses
  %.val25.i.i.i = load i64, ptr %i.ec, align 8, !tbaa !59
  %i.ee = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i64 %.val25.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.eb)
  br i1 %i.ee, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val24.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !59
end_hunk_21
begin_hunk_22_@_ZSt13__introselectIPN6duckdb7dtime_tElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_T1_:bb.a

bb.c:                                             ; preds = %.lr.ph59
  %i.v = icmp sgt i64 %i.q, %i.u
  %i.w = icmp sgt i64 %i.u, %i.q
  %i.x = select i1 %i.e, i1 %i.v, i1 %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.03656, align 8, !tbaa !59
  store i64 %i.q, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.m, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp sgt i64 %i.p, %i.u
  %i.z = icmp sgt i64 %i.u, %i.p
  %i.aa = select i1 %i.e, i1 %i.y, i1 %i.z
  %.sroa.0.0.copyload.i.i22.i.i = load i64, ptr %.03656, align 8, !tbaa !59 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.u, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i64 %i.p, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ab = icmp sgt i64 %i.p, %i.u
  %i.ac = icmp sgt i64 %i.u, %i.p
  %i.ad = select i1 %i.e, i1 %i.ab, i1 %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i24.i.i = load i64, ptr %.03656, align 8, !tbaa !59
  store i64 %i.p, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i24.i.i, ptr %i.n, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.q, %i.u
  %i.af = icmp sgt i64 %i.u, %i.q
  %i.ag = select i1 %i.e, i1 %i.ae, i1 %i.af
  %.sroa.0.0.copyload.i.i25.i.i = load i64, ptr %.03656, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.u, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.o, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.q, ptr %.03656, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.m, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i

_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.am, %bb.o ], [ %i.n, %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i.preheader ]
  %i.ah = load i64, ptr %.03656, align 8, !tbaa !59 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i ], [ %i.am, %bb.m ] ; 7 uses
  %i.ai = load i64, ptr %.1.i.i, align 8, !tbaa !59 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, %i.ah
  %i.ak = icmp sgt i64 %i.ah, %i.ai
  %i.al = select i1 %i.e, i1 %i.aj, i1 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.al, label %bb.m, label %.preheader.i.i, !llvm.loop !4429

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.an = load i64, ptr %.114.i.i, align 8, !tbaa !59 ; 3 uses
  %i.ao = icmp sgt i64 %i.ah, %i.an
  %i.ap = icmp sgt i64 %i.an, %i.ah
  %i.aq = select i1 %i.e, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %.preheader.i.i, label %bb.n, !llvm.loop !4430

bb.n:                                             ; preds = %.preheader.i.i
  %i.ar = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ar, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i64 %i.an, ptr %.1.i.i, align 8, !tbaa !59
  store i64 %i.ai, ptr %.114.i.i, align 8, !tbaa !59
  br label %_ZSt22__move_median_to_firstIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_.exit.i, !llvm.loop !4431

_ZSt27__unguarded_partition_pivotIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.as = ptrtoint ptr %..017 to i64
  %i.at = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp sgt i64 %i.au, 24
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !4428

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.at, %_ZSt27__unguarded_partition_pivotIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_T0_.exit ]
  %i.aw = icmp eq ptr %.0.lcssa, %.017.lcssa
  %.020.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not21.i = icmp eq ptr %.020.i, %.017.lcssa
  %or.cond = select i1 %i.aw, i1 true, i1 %.not21.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.ax = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i
  %.023.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i ], [ %.020.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn22.i = phi ptr [ %.023.i, %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 4 uses
  %i.ay = load i64, ptr %.023.i, align 8, !tbaa !59 ; 7 uses
  %i.az = load i64, ptr %.0.lcssa, align 8, !tbaa !59 ; 3 uses
  %i.ba = icmp sgt i64 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.az, %i.ay
  %i.bc = select i1 %i.ax, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bd = ptrtoint ptr %.023.i to i64
  %i.be = sub i64 %i.bd, %.lcssa30                ; 3 uses
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 16
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.be, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bk = icmp eq i64 %i.be, 8
  br i1 %i.bk, label %bb.s, label %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 8
  store i64 %i.az, ptr %i.bl, align 8, !tbaa !59
  br label %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.bm = load i64, ptr %.pn22.i, align 8, !tbaa !59 ; 3 uses
  %i.bn = icmp sgt i64 %i.ay, %i.bm
  %i.bo = icmp sgt i64 %i.bm, %i.ay
  %i.bp = select i1 %i.ax, i1 %i.bn, i1 %i.bo
  br i1 %i.bp, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bq = phi i64 [ %i.br, %.lr.ph.i.i ], [ %i.bm, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn22.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.023.i, %bb.t ]
  store i64 %i.bq, ptr %.0912.i.i, align 8, !tbaa !59
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -8 ; 2 uses
  %i.br = load i64, ptr %.0.i.i22, align 8, !tbaa !59 ; 3 uses
  %i.bs = icmp sgt i64 %i.ay, %i.br
  %i.bt = icmp sgt i64 %i.br, %i.ay
  %i.bu = select i1 %i.ax, i1 %i.bs, i1 %i.bt
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i, !llvm.loop !4432

_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.023.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i64 %i.ay, ptr %.sink.i, align 8, !tbaa !59
  %.0.i = getelementptr inbounds nuw i8, ptr %.023.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit, label %.lr.ph.i, !llvm.loop !4433

_ZSt16__insertion_sortIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_.exit: ; preds = %_ZSt13move_backwardIPN6duckdb7dtime_tES2_ET0_T_S4_S3_.exit.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1280") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  call void @_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !4434, !range !234, !noundef !235
  %i.d = trunc nuw i8 %i.c to i1                  ; 7 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 3                         ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %4 = lshr i64 %i.i, 1
  %i.j = icmp sgt i64 %i.h, 2
  %i.k = and i64 %i.g, 8
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add nsw i64 %i.h, -2                     ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i64, ptr %.011.us, align 8, !tbaa !59 ; 5 uses
  %i.s = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.t = icmp sgt i64 %i.r, %i.s
  %i.u = icmp sgt i64 %i.s, %i.r
  %i.v = select i1 %i.d, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.s, ptr %.011.us, align 8, !tbaa !59
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !59  ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ad = icmp sgt i64 %i.ab, %i.ac
  %i.ae = icmp sgt i64 %i.ac, %i.ab
  %i.af = select i1 %i.d, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !59
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !59
  %i.ak = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !4437

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i64, ptr %i.p, align 8, !tbaa !59
  store i64 %i.al, ptr %i.q, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1112.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1112.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i1112.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, %i.r
  %i.ap = icmp sgt i64 %i.r, %i.an
  %i.aq = select i1 %i.d, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !59
  %.not13.i.us = icmp eq i64 %.018.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !4438

_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.r, ptr %i.as, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.au = icmp ult ptr %i.at, %2
  br i1 %i.au, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !4439

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.av = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.av, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ax = icmp eq i64 %i.m, 0
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre28 = load i64, ptr %0, align 8, !tbaa !59
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ay = load i64, ptr %.011.us12.us, align 8, !tbaa !59 ; 5 uses
  %i.az = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %i.ba = icmp sgt i64 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.az, %i.ay
  %i.bc = select i1 %i.d, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.az, ptr %.011.us12.us, align 8, !tbaa !59
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !59 ; 3 uses
  store i64 %i.bd, ptr %0, align 8, !tbaa !59
  %i.be = icmp sle i64 %i.bd, %i.ay
  %i.bf = icmp sle i64 %i.ay, %i.bd
  %i.bg = select i1 %i.d, i1 %i.be, i1 %i.bf
  %spec.select = zext i1 %i.bg to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ay, ptr %i.bh, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !4439

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bk = phi i64 [ %i.bp, %bb.f ], [ %.pre28, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %.011.us12 = phi ptr [ %i.bq, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.bl = load i64, ptr %.011.us12, align 8, !tbaa !59 ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, %i.bk
  %i.bn = icmp sgt i64 %i.bk, %i.bl
  %i.bo = select i1 %i.d, i1 %i.bm, i1 %i.bn
  br i1 %i.bo, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.bk, ptr %.011.us12, align 8, !tbaa !59
  store i64 %i.bl, ptr %0, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bp = phi i64 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %2
  br i1 %i.br, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !4439

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bs = phi i64 [ %i.bx, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 4 uses
  %.011 = phi ptr [ %i.by, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bt = load i64, ptr %.011, align 8, !tbaa !59 ; 4 uses
  %i.bu = icmp sgt i64 %i.bt, %i.bs
  %i.bv = icmp sgt i64 %i.bs, %i.bt
  %i.bw = select i1 %i.d, i1 %i.bu, i1 %i.bv
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i64 %i.bs, ptr %.011, align 8, !tbaa !59
  store i64 %i.bt, ptr %0, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bx = phi i64 [ %i.bs, %.lr.ph.split.split ], [ %i.bt, %._crit_edge.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %2
  br i1 %i.bz, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !4439
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.aq, %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
end_hunk_22
begin_hunk_23_@_ZN6duckdbL17CastExceptionTextINS_7dtime_tES1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationINS_7dtime_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11nth_elementIPN6duckdb7dtime_tENS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEvT_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.duckdb::QuantileCompare.1284") align 8 captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.1288", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1286", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1286", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::dtime_t", align 8  ; 14 uses
  %8 = alloca %"struct.duckdb::dtime_t", align 8  ; 9 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1286", align 8 ; 21 uses
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.f = icmp sgt i64 %i.e, 24
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = lshr exact i64 %i.e, 3
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %_ZSt27__unguarded_partition_pivotIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEET_SD_SD_T0_.exit.i
  %i.k = icmp eq i64 %i.dq, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !4453

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.en                      ; 3 uses
  %i.o = ashr i64 %i.n, 3                         ; 6 uses
  %i.p = icmp slt i64 %i.o, 2
  br i1 %i.p, label %_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.q = add nsw i64 %i.o, -2                     ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 4 uses
  %i.s = add nsw i64 %i.o, -1
  %i.t = lshr i64 %i.s, 1                         ; 4 uses
  %i.u = and i64 %i.n, 8
  %i.v = icmp eq i64 %i.u, 0
  %i.w = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.r
  br i1 %i.v, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.c, %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.us.i.i
  %.014.i.us.i.i = phi i64 [ %i.as, %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.us.i.i ], [ %i.r, %bb.c ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.us.i.i
  %.sroa.01.0.copyload.i.us.i.i = load i64, ptr %i.z, align 8, !tbaa !59 ; 2 uses
  %i.aa = icmp slt i64 %.014.i.us.i.i, %i.t
  br i1 %i.aa, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.thread.i.i

._crit_edge.i.i.us.thread.i.i:                    ; preds = %.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.split.us.i.i, %.lr.ph.i.i.us.i.i
  %.029.i.i.us.i.i = phi i64 [ %spec.select.i.i.us.i.i, %.lr.ph.i.i.us.i.i ], [ %.014.i.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.ab = shl i64 %.029.i.i.us.i.i, 1             ; 3 uses
  %i.ac = add i64 %i.ab, 2                        ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val.i.i.us.i.i = load i64, ptr %i.ad, align 8, !tbaa !326
  %i.ag = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.val.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.af)
  %i.ah = or disjoint i64 %i.ab, 1
  %spec.select.i.i.us.i.i = select i1 %i.ag, i64 %i.ah, i64 %i.ac ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.us.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.us.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !59
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !59
  %i.al = icmp slt i64 %spec.select.i.i.us.i.i, %i.t
  br i1 %i.al, label %.lr.ph.i.i.us.i.i, label %._crit_edge.i.i.us.i.i, !llvm.loop !4454

._crit_edge.i.i.us.i.i:                           ; preds = %.lr.ph.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.01.0.copyload.i.us.i.i, ptr %8, align 8
  br label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.us.i.i
  %.01316.i.i.i.us.i.i = phi i64 [ %.01721.i.i.i.us.i.i, %bb.d ], [ %spec.select.i.i.us.i.i, %._crit_edge.i.i.us.i.i ] ; 3 uses
  %.017.in.i.i.i.us.i.i = add nsw i64 %.01316.i.i.i.us.i.i, -1
  %.01721.i.i.i.us.i.i = lshr i64 %.017.in.i.i.i.us.i.i, 1 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.us.i.i ; 2 uses
  %.val.i.i.i.us.i.i = load i64, ptr %i.am, align 8, !tbaa !326
  %i.an = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.val.i.i.i.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %8)
  br i1 %i.an, label %bb.d, label %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.us.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.us.i.i
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !59
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !59
  %i.aq = icmp samesign ugt i64 %.01721.i.i.i.us.i.i, %.014.i.us.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.us.i.i, label %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.us.i.i, !llvm.loop !4455

_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.us.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.us.i.i, %._crit_edge.i.i.us.thread.i.i
  %.013.lcssa.i.i.i.us.i.i = phi i64 [ %.014.i.us.i.i, %._crit_edge.i.i.us.thread.i.i ], [ %.01316.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ], [ %.01721.i.i.i.us.i.i, %bb.d ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.us.i.i
  store i64 %.sroa.01.0.copyload.i.us.i.i, ptr %i.ar, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i.us.i.i = icmp eq i64 %.014.i.us.i.i, 0
  %i.as = add nsw i64 %.014.i.us.i.i, -1
  br i1 %.not.i.us.i.i, label %_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i, label %.split.us.i.i, !llvm.loop !4456

.split.i.i:                                       ; preds = %bb.c, %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i
  %.014.i.i.i = phi i64 [ %i.bp, %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i ], [ %i.r, %bb.c ] ; 8 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.014.i.i.i
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.at, align 8, !tbaa !59 ; 2 uses
  %i.au = icmp slt i64 %.014.i.i.i, %i.t
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %.split.i.i ] ; 2 uses
  %i.av = shl i64 %.029.i.i.i.i, 1                ; 3 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.val.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !326
  %i.ba = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.val.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.az)
  %i.bb = or disjoint i64 %i.av, 1
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.aw ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i.i.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !59
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !59
  %i.bf = icmp slt i64 %spec.select.i.i.i.i, %i.t
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4454

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %.split.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bg = icmp eq i64 %.0.lcssa.i.i.i.i, %i.r
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !59
  store i64 %i.bh, ptr %i.y, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %8, align 8
  %i.bi = icmp samesign ugt i64 %.1.i.i.i.i, %.014.i.i.i
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01316.i.i.i.i.i = phi i64 [ %.01721.i.i.i.i.i, %bb.g ], [ %.1.i.i.i.i, %bb.f ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.01721.i.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !326
  %i.bk = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.val.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %8)
  br i1 %i.bk, label %bb.g, label %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i.i.i
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !59
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !59
  %i.bn = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i, !llvm.loop !4455

_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01721.i.i.i.i.i, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i.i.i
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %i.bo, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.bp = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i, label %.split.i.i, !llvm.loop !4456

_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.us.i.i, %_ZSt13__adjust_heapIPN6duckdb7dtime_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_T0_SE_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.bq = icmp ult ptr %i.l, %..017.i
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i
  %i.br = add nsw i64 %i.o, -1
  %10 = lshr i64 %i.br, 1
  %i.bs = icmp sgt i64 %i.o, 2
  %i.bt = and i64 %i.n, 8
  %i.bu = icmp eq i64 %i.bt, 0                    ; 2 uses
  %i.bv = add nsw i64 %i.o, -2                    ; 3 uses
  %i.bw = ashr exact i64 %i.bv, 1                 ; 2 uses
  br i1 %i.bs, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.bx = or disjoint i64 %i.bv, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.bw
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.lr.ph.split.us.preheader.i.i
  %.026.us.i.i = phi ptr [ %i.ct, %bb.j ], [ %i.l, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %.0.val.us.i.i = load i64, ptr %.026.us.i.i, align 8, !tbaa !326
  %i.ca = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.0.val.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.ca, label %.lr.ph.i.i22.preheader.us.i.i, label %bb.j

.lr.ph.i.i22.preheader.us.i.i:                    ; preds = %.lr.ph.split.us.i.i
  %.sroa.01.0.copyload.i11.us.i.i = load i64, ptr %.026.us.i.i, align 8, !tbaa !59 ; 3 uses
  %i.cb = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.cb, ptr %.026.us.i.i, align 8, !tbaa !59
  br label %.lr.ph.i.i22.us.i.i

.lr.ph.i.i22.us.i.i:                              ; preds = %.lr.ph.i.i22.us.i.i, %.lr.ph.i.i22.preheader.us.i.i
  %.029.i.i23.us.i.i = phi i64 [ %spec.select.i.i25.us.i.i, %.lr.ph.i.i22.us.i.i ], [ 0, %.lr.ph.i.i22.preheader.us.i.i ] ; 2 uses
  %i.cc = shl i64 %.029.i.i23.us.i.i, 1           ; 3 uses
  %i.cd = add i64 %i.cc, 2                        ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.val.i.i24.us.i.i = load i64, ptr %i.ce, align 8, !tbaa !326
  %i.ch = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.val.i.i24.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.cg)
  %i.ci = or disjoint i64 %i.cc, 1
  %spec.select.i.i25.us.i.i = select i1 %i.ch, i64 %i.ci, i64 %i.cd ; 6 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %spec.select.i.i25.us.i.i
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.029.i.i23.us.i.i
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !59
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !59
  %i.cm = icmp slt i64 %spec.select.i.i25.us.i.i, %10
  br i1 %i.cm, label %.lr.ph.i.i22.us.i.i, label %._crit_edge.i.i12.loopexit.us.i.i, !llvm.loop !4454

bb.h:                                             ; preds = %._crit_edge.i.i12.loopexit.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.01.0.copyload.i11.us.i.i, ptr %7, align 8
  %.not.i14.us.i.i = icmp eq i64 %spec.select.i.i25.us.i.i, 0
  br i1 %.not.i14.us.i.i, label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.us.i.i, label %.lr.ph.i.i.i15.us.i.i.preheader

.thread.i.us.i.i:                                 ; preds = %._crit_edge.i.i12.loopexit.us.i.i
  %i.cn = load i64, ptr %i.by, align 8, !tbaa !59
  store i64 %i.cn, ptr %i.bz, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.01.0.copyload.i11.us.i.i, ptr %7, align 8
  br label %.lr.ph.i.i.i15.us.i.i.preheader

.lr.ph.i.i.i15.us.i.i.preheader:                  ; preds = %.thread.i.us.i.i, %bb.h
  %.01316.i.i.i16.us.i.i.ph = phi i64 [ %spec.select.i.i25.us.i.i, %bb.h ], [ %i.bx, %.thread.i.us.i.i ]
  br label %.lr.ph.i.i.i15.us.i.i

.lr.ph.i.i.i15.us.i.i:                            ; preds = %.lr.ph.i.i.i15.us.i.i.preheader, %bb.i
  %.01316.i.i.i16.us.i.i = phi i64 [ %.01721.i.i.i18.us.i.i, %bb.i ], [ %.01316.i.i.i16.us.i.i.ph, %.lr.ph.i.i.i15.us.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i17.us.i.i = add nsw i64 %.01316.i.i.i16.us.i.i, -1
  %.01721.i.i.i18.us.i.i = lshr i64 %.017.in.i.i.i17.us.i.i, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01721.i.i.i18.us.i.i ; 2 uses
  %.val.i.i.i19.us.i.i = load i64, ptr %i.co, align 8, !tbaa !326
  %i.cp = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.val.i.i.i19.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %7)
  br i1 %i.cp, label %bb.i, label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.us.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i15.us.i.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.01316.i.i.i16.us.i.i
  %i.cr = load i64, ptr %i.co, align 8, !tbaa !59
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !59
  %.not8.i.us.i.i = icmp eq i64 %.01721.i.i.i18.us.i.i, 0
  br i1 %.not8.i.us.i.i, label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.us.i.i, label %.lr.ph.i.i.i15.us.i.i, !llvm.loop !4455

_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.us.i.i: ; preds = %bb.i, %.lr.ph.i.i.i15.us.i.i, %bb.h
  %.013.lcssa.i.i.i21.us.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i16.us.i.i, %.lr.ph.i.i.i15.us.i.i ], [ 0, %bb.i ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i21.us.i.i
  store i64 %.sroa.01.0.copyload.i11.us.i.i, ptr %i.cs, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.us.i.i, %.lr.ph.split.us.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.026.us.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %..017.i
  br i1 %i.cu, label %.lr.ph.split.us.i.i, label %_ZSt13__heap_selectIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_.exit.i, !llvm.loop !4457

._crit_edge.i.i12.loopexit.us.i.i:                ; preds = %.lr.ph.i.i22.us.i.i
  %i.cv = icmp eq i64 %spec.select.i.i25.us.i.i, %i.bw
  %or.cond.i.i = select i1 %i.bu, i1 %i.cv, i1 false
  br i1 %or.cond.i.i, label %.thread.i.us.i.i, label %bb.h

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.0..i, i64 8 ; 2 uses
  br i1 %i.bu, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  %i.cx = icmp eq i64 %i.bv, 0
  br i1 %i.cx, label %.lr.ph.split.split.us.split.us.i.i, label %.lr.ph.split.split.us.split.i.i

.lr.ph.split.split.us.split.us.i.i:               ; preds = %.lr.ph.split.split.us.i.i, %bb.l
  %.026.us27.us.i.i = phi ptr [ %i.dd, %bb.l ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.us.i.i = load i64, ptr %.026.us27.us.i.i, align 8, !tbaa !326
  %i.cy = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.0.val.us28.us.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.cy, label %._crit_edge.i.i12.us29.us.i.i, label %bb.l

._crit_edge.i.i12.us29.us.i.i:                    ; preds = %.lr.ph.split.split.us.split.us.i.i
  %.sroa.01.0.copyload.i11.us30.us.i.i = load i64, ptr %.026.us27.us.i.i, align 8, !tbaa !59 ; 2 uses
  %i.cz = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.cz, ptr %.026.us27.us.i.i, align 8, !tbaa !59
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !59 ; 2 uses
  store i64 %i.da, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.01.0.copyload.i11.us30.us.i.i, ptr %7, align 8
  %i.db = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %i.da, ptr noundef nonnull readonly align 8 dereferenceable(8) %7)
  br i1 %i.db, label %bb.k, label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.loopexit.us40.us.i.i

bb.k:                                             ; preds = %._crit_edge.i.i12.us29.us.i.i
  %i.dc = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !59
  br label %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.loopexit.us40.us.i.i

bb.l:                                             ; preds = %_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.loopexit.us40.us.i.i, %.lr.ph.split.split.us.split.us.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.026.us27.us.i.i, i64 8 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %..017.i
  br i1 %i.de, label %.lr.ph.split.split.us.split.us.i.i, label %_ZSt13__heap_selectIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_.exit.i, !llvm.loop !4457

_ZSt10__pop_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_RT0_.exit.loopexit.us40.us.i.i: ; preds = %bb.k, %._crit_edge.i.i12.us29.us.i.i
  %.013.lcssa.i.i.i21.ph.us41.us.i.i = phi i64 [ 1, %._crit_edge.i.i12.us29.us.i.i ], [ 0, %bb.k ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0..i, i64 %.013.lcssa.i.i.i21.ph.us41.us.i.i
  store i64 %.sroa.01.0.copyload.i11.us30.us.i.i, ptr %i.df, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i, %bb.m
  %.026.us27.i.i = phi ptr [ %i.di, %bb.m ], [ %i.l, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %.0.val.us28.i.i = load i64, ptr %.026.us27.i.i, align 8, !tbaa !326
  %i.dg = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.0.val.us28.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dg, label %._crit_edge.i.i12.us29.i.i, label %bb.m

._crit_edge.i.i12.us29.i.i:                       ; preds = %.lr.ph.split.split.us.split.i.i
  %.sroa.01.0.copyload.i11.us30.i.i = load i64, ptr %.026.us27.i.i, align 8, !tbaa !59
  %i.dh = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dh, ptr %.026.us27.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.01.0.copyload.i11.us30.i.i, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i12.us29.i.i, %.lr.ph.split.split.us.split.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.026.us27.i.i, i64 8 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %..017.i
  br i1 %i.dj, label %.lr.ph.split.split.us.split.i.i, label %_ZSt13__heap_selectIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_.exit.i, !llvm.loop !4457

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.026.i.i = phi ptr [ %i.dm, %bb.n ], [ %i.l, %.lr.ph.split.i.i ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.026.i.i, align 8, !tbaa !326
  %i.dk = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.0.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0..i)
  br i1 %i.dk, label %._crit_edge.i.i12.i.i, label %bb.n

._crit_edge.i.i12.i.i:                            ; preds = %.lr.ph.split.split.i.i
  %.sroa.01.0.copyload.i11.i.i = load i64, ptr %.026.i.i, align 8, !tbaa !59
  %i.dl = load i64, ptr %.0..i, align 8, !tbaa !59
  store i64 %i.dl, ptr %.026.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.01.0.copyload.i11.i.i, ptr %.0..i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i12.i.i, %.lr.ph.split.split.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %..017.i
  br i1 %i.dn, label %.lr.ph.split.split.i.i, label %_ZSt13__heap_selectIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_.exit.i, !llvm.loop !4457

_ZSt13__heap_selectIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZSt11__make_heapIPN6duckdb7dtime_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_RT0_.exit.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0..i, align 8, !tbaa !59
  %i.do = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.do, ptr %.0..i, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 8, !tbaa !59
  br label %_ZSt13__introselectIPN6duckdb7dtime_tElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_12_GLOBAL__N_111MadAccessorIS1_NS0_10interval_tES1_EEEEEEEvT_SD_SD_T0_T1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.01735.i22 = phi ptr [ %..017.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01636.i21 = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader ]
  %.037.i20 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 15 uses
  %i.dp = phi i64 [ %i.eo, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader ]
  %i.dq = add nsw i64 %.01636.i21, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.dr = lshr i64 %i.dp, 4
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.037.i20, i64 %i.dr ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.037.i20, i64 8 ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %.01735.i22, i64 -8 ; 8 uses
  %.val25.i.i.i = load i64, ptr %i.dt, align 8, !tbaa !326
  %i.dv = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 %.val25.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ds)
  br i1 %i.dv, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph
  %.val24.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !326
end_hunk_23
begin_hunk_24_@_ZSt11nth_elementIPmN6duckdb15QuantileCompareINS1_16QuantileComposedINS1_12_GLOBAL__N_111MadAccessorINS1_7dtime_tENS1_10interval_tES6_EENS1_16QuantileIndirectIS6_EEEEEEEvT_SD_SD_T0_:bb.a
  br i1 %i.cb, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread45.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = icmp sgt i64 %i.bp, %i.bx
  br i1 %i.cc, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = icmp sge i64 %i.bp, %i.bx
  %i.ce = icmp sgt i64 %i.bl, %i.bt
  %spec.select.i.i.i.i12.i30.i.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  %cond.fr47.i.i.i = freeze i1 %spec.select.i.i.i.i12.i30.i.i.i
  br i1 %cond.fr47.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread45.i.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.i.i.i: ; preds = %bb.g
  %i.cf = icmp sge i64 %i.aw, %i.be
  %i.cg = icmp sgt i64 %i.as, %i.ba
  %spec.select.i.i.i.i.i37.i.i.i = select i1 %i.cf, i1 %i.cg, i1 false
  %cond.fr.i.i.i = freeze i1 %spec.select.i.i.i.i.i37.i.i.i
  br i1 %cond.fr.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread45.i.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.i.i.i, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e
  %i.ch = or disjoint i64 %i.ag, 1
  br label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread45.i.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread45.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.i.i.i, %bb.k, %bb.i, %bb.f
  %i.ci = phi i64 [ %i.ch, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread.i.i.i ], [ %i.ah, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.i.i.i ], [ %i.ah, %bb.k ], [ %i.ah, %bb.i ], [ %i.ah, %bb.f ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.029.i.i.i.i
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !59
  %i.cm = icmp slt i64 %i.ci, %i.u
  br i1 %i.cm, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4564

._crit_edge.i.i.i.i:                              ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread45.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %bb.d ], [ %i.ci, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit38.thread45.i.i.i ] ; 2 uses
  %i.cn = icmp eq i64 %.0.lcssa.i.i.i.i, %i.s
  %or.cond.i.i.i = select i1 %i.w, i1 %i.cn, i1 false
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.co = load i64, ptr %i.y, align 8, !tbaa !59
  store i64 %i.co, ptr %i.z, align 8, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.x, %bb.l ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.cp = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.cp, label %.lr.ph.i.i.preheader.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.m
  br i1 %i.ac, label %.lr.ph.i.i.us.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.i.preheader.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i
  %.01316.i.i.us.i.i.i = phi i64 [ %.01721.i.i.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i ], [ %.128.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 4 uses
  %.017.in.i.i.us.i.i.i = add nsw i64 %.01316.i.i.us.i.i.i, -1
  %.01721.i.i.us.i.i.i = lshr i64 %.017.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.01721.i.i.us.i.i.i ; 2 uses
  %.val.i.i.us.i.i.i = load i64, ptr %i.cq, align 8, !tbaa !59
  %.val5.i.us.i.i.i = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i.i.i, align 8, !tbaa !4342
  %.val6.i.us.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !4344
  %.val6.val.i.us.i.i.i = load ptr, ptr %.val6.i.us.i.i.i, align 8, !tbaa !4345
  %i.cr = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val5.i.us.i.i.i, ptr %.val6.val.i.us.i.i.i, i64 %.val.i.i.us.i.i.i) ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { i64, i64 } %i.cr, 1      ; 2 uses
  %.val.i16.us.i.i.i = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i.i.i, align 8, !tbaa !4342
  %.val3.i.us.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !4344
  %.val3.val.i.us.i.i.i = load ptr, ptr %.val3.i.us.i.i.i, align 8, !tbaa !4345
  %i.cu = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val.i16.us.i.i.i, ptr %.val3.val.i.us.i.i.i, i64 %i.ae) ; 2 uses
  %i.cv = extractvalue { i64, i64 } %i.cu, 0      ; 2 uses
  %i.cw = extractvalue { i64, i64 } %i.cu, 1      ; 2 uses
  %i.cx = sdiv i64 %i.ct, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.cx, -86400000000
  %i.cy = add i64 %.neg.i.i.i.i.i.i.us.i.i.i, %i.ct
  %i.cz = ashr i64 %i.cs, 32
  %i.da = add nsw i64 %i.cx, %i.cz                ; 2 uses
  %i.db = sdiv i64 %i.da, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.db, -30
  %i.dc = add nsw i64 %.neg16.i.i.i.i.i.i.us.i.i.i, %i.da ; 2 uses
  %sext18.i.us.i.i.i = shl i64 %i.cs, 32
  %i.dd = ashr exact i64 %sext18.i.us.i.i.i, 32
  %i.de = add nsw i64 %i.db, %i.dd                ; 2 uses
  %i.df = sdiv i64 %i.cw, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.df, -86400000000
  %i.dg = add i64 %.neg.i8.i.i.i.i.i.us.i.i.i, %i.cw
  %i.dh = ashr i64 %i.cv, 32
  %i.di = add nsw i64 %i.df, %i.dh                ; 2 uses
  %i.dj = sdiv i64 %i.di, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.us.i.i.i = mul nsw i64 %i.dj, -30
  %i.dk = add nsw i64 %.neg16.i9.i.i.i.i.i.us.i.i.i, %i.di ; 2 uses
  %sext20.i.us.i.i.i = shl i64 %i.cv, 32
  %i.dl = ashr exact i64 %sext20.i.us.i.i.i, 32
  %i.dm = add nsw i64 %i.dj, %i.dl                ; 2 uses
  %i.dn = icmp sgt i64 %i.de, %i.dm
  br i1 %i.dn, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.do = icmp slt i64 %i.de, %i.dm
  br i1 %i.do, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = icmp sgt i64 %i.dc, %i.dk
  br i1 %i.dp, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.us.i.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.us.i.i.i: ; preds = %bb.o
  %i.dq = icmp sge i64 %i.dc, %i.dk
  %i.dr = icmp sgt i64 %i.cy, %i.dg
  %spec.select.i.i.i.i.i.us.i.i.i = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %spec.select.i.i.i.i.i.us.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.us.i.i.i, %bb.o, %.lr.ph.i.i.us.i.i.i
  %i.ds = load i64, ptr %i.cq, align 8, !tbaa !59
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.01316.i.i.us.i.i.i
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !59
  %i.du = icmp samesign ugt i64 %.01721.i.i.us.i.i.i, %.014.i.i.i
  br i1 %i.du, label %.lr.ph.i.i.us.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i, !llvm.loop !4565

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.preheader.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i
  %.01316.i.i.i.i.i = phi i64 [ %.01721.i.i.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i ], [ %.128.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 4 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.01721.i.i.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 4 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.01721.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.dv, align 8, !tbaa !59
  %.val5.i.i.i.i = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i.i.i, align 8, !tbaa !4342
  %.val6.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !4344
  %.val6.val.i.i.i.i = load ptr, ptr %.val6.i.i.i.i, align 8, !tbaa !4345
  %i.dw = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val5.i.i.i.i, ptr %.val6.val.i.i.i.i, i64 %.val.i.i.i.i.i) ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0      ; 2 uses
  %i.dy = extractvalue { i64, i64 } %i.dw, 1      ; 2 uses
  %.val.i16.i.i.i = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i.i.i, align 8, !tbaa !4342
  %.val3.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !4344
  %.val3.val.i.i.i.i = load ptr, ptr %.val3.i.i.i.i, align 8, !tbaa !4345
  %i.dz = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val.i16.i.i.i, ptr %.val3.val.i.i.i.i, i64 %i.ae) ; 2 uses
  %i.ea = extractvalue { i64, i64 } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { i64, i64 } %i.dz, 1      ; 2 uses
  %i.ec = sdiv i64 %i.eb, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i8.i.i.i.i = mul nsw i64 %i.ec, -86400000000
  %i.ed = add i64 %.neg.i.i.i.i.i8.i.i.i.i, %i.eb
  %i.ee = ashr i64 %i.ea, 32
  %i.ef = add nsw i64 %i.ec, %i.ee                ; 2 uses
  %i.eg = sdiv i64 %i.ef, 30                      ; 2 uses
  %.neg16.i.i.i.i.i9.i.i.i.i = mul nsw i64 %i.eg, -30
  %i.eh = add nsw i64 %.neg16.i.i.i.i.i9.i.i.i.i, %i.ef ; 2 uses
  %sext.i.i.i.i = shl i64 %i.ea, 32
  %i.ei = ashr exact i64 %sext.i.i.i.i, 32
  %i.ej = add nsw i64 %i.eg, %i.ei                ; 2 uses
  %i.ek = sdiv i64 %i.dy, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i10.i.i.i.i = mul nsw i64 %i.ek, -86400000000
  %i.el = add i64 %.neg.i8.i.i.i.i10.i.i.i.i, %i.dy
  %i.em = ashr i64 %i.dx, 32
  %i.en = add nsw i64 %i.ek, %i.em                ; 2 uses
  %i.eo = sdiv i64 %i.en, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i11.i.i.i.i = mul nsw i64 %i.eo, -30
  %i.ep = add nsw i64 %.neg16.i9.i.i.i.i11.i.i.i.i, %i.en ; 2 uses
  %sext16.i.i.i.i = shl i64 %i.dx, 32
  %i.eq = ashr exact i64 %sext16.i.i.i.i, 32
  %i.er = add nsw i64 %i.eo, %i.eq                ; 2 uses
  %i.es = icmp sgt i64 %i.ej, %i.er
  br i1 %i.es, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.et = icmp slt i64 %i.ej, %i.er
  br i1 %i.et, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = icmp sgt i64 %i.eh, %i.ep
  br i1 %i.eu, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ev = icmp sge i64 %i.eh, %i.ep
  %i.ew = icmp sgt i64 %i.ed, %i.el
  %spec.select.i.i.i.i12.i.i.i.i = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %spec.select.i.i.i.i12.i.i.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i: ; preds = %bb.r, %bb.q, %.lr.ph.i.i.i.i.i
  %i.ex = load i64, ptr %i.dv, align 8, !tbaa !59
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.01316.i.i.i.i.i
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !59
  %i.ez = icmp samesign ugt i64 %.01721.i.i.i.i.i, %.014.i.i.i
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i, !llvm.loop !4565

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i, %bb.r, %bb.p, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.us.i.i.i, %bb.n, %bb.m
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.m ], [ %.01721.i.i.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i.i ], [ %.01316.i.i.us.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.us.i.i.i ], [ %.01316.i.i.us.i.i.i, %bb.n ], [ %.01316.i.i.i.i.i, %bb.r ], [ %.01316.i.i.i.i.i, %bb.p ], [ %.01721.i.i.i.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.i.i.i ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ae, ptr %i.fa, align 8, !tbaa !59
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.fb = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i, label %bb.d, !llvm.loop !4566

_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_T0_SI_T1_T2_.exit.i.i.i, %.lr.ph.i._crit_edge
  %i.fc = icmp ult ptr %i.m, %.01793.i.lcssa
  br i1 %i.fc, label %.lr.ph.i.i, label %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_RT0_.exit.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %5, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %.sroa.7.0.copyload.fr.i.i = freeze i8 %.sroa.7.0.copyload.i.i
  %i.fd = add nsw i64 %i.p, -1
  %7 = lshr i64 %i.fd, 1
  %i.fe = icmp sgt i64 %i.p, 2
  %i.ff = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.fg = getelementptr i8, ptr %.sroa.5.0.copyload.i.i, i64 8 ; 3 uses
  %i.fh = trunc i8 %.sroa.7.0.copyload.fr.i.i to i1 ; 2 uses
  %i.fi = and i64 %i.o, 8
  %i.fj = icmp eq i64 %i.fi, 0                    ; 2 uses
  %i.fk = add nsw i64 %i.p, -2                    ; 3 uses
  %i.fl = ashr exact i64 %i.fk, 1                 ; 2 uses
  %i.fm = icmp eq i64 %i.fk, 0
  %or.cond108.i.i = select i1 %i.fj, i1 %i.fm, i1 false
  %i.fn = or disjoint i64 %i.fk, 1                ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %i.fl
  br label %bb.s

bb.s:                                             ; preds = %bb.ah, %.lr.ph.i.i
  %.061.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.kl, %bb.ah ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.061.i.i, align 8, !tbaa !59
  %i.fq = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 %.0.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.095.i.lcssa)
  br i1 %i.fq, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.fr = load i64, ptr %.061.i.i, align 8, !tbaa !59 ; 3 uses
  %i.fs = load i64, ptr %.095.i.lcssa, align 8, !tbaa !59
  store i64 %i.fs, ptr %.061.i.i, align 8, !tbaa !59
  br i1 %i.fe, label %.lr.ph.i.i22.i.i, label %._crit_edge.i.i11.thread.i.i

.lr.ph.i.i22.i.i:                                 ; preds = %bb.t, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i
  %.029.i.i23.i.i = phi i64 [ %i.hv, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.ft = shl i64 %.029.i.i23.i.i, 1              ; 3 uses
  %i.fu = add i64 %i.ft, 2                        ; 5 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.val.i.i24.i.i = load i64, ptr %i.fv, align 8, !tbaa !59
  %.val5.i25.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !4342
  %.val6.i26.i.i = load ptr, ptr %i.ff, align 8, !tbaa !4344
  %.val6.val.i27.i.i = load ptr, ptr %.val6.i26.i.i, align 8, !tbaa !4345
  %i.fy = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val5.i25.i.i, ptr %.val6.val.i27.i.i, i64 %.val.i.i24.i.i) ; 2 uses
  %i.fz = extractvalue { i64, i64 } %i.fy, 0      ; 4 uses
  %i.ga = extractvalue { i64, i64 } %i.fy, 1      ; 4 uses
  %.val.i28.i.i = load ptr, ptr %.sroa.5.0.copyload.i.i, align 8, !tbaa !4342
  %.val3.i29.i.i = load ptr, ptr %i.fg, align 8, !tbaa !4344
  %.val4.i30.i.i = load i64, ptr %i.fx, align 8, !tbaa !59
  %.val3.val.i31.i.i = load ptr, ptr %.val3.i29.i.i, align 8, !tbaa !4345
  %i.gb = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val.i28.i.i, ptr %.val3.val.i31.i.i, i64 %.val4.i30.i.i) ; 2 uses
  %i.gc = extractvalue { i64, i64 } %i.gb, 0      ; 4 uses
  %i.gd = extractvalue { i64, i64 } %i.gb, 1      ; 4 uses
  br i1 %i.fh, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.lr.ph.i.i22.i.i
  %i.ge = sdiv i64 %i.ga, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i39.i.i = mul nsw i64 %i.ge, -86400000000
  %i.gf = add i64 %.neg.i.i.i.i.i.i39.i.i, %i.ga
  %i.gg = ashr i64 %i.fz, 32
  %i.gh = add nsw i64 %i.ge, %i.gg                ; 2 uses
  %i.gi = sdiv i64 %i.gh, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i40.i.i = mul nsw i64 %i.gi, -30
  %i.gj = add nsw i64 %.neg16.i.i.i.i.i.i40.i.i, %i.gh ; 2 uses
  %sext18.i41.i.i = shl i64 %i.fz, 32
  %i.gk = ashr exact i64 %sext18.i41.i.i, 32
  %i.gl = add nsw i64 %i.gi, %i.gk                ; 2 uses
  %i.gm = sdiv i64 %i.gd, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i42.i.i = mul nsw i64 %i.gm, -86400000000
  %i.gn = add i64 %.neg.i8.i.i.i.i.i42.i.i, %i.gd
  %i.go = ashr i64 %i.gc, 32
  %i.gp = add nsw i64 %i.gm, %i.go                ; 2 uses
  %i.gq = sdiv i64 %i.gp, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i43.i.i = mul nsw i64 %i.gq, -30
  %i.gr = add nsw i64 %.neg16.i9.i.i.i.i.i43.i.i, %i.gp ; 2 uses
  %sext20.i44.i.i = shl i64 %i.gc, 32
  %i.gs = ashr exact i64 %sext20.i44.i.i, 32
  %i.gt = add nsw i64 %i.gq, %i.gs                ; 2 uses
  %i.gu = icmp sgt i64 %i.gl, %i.gt
  br i1 %i.gu, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gv = icmp slt i64 %i.gl, %i.gt
  br i1 %i.gv, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gw = icmp sgt i64 %i.gj, %i.gr
  br i1 %i.gw, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.i.i

bb.x:                                             ; preds = %.lr.ph.i.i22.i.i
  %i.gx = sdiv i64 %i.gd, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i8.i32.i.i = mul nsw i64 %i.gx, -86400000000
  %i.gy = add i64 %.neg.i.i.i.i.i8.i32.i.i, %i.gd
  %i.gz = ashr i64 %i.gc, 32
  %i.ha = add nsw i64 %i.gx, %i.gz                ; 2 uses
  %i.hb = sdiv i64 %i.ha, 30                      ; 2 uses
  %.neg16.i.i.i.i.i9.i33.i.i = mul nsw i64 %i.hb, -30
  %i.hc = add nsw i64 %.neg16.i.i.i.i.i9.i33.i.i, %i.ha ; 2 uses
  %sext.i34.i.i = shl i64 %i.gc, 32
  %i.hd = ashr exact i64 %sext.i34.i.i, 32
  %i.he = add nsw i64 %i.hb, %i.hd                ; 2 uses
  %i.hf = sdiv i64 %i.ga, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i10.i35.i.i = mul nsw i64 %i.hf, -86400000000
  %i.hg = add i64 %.neg.i8.i.i.i.i10.i35.i.i, %i.ga
  %i.hh = ashr i64 %i.fz, 32
  %i.hi = add nsw i64 %i.hf, %i.hh                ; 2 uses
  %i.hj = sdiv i64 %i.hi, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i11.i36.i.i = mul nsw i64 %i.hj, -30
  %i.hk = add nsw i64 %.neg16.i9.i.i.i.i11.i36.i.i, %i.hi ; 2 uses
  %sext16.i37.i.i = shl i64 %i.fz, 32
  %i.hl = ashr exact i64 %sext16.i37.i.i, 32
  %i.hm = add nsw i64 %i.hj, %i.hl                ; 2 uses
  %i.hn = icmp sgt i64 %i.he, %i.hm
  br i1 %i.hn, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ho = icmp slt i64 %i.he, %i.hm
  br i1 %i.ho, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hp = icmp sgt i64 %i.hc, %i.hk
  br i1 %i.hp, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hq = icmp sge i64 %i.hc, %i.hk
  %i.hr = icmp sgt i64 %i.gy, %i.hg
  %spec.select.i.i.i.i12.i38.i.i = select i1 %i.hq, i1 %i.hr, i1 false
  %cond.fr55.i.i = freeze i1 %spec.select.i.i.i.i12.i38.i.i
  br i1 %cond.fr55.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.i.i: ; preds = %bb.w
  %i.hs = icmp sge i64 %i.gj, %i.gr
  %i.ht = icmp sgt i64 %i.gf, %i.gn
  %spec.select.i.i.i.i.i45.i.i = select i1 %i.hs, i1 %i.ht, i1 false
  %cond.fr.i.i = freeze i1 %spec.select.i.i.i.i.i45.i.i
  br i1 %cond.fr.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i, label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.i.i, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.u
  %i.hu = or disjoint i64 %i.ft, 1
  br label %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i

_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i: ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.i.i, %bb.aa, %bb.y, %bb.v
  %i.hv = phi i64 [ %i.hu, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread.i.i ], [ %i.fu, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.i.i ], [ %i.fu, %bb.aa ], [ %i.fu, %bb.y ], [ %i.fu, %bb.v ] ; 6 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !59
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.029.i.i23.i.i
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !59
  %i.hz = icmp slt i64 %i.hv, %7
  br i1 %i.hz, label %.lr.ph.i.i22.i.i, label %._crit_edge.i.i11.i.i, !llvm.loop !4564

._crit_edge.i.i11.i.i:                            ; preds = %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit46.thread53.i.i
  %i.ia = icmp eq i64 %i.hv, %i.fl
  %or.cond.i.i = select i1 %i.fj, i1 %i.ia, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i.i, label %bb.ab

._crit_edge.i.i11.thread.i.i:                     ; preds = %bb.t
  br i1 %or.cond108.i.i, label %.thread.i.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i11.thread.i.i, %._crit_edge.i.i11.i.i
  %i.ib = load i64, ptr %i.fo, align 8, !tbaa !59
  store i64 %i.ib, ptr %i.fp, align 8, !tbaa !59
  br label %.lr.ph.i.i.preheader.i14.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i11.i.i
  %.not.i13.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i13.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorINS4_7dtime_tENS4_10interval_tES9_EENS4_16QuantileIndirectIS9_EEEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.preheader.i14.i.i

.lr.ph.i.i.preheader.i14.i.i:                     ; preds = %bb.ab, %.thread.i.i.i
  %.128.i10.i.i.i = phi i64 [ %i.fn, %.thread.i.i.i ], [ %i.hv, %bb.ab ] ; 2 uses
  br i1 %i.fh, label %.lr.ph.i.i.i15.us.i.i, label %.lr.ph.i.i.i15.i.i

.lr.ph.i.i.i15.us.i.i:                            ; preds = %.lr.ph.i.i.preheader.i14.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i
  %.01316.i.i.i16.us.i.i = phi i64 [ %.01721.i.i.i18.us.i.i, %_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES4_EENS_16QuantileIndirectIS4_EEEEEclERKmSC_.exit.thread.us.i.i ], [ %.128.i10.i.i.i, %.lr.ph.i.i.preheader.i14.i.i ] ; 4 uses
  %.017.in.i.i.i17.us.i.i = add nsw i64 %.01316.i.i.i16.us.i.i, -1
  %.01721.i.i.i18.us.i.i = lshr i64 %.017.in.i.i.i17.us.i.i, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.095.i.lcssa, i64 %.01721.i.i.i18.us.i.i ; 2 uses
  %.val.i.i.i19.us.i.i = load i64, ptr %i.ic, align 8, !tbaa !59
  %.val5.i.us.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !4342
  %.val6.i.us.i.i = load ptr, ptr %i.ff, align 8, !tbaa !4344
  %.val6.val.i.us.i.i = load ptr, ptr %.val6.i.us.i.i, align 8, !tbaa !4345
  %i.id = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val5.i.us.i.i, ptr %.val6.val.i.us.i.i, i64 %.val.i.i.i19.us.i.i) ; 2 uses
  %i.ie = extractvalue { i64, i64 } %i.id, 0      ; 2 uses
  %i.if = extractvalue { i64, i64 } %i.id, 1      ; 2 uses
  %.val.i.us.i.i = load ptr, ptr %.sroa.5.0.copyload.i.i, align 8, !tbaa !4342
  %.val3.i.us.i.i = load ptr, ptr %i.fg, align 8, !tbaa !4344
  %.val3.val.i.us.i.i = load ptr, ptr %.val3.i.us.i.i, align 8, !tbaa !4345
  %i.ig = tail call fastcc { i64, i64 } @_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EENS_16QuantileIndirectIS3_EEEclERKm(ptr %.val.i.us.i.i, ptr %.val3.val.i.us.i.i, i64 %i.fr) ; 2 uses
  %i.ih = extractvalue { i64, i64 } %i.ig, 0      ; 2 uses
  %i.ii = extractvalue { i64, i64 } %i.ig, 1      ; 2 uses
  %i.ij = sdiv i64 %i.if, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.us.i.i = mul nsw i64 %i.ij, -86400000000
  %i.ik = add i64 %.neg.i.i.i.i.i.i.us.i.i, %i.if
  %i.il = ashr i64 %i.ie, 32
  %i.im = add nsw i64 %i.ij, %i.il                ; 2 uses
  %i.in = sdiv i64 %i.im, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.us.i.i = mul nsw i64 %i.in, -30
  %i.io = add nsw i64 %.neg16.i.i.i.i.i.i.us.i.i, %i.im ; 2 uses
  %sext18.i.us.i.i = shl i64 %i.ie, 32
  %i.ip = ashr exact i64 %sext18.i.us.i.i, 32
  %i.iq = add nsw i64 %i.in, %i.ip                ; 2 uses
  %i.ir = sdiv i64 %i.ii, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i.us.i.i = mul nsw i64 %i.ir, -86400000000
  %i.is = add i64 %.neg.i8.i.i.i.i.i.us.i.i, %i.ii
  %i.it = ashr i64 %i.ih, 32
  %i.iu = add nsw i64 %i.ir, %i.it                ; 2 uses
end_hunk_24
begin_hunk_25_@_ZN14duckdb_tdigest7TDigest16updateCumulativeEv:bb.a
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ay, ptr %i.p, align 8, !tbaa !832
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.az = phi ptr [ %i.by, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ %i.ad, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 5 uses
  %i.ba = phi ptr [ %i.bz, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ %i.ae, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 3 uses
  %i.bb = phi ptr [ %i.ca, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ %i.af, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 3 uses
  %.017 = phi i64 [ %i.cc, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ 0, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 2 uses
  %.01416 = phi double [ %i.cb, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ 0.000000e+00, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !4658
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.017
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !4778 ; 2 uses
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = fadd double %.01416, %i.bg              ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  store double %i.bh, ptr %i.bb, align 8, !tbaa !776
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.k, align 8, !tbaa !770
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.l:                                             ; preds = %.lr.ph
  %i.bj = ptrtoint ptr %i.ba to i64
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.m, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #31 ; 5 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store double %i.bh, ptr %i.bu, align 8, !tbaa !776
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.n, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.az, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #34
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bt, ptr %i.i, align 8, !tbaa !773
  store ptr %i.bw, ptr %i.k, align 8, !tbaa !770
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  store ptr %i.bx, ptr %i.p, align 8, !tbaa !832
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.k, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.by = phi ptr [ %i.az, %bb.k ], [ %i.bt, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bz = phi ptr [ %i.ba, %bb.k ], [ %i.bx, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ca = phi ptr [ %i.bi, %bb.k ], [ %i.bw, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cb = fadd double %.01416, %i.bf              ; 2 uses
  %i.cc = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4788
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.ca, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !4789

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cu, %bb.b ] ; 3 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.010.i.i
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !776 ; 2 uses
  %i.u = icmp slt i64 %.010.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.y
  %i.aa = load double, ptr %i.x, align 8, !tbaa !4780
  %i.ab = load double, ptr %i.z, align 8, !tbaa !4780
  %i.ac = fcmp olt double %i.aa, %i.ab
  %spec.select.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ae = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !4680
  %i.af = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !4790

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !4680
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ah = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i17.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17.preheader:                       ; preds = %bb.e
  %i.ai = extractelement <2 x double> %i.t, i64 0
  br label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph.i.i.i.i17.preheader, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %.lr.ph.i.i.i.i17.preheader ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0920.i.i.i.i ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !4780
  %i.al = fcmp olt double %i.ak, %i.ai
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !4680
  %i.an = icmp sgt i64 %.0920.i.i.i.i, %.010.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i, !llvm.loop !4791

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16
  store <2 x double> %i.t, ptr %i.ao, align 8, !tbaa !776
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.ap = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit, label %bb.c, !llvm.loop !4792

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_T0_SE_T1_T2_.exit.i.i
  %i.aq = icmp sgt i64 %.fr.i27.lcssa, 16
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ar, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !776 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !4680
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 4                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %3 = lshr i64 %i.aw, 1
  %i.ax = icmp sgt i64 %i.av, 2
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ay = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.bb
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !4780
  %i.be = load double, ptr %i.bc, align 8, !tbaa !4780
  %i.bf = fcmp olt double %i.bd, %i.be
  %spec.select.i.i.i.i = select i1 %i.bf, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bg = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.bh = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !4680
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %3
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4790

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bj = and i64 %i.au, 16
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = add nsw i64 %i.av, -2
  %i.bm = ashr exact i64 %i.bl, 1
  %i.bn = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bm
  br i1 %i.bn, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bp
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !4680
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bp, %.thread.i.i.i ]
  %i.bs = extractelement <2 x double> %i.as, i64 0
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i89.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0920.i.i89.i.i.i ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !4780
  %i.bv = fcmp olt double %i.bu, %i.bs
  br i1 %i.bv, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bw = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !4680
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4791

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bx = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store <2 x double> %i.as, ptr %i.bx, align 8, !tbaa !776
  %i.by = icmp sgt i64 %i.au, 16
  br i1 %i.by, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit, !llvm.loop !4793

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.ca, %bb.b ], [ %2, %.lr.ph ]
  %i.bz = phi i64 [ %i.cv, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ca = add nsw i64 %.02648, -1                 ; 3 uses
  %i.cb = lshr i64 %i.bz, 1
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 5 uses
  %i.ce = load double, ptr %i.f, align 8, !tbaa !4780 ; 3 uses
  %i.cf = load double, ptr %i.cc, align 8, !tbaa !4780 ; 3 uses
  %i.cg = fcmp olt double %i.ce, %i.cf
  %i.ch = load double, ptr %i.cd, align 8, !tbaa !4780 ; 4 uses
  br i1 %i.cg, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.ci = fcmp olt double %i.cf, %i.ch
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !4680
  store <2 x double> %.sroa.0.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cj = fcmp olt double %i.ce, %i.ch
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.057.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !4680
  store <2 x double> %.sroa.057.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %.sroa.059.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !4680
  store <2 x double> %.sroa.059.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.ck = fcmp olt double %i.ce, %i.ch
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.061.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !4680
  store <2 x double> %.sroa.061.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cl = fcmp olt double %i.cf, %i.ch
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.063.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !4680
  store <2 x double> %.sroa.063.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.sroa.065.0.copyload = load <2 x double>, ptr %.fr28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !4680
  store <2 x double> %.sroa.065.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cp, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %i.cm = load double, ptr %.fr28, align 8, !tbaa !4780 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.cp, %bb.t ] ; 9 uses
  %i.cn = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !4780
  %i.co = fcmp olt double %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.co, label %bb.t, label %.preheader.i.i, !llvm.loop !4794

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.cq = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !4780
  %i.cr = fcmp olt double %i.cm, %i.cq
  br i1 %i.cr, label %.preheader.i.i, label %bb.u, !llvm.loop !4795

bb.u:                                             ; preds = %.preheader.i.i
  %i.cs = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cs, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.067.0.copyload = load <2 x double>, ptr %.sroa.010.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !4680
  store <2 x double> %.sroa.067.0.copyload, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !4796

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.ca)
  %i.ct = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cu = sub i64 %i.ct, %i.a                     ; 2 uses
  %i.cv = ashr exact i64 %i.cu, 4                 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 16
  br i1 %i.cw, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit, !llvm.loop !4789

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_18CentroidComparatorEEEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load double, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !4780 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !4780
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.019.i.ptr, align 8
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !233

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !4680
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  store <2 x double> %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !776
  %i.j = load double, ptr %.pn18.i, align 8, !tbaa !4780
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.07.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i, i64 16, i1 false), !tbaa.struct !4680
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -16 ; 2 uses
  %i.l = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !4780
  %i.m = fcmp olt double %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest8CentroidESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_18CentroidComparatorEEEEvT_T0_.exit.i, !llvm.loop !4797
end_hunk_25
begin_hunk_26_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN14duckdb_tdigest7TDigestESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS3_17TDigestComparatorEEEEvT_T0_SG_T1_T2_:bb.a
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !4726
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !4726
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.bd, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bh = icmp sgt i64 %.1, %1
  br i1 %i.bh, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN14duckdb_tdigest7TDigestESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS3_17TDigestComparatorEEEEvT_T0_SG_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !4678
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !4658
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !4678
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !4658
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 4
  %i.by = add nsw i64 %i.bx, %i.bp
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.019.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0920.i, %bb.f ] ; 3 uses
  %.0920.in.i = add nsw i64 %.019.i, -1
  %.0920.i = sdiv i64 %.0920.in.i, 2              ; 4 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %0, i64 %.0920.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !4726 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !4678
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !4658
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !4678
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !4658
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 4
  %i.cr = add nsw i64 %i.cq, %i.ci
  %i.cs = icmp ugt i64 %i.cr, %i.by
  br i1 %i.cs, label %bb.f, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN14duckdb_tdigest7TDigestESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS3_17TDigestComparatorEEEEvT_T0_SG_T1_RT2_.exit

bb.f:                                             ; preds = %bb.e
  %i.ct = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i
  store ptr %i.ca, ptr %i.ct, align 8, !tbaa !4726
  %i.cu = icmp sgt i64 %.0920.i, %1
  br i1 %i.cu, label %bb.e, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN14duckdb_tdigest7TDigestESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS3_17TDigestComparatorEEEEvT_T0_SG_T1_RT2_.exit, !llvm.loop !4821

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN14duckdb_tdigest7TDigestESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS3_17TDigestComparatorEEEEvT_T0_SG_T1_RT2_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.019.i, %bb.e ], [ %.0920.i, %bb.f ]
  %i.cv = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store ptr %3, ptr %i.cv, align 8, !tbaa !4726
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueIN14duckdb_tdigest12CentroidListESt6vectorIS1_SaIS1_EENS0_22CentroidListComparatorEE4pushEOS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4839 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4840
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !4826
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !4839
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !4839
  %.pre = load ptr, ptr %0, align 8, !tbaa !4825
  br label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !4822   ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !4826
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !4826, !alias.scope !4841
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4845

_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #34
  br label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !4822
  store ptr %i.v, ptr %i.a, align 8, !tbaa !4839
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !4840
  br label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.x = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.z, align 8, !tbaa !4772
  %.sroa.02.0.copyload.i = load ptr, ptr %i.z, align 8, !tbaa !4772
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = icmp sgt i64 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backEOS1_.exit, %bb.f
  %.019.i.i = phi i64 [ %.0920.i78.i, %bb.f ], [ %i.af, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i78.i = lshr i64 %.0920.in.i.i, 1        ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.0920.i78.i ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !4827
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !4780
  %i.ak = load double, ptr %.sroa.02.0.copyload.i, align 8, !tbaa !4780
  %i.al = fcmp ogt double %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds [16 x i8], ptr %i.y, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !4826
  %.not.i = icmp eq i64 %.0920.i78.i, 0
  br i1 %.not.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit, label %.lr.ph.i.i, !llvm.loop !4846

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit: ; preds = %.lr.ph.i.i, %bb.f, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backEOS1_.exit
  %.0.lcssa.i.i = phi i64 [ %i.af, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backEOS1_.exit ], [ 0, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds [16 x i8], ptr %i.y, i64 %.0.lcssa.i.i
  store <2 x ptr> %i.aa, ptr %i.an, align 8, !tbaa !4772
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueIN14duckdb_tdigest12CentroidListESt6vectorIS1_SaIS1_EENS0_22CentroidListComparatorEE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4825   ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4825 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 16
  br i1 %i.g, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 4 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !4772
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !4772
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !4826
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.e                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %1 = lshr i64 %i.m, 1
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.r
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !4827
  %i.u = load double, ptr %i.t, align 8, !tbaa !4780
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !4827
  %i.w = load double, ptr %i.v, align 8, !tbaa !4780
  %i.x = fcmp ogt double %i.u, %i.w
  %spec.select.i.i.i = select i1 %i.x, i64 %i.r, i64 %i.p ; 4 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %i.a, i64 %spec.select.i.i.i
  %i.z = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !4826
  %i.aa = icmp slt i64 %spec.select.i.i.i, %1
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !4847

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.ab = and i64 %i.k, 16
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = add nsw i64 %i.l, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa.i.i.i, %i.ae
  br i1 %i.af, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !4826
  br label %.lr.ph.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %.not.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_SD_RT0_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d, %.thread.i.i
  %.019.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %bb.d ], [ %i.ah, %.thread.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i = phi i64 [ %.0920.i.i89.i.i, %bb.e ], [ %.019.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i89.i.i = lshr i64 %.0920.in.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0920.i.i89.i.i ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !4827
  %i.am = load double, ptr %i.al, align 8, !tbaa !4780
  %i.an = load double, ptr %.sroa.03.0.copyload.i.i, align 8, !tbaa !4780
  %i.ao = fcmp ogt double %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_SD_RT0_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !4826
  %.not10.i.i = icmp eq i64 %.0920.i.i89.i.i, 0
  br i1 %.not10.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_SD_RT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4846

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_SD_RT0_.exit.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i.i
  store <2 x ptr> %i.i, ptr %i.aq, align 8, !tbaa !4772
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !4839
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_SD_RT0_.exit.i
  %i.ar = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_SD_RT0_.exit.i ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -16
  store ptr %i.as, ptr %i.b, align 8, !tbaa !4839
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueIN14duckdb_tdigest12CentroidListESt6vectorIS1_SaIS1_EENS0_22CentroidListComparatorEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4839 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4840
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !4826
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !4839
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !4839
  %.pre = load ptr, ptr %0, align 8, !tbaa !4825
  br label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !4822   ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !4826
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !4826, !alias.scope !4848
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4845

_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #34
  br label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !4822
  store ptr %i.v, ptr %i.a, align 8, !tbaa !4839
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !4840
  br label %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.z, align 8, !tbaa !4772
  %.sroa.02.0.copyload.i = load ptr, ptr %i.z, align 8, !tbaa !4772
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = icmp sgt i64 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backERKS1_.exit, %bb.f
  %.019.i.i = phi i64 [ %.0920.i78.i, %bb.f ], [ %i.af, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i78.i = lshr i64 %.0920.in.i.i, 1        ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.0920.i78.i ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !4827
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !4780
  %i.ak = load double, ptr %.sroa.02.0.copyload.i, align 8, !tbaa !4780
  %i.al = fcmp ogt double %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds [16 x i8], ptr %i.y, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !4826
  %.not.i3 = icmp eq i64 %.0920.i78.i, 0
  br i1 %.not.i3, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit, label %.lr.ph.i.i, !llvm.loop !4846

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS2_22CentroidListComparatorEEvT_SA_T0_.exit: ; preds = %.lr.ph.i.i, %bb.f, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backERKS1_.exit
  %.0.lcssa.i.i = phi i64 [ %i.af, %_ZNSt6vectorIN14duckdb_tdigest12CentroidListESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds [16 x i8], ptr %i.y, i64 %.0.lcssa.i.i
  store <2 x ptr> %i.aa, ptr %i.an, align 8, !tbaa !4772
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !4772
  %.sroa.03.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !4772
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !4827
  %i.y = load double, ptr %i.x, align 8, !tbaa !4780
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !4827
  %i.aa = load double, ptr %i.z, align 8, !tbaa !4780
  %i.ab = fcmp ogt double %i.y, %i.aa
  %spec.select.i = select i1 %i.ab, i64 %i.v, i64 %i.t ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !4826
  %i.ae = icmp slt i64 %spec.select.i, %i.i
end_hunk_26
begin_hunk_27_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_T1_:bb.a
  %i.aa = add nsw i64 %.01722, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1623, i64 noundef %i.aa, ptr nonnull %3)
  %i.ab = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ac = sub i64 %i.ab, %i.a
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 16
  br i1 %i.ae, label %bb.b, label %.loopexit, !llvm.loop !8295

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEET_SE_SE_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 5 uses
  %i.e = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.e
  %i.g = load i64, ptr %0, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.g
  %i.i = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.h)
  %i.j = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !59 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.k, label %bb.d, label %bb.e, !prof !233

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.m = load i64, ptr %0, align 8, !tbaa !59
  store i64 %i.m, ptr %i.l, align 8, !tbaa !59
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.o = load i64, ptr %.pn20.i, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.o
  %i.q = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  %i.r = load i64, ptr %.sroa.0.010.i.i, align 8, !tbaa !59
  store i64 %i.r, ptr %.sroa.05.09.i.i, align 8, !tbaa !59
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.s = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.s
  %i.u = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !8299

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.j, ptr %.sink.i, align 8, !tbaa !59
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !8300

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.v, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_.exit.i ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit ] ; 5 uses
  %i.w = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !59 ; 2 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.w ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.y = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.y
  %i.aa = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.z)
  br i1 %i.aa, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i12
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 4 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  %i.ab = load i64, ptr %.sroa.0.010.i.i13, align 8, !tbaa !59
  store i64 %i.ab, ptr %.sroa.05.09.i.i14, align 8, !tbaa !59
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -8 ; 2 uses
  %i.ac = load i64, ptr %.sroa.0.0.i.i15, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.ac
  %i.ae = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
  br i1 %i.ae, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_.exit.i, !llvm.loop !8299

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store i64 %i.w, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i11 = icmp eq ptr %i.af, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit, label %.lr.ph.i10, !llvm.loop !8301

bb.g:                                             ; preds = %bb.a
  %i.ag = icmp eq ptr %0, %1
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  %or.cond = select i1 %i.ag, i1 true, i1 %.not19.i18
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22 ], [ %.sroa.0.018.i17, %bb.g ] ; 7 uses
  %.pn20.i21 = phi ptr [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22 ], [ %0, %bb.g ] ; 4 uses
  %i.ah = load i64, ptr %.sroa.0.021.i20, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.ah
  %i.aj = load i64, ptr %0, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.aj
  %i.al = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %i.ak)
  %i.am = load i64, ptr %.sroa.0.021.i20, align 8, !tbaa !59 ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i19
  %i.an = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.ao = sub i64 %i.an, %i.b                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !233

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 16
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

bb.j:                                             ; preds = %bb.h
  %i.au = icmp eq i64 %i.ao, 8
  br i1 %i.au, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  %i.aw = load i64, ptr %0, align 8, !tbaa !59
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !59
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

bb.l:                                             ; preds = %.lr.ph.i19
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.ay = load i64, ptr %.pn20.i21, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.ay
  %i.ba = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.az)
  br i1 %i.ba, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.l, %.lr.ph.i.i26
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.l ] ; 4 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.l ]
  %i.bb = load i64, ptr %.sroa.0.010.i.i27, align 8, !tbaa !59
  store i64 %i.bb, ptr %.sroa.05.09.i.i28, align 8, !tbaa !59
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -8 ; 2 uses
  %i.bc = load i64, ptr %.sroa.0.0.i.i29, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.bc
  %i.be = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.bd)
  br i1 %i.be, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22, !llvm.loop !8299

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22: ; preds = %.lr.ph.i.i26, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i23 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.021.i20, %bb.l ], [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ]
  store i64 %i.am, ptr %.sink.i23, align 8, !tbaa !59
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit, label %.lr.ph.i19, !llvm.loop !8300

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i22, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !59
  store i64 %i.g, ptr %i.e, align 8, !tbaa !59
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !230 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p
  %i.r = load i64, ptr %i.o, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.r
  %i.t = load i64, ptr %i.q, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.t
  %i.v = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.u)
  %spec.select.i.i = select i1 %i.v, i64 %i.p, i64 %i.n ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i
  store i64 %i.x, ptr %i.y, align 8, !tbaa !59
  %i.z = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8302

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.aa = and i64 %i.i, 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ac = add nsw i64 %i.j, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa.i.i, %i.ad
  br i1 %i.ae, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.af = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !59
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !59
  br label %.lr.ph.i.preheader.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.c, %.thread.i
  %.1.i7.i = phi i64 [ %i.ag, %.thread.i ], [ %.0.lcssa.i.i, %bb.c ]
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.f
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.preheader.i.i
  %.019.i.i.i = phi i64 [ %.0920.i.i89.i, %bb.d ], [ %.1.i7.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i89.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.am
  %i.ao = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.ak)
  br i1 %i.ao, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !59
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !59
  %.not10.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !8303

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %i.f, ptr %i.ar, align 8, !tbaa !59
  %i.as = icmp sgt i64 %i.i, 8
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !8304

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_SF_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_SF_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59   ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !230 ; 4 uses
  %i.r = icmp slt i64 %.09, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.s = shl i64 %.036.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load i64, ptr %i.u, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload, i64 %i.x
  %i.z = load i64, ptr %i.w, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.aa)
  %spec.select.i = select i1 %i.ab, i64 %i.v, i64 %i.t ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !59
  %i.af = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8302

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !59
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i, %.09
  br i1 %i.ai, label %.lr.ph.i.preheader.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_SF_T1_T2_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload, i64 %i.q
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload, i64 %i.al
  %i.an = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.aj)
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_SF_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !59
  %i.aq = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_SF_T1_T2_.exit, !llvm.loop !8303

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_SF_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %i.q, ptr %i.ar, align 8, !tbaa !59
  %.not = icmp eq i64 %.09, 0
  %i.as = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !8305

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_T0_SF_T1_T2_.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN6duckdb12IndirectLessINS9_5ValueEEEEEEvT_SE_SE_SE_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.a
  %i.c = load i64, ptr %2, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.c
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.f = load i64, ptr %3, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.f ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %2, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.h
  %i.j = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %0, align 8, !tbaa !59
  %i.l = load i64, ptr %2, align 8, !tbaa !59
  store i64 %i.l, ptr %0, align 8, !tbaa !59
  store i64 %i.k, ptr %2, align 8, !tbaa !59
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %1, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.m
  %i.o = load i64, ptr %3, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.o
  %i.q = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
  %i.r = load i64, ptr %0, align 8, !tbaa !59     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %3, align 8, !tbaa !59
  store i64 %i.s, ptr %0, align 8, !tbaa !59
  store i64 %i.r, ptr %3, align 8, !tbaa !59
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.t, ptr %0, align 8, !tbaa !59
  store i64 %i.r, ptr %1, align 8, !tbaa !59
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.u = load i64, ptr %1, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.u
  %i.w = tail call noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %0, align 8, !tbaa !59
  %i.y = load i64, ptr %1, align 8, !tbaa !59
  store i64 %i.y, ptr %0, align 8, !tbaa !59
  store i64 %i.x, ptr %1, align 8, !tbaa !59
  br label %bb.l
end_hunk_27
begin_hunk_28_@_ZSt13__introselectIPalN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_T0_T1_:bb.a
  %i.v = load i8, ptr %i.o, align 1, !tbaa !14    ; 10 uses
  br i1 %i.u, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph59
  %i.w = icmp sgt i8 %i.q, %i.v
  %i.x = icmp sgt i8 %i.v, %i.q
  %i.y = select i1 %i.r, i1 %i.w, i1 %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %.03656, align 1, !tbaa !14
  store i8 %i.q, ptr %.03656, align 1, !tbaa !14
  store i8 %i.z, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp sgt i8 %i.p, %i.v
  %i.ab = icmp sgt i8 %i.v, %i.p
  %i.ac = select i1 %i.r, i1 %i.aa, i1 %i.ab
  %i.ad = load i8, ptr %.03656, align 1, !tbaa !14 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 %i.v, ptr %.03656, align 1, !tbaa !14
  store i8 %i.ad, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.03656, align 1, !tbaa !14
  store i8 %i.ad, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ae = icmp sgt i8 %i.p, %i.v
  %i.af = icmp sgt i8 %i.v, %i.p
  %i.ag = select i1 %i.r, i1 %i.ae, i1 %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i8, ptr %.03656, align 1, !tbaa !14
  store i8 %i.p, ptr %.03656, align 1, !tbaa !14
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp sgt i8 %i.q, %i.v
  %i.aj = icmp sgt i8 %i.v, %i.q
  %i.ak = select i1 %i.r, i1 %i.ai, i1 %i.aj
  %i.al = load i8, ptr %.03656, align 1, !tbaa !14 ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 %i.v, ptr %.03656, align 1, !tbaa !14
  store i8 %i.al, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i8 %i.q, ptr %.03656, align 1, !tbaa !14
  store i8 %i.al, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.n, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.am = load i8, ptr %.03656, align 1, !tbaa !14 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i ], [ %i.ar, %bb.m ] ; 7 uses
  %i.an = load i8, ptr %.1.i.i, align 1, !tbaa !14 ; 3 uses
  %i.ao = icmp sgt i8 %i.an, %i.am
  %i.ap = icmp sgt i8 %i.am, %i.an
  %i.aq = select i1 %i.r, i1 %i.ao, i1 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !8421

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -1 ; 5 uses
  %i.as = load i8, ptr %.114.i.i, align 1, !tbaa !14 ; 3 uses
  %i.at = icmp sgt i8 %i.am, %i.as
  %i.au = icmp sgt i8 %i.as, %i.am
  %i.av = select i1 %i.r, i1 %i.at, i1 %i.au
  br i1 %i.av, label %.preheader.i.i, label %bb.n, !llvm.loop !8422

bb.n:                                             ; preds = %.preheader.i.i
  %i.aw = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.aw, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i8 %i.as, ptr %.1.i.i, align 1, !tbaa !14
  store i8 %i.an, ptr %.114.i.i, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !8423

_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.ax = ptrtoint ptr %..017 to i64
  %i.ay = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 3
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !8420

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.ay, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit ]
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.bb = icmp eq ptr %.0.lcssa, %.017.lcssa
  br i1 %i.bb, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.019.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 3 uses
  %.not20.i = icmp eq ptr %.019.i, %.017.lcssa
  br i1 %.not20.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.bc = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.019.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn21.i = phi ptr [ %.022.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 3 uses
  %i.bd = load i8, ptr %.022.i, align 1, !tbaa !14 ; 7 uses
  %i.be = load i8, ptr %.0.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.bf = icmp sgt i8 %i.bd, %i.be
  %i.bg = icmp sgt i8 %i.be, %i.bd
  %i.bh = select i1 %i.bc, i1 %i.bf, i1 %i.bg
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bi = ptrtoint ptr %.022.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa30                ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.019.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bl = icmp eq i64 %i.bj, 1
  br i1 %i.bl, label %bb.s, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 1
  store i8 %i.be, ptr %i.bm, align 1, !tbaa !14
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.bn = load i8, ptr %.pn21.i, align 1, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i8 %i.bd, %i.bn
  %i.bp = icmp sgt i8 %i.bn, %i.bd
  %i.bq = select i1 %i.bc, i1 %i.bo, i1 %i.bp
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.br = phi i8 [ %i.bs, %.lr.ph.i.i ], [ %i.bn, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn21.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.022.i, %bb.t ]
  store i8 %i.br, ptr %.0912.i.i, align 1, !tbaa !14
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -1 ; 2 uses
  %i.bs = load i8, ptr %.0.i.i22, align 1, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i8 %i.bd, %i.bs
  %i.bu = icmp sgt i8 %i.bs, %i.bd
  %i.bv = select i1 %i.bc, i1 %i.bt, i1 %i.bu
  br i1 %i.bv, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, !llvm.loop !8424

_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.022.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i8 %i.bd, ptr %.sink.i, align 1, !tbaa !14
  %.0.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !8425

_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit: ; preds = %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, %.preheader.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1894") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 4 uses
  call void @_ZSt11__make_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.b = icmp ult ptr %1, %2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !8426, !range !234, !noundef !235
  %i.e = trunc nuw i8 %i.d to i1                  ; 11 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = add nsw i64 %i.h, -1
  %4 = lshr i64 %i.i, 1
  %i.j = icmp sgt i64 %i.h, 2
  %i.k = and i64 %i.h, 1
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add i64 %i.h, -2                         ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i8, ptr %.011.us, align 1, !tbaa !14 ; 5 uses
  %i.s = load i8, ptr %0, align 1, !tbaa !14      ; 3 uses
  %i.t = icmp sgt i8 %i.r, %i.s
  %i.u = icmp sgt i8 %i.s, %i.r
  %i.v = select i1 %i.e, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i8 %i.s, ptr %.011.us, align 1, !tbaa !14
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  %i.z = getelementptr i8, ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !14   ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !14  ; 2 uses
  %i.ad = icmp sgt i8 %i.ab, %i.ac
  %i.ae = icmp sgt i8 %i.ac, %i.ab
  %i.af = select i1 %i.e, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.us
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.029.i.i.us
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !14
  %i.ak = icmp slt i64 %spec.select.i.i.us, %4
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !8429

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i8, ptr %i.p, align 1, !tbaa !14
  store i8 %i.al, ptr %i.q, align 1, !tbaa !14
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1011.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1011.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i1011.i.us
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14  ; 3 uses
  %i.ao = icmp sgt i8 %i.an, %i.r
  %i.ap = icmp sgt i8 %i.r, %i.an
  %i.aq = select i1 %i.e, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %.01317.i.i.i.us
  store i8 %i.an, ptr %i.ar, align 1, !tbaa !14
  %.not12.i.us = icmp eq i64 %.018.i.i1011.i.us, 0
  br i1 %.not12.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !8430

_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds i8, ptr %0, i64 %.013.lcssa.i.i.i.us
  store i8 %i.r, ptr %i.as, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 1 ; 2 uses
  %exitcond33.not = icmp eq ptr %i.at, %2
  br i1 %exitcond33.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !8431

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.au = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.au, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i8, ptr %0, align 1, !tbaa !14     ; 5 uses
  %i.aw = sub i64 %i.a, %i.f
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.prol.loopexit, label %.lr.ph.split.split.prol

.lr.ph.split.split.prol:                          ; preds = %.lr.ph.split.split.preheader
  %i.ax = load i8, ptr %1, align 1, !tbaa !14     ; 4 uses
  %i.ay = icmp sgt i8 %i.ax, %.pre
  %i.az = icmp sgt i8 %.pre, %i.ax
  %i.ba = select i1 %i.e, i1 %i.ay, i1 %i.az
  br i1 %i.ba, label %._crit_edge.i.i.prol, label %.lr.ph.split.split.prol.loopexit.unr-lcssa

._crit_edge.i.i.prol:                             ; preds = %.lr.ph.split.split.prol
  store i8 %.pre, ptr %1, align 1, !tbaa !14
  store i8 %i.ax, ptr %0, align 1, !tbaa !14
  br label %.lr.ph.split.split.prol.loopexit.unr-lcssa

.lr.ph.split.split.prol.loopexit.unr-lcssa:       ; preds = %._crit_edge.i.i.prol, %.lr.ph.split.split.prol
  %i.bb = phi i8 [ %.pre, %.lr.ph.split.split.prol ], [ %i.ax, %._crit_edge.i.i.prol ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.split.split.prol.loopexit

.lr.ph.split.split.prol.loopexit:                 ; preds = %.lr.ph.split.split.prol.loopexit.unr-lcssa, %.lr.ph.split.split.preheader
  %.unr = phi i8 [ %.pre, %.lr.ph.split.split.preheader ], [ %i.bb, %.lr.ph.split.split.prol.loopexit.unr-lcssa ]
  %.011.unr = phi ptr [ %1, %.lr.ph.split.split.preheader ], [ %i.bc, %.lr.ph.split.split.prol.loopexit.unr-lcssa ]
  %i.bd = add i64 %i.a, -1
  %i.be = icmp eq i64 %i.bd, %i.f
  br i1 %i.be, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bf = icmp eq i64 %i.m, 0
  br i1 %i.bf, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre34 = load i8, ptr %0, align 1, !tbaa !14   ; 5 uses
  %i.bg = sub i64 %i.a, %i.f
  %xtraiter49 = and i64 %i.bg, 1
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol

.lr.ph.split.split.us.split.prol:                 ; preds = %.lr.ph.split.split.us.split.preheader
  %i.bh = load i8, ptr %1, align 1, !tbaa !14     ; 4 uses
  %i.bi = icmp sgt i8 %i.bh, %.pre34
  %i.bj = icmp sgt i8 %.pre34, %i.bh
  %i.bk = select i1 %i.e, i1 %i.bi, i1 %i.bj
  br i1 %i.bk, label %._crit_edge.i.i.us13.prol, label %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa

._crit_edge.i.i.us13.prol:                        ; preds = %.lr.ph.split.split.us.split.prol
  store i8 %.pre34, ptr %1, align 1, !tbaa !14
  store i8 %i.bh, ptr %0, align 1, !tbaa !14
  br label %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa

.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.us13.prol, %.lr.ph.split.split.us.split.prol
  %i.bl = phi i8 [ %i.bh, %._crit_edge.i.i.us13.prol ], [ %.pre34, %.lr.ph.split.split.us.split.prol ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.split.split.us.split.prol.loopexit

.lr.ph.split.split.us.split.prol.loopexit:        ; preds = %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa, %.lr.ph.split.split.us.split.preheader
  %.unr51 = phi i8 [ %.pre34, %.lr.ph.split.split.us.split.preheader ], [ %i.bl, %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa ]
  %.011.us12.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.preheader ], [ %i.bm, %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa ]
  %i.bn = add i64 %i.a, -1
  %i.bo = icmp eq i64 %i.bn, %i.f
  br i1 %i.bo, label %._crit_edge, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bz, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.bp = load i8, ptr %.011.us12.us, align 1, !tbaa !14 ; 5 uses
  %i.bq = load i8, ptr %0, align 1, !tbaa !14     ; 3 uses
  %i.br = icmp sgt i8 %i.bp, %i.bq
  %i.bs = icmp sgt i8 %i.bq, %i.bp
  %i.bt = select i1 %i.e, i1 %i.br, i1 %i.bs
  br i1 %i.bt, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i8 %i.bq, ptr %.011.us12.us, align 1, !tbaa !14
  %i.bu = load i8, ptr %i.av, align 1, !tbaa !14  ; 3 uses
  store i8 %i.bu, ptr %0, align 1, !tbaa !14
  %i.bv = icmp sle i8 %i.bu, %i.bp
  %i.bw = icmp sle i8 %i.bp, %i.bu
  %i.bx = select i1 %i.e, i1 %i.bv, i1 %i.bw
  %spec.select = zext i1 %i.bx to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select
  store i8 %i.bp, ptr %i.by, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 1 ; 2 uses
  %exitcond31.not = icmp eq ptr %i.bz, %2
  br i1 %exitcond31.not, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !8431

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.prol.loopexit, %bb.f
  %i.ca = phi i8 [ %i.cl, %bb.f ], [ %.unr51, %.lr.ph.split.split.us.split.prol.loopexit ] ; 4 uses
  %.011.us12 = phi ptr [ %i.cm, %bb.f ], [ %.011.us12.unr, %.lr.ph.split.split.us.split.prol.loopexit ] ; 4 uses
  %i.cb = load i8, ptr %.011.us12, align 1, !tbaa !14 ; 4 uses
  %i.cc = icmp sgt i8 %i.cb, %i.ca
  %i.cd = icmp sgt i8 %i.ca, %i.cb
  %i.ce = select i1 %i.e, i1 %i.cc, i1 %i.cd
  br i1 %i.ce, label %._crit_edge.i.i.us13, label %.lr.ph.split.split.us.split.1

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i8 %i.ca, ptr %.011.us12, align 1, !tbaa !14
  store i8 %i.cb, ptr %0, align 1, !tbaa !14
  br label %.lr.ph.split.split.us.split.1

.lr.ph.split.split.us.split.1:                    ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.cf = phi i8 [ %i.cb, %._crit_edge.i.i.us13 ], [ %i.ca, %.lr.ph.split.split.us.split ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.011.us12, i64 1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14  ; 4 uses
  %i.ci = icmp sgt i8 %i.ch, %i.cf
  %i.cj = icmp sgt i8 %i.cf, %i.ch
  %i.ck = select i1 %i.e, i1 %i.ci, i1 %i.cj
  br i1 %i.ck, label %._crit_edge.i.i.us13.1, label %bb.f
end_hunk_28
begin_hunk_29_@_ZN6duckdb17AggregateExecutor8FinalizeINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRNS_6VectorERNS_18AggregateInputDataESA_mm:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.n = add i64 %.020, %4                        ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !926
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.020
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8856
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.n
  call void @_ZN6duckdb23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEE8FinalizeINS_8string_tENS_13QuantileStateIS4_NS_18QuantileStringTypeEEEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.r = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8901

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEE8FinalizeINS_8string_tENS_13QuantileStateIS4_NS_18QuantileStringTypeEEEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::QuantileInterpolator.1890", align 8 ; 8 uses
  %4 = alloca %"struct.duckdb::QuantileDirect.2042", align 1 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8858
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8858
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !928, !nonnull !235, !align !683 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !242  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_13QuantileValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !8893
  %i.k = load ptr, ptr %0, align 8, !tbaa !8896
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !208, !range !234, !noundef !235
  store i8 %i.q, ptr %3, align 8, !tbaa !8390
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = tail call noundef i64 @_ZN6duckdb20QuantileInterpolatorILb1EE5IndexERKNS_13QuantileValueEm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 noundef %i.o) ; 2 uses
  store i64 %i.s, ptr %i.r, align 8, !tbaa !8392
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !8393
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.u, align 8, !tbaa !8394
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.o, ptr %i.v, align 8, !tbaa !8395
  %i.w = load ptr, ptr %0, align 8, !tbaa !8896
  %i.x = load ptr, ptr %2, align 8, !tbaa !947, !nonnull !235, !align !683
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.y = call { i64, ptr } @_ZNK6duckdb20QuantileInterpolatorILb1EE19InterpolateInternalINS_8string_tENS_14QuantileDirectIS3_EEEENT0_11RESULT_TYPEEPT_RKS6_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1
  %i.ab = call { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %i.x, i64 %i.z, ptr %i.aa) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1
  store i64 %i.ac, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZNK6duckdb20QuantileInterpolatorILb1EE19InterpolateInternalINS_8string_tENS_14QuantileDirectIS3_EEEENT0_11RESULT_TYPEEPT_RKS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i.i.i = alloca %struct.anon, align 8 ; 4 uses
  %3 = alloca %"struct.duckdb::QuantileCompare.2043", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !8390, !range !234, !noundef !235
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8394 ; 2 uses
  %.idx12 = shl nuw nsw i64 %i.c, 4               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !8392 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8395 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 4                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %3, align 8
  %.sroa.2.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx9, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.a, ptr %.sroa.3.0..sroa_idx, align 8
  %i.k = icmp samesign eq i64 %i.c, %i.i
  %i.l = icmp samesign eq i64 %i.f, %i.i
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %_ZSt11nth_elementIPN6duckdb8string_tENS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEvT_S7_S7_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %gepdiff = sub nsw i64 %.idx, %.idx12           ; 3 uses
  %i.m = icmp sgt i64 %gepdiff, 48
  br i1 %i.m, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.n = lshr exact i64 %gepdiff, 4
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true) ; 2 uses
  %i.p = icmp eq i64 %i.o, 63
  br i1 %i.p, label %.lr.ph.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader.i
  %i.q = shl nuw nsw i64 %i.o, 1
  %i.r = xor i64 %i.q, 126
  br label %bb.c

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = add nsw i64 %.01624.i.i22, -1            ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i._crit_edge, label %bb.c, !llvm.loop !8902

.lr.ph.i.i._crit_edge:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.025.i.i.lcssa = phi ptr [ %i.d, %.lr.ph.i.preheader.i ], [ %.0..i.i, %.lr.ph.i.i ] ; 3 uses
  %.01723.i.i.lcssa = phi ptr [ %i.j, %.lr.ph.i.preheader.i ], [ %..017.i.i, %.lr.ph.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @_ZSt13__heap_selectIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_(ptr noundef %.025.i.i.lcssa, ptr noundef nonnull %i.u, ptr noundef %.01723.i.i.lcssa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.2045") align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.025.i.i.lcssa, i64 16, i1 false), !tbaa.struct !7606
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.025.i.i.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZSt11nth_elementIPN6duckdb8string_tENS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEvT_S7_S7_T0_.exit

bb.c:                                             ; preds = %.lr.ph, %.lr.ph.i.i
  %.01723.i.i23 = phi ptr [ %i.j, %.lr.ph ], [ %..017.i.i, %.lr.ph.i.i ] ; 3 uses
  %.01624.i.i22 = phi i64 [ %i.r, %.lr.ph ], [ %i.s, %.lr.ph.i.i ]
  %.025.i.i21 = phi ptr [ %i.d, %.lr.ph ], [ %.0..i.i, %.lr.ph.i.i ] ; 5 uses
  %i.v = phi i64 [ %gepdiff, %.lr.ph ], [ %i.ad, %.lr.ph.i.i ]
  %i.w = lshr i64 %i.v, 5
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.025.i.i21, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.025.i.i21, i64 16 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.01723.i.i23, i64 -16
  tail call void @_ZSt22__move_median_to_firstIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_SB_T0_(ptr noundef %.025.i.i21, ptr noundef nonnull %i.y, ptr noundef %i.x, ptr noundef nonnull %i.z, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.2045") align 8 %3)
  %i.aa = tail call noundef ptr @_ZSt21__unguarded_partitionIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEET_SB_SB_SB_T0_(ptr noundef nonnull %i.y, ptr noundef %.01723.i.i23, ptr noundef %.025.i.i21, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.2045") align 8 %3) ; 3 uses
  %.not.i.i = icmp ugt ptr %i.aa, %i.g            ; 2 uses
  %..017.i.i = select i1 %.not.i.i, ptr %i.aa, ptr %.01723.i.i23 ; 4 uses
  %.0..i.i = select i1 %.not.i.i, ptr %.025.i.i21, ptr %i.aa ; 4 uses
  %i.ab = ptrtoint ptr %..017.i.i to i64
  %i.ac = ptrtoint ptr %.0..i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 48
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8902

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.017.lcssa.i.i = phi ptr [ %i.j, %bb.b ], [ %..017.i.i, %bb.c ]
  %.0.lcssa.i.i = phi ptr [ %i.d, %bb.b ], [ %.0..i.i, %bb.c ]
  tail call void @_ZSt16__insertion_sortIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_(ptr noundef %.0.lcssa.i.i, ptr noundef %.017.lcssa.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.2045") align 8 %3)
  br label %_ZSt11nth_elementIPN6duckdb8string_tENS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEvT_S7_S7_T0_.exit

_ZSt11nth_elementIPN6duckdb8string_tENS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEvT_S7_S7_T0_.exit: ; preds = %.lr.ph.i.i._crit_edge, %._crit_edge.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.af = load i64, ptr %i.e, align 8, !tbaa !8392
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.2045") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 14 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 14 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  call void @_ZSt11__make_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = add nsw i64 %i.e, -1
  %8 = lshr i64 %i.f, 1                           ; 2 uses
  %i.g = icmp sgt i64 %i.e, 2
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = and i64 %i.d, 16
  %i.m = icmp eq i64 %i.l, 0                      ; 2 uses
  %i.n = add nsw i64 %i.e, -2                     ; 3 uses
  %i.o = ashr exact i64 %i.n, 1                   ; 2 uses
  %.sroa.7.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = icmp eq i64 %i.n, 0
  %or.cond51 = select i1 %i.m, i1 %i.s, i1 false
  %i.t = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.034 = phi ptr [ %1, %.lr.ph ], [ %i.dl, %bb.v ] ; 5 uses
  %i.w = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.034, ptr noundef %0)
  br i1 %i.w, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i = load i64, ptr %.034, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.034, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !7606
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.g, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.x = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.x, label %.lr.ph.i.i.us, label %.lr.ph.i.i

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader, %bb.g
  %.030.i.i.us = phi i64 [ %i.av, %bb.g ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.030.i.i.us, 1                  ; 3 uses
  %i.z = add i64 %i.y, 2                          ; 3 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr [16 x i8], ptr %0, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !7606
  %i.ad = load i32, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.ae = load i32, ptr %5, align 8, !tbaa !14    ; 3 uses
  %i.af = icmp ult i32 %i.ae, %i.ad
  %.0.copyload.i.i.i.i.i.i.i15.us = load i32, ptr %i.i, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.i16.us = load i32, ptr %i.h, align 4 ; 2 uses
  %.not.i.i.i.i.i.i17.us = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i15.us, %.0.copyload.i11.i.i.i.i.i.i16.us
  br i1 %.not.i.i.i.i.i.i17.us, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us: ; preds = %.lr.ph.i.i.us
  %i.ag = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i15.us)
  %i.ah = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i16.us)
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.ai, label %bb.f, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.us
  %.sroa.speculated.i.i.i.i.i.i18.us = call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.ad)
  %i.aj = icmp ult i32 %i.ad, 13
  %i.ak = load ptr, ptr %i.k, align 8
  %i.al = select i1 %i.aj, ptr %i.i, ptr %i.ak
  %i.am = icmp ult i32 %i.ae, 13
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = select i1 %i.am, ptr %i.h, ptr %i.an
  %i.ap = zext i32 %.sroa.speculated.i.i.i.i.i.i18.us to i64
  %i.aq = call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.ao, i64 noundef %i.ap) #37 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = select i1 %i.as, i1 %i.af, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %cond.fr32.us = freeze i1 %i.at
  br i1 %cond.fr32.us, label %bb.f, label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us
  %i.au = or disjoint i64 %i.y, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us
  %i.av = phi i64 [ %i.au, %bb.f ], [ %i.z, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us ], [ %i.z, %bb.e ] ; 4 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %i.av
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !7606
  %i.ay = icmp slt i64 %i.av, %8
  br i1 %i.ay, label %.lr.ph.i.i.us, label %._crit_edge.i.i, !llvm.loop !8903

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.l
  %.030.i.i = phi i64 [ %i.bw, %bb.l ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = shl i64 %.030.i.i, 1                    ; 3 uses
  %i.ba = add i64 %i.az, 2                        ; 3 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba
  %i.bc = getelementptr [16 x i8], ptr %0, i64 %i.az
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !7606
  %i.be = load i32, ptr %5, align 8, !tbaa !14    ; 3 uses
  %i.bf = load i32, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.bg = icmp ult i32 %i.bf, %i.be
  %.0.copyload.i.i.i.i.i3.i.i11 = load i32, ptr %i.h, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i4.i.i12 = load i32, ptr %i.i, align 4 ; 2 uses
  %.not.i.i.i.i5.i.i13 = icmp eq i32 %.0.copyload.i.i.i.i.i3.i.i11, %.0.copyload.i11.i.i.i.i4.i.i12
  br i1 %.not.i.i.i.i5.i.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bh = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i3.i.i11)
  %i.bi = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i4.i.i12)
  %i.bj = icmp ugt i32 %i.bh, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.bj, label %bb.k, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i.i
  %.sroa.speculated.i.i.i.i7.i.i14 = call i32 @llvm.umin.i32(i32 %i.bf, i32 %i.be)
  %i.bk = icmp ult i32 %i.be, 13
  %i.bl = load ptr, ptr %i.j, align 8
  %i.bm = select i1 %i.bk, ptr %i.h, ptr %i.bl
  %i.bn = icmp ult i32 %i.bf, 13
  %i.bo = load ptr, ptr %i.k, align 8
  %i.bp = select i1 %i.bn, ptr %i.i, ptr %i.bo
  %i.bq = zext i32 %.sroa.speculated.i.i.i.i7.i.i14 to i64
  %i.br = call i32 @memcmp(ptr noundef %i.bm, ptr noundef %i.bp, i64 noundef %i.bq) #37 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = icmp eq i32 %i.br, 0
  %i.bu = select i1 %i.bt, i1 %i.bg, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %cond.fr33 = freeze i1 %i.bu
  br i1 %cond.fr33, label %bb.k, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread
  %i.bv = or disjoint i64 %i.az, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.k
  %i.bw = phi i64 [ %i.bv, %bb.k ], [ %i.ba, %bb.h ], [ %i.ba, %bb.j ] ; 4 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bw
  %i.by = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !7606
  %i.bz = icmp slt i64 %i.bw, %8
  br i1 %i.bz, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8903

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.g
  %.0.lcssa.i.i = phi i64 [ %i.av, %bb.g ], [ %i.bw, %bb.l ] ; 3 uses
  %i.ca = icmp eq i64 %.0.lcssa.i.i, %i.o
  %or.cond = select i1 %i.m, i1 %i.ca, i1 false
  br i1 %or.cond, label %.thread.i, label %bb.m

._crit_edge.i.i.thread:                           ; preds = %bb.c
  br i1 %or.cond51, label %.thread.i, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit

.thread.i:                                        ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !7606
  br label %.lr.ph.i.i.preheader.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.m, %.thread.i
  %.1.i13.i = phi i64 [ %i.t, %.thread.i ], [ %.0.lcssa.i.i, %bb.m ]
  %i.cb = trunc nuw i8 %.sroa.5.0.copyload to i1
  %i.cc = lshr i64 %.sroa.01.0.copyload.i, 32
  %i.cd = trunc nuw i64 %i.cc to i32              ; 3 uses
  %i.ce = call noundef i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = trunc i64 %.sroa.01.0.copyload.i to i32 ; 6 uses
  %i.cg = icmp ult i32 %i.cf, 13
  %i.ch = select i1 %i.cg, ptr %i.p, ptr %.sroa.4.0.copyload.i
  %i.ci = call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cj = icmp ult i32 %i.cf, 13
  %i.ck = select i1 %i.cj, ptr %i.p, ptr %.sroa.4.0.copyload.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.i.i.preheader.i
  %.01316.i.i.i = phi i64 [ %.017.i.i89.i, %bb.u ], [ %.1.i13.i, %.lr.ph.i.i.preheader.i ] ; 6 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i89.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.017.i.i89.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i64 %.sroa.01.0.copyload.i, ptr %7, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.7.0..sroa_idx29, align 8, !tbaa !14
  %i.cm = load i32, ptr %6, align 8, !tbaa !14    ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.q, align 4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i, %i.cd ; 2 uses
  br i1 %i.cb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cn = icmp ugt i32 %i.cm, %i.cf
end_hunk_29
