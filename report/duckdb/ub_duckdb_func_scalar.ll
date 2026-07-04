inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_121CreateSortKeyInternalERNS_6vectorINS_10unique_ptrINS0_17SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS1_INS_14OrderModifiersELb1ESaISA_EEERNS_6VectorEm:bb.a
          cleanup
  br label %.body59

.loopexit.split-lp:                               ; preds = %bb.t, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.body59:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53, %bb.al, %bb.af
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.al ], [ %i.dp, %bb.af ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54 ], [ %.pn30.i, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eb = load ptr, ptr %10, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorImSaImEED2Ev.exit66, label %bb.ao

bb.ao:                                            ; preds = %.body59
  call void @_ZdlPv(ptr noundef nonnull %i.eb) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit66

_ZNSt6vectorImSaImEED2Ev.exit66:                  ; preds = %.body59, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZNSt10unique_ptrIA_PhSt14default_deleteIS1_EED2Ev.exit69

_ZNSt10unique_ptrIA_PhSt14default_deleteIS1_EED2Ev.exit69: ; preds = %.loopexit8, %.loopexit.split-lp9, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit66
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit66 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn36.i, %bb.r ], [ %lpad.loopexit10, %.loopexit8 ], [ %lpad.loopexit.split-lp11, %.loopexit.split-lp9 ]
  call void @_ZdaPv(ptr noundef nonnull %i.i) #30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ae, %_ZNSt10unique_ptrIA_PhSt14default_deleteIS1_EED2Ev.exit69, %bb.j
  %.pn27 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %.pn.pn, %_ZNSt10unique_ptrIA_PhSt14default_deleteIS1_EED2Ev.exit69 ], [ %i.do, %bb.ae ]
  %.val39 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i.i70 = icmp eq ptr %.val39, null
  br i1 %.not.i.i.i.i70, label %_ZN6duckdb12_GLOBAL__N_117SortKeyLengthInfoD2Ev.exit72, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef nonnull %.val39) #30
  br label %_ZN6duckdb12_GLOBAL__N_117SortKeyLengthInfoD2Ev.exit72

_ZN6duckdb12_GLOBAL__N_117SortKeyLengthInfoD2Ev.exit72: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not.i2.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i
  %.0.i3.i = phi ptr [ %i.e, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.0.i3.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i: ; preds = %.lr.ph.i
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(122) dereferenceable(122) %i.d) #29, !inline_history !114
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #30, !inline_history !114
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i, %.lr.ph.i
  store ptr null, ptr %.0.i3.i, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !115

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.val) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_9DataChunkERKNS_6vectorINS_14OrderModifiersELb1ESaIS4_EEERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.13", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::unique_ptr.19", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.ax, ptr %i.e, align 8
  store ptr %i.aw, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.val19 = phi ptr [ %i.ax, %._crit_edge ], [ null, %bb.a ] ; 3 uses
  %.lcssa29 = phi ptr [ %i.ay, %._crit_edge ], [ null, %bb.a ] ; 6 uses
  store ptr %.lcssa29, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !116
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_121CreateSortKeyInternalERNS_6vectorINS_10unique_ptrINS0_17SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS1_INS_14OrderModifiersELb1ESaISA_EEERNS_6VectorEm(ptr %.lcssa29, ptr %.val19, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.h)
          to label %bb.n unwind label %bb.p

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 10 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 8 uses
  %.01535 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.01535)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !tbaa !116
  %i.n = invoke noundef nonnull align 1 dereferenceable(2) ptr @_ZNK6duckdb6vectorINS_14OrderModifiersELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.01535)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %.val21 = load i16, ptr %i.n, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.o = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc unwind label %bb.l     ; 4 uses

.noexc:                                           ; preds = %bb.e
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE(ptr noundef nonnull align 8 dereferenceable(122) %i.o, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 noundef %i.m, i16 %.val21)
          to label %bb.g unwind label %bb.f, !noalias !129

bb.f:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #30, !noalias !129
  br label %.body

bb.g:                                             ; preds = %.noexc
  store ptr %i.o, ptr %4, align 8, !tbaa !29, !alias.scope !129
  %.not.i.i = icmp eq ptr %i.j, %i.i
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.g
  store i64 %i.q, ptr %i.j, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.s = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %i.x = icmp eq ptr %i.i, %i.k                   ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.x, i64 1, i64 %i.w
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #32
          to label %.noexc23 unwind label %.loopexit ; 10 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i64 %i.q, ptr %i.ae, align 8, !tbaa !29
  store ptr null, ptr %4, align 8, !tbaa !29
  br i1 %i.x, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc23
  %5 = sub i64 %i.s, %i.t
  %6 = add i64 %5, -8                             ; 2 uses
  %i.af = lshr i64 %6, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader139, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ad, i64 8
  %i.ah = add i64 %i.s, -8
  %i.ai = sub i64 %i.ah, %i.t
  %i.aj = and i64 %i.ai, -8                       ; 2 uses
  %scevgep133 = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep134 = getelementptr i8, ptr %i.k, i64 8
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.aj
  %bound0 = icmp ult ptr %i.ad, %scevgep135
  %bound1 = icmp ult ptr %i.k, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ad, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.k, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.an ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.k, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ao = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep136, align 8, !tbaa !29, !alias.scope !137, !noalias !132
  %wide.load137 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !29, !alias.scope !137, !noalias !132
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !29, !alias.scope !140, !noalias !137
  store <2 x i64> %wide.load137, ptr %i.ap, align 8, !tbaa !29, !alias.scope !140, !noalias !137
  %i.aq = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep136, align 8, !tbaa !29, !alias.scope !137, !noalias !132
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !29, !alias.scope !137, !noalias !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader139

.lr.ph.i.i.i.i.i.i.i.preheader139:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader139, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader139 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader139 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !135, !noalias !132
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !132, !noalias !135
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !135, !noalias !132
  %i.as = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !143

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc23 ], [ %i.al, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, %bb.j
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread
  %i.aw = phi ptr [ %i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.av, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  %i.ax = phi ptr [ %i.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.au, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.ay = phi ptr [ %i.k, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.az = add nuw i64 %.01535, 1                  ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bb = load ptr, ptr %1, align 8, !tbaa !20
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 1
  %i.bg = icmp ult i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.c, label %._crit_edge, !llvm.loop !144

bb.k:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  br label %.body

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.k, ptr %3, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  br label %.body

.body:                                            ; preds = %bb.m, %bb.f, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %lpad.phi, %bb.m ], [ %i.bi, %bb.l ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.q

bb.n:                                             ; preds = %bb.b
  %.not.i2.i.i = icmp eq ptr %.lcssa29, %.val19
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i
  %.0.i3.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i ], [ %.lcssa29, %bb.n ] ; 3 uses
  %i.bj = load ptr, ptr %.0.i3.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i24, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(122) dereferenceable(122) %i.bj) #29, !inline_history !36
  tail call void @_ZdlPv(ptr noundef nonnull %i.bj) #30, !inline_history !36
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  store ptr null, ptr %.0.i3.i.i, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %.val19
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i, !llvm.loop !115

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i, %bb.n
  %.not.i.i2.i = icmp eq ptr %.lcssa29, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa29) #30, !inline_history !37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.p:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.bl, %bb.p ]
  call fastcc void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.e = load ptr, ptr %0, align 8, !tbaa !146    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  store i64 %i.i, ptr %i.b, align 8, !tbaa !14
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !147
end_hunk_0
begin_hunk_1_@_ZN6duckdb16CreateSortKeyFun11GetFunctionEv:._crit_edge.i.i
  store i8 1, ptr %i.ak, align 1, !tbaa !251
  ret void

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread:                                          ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !249 ; 2 uses
  %.not.i16 = icmp eq ptr %.pre, null
  br i1 %.not.i16, label %_ZNSt14_Function_baseD2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.pn40 = phi { ptr, i32 } [ %i.an, %.thread ], [ %i.ao, %bb.m ]
  %i.ap = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.m ]
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit17 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit17:                 ; preds = %bb.m, %bb.n
  %.pn41 = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %.pn40, %bb.n ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit17, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn41, %_ZNSt14_Function_baseD2Ev.exit17 ], [ %i.am, %bb.l ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #29
  br label %.body

.body:                                            ; preds = %.body23.thread, %.body23, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.n, %.body23.thread ], [ %i.k, %.body23 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %.pn.pn.pn, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.at = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.q
  %.pn14 = phi { ptr, i32 } [ %i.av, %bb.q ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn.pn.pn.pn, %.loopexit ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL21CreateSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.13", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::unique_ptr.19", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263, !nonnull !188, !align !280
  %i.c = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.h = load ptr, ptr %0, align 8, !tbaa !146
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.bf, ptr %i.k, align 8
  store ptr %i.be, ptr %i.l, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.val24 = phi ptr [ %i.bf, %._crit_edge ], [ null, %bb.a ] ; 3 uses
  %.lcssa32 = phi ptr [ %i.bg, %._crit_edge ], [ null, %bb.a ] ; 6 uses
  store ptr %.lcssa32, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !116
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_121CreateSortKeyInternalERNS_6vectorINS_10unique_ptrINS0_17SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS1_INS_14OrderModifiersELb1ESaISA_EEERNS_6VectorEm(ptr %.lcssa32, ptr %.val24, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.o)
          to label %bb.n unwind label %bb.q

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 10 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 8 uses
  %.01838 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.s = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.01838)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.i, align 8, !tbaa !116
  %i.u = lshr exact i64 %.01838, 1
  %i.v = invoke noundef nonnull align 1 dereferenceable(2) ptr @_ZN6duckdb6vectorINS_14OrderModifiersELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.u)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %.val22 = load i16, ptr %i.v, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.w = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc unwind label %bb.l, !inline_history !284 ; 4 uses

.noexc:                                           ; preds = %bb.e
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE(ptr noundef nonnull align 8 dereferenceable(122) %i.w, ptr noundef nonnull align 8 dereferenceable(104) %i.s, i64 noundef %i.t, i16 %.val22)
          to label %bb.g unwind label %bb.f, !noalias !281, !inline_history !284

bb.f:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.r, ptr %3, align 8
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #30, !noalias !281, !inline_history !284
  br label %.body

bb.g:                                             ; preds = %.noexc
  store ptr %i.w, ptr %4, align 8, !tbaa !29, !alias.scope !281
  %.not.i.i = icmp eq ptr %i.q, %i.p
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.g
  store i64 %i.y, ptr %i.q, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.p to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.r, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %i.af = icmp eq ptr %i.p, %i.r                  ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.af, i64 1, i64 %i.ae
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #32
          to label %.noexc26 unwind label %.loopexit ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac
  store i64 %i.y, ptr %i.am, align 8, !tbaa !29
  store ptr null, ptr %4, align 8, !tbaa !29
  br i1 %i.af, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc26
  %5 = sub i64 %i.aa, %i.ab
  %6 = add i64 %5, -8                             ; 2 uses
  %i.an = lshr i64 %6, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.ap = add i64 %i.aa, -8
  %i.aq = sub i64 %i.ap, %i.ab
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep137 = getelementptr i8, ptr %i.r, i64 8
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.ar
  %bound0 = icmp ult ptr %i.al, %scevgep138
  %bound1 = icmp ult ptr %i.r, %scevgep136
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader142, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.r, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.r, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.aw = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep139, align 8, !tbaa !29, !alias.scope !290, !noalias !285
  %wide.load140 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !29, !alias.scope !290, !noalias !285
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !29, !alias.scope !293, !noalias !290
  store <2 x i64> %wide.load140, ptr %i.ax, align 8, !tbaa !29, !alias.scope !293, !noalias !290
  %i.ay = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep139, align 8, !tbaa !29, !alias.scope !290, !noalias !285
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !29, !alias.scope !290, !noalias !285
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader142

.lr.ph.i.i.i.i.i.i.i.preheader142:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader142, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader142 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader142 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !288, !noalias !285
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !285, !noalias !288
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !288, !noalias !285
  %i.ba = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !296

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc26
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc26 ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, %bb.j
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread
  %i.be = phi ptr [ %i.p, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.bd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  %i.bf = phi ptr [ %i.z, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.bc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.bg = phi ptr [ %i.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.al, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bh = add i64 %.01838, 2                      ; 2 uses
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.bj = load ptr, ptr %0, align 8, !tbaa !146
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 104
  %i.bo = icmp ult i64 %i.bh, %i.bn
  br i1 %i.bo, label %bb.c, label %._crit_edge, !llvm.loop !297

bb.k:                                             ; preds = %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.r, ptr %3, align 8
  br label %.body

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.r, ptr %3, align 8
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.r, ptr %3, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  br label %.body

.body:                                            ; preds = %bb.m, %bb.f, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.k ], [ %lpad.phi, %bb.m ], [ %i.bq, %bb.l ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.n:                                             ; preds = %bb.b
  %i.br = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.br, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.p, %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.o
  %.not.i2.i.i = icmp eq ptr %.lcssa32, %.val24
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i
  %.0.i3.i.i = phi ptr [ %i.bu, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i ], [ %.lcssa32, %bb.r ] ; 3 uses
  %i.bt = load ptr, ptr %.0.i3.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i27, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(122) dereferenceable(122) %i.bt) #29, !inline_history !36
  tail call void @_ZdlPv(ptr noundef nonnull %i.bt) #30, !inline_history !36
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_117SortKeyVectorDataEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  store ptr null, ptr %.0.i3.i.i, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, %.val24
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i, !llvm.loop !115

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i, %bb.r
  %.not.i.i2.i = icmp eq ptr %.lcssa32, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa32) #30, !inline_history !37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.t:                                             ; preds = %bb.q, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.bs, %bb.q ]
  call fastcc void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117CreateSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE:bb.a
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !727
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !728  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !14     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !147

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !728
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !14
  store i64 %i.s, ptr %i.d, align 8, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !728
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !147

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !14
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec130, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !14
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !729

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !730

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -8                       ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !731

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !732

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !728
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !147

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !728
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !14
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !728
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %4 = sub i64 %i.f, %i.j
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bg = lshr i64 %5, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %5, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bh, 4611686018427387900  ; 3 uses
  %i.bi = shl i64 %n.vec116, 3
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bk = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x i64> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat118, ptr %i.bl, align 8, !tbaa !14
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bm, label %middle.block123, label %vector.body119, !llvm.loop !733

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bh, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bj, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bn, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !734

bb.q:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %0, align 8, !tbaa !39    ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bq = sub i64 %i.f, %i.bp
  %i.br = ashr exact i64 %i.bq, 3                 ; 4 uses
  %i.bs = sub nsw i64 1152921504606846975, %i.br
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %2)
  %i.bu = add nsw i64 %.sroa.speculated.i, %i.br  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.bp                    ; 4 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ca = shl nuw nsw i64 %i.bx, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bz ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i75
  %i.cf = load i64, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.cg = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.cg, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec144, 3
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cl = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !14
  store <2 x i64> %broadcast.splat146, ptr %i.cm, align 8, !tbaa !14
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cn, label %middle.block151, label %vector.body147, !llvm.loop !735

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.ci, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cd, %bb.t ], [ %i.ck, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cf, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !736

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cp = icmp sgt i64 %i.bz, 8
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !147

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cc, ptr align 8 %i.bo, i64 %i.bz, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cq = icmp eq i64 %i.bz, 8
  br i1 %i.cq, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load i64, ptr %i.bo, align 8, !tbaa !14
  store i64 %i.cr, ptr %i.cc, align 8, !tbaa !14
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %2 ; 3 uses
  %i.ct = sub i64 %i.f, %i.by                     ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 8
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !147

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cs, ptr align 8 %1, i64 %i.ct, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.cv = icmp eq i64 %i.ct, 8
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load i64, ptr %1, align 8, !tbaa !14
  store i64 %i.cw, ptr %i.cs, align 8, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %.not.i82 = icmp eq ptr %i.bo, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bo) #30
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.cc, ptr %0, align 8, !tbaa !39
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !728
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !727
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr nofree noundef readonly byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 8 uses
  %.sroa.9 = alloca [7 x i8], align 1             ; 4 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 9
  %.val.val = load i8, ptr %i.a, align 1, !tbaa !67
  switch i8 %.val.val, label %bb.om [
    i8 1, label %bb.b
    i8 2, label %bb.aa
    i8 3, label %bb.az
    i8 4, label %bb.by
    i8 5, label %bb.cs
end_hunk_2
begin_hunk_3_@_ZN6duckdb6vectorINS_14OrderModifiersELb1ESaIS1_EEixEm:bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_14OrderModifiersELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE(ptr noundef nonnull align 8 dereferenceable(122) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i16 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.19", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr.19", align 8 ; 5 uses
  %6 = alloca %"class.duckdb::unique_ptr.19", align 8 ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !921
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.e, ptr %i.f, align 8, !tbaa !930
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i8 1, ptr %i.h, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  store i8 2, ptr %i.i, align 1, !tbaa !738
  %.sroa.3.0.extract.shift.mask = and i16 %3, -256
  %i.j = icmp eq i16 %.sroa.3.0.extract.shift.mask, 768
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 2, ptr %i.h, align 8, !tbaa !18
  store i8 1, ptr %i.i, align 1, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = and i16 %3, 255                          ; 4 uses
  %i.l = icmp eq i16 %i.k, 2
  %i.m = select i1 %i.l, i8 3, i8 2               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !67
  switch i8 %i.p, label %.loopexit [
    i8 24, label %bb.h
    i8 29, label %bb.t
    i8 23, label %bb.af
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !931  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !931  ; 2 uses
  %.not127134 = icmp eq ptr %i.r, %i.t
  br i1 %.not127134, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %.sroa.7.0.insert.ext = zext nneg i8 %i.m to i16
  %.sroa.7.0.insert.shift = shl nuw nsw i16 %.sroa.7.0.insert.ext, 8
  %.sroa.0102.0.insert.insert = or disjoint i16 %.sroa.7.0.insert.shift, %i.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.k:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  %.sroa.099.0135 = phi ptr [ %i.r, %.lr.ph ], [ %i.bi, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.x = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.099.0135)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.y = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc unwind label %bb.r, !inline_history !935 ; 4 uses

.noexc:                                           ; preds = %bb.l
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE(ptr noundef nonnull align 8 dereferenceable(122) %i.y, ptr noundef nonnull align 8 dereferenceable(104) %i.x, i64 noundef %2, i16 %.sroa.0102.0.insert.insert)
          to label %bb.n unwind label %bb.m, !noalias !932, !inline_history !935

bb.m:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #30, !noalias !932, !inline_history !935
  br label %.body

bb.n:                                             ; preds = %.noexc
  store ptr %i.y, ptr %4, align 8, !tbaa !29, !alias.scope !932
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !34  ; 6 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.aa, %i.ab
  %i.ac = ptrtoint ptr %i.y to i64                ; 2 uses
  br i1 %.not.i.i, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.n
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !34
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !31 ; 10 uses
  %i.ae = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.af = ptrtoint ptr %.val.i.i.i to i64         ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %i.aj = icmp eq ptr %i.aa, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.aj, i64 1, i64 %i.ai
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #32
          to label %.noexc44 unwind label %.loopexit128 ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ag
  store i64 %i.ac, ptr %i.aq, align 8, !tbaa !29
  br i1 %i.aj, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc44
  %7 = sub i64 %i.ae, %i.af
  %8 = add i64 %7, -8                             ; 2 uses
  %i.ar = lshr i64 %8, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check200 = icmp ult i64 %8, 56
  br i1 %min.iters.check200, label %.lr.ph.i.i.i.i.i.i.i.preheader215, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep192 = getelementptr i8, ptr %i.ap, i64 8
  %i.at = add i64 %i.ae, -8
  %i.au = sub i64 %i.at, %i.af
  %i.av = and i64 %i.au, -8                       ; 2 uses
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.av
  %scevgep194 = getelementptr i8, ptr %.val.i.i.i, i64 8
  %scevgep195 = getelementptr i8, ptr %scevgep194, i64 %i.av
  %bound0196 = icmp ult ptr %i.ap, %scevgep195
  %bound1197 = icmp ult ptr %.val.i.i.i, %scevgep193
  %found.conflict198 = and i1 %bound0196, %bound1197
  br i1 %found.conflict198, label %.lr.ph.i.i.i.i.i.i.i.preheader215, label %vector.ph201

vector.ph201:                                     ; preds = %vector.memcheck191
  %n.vec203 = and i64 %i.as, 4611686018427387900  ; 3 uses
  %i.aw = shl i64 %n.vec203, 3                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %.val.i.i.i, i64 %i.aw
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph201
  %index205 = phi i64 [ 0, %vector.ph201 ], [ %index.next210, %vector.body204 ] ; 2 uses
  %i.az = shl i64 %index205, 3                    ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.ap, i64 %i.az ; 2 uses
  %next.gep207 = getelementptr i8, ptr %.val.i.i.i, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.ba = getelementptr i8, ptr %next.gep207, i64 16
  %wide.load208 = load <2 x i64>, ptr %next.gep207, align 8, !tbaa !29, !alias.scope !941, !noalias !936
  %wide.load209 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !29, !alias.scope !941, !noalias !936
  %i.bb = getelementptr i8, ptr %next.gep206, i64 16
  store <2 x i64> %wide.load208, ptr %next.gep206, align 8, !tbaa !29, !alias.scope !944, !noalias !941
  store <2 x i64> %wide.load209, ptr %i.bb, align 8, !tbaa !29, !alias.scope !944, !noalias !941
  %i.bc = getelementptr i8, ptr %next.gep207, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep207, align 8, !tbaa !29, !alias.scope !941, !noalias !936
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !29, !alias.scope !941, !noalias !936
  %index.next210 = add nuw i64 %index205, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next210, %n.vec203
  br i1 %i.bd, label %middle.block211, label %vector.body204, !llvm.loop !946

middle.block211:                                  ; preds = %vector.body204
  %cmp.n212 = icmp eq i64 %i.as, %n.vec203
  br i1 %cmp.n212, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader215

.lr.ph.i.i.i.i.i.i.i.preheader215:                ; preds = %vector.memcheck191, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block211
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck191 ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block211 ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i, %vector.memcheck191 ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block211 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader215, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader215 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader215 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !939, !noalias !936
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !936, !noalias !939
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !29, !alias.scope !939, !noalias !936
  %i.be = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.be, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !947

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block211, %.noexc44
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.noexc44 ], [ %i.ax, %middle.block211 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i.i.i) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, %bb.q
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !31
  store ptr %i.bg, ptr %i.u, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bh, ptr %i.v, align 8, !tbaa !35
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.099.0135, i64 8 ; 2 uses
  %.not127 = icmp eq ptr %i.bi, %i.t
  br i1 %.not127, label %.loopexit, label %bb.k

bb.r:                                             ; preds = %bb.l, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit128:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit128
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit128 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  br label %.body

.body:                                            ; preds = %bb.r, %bb.m, %bb.s
  %.pn38 = phi { ptr, i32 } [ %lpad.phi, %bb.s ], [ %i.bj, %bb.r ], [ %i.z, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.as

bb.t:                                             ; preds = %bb.g
  %i.bk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bl = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bm = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc46 unwind label %bb.ad, !inline_history !948 ; 4 uses

.noexc46:                                         ; preds = %bb.v
  %i.bn = mul i64 %i.bl, %2
  %.sroa.7.0.insert.ext109 = zext nneg i8 %i.m to i16
  %.sroa.7.0.insert.shift110 = shl nuw nsw i16 %.sroa.7.0.insert.ext109, 8
  %.sroa.0102.0.insert.insert105 = or disjoint i16 %.sroa.7.0.insert.shift110, %i.k
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE(ptr noundef nonnull align 8 dereferenceable(122) %i.bm, ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i64 noundef %i.bn, i16 %.sroa.0102.0.insert.insert105)
          to label %bb.x unwind label %bb.w, !noalias !949, !inline_history !948

bb.w:                                             ; preds = %.noexc46
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bm) #30, !noalias !949, !inline_history !948
  br label %.body47

bb.x:                                             ; preds = %.noexc46
  store ptr %i.bm, ptr %5, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !34 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35
  %.not.i.i49 = icmp eq ptr %i.bq, %i.bs
  %i.bt = ptrtoint ptr %i.bm to i64               ; 2 uses
  br i1 %.not.i.i49, label %bb.y, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit67.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit67.thread: ; preds = %bb.x
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !34
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit70

bb.y:                                             ; preds = %bb.x
  %.val.i.i.i51 = load ptr, ptr %i.b, align 8, !tbaa !31 ; 10 uses
  %i.bv = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bw = ptrtoint ptr %.val.i.i.i51 to i64       ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.z, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i52

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc65 unwind label %bb.ae

.noexc65:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i52: ; preds = %bb.y
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %i.ca = icmp eq ptr %i.bq, %.val.i.i.i51        ; 2 uses
  %.sroa.speculated.i.i.i.i53 = select i1 %i.ca, i64 1, i64 %i.bz
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i53, %i.bz ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #32
          to label %.noexc66 unwind label %bb.ae  ; 10 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bx
  store i64 %i.bt, ptr %i.ch, align 8, !tbaa !29
  br i1 %i.ca, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i56.preheader

.lr.ph.i.i.i.i.i.i.i56.preheader:                 ; preds = %.noexc66
  %9 = sub i64 %i.bv, %i.bw
  %10 = add i64 %9, -8                            ; 2 uses
  %i.ci = lshr i64 %10, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %10, 152
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.i.i.i.i56.preheader220, label %vector.memcheck169

vector.memcheck169:                               ; preds = %.lr.ph.i.i.i.i.i.i.i56.preheader
  %i.ck = add i64 %i.bv, -8
  %i.cl = sub i64 %i.ck, %i.bw
  %i.cm = and i64 %i.cl, -8
  %i.cn = add i64 %i.cm, 8                        ; 2 uses
  %scevgep170 = getelementptr i8, ptr %i.cg, i64 %i.cn
  %scevgep171 = getelementptr i8, ptr %.val.i.i.i51, i64 %i.cn
  %bound0172 = icmp ult ptr %i.cg, %scevgep171
  %bound1173 = icmp ult ptr %.val.i.i.i51, %scevgep170
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %.lr.ph.i.i.i.i.i.i.i56.preheader220, label %vector.ph177

vector.ph177:                                     ; preds = %vector.memcheck169
  %n.vec179 = and i64 %i.cj, 4611686018427387900  ; 3 uses
  %i.co = shl i64 %n.vec179, 3                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cg, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %.val.i.i.i51, i64 %i.co
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph177
  %index181 = phi i64 [ 0, %vector.ph177 ], [ %index.next186, %vector.body180 ] ; 2 uses
  %i.cr = shl i64 %index181, 3                    ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.cg, i64 %i.cr ; 2 uses
  %next.gep183 = getelementptr i8, ptr %.val.i.i.i51, i64 %i.cr ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.cs = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load184 = load <2 x i64>, ptr %next.gep183, align 8, !tbaa !29, !alias.scope !957, !noalias !952
  %wide.load185 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !29, !alias.scope !957, !noalias !952
  %i.ct = getelementptr i8, ptr %next.gep182, i64 16
  store <2 x i64> %wide.load184, ptr %next.gep182, align 8, !tbaa !29, !alias.scope !960, !noalias !957
  store <2 x i64> %wide.load185, ptr %i.ct, align 8, !tbaa !29, !alias.scope !960, !noalias !957
  %i.cu = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep183, align 8, !tbaa !29, !alias.scope !957, !noalias !952
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !29, !alias.scope !957, !noalias !952
  %index.next186 = add nuw i64 %index181, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.cv, label %middle.block187, label %vector.body180, !llvm.loop !962

middle.block187:                                  ; preds = %vector.body180
  %cmp.n188 = icmp eq i64 %i.cj, %n.vec179
  br i1 %cmp.n188, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i56.preheader220

.lr.ph.i.i.i.i.i.i.i56.preheader220:              ; preds = %vector.memcheck169, %.lr.ph.i.i.i.i.i.i.i56.preheader, %middle.block187
  %.03.i.i.i.i.i.i.i57.ph = phi ptr [ %i.cg, %vector.memcheck169 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i56.preheader ], [ %i.cp, %middle.block187 ]
  %.092.i.i.i.i.i.i.i58.ph = phi ptr [ %.val.i.i.i51, %vector.memcheck169 ], [ %.val.i.i.i51, %.lr.ph.i.i.i.i.i.i.i56.preheader ], [ %i.cq, %middle.block187 ]
  br label %.lr.ph.i.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i.i56:                           ; preds = %.lr.ph.i.i.i.i.i.i.i56.preheader220, %.lr.ph.i.i.i.i.i.i.i56
  %.03.i.i.i.i.i.i.i57 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i56 ], [ %.03.i.i.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i.i.i56.preheader220 ] ; 2 uses
  %.092.i.i.i.i.i.i.i58 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i56 ], [ %.092.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i56.preheader220 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i59 = load i64, ptr %.092.i.i.i.i.i.i.i58, align 8, !tbaa !29, !alias.scope !955, !noalias !952
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i59, ptr %.03.i.i.i.i.i.i.i57, align 8, !tbaa !29, !alias.scope !952, !noalias !955
  store ptr null, ptr %.092.i.i.i.i.i.i.i58, align 8, !tbaa !29, !alias.scope !955, !noalias !952
  %i.cw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i58, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i57, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i60 = icmp eq ptr %i.cw, %i.bq
  br i1 %.not.i.i.i.i.i.i.i60, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i56, !llvm.loop !963

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i.i.i56, %middle.block187, %.noexc66
  %.0.lcssa.i.i.i.i.i.i.i62 = phi ptr [ %i.cg, %.noexc66 ], [ %i.cp, %middle.block187 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i56 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i62, i64 8
  %.not.i28.i.i.i63 = icmp eq ptr %.val.i.i.i51, null
  br i1 %.not.i28.i.i.i63, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit67, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i61
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i.i.i51) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit67

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit67: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i61, %bb.aa
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !31
  store ptr %i.cy, ptr %i.bp, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.cz, ptr %i.br, align 8, !tbaa !35
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit70

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit70: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit67, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit67.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.loopexit

bb.ab:                                            ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ac:                                            ; preds = %bb.u
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ad:                                            ; preds = %bb.v
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body47

bb.ae:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i52, %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  br label %.body47

.body47:                                          ; preds = %bb.ad, %bb.w, %bb.ae
  %.pn34 = phi { ptr, i32 } [ %i.dd, %bb.ae ], [ %i.dc, %bb.ad ], [ %i.bo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.as

bb.af:                                            ; preds = %bb.g
  %i.de = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ag unwind label %bb.ao

bb.ag:                                            ; preds = %bb.af
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dg = phi i64 [ 0, %bb.ag ], [ %i.df, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.dh = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc72 unwind label %bb.aq, !inline_history !935 ; 4 uses

.noexc72:                                         ; preds = %bb.ai
  %.sroa.7.0.insert.ext113 = zext nneg i8 %i.m to i16
  %.sroa.7.0.insert.shift114 = shl nuw nsw i16 %.sroa.7.0.insert.ext113, 8
  %.sroa.0102.0.insert.insert108 = or disjoint i16 %.sroa.7.0.insert.shift114, %i.k
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE(ptr noundef nonnull align 8 dereferenceable(122) %i.dh, ptr noundef nonnull align 8 dereferenceable(104) %i.de, i64 noundef %i.dg, i16 %.sroa.0102.0.insert.insert108)
          to label %bb.ak unwind label %bb.aj, !noalias !964, !inline_history !935

bb.aj:                                            ; preds = %.noexc72
  %i.di = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.dh) #30, !noalias !964, !inline_history !935
  br label %.body73

bb.ak:                                            ; preds = %.noexc72
  store ptr %i.dh, ptr %6, align 8, !tbaa !29, !alias.scope !964
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !34 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !35
  %.not.i.i76 = icmp eq ptr %i.dk, %i.dm
  %i.dn = ptrtoint ptr %i.dh to i64               ; 2 uses
  br i1 %.not.i.i76, label %bb.al, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit94.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit94.thread: ; preds = %bb.ak
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.do, ptr %i.dj, align 8, !tbaa !34
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit97

bb.al:                                            ; preds = %bb.ak
  %.val.i.i.i78 = load ptr, ptr %i.b, align 8, !tbaa !31 ; 10 uses
  %i.dp = ptrtoint ptr %i.dk to i64               ; 3 uses
  %i.dq = ptrtoint ptr %.val.i.i.i78 to i64       ; 3 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775800
  br i1 %i.ds, label %bb.am, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i79

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc92 unwind label %bb.ar

.noexc92:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i79: ; preds = %bb.al
  %i.dt = ashr exact i64 %i.dr, 3                 ; 3 uses
  %i.du = icmp eq ptr %i.dk, %.val.i.i.i78        ; 2 uses
  %.sroa.speculated.i.i.i.i80 = select i1 %i.du, i64 1, i64 %i.dt
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i80, %i.dt ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.dt
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %.not.i.i.i.i81 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i81)
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #32
          to label %.noexc93 unwind label %bb.ar  ; 10 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i79
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dr
  store i64 %i.dn, ptr %i.eb, align 8, !tbaa !29
  br i1 %i.du, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i88, label %.lr.ph.i.i.i.i.i.i.i83.preheader

.lr.ph.i.i.i.i.i.i.i83.preheader:                 ; preds = %.noexc93
  %11 = sub i64 %i.dp, %i.dq
  %12 = add i64 %11, -8                           ; 2 uses
  %i.ec = lshr i64 %12, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i83.preheader222, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader
  %i.ee = add i64 %i.dp, -8
  %i.ef = sub i64 %i.ee, %i.dq
  %i.eg = and i64 %i.ef, -8
  %i.eh = add i64 %i.eg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ea, i64 %i.eh
  %scevgep165 = getelementptr i8, ptr %.val.i.i.i78, i64 %i.eh
  %bound0 = icmp ult ptr %i.ea, %scevgep165
  %bound1 = icmp ult ptr %.val.i.i.i78, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i83.preheader222, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, 4611686018427387900     ; 3 uses
  %i.ei = shl i64 %n.vec, 3                       ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ea, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %.val.i.i.i78, i64 %i.ei
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.el = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ea, i64 %i.el ; 2 uses
  %next.gep166 = getelementptr i8, ptr %.val.i.i.i78, i64 %i.el ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.em = getelementptr i8, ptr %next.gep166, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep166, align 8, !tbaa !29, !alias.scope !972, !noalias !967
  %wide.load167 = load <2 x i64>, ptr %i.em, align 8, !tbaa !29, !alias.scope !972, !noalias !967
  %i.en = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !29, !alias.scope !975, !noalias !972
  store <2 x i64> %wide.load167, ptr %i.en, align 8, !tbaa !29, !alias.scope !975, !noalias !972
  %i.eo = getelementptr i8, ptr %next.gep166, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep166, align 8, !tbaa !29, !alias.scope !972, !noalias !967
  store <2 x ptr> splat (ptr null), ptr %i.eo, align 8, !tbaa !29, !alias.scope !972, !noalias !967
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !977

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i88, label %.lr.ph.i.i.i.i.i.i.i83.preheader222

.lr.ph.i.i.i.i.i.i.i83.preheader222:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i83.preheader, %middle.block
  %.03.i.i.i.i.i.i.i84.ph = phi ptr [ %i.ea, %vector.memcheck ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i83.preheader ], [ %i.ej, %middle.block ]
  %.092.i.i.i.i.i.i.i85.ph = phi ptr [ %.val.i.i.i78, %vector.memcheck ], [ %.val.i.i.i78, %.lr.ph.i.i.i.i.i.i.i83.preheader ], [ %i.ek, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i83:                           ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader222, %.lr.ph.i.i.i.i.i.i.i83
  %.03.i.i.i.i.i.i.i84 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i83 ], [ %.03.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i83.preheader222 ] ; 2 uses
  %.092.i.i.i.i.i.i.i85 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i83 ], [ %.092.i.i.i.i.i.i.i85.ph, %.lr.ph.i.i.i.i.i.i.i83.preheader222 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i86 = load i64, ptr %.092.i.i.i.i.i.i.i85, align 8, !tbaa !29, !alias.scope !970, !noalias !967
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i86, ptr %.03.i.i.i.i.i.i.i84, align 8, !tbaa !29, !alias.scope !967, !noalias !970
  store ptr null, ptr %.092.i.i.i.i.i.i.i85, align 8, !tbaa !29, !alias.scope !970, !noalias !967
  %i.eq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i85, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i84, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i87 = icmp eq ptr %i.eq, %i.dk
  br i1 %.not.i.i.i.i.i.i.i87, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i88, label %.lr.ph.i.i.i.i.i.i.i83, !llvm.loop !978

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i88: ; preds = %.lr.ph.i.i.i.i.i.i.i83, %middle.block, %.noexc93
  %.0.lcssa.i.i.i.i.i.i.i89 = phi ptr [ %i.ea, %.noexc93 ], [ %i.ej, %middle.block ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i83 ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i89, i64 8
  %.not.i28.i.i.i90 = icmp eq ptr %.val.i.i.i78, null
  br i1 %.not.i28.i.i.i90, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit94, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i88
  tail call void @_ZdlPv(ptr noundef nonnull %.val.i.i.i78) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit94

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit94: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i88, %bb.an
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !31
  store ptr %i.es, ptr %i.dj, align 8, !tbaa !34
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.et, ptr %i.dl, align 8, !tbaa !35
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit97

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit97: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit94, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit94.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.loopexit

bb.ao:                                            ; preds = %bb.af
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.ah
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aq:                                            ; preds = %bb.ai
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.ar:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i79, %bb.am
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29
  br label %.body73

.body73:                                          ; preds = %bb.aq, %bb.aj, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.ar ], [ %i.ew, %bb.aq ], [ %i.di, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.as

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit, %bb.i, %bb.g, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit97, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit70
  ret void

bb.as:                                            ; preds = %.body, %bb.j, %bb.ac, %.body47, %bb.ab, %bb.ao, %.body73, %bb.ap, %bb.c
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.db, %bb.ac ], [ %i.w, %bb.j ], [ %.pn38, %.body ], [ %i.da, %bb.ab ], [ %.pn34, %.body47 ], [ %i.eu, %bb.ao ], [ %.pn, %.body73 ], [ %i.ev, %bb.ap ]
  tail call fastcc void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #29
  tail call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.a) #29
  resume { ptr, i32 } %.pn38.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !298
  %i.e = load ptr, ptr %0, align 8, !tbaa !301    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  store i64 %i.i, ptr %i.b, align 8, !tbaa !14
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !147

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_3
begin_hunk_4_@_ZN6duckdb14OrderModifiers5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0 = phi i1 [ false, %bb.x ], [ true, %bb.w ]  ; 2 uses
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cy = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cy) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br i1 %.0, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br i1 %.0, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %.pn37143 = phi { ptr, i32 } [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ]
  call void @__cxa_free_exception(ptr %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

.split24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %.sroa.3.0 = phi i16 [ 512, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ 768, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.split24
  call void @_ZdlPv(ptr noundef %i.db) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %.split24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %.sroa.0137.0.insert.insert = or disjoint i16 %.sroa.3.0, %.09
  ret i16 %.sroa.0137.0.insert.insert

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.q, %bb.f
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn31140, %bb.q ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.as, %bb.f ], [ %.pn37143, %bb.z ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %i.de = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.sink = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %.pn37.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.pn37.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn37.pn.pn.pn

bb.aa:                                            ; preds = %bb.x, %bb.o
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_115SortKeyBindDataD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_115SortKeyBindDataE, i64 16), ptr %0, align 8, !tbaa !152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #30
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_115SortKeyBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_115SortKeyBindDataE, i64 16), ptr %0, align 8, !tbaa !152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_115SortKeyBindDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #30, !inline_history !983
  br label %_ZN6duckdb12_GLOBAL__N_115SortKeyBindDataD2Ev.exit

_ZN6duckdb12_GLOBAL__N_115SortKeyBindDataD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29, !inline_history !983
  tail call void @_ZdlPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK6duckdb12_GLOBAL__N_115SortKeyBindData4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32, !noalias !984, !inline_history !305 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_115SortKeyBindDataE, i64 16), ptr %i.a, align 8, !tbaa !152, !noalias !984
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !984
  %i.c = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.a)
          to label %bb.b unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit4 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit4 ; 0 uses

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !323
  ret void

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit4: ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #29, !inline_history !326
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK6duckdb12_GLOBAL__N_115SortKeyBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.b, label %_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.p = load i8, ptr %.0810.i.i.i.i.i, align 1, !tbaa !987
  %i.q = load i8, ptr %.011.i.i.i.i.i, align 1, !tbaa !987
  %i.r = icmp eq i8 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.t, %i.v
  %i.x = select i1 %i.r, i1 %i.w, i1 false        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 2
  %.not.i.i.i.i.i = icmp ne ptr %i.y, %i.d
  %or.cond.not = select i1 %i.x, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, !llvm.loop !988

_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a, %bb.b
  %i.aa = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.aa
}

declare noundef zeroext i1 @_ZNK6duckdb12FunctionData21SupportStatementCacheEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = load ptr, ptr %0, align 8, !tbaa !20     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -2
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -2
  %i.s = add i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !23
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 2
  br i1 %i.y, label %bb.h, label %bb.i, !prof !147

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 2
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i16, ptr %i.c, align 1
  store i16 %i.aa, ptr %i.i, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 2
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !147

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 2
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i16, ptr %i.c, align 1
  store i16 %i.ad, ptr %i.i, align 1
  br label %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !24  ; 6 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 6 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %2 = ptrtoint ptr %i.al to i64
  %3 = ptrtoint ptr %i.ae to i64
  %i.an = add i64 %i.ai, %2
  %i.ao = add i64 %i.an, -2
  %i.ap = add i64 %3, %i.ah
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = add nuw i64 %i.ar, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aq, 6
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.aq, 30
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.as, 12
  %n.vec = and i64 %i.as, -16                     ; 4 uses
  %i.au = shl i64 %n.vec, 1                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep33, align 1
  %wide.load34 = load <8 x i16>, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load34, ptr %i.az, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !989

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !318

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.as, -4                    ; 3 uses
  %i.bb = shl i64 %n.vec37, 1                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ak, i64 %i.bb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.be = shl i64 %index38, 1                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.af, i64 %i.be
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.be
  %wide.load41 = load <4 x i16>, ptr %next.gep40, align 1
  store <4 x i16> %wide.load41, ptr %next.gep39, align 1
  %index.next42 = add nuw i64 %index38, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !990

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.as, %n.vec37
  br i1 %cmp.n43, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.bg = load i16, ptr %.0810.i.i.i.i, align 1
  store i16 %i.bg, ptr %.011.i.i.i.i, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 2
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !991

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bj = load ptr, ptr %0, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN6duckdb15BinderExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !710
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !11
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !16
  %i.o = load i64, ptr %i.i, align 8, !tbaa !18
  store i64 %i.o, ptr %i.g, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !19
  store ptr %i.i, ptr %i.f, align 8, !tbaa !16
  store i64 0, ptr %i.q, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !439
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !439
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb10StringUtil7ReplaceENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb10StringUtil10StartsWithENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb10StringUtil8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_4
