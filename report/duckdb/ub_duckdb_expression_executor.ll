Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_expression_executor?download=true
inline.NumInlined: 18244
inline.NumDeleted: 1616
loop-unroll.NumRuntimeUnrolled: 1957
loop-unroll.NumUnrolled: 1957
begin_hunk_0_@_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZN6duckdb16VectorOperations2OrERNS_6VectorES2_S2_m(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb18ExpressionExecutor6SelectERKNS_26BoundConjunctionExpressionEPNS_15ExpressionStateEPKNS_15SelectionVectorEmPS6_S9_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.duckdb::unique_ptr.251", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.251", align 8 ; 6 uses
  %11 = alloca %"class.duckdb::unique_ptr.251", align 8 ; 9 uses
  %12 = alloca %"class.duckdb::unique_ptr.251", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !162
  %i.e = icmp eq i8 %i.d, 50
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 11 uses
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call i64 @_ZNK6duckdb14AdaptiveFilter11BeginFilterEv(ptr noundef nonnull align 8 dereferenceable(168) %i.g) ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.au

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr null, ptr %10, align 8, !tbaa !382
  %.not279 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not279, label %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc unwind label %bb.d     ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !383
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 2048)
          to label %_ZN6duckdb9make_uniqINS_15SelectionVectorEJjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %.body.i, !noalias !383

.body.i:                                          ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #24, !noalias !383
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #23, !noalias !383
  br label %.body

_ZN6duckdb9make_uniqINS_15SelectionVectorEJjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  store ptr %i.i, ptr %10, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_15SelectionVectorEJjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %bb.b
  %i.m = phi ptr [ %i.i, %_ZN6duckdb9make_uniqINS_15SelectionVectorEJjEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ], [ null, %bb.b ] ; 7 uses
  %.not118 = icmp eq ptr %5, null
  br i1 %.not118, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit
  %i.n = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc125 unwind label %bb.f  ; 5 uses

.noexc125:                                        ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !384
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 2048)
          to label %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit142 unwind label %.body.i124, !noalias !384

.body.i124:                                       ; preds = %.noexc125
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.o) #24, !noalias !384
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #23, !noalias !384
  br label %.body

_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit142: ; preds = %.noexc125
  store ptr %i.n, ptr %9, align 8, !tbaa !167
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit142, %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit
  %.084 = phi ptr [ %5, %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit ], [ %i.n, %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit142 ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !179
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !180
  %.not280 = icmp eq ptr %i.t, %i.u
  br i1 %.not280, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %.not279, label %.lr.ph266.split.us, label %.lr.ph266.split.preheader

.lr.ph266.split.preheader:                        ; preds = %.lr.ph266
  %.not.i143 = icmp eq ptr %i.m, null
  br label %.lr.ph266.split

.lr.ph266.split.us:                               ; preds = %.lr.ph266, %bb.p
  %.087264.us = phi i64 [ %i.ai, %bb.p ], [ 0, %.lr.ph266 ] ; 3 uses
  %.0100262.us = phi i64 [ %i.ag, %bb.p ], [ %4, %.lr.ph266 ]
  %.0102261.us = phi ptr [ %spec.select.us, %bb.p ], [ %3, %.lr.ph266 ] ; 2 uses
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.h unwind label %.split272.us

bb.h:                                             ; preds = %.lr.ph266.split.us
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %.087264.us)
          to label %bb.i unwind label %.split272.us

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.y)
          to label %bb.j unwind label %.split272.us

bb.j:                                             ; preds = %bb.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.k unwind label %.split272.us

bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.l unwind label %.split272.us

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.087264.us)
          to label %bb.m unwind label %.split272.us

bb.m:                                             ; preds = %bb.l
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !75
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ExpressionStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.ad)
          to label %bb.n unwind label %.split272.us

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = invoke noundef i64 @_ZN6duckdb18ExpressionExecutor6SelectERKNS_10ExpressionEPNS_15ExpressionStateEPKNS_15SelectionVectorEmPS6_S9_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef %i.af, ptr noundef %.0102261.us, i64 noundef %.0100262.us, ptr noundef nonnull %.084, ptr noundef %i.m)
          to label %bb.o unwind label %.split272.us ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.not119.us = icmp eq i64 %i.ag, 0
  br i1 %.not119.us, label %._crit_edge267, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = icmp ult i64 %i.ag, %4
  %spec.select.us = select i1 %i.ah, ptr %.084, ptr %.0102261.us
  %i.ai = add nuw i64 %.087264.us, 1              ; 2 uses
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !179
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !180
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = icmp ult i64 %i.ai, %i.ao
  br i1 %i.ap, label %.lr.ph266.split.us, label %._crit_edge267, !llvm.loop !364

.split272.us:                                     ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph266.split.us
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph266.split:                                  ; preds = %.lr.ph266.split.preheader, %bb.ac
  %.087264 = phi i64 [ %i.do, %bb.ac ], [ 0, %.lr.ph266.split.preheader ] ; 3 uses
  %.097263 = phi i64 [ %.299, %bb.ac ], [ 0, %.lr.ph266.split.preheader ] ; 9 uses
  %.0100262 = phi i64 [ %i.bb, %bb.ac ], [ %4, %.lr.ph266.split.preheader ] ; 4 uses
  %.0102261 = phi ptr [ %spec.select, %bb.ac ], [ %3, %.lr.ph266.split.preheader ] ; 2 uses
  %i.ar = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.q unwind label %.split272

bb.q:                                             ; preds = %.lr.ph266.split
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %.087264)
          to label %bb.r unwind label %.split272

bb.r:                                             ; preds = %bb.q
  %i.at = load i64, ptr %i.as, align 8, !tbaa !75
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.at)
          to label %bb.s unwind label %.split272

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.t unwind label %.split272

bb.t:                                             ; preds = %bb.s
  %i.aw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.u unwind label %.split272

bb.u:                                             ; preds = %bb.t
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef %.087264)
          to label %bb.v unwind label %.split272

bb.v:                                             ; preds = %bb.u
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !75
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ExpressionStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.ay)
          to label %bb.w unwind label %.split272

bb.w:                                             ; preds = %bb.v
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bb = invoke noundef i64 @_ZN6duckdb18ExpressionExecutor6SelectERKNS_10ExpressionEPNS_15ExpressionStateEPKNS_15SelectionVectorEmPS6_S9_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef %i.ba, ptr noundef %.0102261, i64 noundef %.0100262, ptr noundef nonnull %.084, ptr noundef %i.m)
          to label %bb.x unwind label %.split272  ; 7 uses

bb.x:                                             ; preds = %bb.w
  %i.bc = sub i64 %.0100262, %i.bb                ; 8 uses
  %.not281 = icmp eq i64 %.0100262, %i.bb
  br i1 %.not281, label %.loopexit, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.x
  br i1 %.not.i143, label %.noexc.i, label %.lr.ph258.split, !prof !28

.lr.ph258.split:                                  ; preds = %.lr.ph258
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !120 ; 8 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %.not.i146 = icmp eq ptr %i.bd, null
  %i.bf = load ptr, ptr %6, align 8, !tbaa !120   ; 9 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %min.iters.check351 = icmp ult i64 %i.bc, 8     ; 2 uses
  br i1 %.not.i146, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader: ; preds = %.lr.ph258.split
  br i1 %min.iters.check351, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380, label %vector.memcheck364

vector.memcheck364:                               ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader
  %i.bh = shl i64 %.097263, 2
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = sub i64 %i.be, %i.bi
  %diff.check365 = icmp ugt i64 %i.bj, -32
  br i1 %diff.check365, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380, label %vector.ph368

vector.ph368:                                     ; preds = %vector.memcheck364
  %n.vec369 = and i64 %i.bc, -8                   ; 4 uses
  %i.bk = add i64 %.097263, %n.vec369             ; 2 uses
  %i.bl = getelementptr [4 x i8], ptr %i.bf, i64 %.097263
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next374, %vector.body370 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index371 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load372 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !22
  %wide.load373 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !22
  %i.bo = getelementptr [4 x i8], ptr %i.bl, i64 %index371 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load372, ptr %i.bo, align 4, !tbaa !22
  store <4 x i32> %wide.load373, ptr %i.bp, align 4, !tbaa !22
  %index.next374 = add nuw i64 %index371, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next374, %n.vec369
  br i1 %i.bq, label %middle.block375, label %vector.body370, !llvm.loop !365

middle.block375:                                  ; preds = %vector.body370
  %cmp.n376 = icmp eq i64 %i.bc, %n.vec369
  br i1 %cmp.n376, label %.loopexit, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380: ; preds = %vector.memcheck364, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader, %middle.block375
  %.085257.ph = phi i64 [ 0, %vector.memcheck364 ], [ 0, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader ], [ %n.vec369, %middle.block375 ] ; 3 uses
  %.198256.ph = phi i64 [ %.097263, %vector.memcheck364 ], [ %.097263, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader ], [ %i.bk, %middle.block375 ] ; 2 uses
  %xtraiter391 = and i64 %i.bc, 3                 ; 2 uses
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol: ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol
  %.085257.prol = phi i64 [ %i.bv, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol ], [ %.085257.ph, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380 ] ; 2 uses
  %.198256.prol = phi i64 [ %i.br, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol ], [ %.198256.ph, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380 ] ; 2 uses
  %prol.iter393 = phi i64 [ %prol.iter393.next, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol ], [ 0, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380 ]
  %i.br = add i64 %.198256.prol, 1                ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.085257.prol
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.198256.prol
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !22
  %i.bv = add nuw i64 %.085257.prol, 1            ; 2 uses
  %prol.iter393.next = add i64 %prol.iter393, 1   ; 2 uses
  %prol.iter393.cmp.not = icmp eq i64 %prol.iter393.next, %xtraiter391
  br i1 %prol.iter393.cmp.not, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol, !llvm.loop !366

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit: ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380
  %.lcssa.unr = phi i64 [ poison, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380 ], [ %i.br, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol ]
  %.085257.unr = phi i64 [ %.085257.ph, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380 ], [ %i.bv, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol ]
  %.198256.unr = phi i64 [ %.198256.ph, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.preheader380 ], [ %i.br, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol ]
  %i.bw = sub i64 %.085257.ph, %.0100262
  %i.bx = add i64 %i.bw, %i.bb
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %.loopexit, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader: ; preds = %.lr.ph258.split
  br i1 %min.iters.check351, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader379, label %vector.ph352

vector.ph352:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader
  %n.vec353 = and i64 %i.bc, -8                   ; 4 uses
  %i.bz = add i64 %.097263, %n.vec353             ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bf, i64 %.097263
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next358, %vector.body354 ] ; 2 uses
  %vec.ind356 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph352 ], [ %vec.ind.next359, %vector.body354 ] ; 3 uses
  %step.add357 = add <4 x i32> %vec.ind356, splat (i32 4)
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %index355 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <4 x i32> %vec.ind356, ptr %i.cb, align 4, !tbaa !22
  store <4 x i32> %step.add357, ptr %i.cc, align 4, !tbaa !22
  %index.next358 = add nuw i64 %index355, 8       ; 2 uses
  %vec.ind.next359 = add <4 x i32> %vec.ind356, splat (i32 8)
  %i.cd = icmp eq i64 %index.next358, %n.vec353
  br i1 %i.cd, label %middle.block360, label %vector.body354, !llvm.loop !367

middle.block360:                                  ; preds = %vector.body354
  %cmp.n361 = icmp eq i64 %i.bc, %n.vec353
  br i1 %cmp.n361, label %.loopexit, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader379

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader379: ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader, %middle.block360
  %.085257.us.ph = phi i64 [ 0, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader ], [ %n.vec353, %middle.block360 ]
  %.198256.us.ph = phi i64 [ %.097263, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader ], [ %i.bz, %middle.block360 ]
  br label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us: ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader379, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us
  %.085257.us = phi i64 [ %i.ch, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us ], [ %.085257.us.ph, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader379 ] ; 2 uses
  %.198256.us = phi i64 [ %i.ce, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us ], [ %.198256.us.ph, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us.preheader379 ] ; 2 uses
  %i.ce = add i64 %.198256.us, 1                  ; 2 uses
  %i.cf = trunc i64 %.085257.us to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.198256.us
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !22
  %i.ch = add nuw i64 %.085257.us, 1              ; 2 uses
  %exitcond292.not = icmp eq i64 %i.ch, %i.bc
  br i1 %exitcond292.not, label %.loopexit, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us, !llvm.loop !368

.split272:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %.lr.ph266.split
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit
  %.085257 = phi i64 [ %i.dc, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit ], [ %.085257.unr, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit ] ; 5 uses
  %.198256 = phi i64 [ %i.cw, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit ], [ %.198256.unr, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit ] ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.085257
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !22
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.198256
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !22
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.085257
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !22
  %i.cp = getelementptr [4 x i8], ptr %i.bf, i64 %.198256
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !22
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.085257
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !22
  %i.cu = getelementptr [4 x i8], ptr %i.bf, i64 %.198256
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !22
  %i.cw = add i64 %.198256, 4                     ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.085257
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !22
  %i.da = getelementptr [4 x i8], ptr %i.bf, i64 %.198256
  %i.db = getelementptr i8, ptr %i.da, i64 12
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !22
  %i.dc = add nuw i64 %.085257, 4                 ; 2 uses
  %exitcond291.not.3 = icmp eq i64 %i.dc, %i.bc
  br i1 %exitcond291.not.3, label %.loopexit, label %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit, !llvm.loop !369

.noexc.i:                                         ; preds = %.lr.ph258
  %i.dd = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.de, ptr %8, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 49, ptr %i.b, align 8, !tbaa !75
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc225 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc225:                                        ; preds = %.noexc.i
  store ptr %i.df, ptr %8, align 8, !tbaa !33
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !75  ; 3 uses
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.df, ptr noundef nonnull align 1 dereferenceable(49) @.str.13, i64 49, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !161
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc225
  invoke void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc225
  %.0.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc225 ] ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dl = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.de
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.dl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.0.i.i, label %bb.aa, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.0.i.i, label %bb.aa, label %.body

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dd) #24
  br label %.body

bb.ab:                                            ; preds = %bb.y
  unreachable

.loopexit:                                        ; preds = %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us, %middle.block375, %middle.block360, %bb.x
  %.299 = phi i64 [ %.097263, %bb.x ], [ %i.ce, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.us ], [ %i.bz, %middle.block360 ], [ %i.bk, %middle.block375 ], [ %.lcssa.unr, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit.prol.loopexit ], [ %i.cw, %_ZNK6duckdb10unique_ptrINS_15SelectionVectorESt14default_deleteIS1_ELb1EEptEv.exit ]
  %.not119 = icmp eq i64 %i.bb, 0
  br i1 %.not119, label %._crit_edge267, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.dn = icmp ult i64 %i.bb, %4
  %spec.select = select i1 %i.dn, ptr %.084, ptr %.0102261
  %i.do = add nuw i64 %.087264, 1                 ; 2 uses
  %i.dp = load ptr, ptr %i.s, align 8, !tbaa !179
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !180
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = icmp ult i64 %i.do, %i.du
  br i1 %i.dv, label %.lr.ph266.split, label %._crit_edge267, !llvm.loop !364

._crit_edge267:                                   ; preds = %.loopexit, %bb.ac, %bb.o, %bb.p, %bb.g
  %.1101 = phi i64 [ %i.ag, %bb.p ], [ %4, %bb.g ], [ 0, %bb.o ], [ %i.bb, %bb.ac ], [ 0, %.loopexit ]
  %i.dw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ad unwind label %bb.at

bb.ad:                                            ; preds = %._crit_edge267
  invoke void @_ZN6duckdb14AdaptiveFilter9EndFilterENS_19AdaptiveFilterStateE(ptr noundef nonnull align 8 dereferenceable(168) %i.dw, i64 %i.h)
          to label %bb.ae unwind label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %.not.i147 = icmp eq ptr %i.m, null
  br i1 %.not.i147, label %_ZNSt10unique_ptrIN6duckdb15SelectionVectorESt14default_deleteIS1_EED2Ev.exit153, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !81 ; 8 uses
  %.not.i.i.i.i.i.i148 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i148, label %_ZNKSt14default_deleteIN6duckdb15SelectionVectorEEclEPS1_.exit.i152, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
end_hunk_0
