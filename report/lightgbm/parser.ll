Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/parser?download=true
inline.NumInlined: 1378
inline.NumDeleted: 542
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM6Parser12CreateParserEPKcbiib:bb.a
  %i.k = icmp sgt i32 %i.e, 0
  br i1 %i.k, label %bb.h, label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.33)
          to label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit unwind label %.thread51

.thread51:                                        ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #31
  br label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit40

bb.i:                                             ; preds = %bb.d
  %i.m = invoke noundef i32 @_ZN8LightGBM17GetLabelIdxForTSVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %2, i32 noundef %3)
          to label %bb.j unwind label %.thread56

bb.j:                                             ; preds = %bb.i
  %i.n = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit34 unwind label %.thread56 ; 2 uses

_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit34: ; preds = %bb.j
  %i.o = load i32, ptr %i.a, align 4, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8LightGBM9TSVParserE, i64 16), ptr %i.n, align 8, !tbaa !36
  br label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split

bb.k:                                             ; preds = %bb.d
  %i.p = invoke noundef i32 @_ZN8LightGBM17GetLabelIdxForCSVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %2, i32 noundef %3)
          to label %bb.l unwind label %.thread56

bb.l:                                             ; preds = %bb.k
  %i.q = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit37 unwind label %.thread56 ; 2 uses

_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit37: ; preds = %bb.l
  %i.r = load i32, ptr %i.a, align 4, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8LightGBM9CSVParserE, i64 16), ptr %i.q, align 8, !tbaa !36
  br label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split: ; preds = %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit37, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit34
  %.sink73 = phi ptr [ %i.n, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit34 ], [ %i.q, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit37 ] ; 4 uses
  %.sink71 = phi i32 [ %i.m, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit34 ], [ %i.p, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit37 ] ; 2 uses
  %.sink = phi i32 [ %i.o, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit34 ], [ %i.r, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit37 ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sink73, i64 8
  store i32 %.sink71, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.sink73, i64 12
  store i32 %.sink, ptr %i.t, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.sink73, i64 16
  store ptr %_ZN8LightGBM6CommonL11AtofPreciseEPKcPd._ZN8LightGBM6CommonL4AtofEPKcPd, ptr %i.u, align 8, !tbaa !61
  br label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split, %bb.c, %bb.g
  %.sroa.0.1 = phi ptr [ %i.f, %bb.g ], [ null, %bb.c ], [ %.sink73, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split ] ; 5 uses
  %.0 = phi i32 [ %i.e, %bb.g ], [ -1, %bb.c ], [ %.sink71, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split ]
  %i.v = icmp slt i32 %.0, 0
  %i.w = icmp sgt i32 %3, -1
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.m, label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit
  invoke void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.23, ptr noundef %0)
          to label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit unwind label %bb.o

_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.m
  %.sroa.0.150 = phi ptr [ %.sroa.0.1, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %.sroa.0.1, %bb.m ], [ %i.f, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.x = load ptr, ptr %5, align 8, !tbaa !33     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.x, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !33
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.sroa.0.150

.thread56:                                        ; preds = %bb.a, %bb.c, %bb.f, %bb.e, %bb.j, %bb.i, %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit40

bb.o:                                             ; preds = %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN8LightGBM6ParserEEclEPS1_.exit.i39

_ZNKSt14default_deleteIN8LightGBM6ParserEEclEPS1_.exit.i39: ; preds = %bb.o
  %i.am = load ptr, ptr %.sroa.0.1, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1) #30, !inline_history !207
  br label %_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN8LightGBM6ParserESt14default_deleteIS1_EED2Ev.exit40: ; preds = %_ZNKSt14default_deleteIN8LightGBM6ParserEEclEPS1_.exit.i39, %bb.o, %.thread51, %.thread56
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm, %.thread56 ], [ %i.l, %.thread51 ], [ %lpad.thr_comm.split-lp, %bb.o ], [ %lpad.thr_comm.split-lp, %_ZNKSt14default_deleteIN8LightGBM6ParserEEclEPS1_.exit.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef ptr @_ZN8LightGBM6CommonL11AtofPreciseEPKcPd(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %i.e = icmp eq i8 %i.d, 45                      ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19    ; 2 uses
  %i.h = add i8 %i.g, -48
  %i.i = icmp ult i8 %i.h, 10
  br i1 %i.i, label %bb.c, label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i8 [ %i.g, %bb.b ], [ %i.d, %bb.a ]  ; 3 uses
  %.098.i = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.098.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19    ; 2 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.p = add i8 %i.j, -48                         ; 2 uses
  %i.q = icmp ult i8 %i.p, 10
  br i1 %i.q, label %bb.f, label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = zext nneg i8 %i.p to i64                 ; 2 uses
  %.199.i32 = getelementptr inbounds nuw i8, ptr %.098.i, i64 1 ; 3 uses
  %i.s = load i8, ptr %.199.i32, align 1, !tbaa !19 ; 2 uses
  %i.t = add i8 %i.s, -48                         ; 2 uses
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %i.v = phi i8 [ %i.aa, %.lr.ph ], [ %i.t, %bb.f ]
  %.199.i34 = phi ptr [ %.199.i, %.lr.ph ], [ %.199.i32, %bb.f ]
  %.0109.i33 = phi i64 [ %i.y, %.lr.ph ], [ %i.r, %bb.f ]
  %i.w = mul i64 %.0109.i33, 10
  %i.x = zext nneg i8 %i.v to i64
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %.199.i = getelementptr inbounds nuw i8, ptr %.199.i34, i64 1 ; 3 uses
  %i.z = load i8, ptr %.199.i, align 1, !tbaa !19 ; 2 uses
  %i.aa = add i8 %i.z, -48                        ; 2 uses
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !208

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.d
  %i.ac = phi i8 [ %i.m, %bb.d ], [ %i.s, %bb.f ], [ %i.z, %.lr.ph ] ; 2 uses
  %.1110.i = phi i64 [ 0, %bb.d ], [ %i.r, %bb.f ], [ %i.y, %.lr.ph ] ; 2 uses
  %.2100.i = phi ptr [ %i.l, %bb.d ], [ %.199.i32, %bb.f ], [ %.199.i, %.lr.ph ] ; 4 uses
  %i.ad = icmp eq i8 %i.ac, 46
  br i1 %i.ad, label %bb.g, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre53 = ptrtoint ptr %.2100.i to i64
  br label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.ae = getelementptr inbounds nuw i8, ptr %.2100.i, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19
  %i.ag = add i8 %i.af, -48                       ; 2 uses
  %i.ah = icmp ult i8 %i.ag, 10
  br i1 %i.ah, label %bb.h, label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.2100.i, i64 2 ; 3 uses
  %i.aj = mul i64 %.1110.i, 10
  %i.ak = zext nneg i8 %i.ag to i64
  %i.al = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !19  ; 2 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %i.ao = icmp ult i8 %i.an, 10
  br i1 %i.ao, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %bb.h, %.lr.ph39
  %i.ap = phi i8 [ %i.av, %.lr.ph39 ], [ %i.an, %bb.h ]
  %.3101.i38 = phi ptr [ %i.aq, %.lr.ph39 ], [ %i.ai, %bb.h ]
  %.2111.i37 = phi i64 [ %i.at, %.lr.ph39 ], [ %i.al, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.3101.i38, i64 1 ; 3 uses
  %i.ar = mul i64 %.2111.i37, 10
  %i.as = zext nneg i8 %i.ap to i64
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !19  ; 2 uses
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 10
  br i1 %i.aw, label %.lr.ph39, label %._crit_edge, !llvm.loop !209

._crit_edge:                                      ; preds = %.lr.ph39, %bb.h
  %i.ax = phi i8 [ %i.am, %bb.h ], [ %i.au, %.lr.ph39 ]
  %.2111.i.lcssa = phi i64 [ %i.al, %bb.h ], [ %i.at, %.lr.ph39 ]
  %.3101.i.lcssa = phi ptr [ %i.ai, %bb.h ], [ %i.aq, %.lr.ph39 ] ; 2 uses
  %i.ay = ptrtoint ptr %i.ae to i64
  %i.az = ptrtoint ptr %.3101.i.lcssa to i64      ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  br label %bb.i

bb.i:                                             ; preds = %.loopexit._crit_edge, %._crit_edge
  %.pre-phi54 = phi i64 [ %.pre53, %.loopexit._crit_edge ], [ %i.az, %._crit_edge ]
  %i.bb = phi i8 [ %i.ac, %.loopexit._crit_edge ], [ %i.ax, %._crit_edge ]
  %.3112.i = phi i64 [ %.1110.i, %.loopexit._crit_edge ], [ %.2111.i.lcssa, %._crit_edge ] ; 5 uses
  %.0106.i = phi i64 [ 0, %.loopexit._crit_edge ], [ %i.ba, %._crit_edge ] ; 2 uses
  %.4102.i = phi ptr [ %.2100.i, %.loopexit._crit_edge ], [ %.3101.i.lcssa, %._crit_edge ] ; 3 uses
  %i.bc = ptrtoint ptr %.098.i to i64             ; 2 uses
  %i.bd = xor i64 %i.bc, -1
  %i.be = add i64 %.pre-phi54, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  switch i8 %i.bb, label %bb.l [
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.4102.i, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !19  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 45                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.4102.i, i64 2
  %i.bk = icmp eq i8 %i.bh, 43
  %i.bl = or i1 %i.bi, %i.bk
  %.5103.i = select i1 %i.bl, ptr %i.bj, ptr %i.bg ; 3 uses
  %i.bm = load i8, ptr %.5103.i, align 1, !tbaa !19
  %i.bn = add i8 %i.bm, -48                       ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.k, label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bp = zext nneg i8 %i.bn to i64               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.5103.i, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !19
  %i.bs = add i8 %i.br, -48                       ; 2 uses
  %i.bt = icmp ult i8 %i.bs, 10                   ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bp, 10
  %i.bv = zext nneg i8 %i.bs to i64
  %i.bw = add nuw nsw i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.5103.i, i64 2
  %.6104.i = select i1 %i.bt, ptr %i.bx, ptr %i.bq ; 2 uses
  %.092.i = select i1 %i.bt, i64 %i.bw, i64 %i.bp ; 2 uses
  %i.by = load i8, ptr %.6104.i, align 1, !tbaa !19
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 10                   ; 2 uses
  %i.cb = mul nuw nsw i64 %.092.i, 10
  %i.cc = zext nneg i8 %i.bz to i64
  %i.cd = add nuw nsw i64 %i.cb, %i.cc
  %.7105.i.idx = zext i1 %i.ca to i64
  %.7105.i = getelementptr inbounds nuw i8, ptr %.6104.i, i64 %.7105.i.idx ; 3 uses
  %.1.i = select i1 %i.ca, i64 %i.cd, i64 %.092.i ; 2 uses
  %i.ce = load i8, ptr %.7105.i, align 1, !tbaa !19
  %i.cf = add i8 %i.ce, -48                       ; 2 uses
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %bb.k, %.lr.ph45
  %i.ch = phi i8 [ %i.co, %.lr.ph45 ], [ %i.cf, %bb.k ]
  %.2.i43 = phi i64 [ %.3.i, %.lr.ph45 ], [ %.1.i, %bb.k ] ; 3 uses
  %.8.i42 = phi ptr [ %i.cm, %.lr.ph45 ], [ %.7105.i, %bb.k ]
  %i.ci = icmp slt i64 %.2.i43, 4294967296
  %i.cj = mul nsw i64 %.2.i43, 10
  %i.ck = zext nneg i8 %i.ch to i64
  %i.cl = add nsw i64 %i.cj, %i.ck
  %.3.i = select i1 %i.ci, i64 %i.cl, i64 %.2.i43 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.8.i42, i64 1 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !19
  %i.co = add i8 %i.cn, -48                       ; 2 uses
  %i.cp = icmp ult i8 %i.co, 10
  br i1 %i.cp, label %.lr.ph45, label %._crit_edge46, !llvm.loop !210

._crit_edge46:                                    ; preds = %.lr.ph45, %bb.k
  %.8.i.lcssa = phi ptr [ %.7105.i, %bb.k ], [ %i.cm, %.lr.ph45 ]
  %.2.i.lcssa = phi i64 [ %.1.i, %bb.k ], [ %.3.i, %.lr.ph45 ] ; 2 uses
  %i.cq = sub nsw i64 0, %.2.i.lcssa
  %i.cr = select i1 %i.bi, i64 %i.cq, i64 %.2.i.lcssa
  %i.cs = add nsw i64 %i.cr, %.0106.i
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge46, %bb.i
  %.2108.i = phi i64 [ %i.cs, %._crit_edge46 ], [ %.0106.i, %bb.i ] ; 7 uses
  %.10.i = phi ptr [ %.8.i.lcssa, %._crit_edge46 ], [ %.4102.i, %bb.i ]
  %i.ct = icmp sgt i32 %i.bf, 18
  br i1 %i.ct, label %.preheader, label %.thread, !prof !84

.preheader:                                       ; preds = %bb.l, %.critedge.i
  %i.cu = phi i8 [ %.pre, %.critedge.i ], [ %i.j, %bb.l ]
  %.0.i = phi ptr [ %i.cv, %.critedge.i ], [ %.098.i, %bb.l ] ; 2 uses
  switch i8 %i.cu, label %bb.m [
    i8 48, label %.critedge.i
    i8 46, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader, %.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.cv, align 1, !tbaa !19
  br label %.preheader, !llvm.loop !211

bb.m:                                             ; preds = %.preheader
  %i.cw = ptrtoint ptr %.0.i to i64
  %.neg.i = sub i64 %i.bc, %i.cw
  %.neg120.i = trunc i64 %.neg.i to i32
  %i.cx = add i32 %.neg120.i, %i.bf
  %i.cy = icmp slt i32 %i.cx, 19
  br i1 %i.cy, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = tail call fastcc noundef ptr @_ZN18fast_double_parserL18parse_float_strtodEPKcPd(ptr noundef nonnull %0, ptr noundef %1)
  br label %_ZN18fast_double_parser12parse_numberEPKcPd.exit

.thread:                                          ; preds = %bb.m, %bb.l
  %i.da = add i64 %.2108.i, -309
  %or.cond.i = icmp ult i64 %i.da, -634
  br i1 %or.cond.i, label %bb.o, label %bb.r, !prof !212

bb.o:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.db = load atomic i8, ptr @_ZGVZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale acquire, align 8
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.p, label %_ZN18fast_double_parserL18parse_float_strtodEPKcPd.exit, !prof !62

bb.p:                                             ; preds = %bb.o
  %i.dd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale) #30
  %.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i, label %_ZN18fast_double_parserL18parse_float_strtodEPKcPd.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.26, ptr noundef null) #30
  store ptr %i.de, ptr @_ZZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale, align 8, !tbaa !85
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale) #30
  br label %_ZN18fast_double_parserL18parse_float_strtodEPKcPd.exit

_ZN18fast_double_parserL18parse_float_strtodEPKcPd.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.df = load ptr, ptr @_ZZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale, align 8, !tbaa !85
  %i.dg = call double @strtod_l(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.df) #30 ; 2 uses
  store double %i.dg, ptr %1, align 8, !tbaa !87
  %i.dh = call double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp ueq double %i.dh, +inf
  %i.dj = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br i1 %i.di, label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread, label %_ZN18fast_double_parser12parse_numberEPKcPd.exit

bb.r:                                             ; preds = %.thread
  %i.dk = add nsw i64 %.2108.i, 22
  %or.cond.i12 = icmp ult i64 %i.dk, 45
  %i.dl = icmp ult i64 %.3112.i, 9007199254740992
  %or.cond3.i = and i1 %i.dl, %or.cond.i12
  br i1 %or.cond3.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.dm = uitofp nneg i64 %.3112.i to double      ; 2 uses
  %i.dn = icmp slt i64 %.2108.i, 0
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = sub nsw i64 0, %.2108.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @_ZZN18fast_double_parser16compute_float_64ElmbPbE12power_of_ten, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !87
  %i.dr = fdiv double %i.dm, %i.dq
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @_ZZN18fast_double_parser16compute_float_64ElmbPbE12power_of_ten, i64 %.2108.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !87
  %i.du = fmul double %i.dt, %i.dm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.080.i = phi double [ %i.dr, %bb.t ], [ %i.du, %bb.u ] ; 2 uses
  %i.dv = fneg double %.080.i
  %.181.i = select i1 %i.e, double %i.dv, double %.080.i
  br label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread29

bb.w:                                             ; preds = %bb.r
  %i.dw = icmp eq i64 %.3112.i, 0
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dx = select i1 %i.e, double -0.000000e+00, double 0.000000e+00
  br label %_ZN18fast_double_parser12parse_numberEPKcPd.exit.thread29

bb.y:                                             ; preds = %bb.w
  %i.dy = add nsw i64 %.2108.i, 325               ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr @_ZZN18fast_double_parser16compute_float_64ElmbPbE11mantissa_64, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !29
  %i.eb = mul nsw i64 %.2108.i, 217706
  %i.ec = ashr i64 %i.eb, 16
  %i.ed = add nsw i64 %i.ec, 1087                 ; 2 uses
  %i.ee = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.3112.i, i1 true) ; 2 uses
  %i.ef = shl i64 %.3112.i, %i.ee                 ; 3 uses
  %i.eg = zext i64 %i.ef to i128                  ; 2 uses
  %i.eh = zext i64 %i.ea to i128
  %i.ei = mul nuw i128 %i.eh, %i.eg               ; 2 uses
  %i.ej = trunc i128 %i.ei to i64                 ; 5 uses
  %i.ek = lshr i128 %i.ei, 64
  %i.el = trunc nuw i128 %i.ek to i64             ; 4 uses
  %i.em = and i64 %i.el, 511                      ; 2 uses
  %i.en = icmp eq i64 %i.em, 511
  br i1 %i.en, label %bb.z, label %bb.ab, !prof !84

bb.z:                                             ; preds = %bb.y
  %i.eo = xor i64 %i.ej, -1
  %i.ep = icmp ugt i64 %i.ef, %i.eo
  br i1 %i.ep, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds [8 x i8], ptr @_ZZN18fast_double_parser16compute_float_64ElmbPbE12mantissa_128, i64 %i.dy
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !29
end_hunk_0
