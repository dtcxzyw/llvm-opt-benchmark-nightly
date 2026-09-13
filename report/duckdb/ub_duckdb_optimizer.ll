Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer?download=true
inline.NumInlined: 25578
inline.NumDeleted: 11329
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6duckdb15LogicalOperator4CastINS_13LogicalFilterEEERT_v:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22ColumnLifetimeAnalyzer25AddVerificationProjectionERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::vector.74", align 16 ; 9 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %6 = alloca %"class.duckdb::vector.80", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %8 = alloca %"class.duckdb::vector.74", align 16 ; 17 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::ColumnBindingReplacer", align 8 ; 14 uses
  %12 = alloca %"struct.duckdb::ColumnBinding", align 8 ; 6 uses
  %13 = alloca %"class.duckdb::unique_ptr.330", align 8 ; 12 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN6duckdb15LogicalOperator20ResolveOperatorTypesEv(ptr noundef nonnull align 8 dereferenceable(97) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(97) %i.d)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268  ; 2 uses
  %i.j = load ptr, ptr %7, align 8, !tbaa !219    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 4
  %i.o = ashr exact i64 %i.m, 3                   ; 4 uses
  %i.p = or disjoint i64 %i.o, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.q = icmp ugt i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.t = shl nuw nsw i64 %i.p, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36
          to label %.noexc64 unwind label %bb.h   ; 9 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.v = load ptr, ptr %8, align 16, !tbaa !453   ; 10 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !454  ; 3 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc64
  %i.z = add i64 %i.y, -8
  %i.aa = sub i64 %i.z, %i.w                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader315, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.y, -8
  %i.ae = sub i64 %i.ad, %i.w
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ag
  %scevgep253 = getelementptr i8, ptr %i.v, i64 %i.ag
  %bound0 = icmp ult ptr %i.u, %scevgep253
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader315, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ak ; 2 uses
  %next.gep254 = getelementptr i8, ptr %i.v, i64 %i.ak ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %i.al = getelementptr i8, ptr %next.gep254, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep254, align 8, !tbaa !336, !alias.scope !1827, !noalias !1825
  %wide.load255 = load <2 x i64>, ptr %i.al, align 8, !tbaa !336, !alias.scope !1827, !noalias !1825
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !336, !alias.scope !1828, !noalias !1827
  store <2 x i64> %wide.load255, ptr %i.am, align 8, !tbaa !336, !alias.scope !1828, !noalias !1827
  %i.an = getelementptr i8, ptr %next.gep254, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep254, align 8, !tbaa !336, !alias.scope !1827, !noalias !1825
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !336, !alias.scope !1827, !noalias !1825
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1799

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader315

.lr.ph.i.i.i.i.i.preheader315:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader315, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader315 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader315 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !336, !alias.scope !1826, !noalias !1825
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !336, !alias.scope !1825, !noalias !1826
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !336, !alias.scope !1826, !noalias !1825
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1800

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc64
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #34
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, %bb.e
  store ptr %i.u, ptr %8, align 16, !tbaa !453
  store ptr %i.u, ptr %i.s, align 8, !tbaa !454
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  store ptr %i.as, ptr %i.r, align 16, !tbaa !457
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !408, !nonnull !266, !align !323
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !458, !nonnull !266, !align !323
  %i.ay = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %i.ax)
          to label %bb.w unwind label %bb.aa      ; 3 uses

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit130

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.045164 = phi i64 [ 0, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.cn, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef zeroext 28)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %10)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bb = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #36
          to label %.noexc65 unwind label %bb.t   ; 6 uses

.noexc65:                                         ; preds = %bb.k
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %9) #33, !noalias !1829
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.bb, ptr noundef nonnull %5)
          to label %bb.m unwind label %bb.l, !noalias !1829

bb.l:                                             ; preds = %.noexc65
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #33, !noalias !1829
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #34, !noalias !1829
  br label %.body

bb.m:                                             ; preds = %.noexc65
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #33, !noalias !1829
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !454 ; 6 uses
  %i.be = load ptr, ptr %i.r, align 16, !tbaa !457
  %.not.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !459
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bf, ptr %i.at, align 8, !tbaa !454
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %8, align 16, !tbaa !453  ; 10 uses
  %i.bh = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc66 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit.split-lp

.noexc66:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #36
          to label %.noexc67 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit ; 10 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store ptr %i.bb, ptr %i.bs, align 8, !tbaa !459
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bd
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc67
  %i.bt = add i64 %i.bh, -8
  %i.bu = sub i64 %i.bt, %i.bi                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check266 = icmp ult i64 %i.bu, 56
  br i1 %min.iters.check266, label %.lr.ph.i.i.i.i.i.i.preheader309, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep258 = getelementptr i8, ptr %i.br, i64 8
  %i.bx = add i64 %i.bh, -8
  %i.by = sub i64 %i.bx, %i.bi
  %i.bz = and i64 %i.by, -8                       ; 2 uses
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.bz
  %scevgep260 = getelementptr i8, ptr %i.bg, i64 8
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.bz
  %bound0262 = icmp ult ptr %i.br, %scevgep261
  %bound1263 = icmp ult ptr %i.bg, %scevgep259
  %found.conflict264 = and i1 %bound0262, %bound1263
  br i1 %found.conflict264, label %.lr.ph.i.i.i.i.i.i.preheader309, label %vector.ph267

vector.ph267:                                     ; preds = %vector.memcheck257
  %n.vec268 = and i64 %i.bw, 4611686018427387900  ; 3 uses
  %i.ca = shl i64 %n.vec268, 3                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.br, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.ca
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 2 uses
  %i.cd = shl i64 %index270, 3                    ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.br, i64 %i.cd ; 2 uses
  %next.gep272 = getelementptr i8, ptr %i.bg, i64 %i.cd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.ce = getelementptr i8, ptr %next.gep272, i64 16
  %wide.load273 = load <2 x i64>, ptr %next.gep272, align 8, !tbaa !336, !alias.scope !1832, !noalias !1830
  %wide.load274 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !336, !alias.scope !1832, !noalias !1830
  %i.cf = getelementptr i8, ptr %next.gep271, i64 16
  store <2 x i64> %wide.load273, ptr %next.gep271, align 8, !tbaa !336, !alias.scope !1833, !noalias !1832
  store <2 x i64> %wide.load274, ptr %i.cf, align 8, !tbaa !336, !alias.scope !1833, !noalias !1832
  %i.cg = getelementptr i8, ptr %next.gep272, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep272, align 8, !tbaa !336, !alias.scope !1832, !noalias !1830
  store <2 x ptr> splat (ptr null), ptr %i.cg, align 8, !tbaa !336, !alias.scope !1832, !noalias !1830
  %index.next275 = add nuw i64 %index270, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.ch, label %middle.block276, label %vector.body269, !llvm.loop !1809

middle.block276:                                  ; preds = %vector.body269
  %cmp.n277 = icmp eq i64 %i.bw, %n.vec268
  br i1 %cmp.n277, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader309

.lr.ph.i.i.i.i.i.i.preheader309:                  ; preds = %vector.memcheck257, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block276
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck257 ], [ %i.br, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block276 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck257 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block276 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader309, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader309 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader309 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !336, !alias.scope !1831, !noalias !1830
  store i64 %i.ci, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !336, !alias.scope !1830, !noalias !1831
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !336, !alias.scope !1831, !noalias !1830
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cj, %i.bd
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1810

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block276, %.noexc67
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.br, %.noexc67 ], [ %i.cb, %middle.block276 ], [ %i.ck, %.lr.ph.i.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #34
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.br, ptr %8, align 16, !tbaa !453
  store ptr %i.cl, ptr %i.at, align 8, !tbaa !454
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cm, ptr %i.r, align 16, !tbaa !457
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #33
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.cn = add nuw i64 %.045164, 1
  %exitcond.not = icmp eq i64 %.045164, %i.o
  br i1 %exitcond.not, label %bb.f, label %bb.i, !llvm.loop !1811

bb.r:                                             ; preds = %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit.split-lp: ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71.loopexit.split-lp ]
  %i.cr = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(152) %i.bb) #33, !inline_history !7
  br label %.body

.body:                                            ; preds = %bb.t, %bb.l, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71
  %.pn58 = phi { ptr, i32 } [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit71 ], [ %i.cq, %bb.t ], [ %i.bc, %bb.l ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #33
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.s
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %.body ], [ %i.cp, %bb.s ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.u ], [ %i.co, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bs

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZN6duckdb21ColumnBindingReplacerC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %.preheader unwind label %bb.ab

.preheader:                                       ; preds = %bb.w
  %.not.a = icmp eq ptr %i.i, %i.j
  br i1 %.not.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12emplace_backIJRKNS0_13ColumnBindingES5_EEEvDpOT_.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cy = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36
          to label %.noexc73 unwind label %bb.av  ; 3 uses

.noexc73:                                         ; preds = %._crit_edge
  %i.cz = load <2 x ptr>, ptr %8, align 16, !tbaa !443, !noalias !1834
  store <2 x ptr> %i.cz, ptr %4, align 16, !tbaa !443, !noalias !1834
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.db = load ptr, ptr %i.r, align 16, !tbaa !457, !noalias !1834
  store ptr %i.db, ptr %i.da, align 16, !tbaa !457, !noalias !1834
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !1834
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cy, i64 noundef %i.ay, ptr noundef nonnull %4)
          to label %bb.x unwind label %bb.z, !noalias !1834

bb.x:                                             ; preds = %.noexc73
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cy, ptr %13, align 8, !tbaa !461, !alias.scope !1834
  %i.dd = load ptr, ptr %4, align 16, !tbaa !453, !noalias !1834 ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !454, !noalias !1834 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dd, %i.de
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.dd, %bb.x ] ; 2 uses
  %i.df = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !336, !noalias !1834 ; 3 uses
  %.not.i.i.i.i.i.i72 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i72, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !213, !noalias !1834
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !1834
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(88) %i.df) #33, !noalias !1834, !inline_history !8
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dj, %i.de
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !453, !noalias !1834
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.x
  %i.dk = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dd, %bb.x ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i.i, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #34, !noalias !1834
  br label %bb.aq

bb.z:                                             ; preds = %.noexc73
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #33, !noalias !1834
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #34, !noalias !1834
  br label %.body74

bb.aa:                                            ; preds = %bb.f
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ab:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12emplace_backIJRKNS0_13ColumnBindingES5_EEEvDpOT_.exit
  %.044165 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12emplace_backIJRKNS0_13ColumnBindingES5_EEEvDpOT_.exit ] ; 4 uses
  %i.do = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.044165)
          to label %bb.ad unwind label %bb.an     ; 4 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dp = shl i64 %.044165, 1
  %i.dq = xor i64 %i.dp, -1
  %i.dr = add i64 %i.o, %i.dq                     ; 3 uses
  %i.ds = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.044165)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dt = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36
          to label %.noexc76 unwind label %bb.ao  ; 5 uses

.noexc76:                                         ; preds = %bb.ae
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.af unwind label %bb.ag, !noalias !1835

bb.af:                                            ; preds = %.noexc76
  %.sroa.0.0.copyload.i = load i64, ptr %i.do, align 8, !tbaa !270, !noalias !1835
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270, !noalias !1835
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.dt, ptr noundef nonnull %3, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 noundef 0)
          to label %bb.aj unwind label %bb.ah, !noalias !1835

bb.ag:                                            ; preds = %.noexc76
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #33, !noalias !1835
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn.i = phi { ptr, i32 } [ %i.dv, %bb.ah ], [ %i.du, %bb.ag ]
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #34, !noalias !1835
  br label %.body77

bb.aj:                                            ; preds = %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #33, !noalias !1835
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.dr)
          to label %bb.ak unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit90 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !336 ; 3 uses
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !336
  %.not.i.i.i.i.i79 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i79, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !213
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(88) %i.dx) #33, !inline_history !10
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESaISE_EE17_M_realloc_insertIJRKS6_SD_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_:bb.a
  %.0.lcssa.i.i.i.i36 = phi ptr [ %i.ay, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.bp, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i34 ]
  %.not.i38 = icmp eq ptr %i.d, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit37
  call void @_ZdlPv(ptr noundef nonnull %i.d) #34
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_15CTEFilterPusher19MaterializedCTEInfoESt14default_deleteISA_ELb1EEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit37, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !724
  store ptr %.0.lcssa.i.i.i.i36, ptr %i.b, align 8, !tbaa !726
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !743
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.bu) #33 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.q) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bs

bb.l:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #37
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE17_M_realloc_insertIJRNS0_13ColumnBindingES6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !463  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !466    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.sroa.01.0.copyload.i = load i64, ptr %2, align 8, !tbaa !270
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !270
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !270
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  invoke void @_ZN6duckdb18ReplacementBindingC1ENS_13ColumnBindingES1_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 %.sroa.01.0.copyload.i, i64 %.sroa.22.0.copyload.i, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
          to label %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 33, i1 false), !alias.scope !5310
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #33
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #33
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !67

_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.z, %.lr.ph.i.i.i.i28 ], [ %i.v, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.y, %.lr.ph.i.i.i.i28 ], [ %1, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i30, i64 33, i1 false), !alias.scope !5311
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #33
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #33
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 64 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i.i28, !llvm.loop !67

_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i.i28, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i32 = phi ptr [ %i.v, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.z, %.lr.ph.i.i.i.i28 ]
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !466
  store ptr %.0.lcssa.i.i.i.i32, ptr %i.a, align 8, !tbaa !463
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !464
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #33 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ac

bb.g:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN6duckdb26BoundConjunctionExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN6duckdb13LogicalFilterC1ENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %3 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i22 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i22, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit"
  %i.j = icmp eq i64 %i.by, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph40, !llvm.loop !5312

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %.fr.i.i22, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i25.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ap, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.v = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !789
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !789
  %i.ad = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5313

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !789
  %i.al = icmp ugt i64 %.val.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.an = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !5314

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.ao, align 8
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ap = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %bb.c, !llvm.loop !5315

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %10 = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %10, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.aq, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i" ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.a                     ; 3 uses
  %i.at = ashr exact i64 %i.as, 4                 ; 3 uses
  %i.au = add nsw i64 %i.at, -1
  %i.av = lshr i64 %i.au, 1
  %i.aw = icmp sgt i64 %i.at, 2
  br i1 %i.aw, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.037.i.i.i23.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ax = shl i64 %.037.i.i.i23.i, 1              ; 2 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ay
  %i.ba = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %.val.i.i.i.i24.i = load i64, ptr %i.bc, align 8, !tbaa !789
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val1.i.i.i.i25.i = load i64, ptr %i.bd, align 8, !tbaa !789
  %i.be = icmp ugt i64 %.val.i.i.i.i24.i, %.val1.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.be, i64 %i.ba, i64 %i.ay ; 4 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i26.i
  %i.bg = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  %i.bh = icmp slt i64 %spec.select.i.i.i26.i, %i.av
  br i1 %i.bh, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !5313

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bi = and i64 %i.as, 16
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bk = add nsw i64 %i.at, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bl
  br i1 %i.bm, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bn = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bo = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bo, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0911.i.i56.i.i.i ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %.val.i.i.i.i.i19.i = load i64, ptr %i.bs, align 8, !tbaa !789
  %i.bt = icmp ugt i64 %.val.i.i.i.i.i19.i, %.sroa.4.0.copyload.i.i12.i
  br i1 %i.bt, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bu = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !5314

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bv = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i10.i, ptr %i.bv, align 8
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i21.i, align 8
  %i.bw = icmp sgt i64 %i.as, 16
  br i1 %i.bw, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !5316

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2339 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02438 = phi i64 [ %i.by, %bb.b ], [ %2, %.lr.ph ]
  %i.bx = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.by = add nsw i64 %.02438, -1                 ; 3 uses
  %i.bz = lshr i64 %i.bx, 1
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bz ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %storemerge2339, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !789 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 8
  %.val1.i.i.i = load i64, ptr %i.cc, align 8, !tbaa !789 ; 3 uses
  %i.cd = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.ce = getelementptr i8, ptr %storemerge2339, i64 -8
  %.val1.i27.i.i = load i64, ptr %i.ce, align 8, !tbaa !789 ; 4 uses
  br i1 %i.cd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %i.cf = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cg = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph40
  %i.ch = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.ci = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2339, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !789 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.cj, align 8, !tbaa !789
  %i.ck = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !5317

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.cm, align 8, !tbaa !789
  %i.cn = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !5318

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit"

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !5319

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2339, i64 noundef %i.by)
  %i.cp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a
  %.fr.i.i = freeze i64 %i.cq                     ; 2 uses
  %i.cr = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !5312

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE17_M_realloc_insertIJRNS0_10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS6_ELb1EEERNS0_21LogicalComparisonJoinEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(280) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !795  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !794    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  store ptr %2, ptr %i.q, align 8, !tbaa !273
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !797
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5328)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !5329
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !787, !alias.scope !5328, !noalias !5327
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !787, !alias.scope !5327, !noalias !5328
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !814, !alias.scope !5328, !noalias !5327
  store ptr %i.y, ptr %i.w, align 8, !tbaa !814, !alias.scope !5327, !noalias !5328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !5328, !noalias !5327
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !792, !alias.scope !5328, !noalias !5327
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !792, !alias.scope !5327, !noalias !5328
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5323

_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i28 ], [ %i.ae, %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i28 ], [ %1, %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5331)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i30, i64 16, i1 false), !alias.scope !5332
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 16 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !787, !alias.scope !5331, !noalias !5330
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !787, !alias.scope !5330, !noalias !5331
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !814, !alias.scope !5331, !noalias !5330
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !814, !alias.scope !5330, !noalias !5331
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !5331, !noalias !5330
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !792, !alias.scope !5331, !noalias !5330
  store i64 %i.an, ptr %i.al, align 8, !tbaa !792, !alias.scope !5330, !noalias !5331
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 48 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i.i28, !llvm.loop !5323

_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i.i28, %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i32 = phi ptr [ %i.ae, %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ap, %.lr.ph.i.i.i.i28 ]
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6duckdb14DelimCandidateESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt12_Vector_baseIN6duckdb14DelimCandidateESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb14DelimCandidateESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !794
  store ptr %.0.lcssa.i.i.i.i32, ptr %i.a, align 8, !tbaa !795
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !796
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_13LogicalFilterELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.6", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !805
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !300    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb23BoundOperatorExpressionC1ENS_14ExpressionTypeENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef zeroext, ptr noundef) unnamed_addr #2

declare void @_ZN6duckdb13LogicalFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb13ColumnBindingESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 6                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i64, ptr %2, align 8, !tbaa !375    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = and i64 %i.c, -64
  %scevgep = getelementptr i8, ptr %0, i64 %i.i   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.d, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %bb.f ] ; 13 uses
  %i.j = load i64, ptr %.sroa.032.051, align 8, !tbaa !375
  %i.k = icmp eq i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, %i.h
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !375
  %i.r = icmp eq i64 %i.q, %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, %i.h
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !375
  %i.y = icmp eq i64 %i.x, %i.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.aa, %i.h
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !375
  %i.af = icmp eq i64 %i.ae, %i.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 56
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, %i.h
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 64
  %i.al = add nsw i64 %.052, -1
  %i.am = icmp sgt i64 %.052, 1
  br i1 %i.am, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !5333

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre62 = ptrtoint ptr %scevgep to i64
  %.pre63 = sub i64 %i.a, %.pre62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi64 = phi i64 [ %.pre63, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.an = ashr exact i64 %.pre-phi64, 4
  switch i64 %i.an, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge58
  ]

._crit_edge._crit_edge58:                         ; preds = %._crit_edge
  %.pre59 = load i64, ptr %2, align 8, !tbaa !375
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre61 = load i64, ptr %.phi.trans.insert60, align 8
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !375
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre57 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = load i64, ptr %.sroa.032.0.lcssa, align 8, !tbaa !375
  %i.ap = load i64, ptr %2, align 8, !tbaa !375   ; 2 uses
  %i.aq = icmp eq i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  %i.aw = select i1 %i.aq, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ay = phi i64 [ %i.au, %bb.h ], [ %.pre57, %._crit_edge._crit_edge ] ; 2 uses
  %i.az = phi i64 [ %i.ap, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.ax, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.ba = load i64, ptr %.sroa.032.1, align 8, !tbaa !375
  %i.bb = icmp eq i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp eq i64 %i.bd, %i.ay
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge58, %bb.j
  %i.bh = phi i64 [ %i.ay, %bb.j ], [ %.pre61, %._crit_edge._crit_edge58 ]
  %i.bi = phi i64 [ %i.az, %bb.j ], [ %.pre59, %._crit_edge._crit_edge58 ]
  %.sroa.032.2 = phi ptr [ %i.bg, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge58 ] ; 3 uses
  %i.bj = load i64, ptr %.sroa.032.2, align 8, !tbaa !375
  %i.bk = icmp eq i64 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = icmp eq i64 %i.bm, %i.bh
  %i.bo = select i1 %i.bk, i1 %i.bn, i1 false
  %spec.select = select i1 %i.bo, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.br, %.loopexit.loopexit.split.loop.exit67 ], [ %i.bp, %.loopexit.loopexit.split.loop.exit ], [ %i.bq, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_less_iterEEvT_SL_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.ExpressionCosts, align 16   ; 5 uses
  %4 = alloca %struct.ExpressionCosts, align 16   ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 12 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph60

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEET_SL_SL_T0_.exit
  %i.j = icmp eq i64 %i.aj, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph60, !llvm.loop !5334

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa56 = phi i64 [ %i.d, %.lr.ph ], [ %i.ds, %bb.b ] ; 2 uses
  %.lcssa54 = phi i64 [ %i.c, %.lr.ph ], [ %i.dr, %bb.b ]
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.k = add nsw i64 %.lcssa56, -2
  %i.l = lshr i64 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit20.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.r, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit20.i.i.i ] ; 4 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  %i.n = load <2 x i64>, ptr %i.m, align 8, !tbaa !377
  store ptr null, ptr %i.m, align 8, !tbaa !336
  store <2 x i64> %i.n, ptr %4, align 16, !tbaa !377
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_less_iterEEvT_T0_SM_T1_T2_(ptr nonnull %0, i64 noundef %.08.i.i.i, i64 noundef %.lcssa56, ptr noundef %4)
  %.val11.i.i.i = load ptr, ptr %4, align 16, !tbaa !336 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val11.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit20.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %.val11.i.i.i, align 8, !tbaa !213
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(88) %.val11.i.i.i) #33, !inline_history !5335
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit20.i.i.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit20.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.c
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.r = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_RT0_.exit.i.i, label %bb.c, !llvm.loop !5336

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_RT0_.exit.i.i: ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %5 = icmp sgt i64 %.lcssa54, 16
  br i1 %5, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_T0_.exit

.lr.ph.i8.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_RT0_.exit.i15.i
  %.sroa.0.02.i.i = phi ptr [ %i.s, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_RT0_.exit.i15.i ], [ %storemerge23.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_RT0_.exit.i.i ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !377
  store ptr null, ptr %i.s, align 8, !tbaa !336
  %i.v = load ptr, ptr %0, align 8, !tbaa !336
  store ptr null, ptr %0, align 8, !tbaa !336
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !336  ; 3 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i9.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i9.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i11.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i10.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i10.i: ; preds = %.lr.ph.i8.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(88) %i.w) #33, !inline_history !5337
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i11.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i11.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i10.i, %.lr.ph.i8.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !821
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !821
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.ab, %i.a                     ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 4
  store <2 x i64> %i.u, ptr %3, align 16, !tbaa !377
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_less_iterEEvT_T0_SM_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ad, ptr noundef %3)
  %.val3.i.i12.i = load ptr, ptr %3, align 16, !tbaa !336 ; 3 uses
  %.not.i.i.i.i13.i = icmp eq ptr %.val3.i.i12.i, null
  br i1 %.not.i.i.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_RT0_.exit.i15.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i14.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i14.i: ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i11.i
  %i.ae = load ptr, ptr %.val3.i.i12.i, align 8, !tbaa !213
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(88) %.val3.i.i12.i) #33, !inline_history !5338
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_RT0_.exit.i15.i

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_RT0_.exit.i15.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i14.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = icmp sgt i64 %i.ac, 16
  br i1 %i.ah, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_T0_.exit, !llvm.loop !5339

.lr.ph60:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2359 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02458 = phi i64 [ %i.aj, %bb.b ], [ %2, %.lr.ph ]
  %i.ai = phi i64 [ %i.ds, %bb.b ], [ %i.d, %.lr.ph ]
  %i.aj = add nsw i64 %.02458, -1                 ; 3 uses
  %i.ak = lshr i64 %i.ai, 1
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ak ; 9 uses
  %i.am = getelementptr inbounds i8, ptr %storemerge2359, i64 -16 ; 8 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !tbaa !821 ; 5 uses
  %i.an = getelementptr i8, ptr %i.al, i64 8      ; 5 uses
  %.val3.i.i.i = load i64, ptr %i.an, align 8, !tbaa !821 ; 5 uses
  %i.ao = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %i.ap = getelementptr i8, ptr %storemerge2359, i64 -8 ; 5 uses
  %.val3.i27.i.i = load i64, ptr %i.ap, align 8, !tbaa !821 ; 6 uses
  br i1 %i.ao, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph60
  %i.aq = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %0, align 8, !tbaa !336
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr null, ptr %0, align 8, !tbaa !336
  %i.at = load i64, ptr %i.h, align 8, !tbaa !821
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !336
  store ptr null, ptr %i.al, align 8, !tbaa !336
  %i.av = load ptr, ptr %0, align 8, !tbaa !336   ; 3 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !213
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(88) %i.av) #33, !inline_history !5340
  %.pre68.i.i = load i64, ptr %i.an, align 8, !tbaa !821
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.az = phi i64 [ %.pre68.i.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val3.i.i.i, %bb.e ]
  store i64 %i.az, ptr %i.h, align 8, !tbaa !821
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !336 ; 3 uses
  store ptr %i.as, ptr %i.al, align 8, !tbaa !336
  %.not.i.i.i.i.i.i4.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i4.i.i.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i.i.i: ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !213
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(88) %i.ba) #33, !inline_history !5340
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i.i.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i
  store i64 %i.at, ptr %i.an, align 8, !tbaa !821
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.be = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  %i.bf = load i64, ptr %0, align 8, !tbaa !336
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !336
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !821 ; 2 uses
  br i1 %i.be, label %bb.g, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i38.i.i

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !336
  store ptr null, ptr %i.am, align 8, !tbaa !336
  %i.bj = load ptr, ptr %0, align 8, !tbaa !336   ; 3 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i30.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i30.i.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i32.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i31.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i31.i.i: ; preds = %bb.g
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !213
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(88) %i.bj) #33, !inline_history !5340
  %.pre67.i.i = load i64, ptr %i.ap, align 8, !tbaa !821
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i32.i.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i32.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i31.i.i, %bb.g
  %i.bn = phi i64 [ %.pre67.i.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i31.i.i ], [ %.val3.i27.i.i, %bb.g ]
  store i64 %i.bn, ptr %i.h, align 8, !tbaa !821
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !336 ; 3 uses
  store ptr %i.bg, ptr %i.am, align 8, !tbaa !336
  %.not.i.i.i.i.i.i4.i.i33.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i4.i.i33.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit35.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i34.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i34.i.i: ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i32.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !213
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(88) %i.bo) #33, !inline_history !5340
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit35.i.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit35.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i34.i.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i32.i.i
  store i64 %i.bh, ptr %i.ap, align 8, !tbaa !821
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i38.i.i: ; preds = %bb.f
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !336
  store ptr %i.bs, ptr %0, align 8, !tbaa !336
  store i64 %.val2.i.i.i, ptr %i.h, align 8, !tbaa !821
  store ptr %i.bg, ptr %i.f, align 8, !tbaa !336
  store i64 %i.bh, ptr %i.g, align 8, !tbaa !821
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph60
  %i.bt = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bt, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i46.i.i, label %bb.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i46.i.i: ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !336
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !821
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !336
  store ptr %i.bx, ptr %0, align 8, !tbaa !336
  store i64 %.val2.i.i.i, ptr %i.h, align 8, !tbaa !821
  store ptr %i.bv, ptr %i.f, align 8, !tbaa !336
  store i64 %i.bw, ptr %i.g, align 8, !tbaa !821
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.h
  %i.by = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  %i.bz = load i64, ptr %0, align 8, !tbaa !336
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !336
  %i.cb = load i64, ptr %i.h, align 8, !tbaa !821 ; 2 uses
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !336
  store ptr null, ptr %i.am, align 8, !tbaa !336
  %i.cd = load ptr, ptr %0, align 8, !tbaa !336   ; 3 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i52.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i52.i.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i54.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i53.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i53.i.i: ; preds = %bb.j
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !213
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(88) %i.cd) #33, !inline_history !5340
  %.pre64.i.i = load i64, ptr %i.ap, align 8, !tbaa !821
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i54.i.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i54.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i53.i.i, %bb.j
  %i.ch = phi i64 [ %.pre64.i.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i53.i.i ], [ %.val3.i27.i.i, %bb.j ]
  store i64 %i.ch, ptr %i.h, align 8, !tbaa !821
  %i.ci = load ptr, ptr %i.am, align 8, !tbaa !336 ; 3 uses
  store ptr %i.ca, ptr %i.am, align 8, !tbaa !336
  %.not.i.i.i.i.i.i4.i.i55.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i4.i.i55.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit57.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i56.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i56.i.i: ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i54.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !213
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(88) %i.ci) #33, !inline_history !5340
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit57.i.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit57.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i56.i.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i54.i.i
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !821
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.cm = load ptr, ptr %i.al, align 8, !tbaa !336
  store ptr null, ptr %i.al, align 8, !tbaa !336
  %i.cn = load ptr, ptr %0, align 8, !tbaa !336   ; 3 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i58.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i.i.i58.i.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i60.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i59.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i59.i.i: ; preds = %bb.k
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !213
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(88) %i.cn) #33, !inline_history !5340
  %.pre.i.i = load i64, ptr %i.an, align 8, !tbaa !821
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i60.i.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i60.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i59.i.i, %bb.k
  %i.cr = phi i64 [ %.pre.i.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i59.i.i ], [ %.val3.i.i.i, %bb.k ]
  store i64 %i.cr, ptr %i.h, align 8, !tbaa !821
  %i.cs = load ptr, ptr %i.al, align 8, !tbaa !336 ; 3 uses
  store ptr %i.ca, ptr %i.al, align 8, !tbaa !336
  %.not.i.i.i.i.i.i4.i.i61.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i4.i.i61.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit63.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i62.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i62.i.i: ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i60.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !213
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(88) %i.cs) #33, !inline_history !5340
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit63.i.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit63.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i62.i.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i60.i.i
  store i64 %i.cb, ptr %i.an, align 8, !tbaa !821
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit63.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit57.i.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i46.i.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i38.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit35.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i22.i
  %.sroa.012.0.i.i = phi ptr [ %i.cy, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i22.i ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i22.i ], [ %storemerge2359, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !821 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cy, %bb.l ] ; 12 uses
  %i.cw = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val2.i.i15.i = load i64, ptr %i.cw, align 8, !tbaa !821 ; 2 uses
  %i.cx = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.l, label %.preheader.i.i.preheader, !llvm.loop !5341

.preheader.i.i.preheader:                         ; preds = %bb.l
  %i.cz = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 7 uses
  %i.da = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i10.i.i = load i64, ptr %i.da, align 8, !tbaa !821 ; 2 uses
  %i.db = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.db, label %.preheader.i.i, label %bb.m, !llvm.loop !5342

bb.m:                                             ; preds = %.preheader.i.i
  %i.dc = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.dd = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dd, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEET_SL_SL_T0_.exit

bb.n:                                             ; preds = %bb.m
  %i.de = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !336
  %i.df = inttoptr i64 %i.de to ptr
  store ptr null, ptr %.sroa.012.1.i.i, align 8, !tbaa !336
  %i.dg = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !336
  store ptr null, ptr %.sroa.0.1.i.i, align 8, !tbaa !336
  %i.dh = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !336 ; 3 uses
  store ptr %i.dg, ptr %.sroa.012.1.i.i, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i.i16.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i19.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i17.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i17.i: ; preds = %bb.n
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !213
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(88) %i.dh) #33, !inline_history !5343
  %.pre.i18.i = load i64, ptr %i.dc, align 8, !tbaa !821
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i19.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i17.i, %bb.n
  %i.dl = phi i64 [ %.pre.i18.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i17.i ], [ %.val3.i10.i.i, %bb.n ]
  store i64 %i.dl, ptr %i.cz, align 8, !tbaa !821
  %i.dm = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !336 ; 3 uses
  store ptr %i.df, ptr %.sroa.0.1.i.i, align 8, !tbaa !336
  %.not.i.i.i.i.i.i4.i.i.i20.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i4.i.i.i20.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i22.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i.i21.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i.i21.i: ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i19.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !213
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(88) %i.dm) #33, !inline_history !5343
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i22.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEESI_EvT_T0_.exit.i22.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i5.i.i.i21.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i19.i
  store i64 %.val2.i.i15.i, ptr %i.dc, align 8, !tbaa !821
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !5344

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEET_SL_SL_T0_.exit: ; preds = %bb.m
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_less_iterEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2359, i64 noundef %i.aj)
  %i.dq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dr = sub i64 %i.dq, %i.a                     ; 2 uses
  %i.ds = ashr exact i64 %i.dr, 4                 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, 16
  br i1 %i.dt, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_T0_.exit, !llvm.loop !5334

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_SL_RT0_.exit.i15.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_less_iterEEvT_T0_SM_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef range(i64 -576460752303423488, 576460752303423488) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit
  %.049 = phi i64 [ %spec.select, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.049, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val2.i = load i64, ptr %i.i, align 8, !tbaa !821
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i = load i64, ptr %i.j, align 8, !tbaa !821
  %i.k = icmp ult i64 %.val2.i, %.val3.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.049 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !336
  store ptr null, ptr %i.l, align 8, !tbaa !336
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !336  ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !336
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(88) %i.o) #33, !inline_history !196
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !821
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !821
  %i.v = icmp slt i64 %spec.select, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !5345

._crit_edge:                                      ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit ] ; 5 uses
  %i.w = and i64 %2, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.y = add nsw i64 %2, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nsw i64 %.0.lcssa, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !336
  store ptr null, ptr %i.ad, align 8, !tbaa !336
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !336 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !336
  %.not.i.i.i.i.i.i36 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i36, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit38, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i37

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i37: ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !213
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(88) %i.ag) #33, !inline_history !196
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit38

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit38: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !821
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !821
  br label %bb.d

bb.d:                                             ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit38, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ac, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit38 ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %3, align 8, !tbaa !336
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr null, ptr %3, align 8, !tbaa !336
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !821 ; 2 uses
  %i.ar = icmp sgt i64 %.1, %1
  br i1 %i.ar, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i
  %.06.i = phi i64 [ %.097.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i ], [ %.1, %bb.d ] ; 3 uses
  %.097.in.i = add nsw i64 %.06.i, -1
  %.097.i = sdiv i64 %.097.in.i, 2                ; 4 uses
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.097.i ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %.val1.i.i = load i64, ptr %i.at, align 8, !tbaa !821 ; 2 uses
  %i.au = icmp ult i64 %.val1.i.i, %i.aq
  br i1 %i.au, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds [16 x i8], ptr %0, i64 %.06.i ; 3 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !336
  store ptr null, ptr %i.as, align 8, !tbaa !336
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !336 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !213
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(88) %i.ax) #33, !inline_history !5346
  %.pre.i = load i64, ptr %i.at, align 8, !tbaa !821
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i, %bb.e
  %i.bb = phi i64 [ %.val1.i.i, %bb.e ], [ %.pre.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !821
  %i.bd = icmp sgt i64 %.097.i, %1
  br i1 %i.bd, label %.lr.ph.i, label %.critedge.i, !llvm.loop !5347

.critedge.i:                                      ; preds = %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i, %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.06.i, %.lr.ph.i ], [ %.097.i, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i ]
  %i.be = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !336 ; 3 uses
  store ptr %i.ao, ptr %i.be, align 8, !tbaa !336
  %.not.i.i.i.i.i.i17.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i17.i, label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i18.i: ; preds = %.critedge.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !213
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(88) %i.bf) #33, !inline_history !5346
  br label %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit

_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsD2Ev.exit: ; preds = %.critedge.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i18.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.aq, ptr %i.bj, align 8, !tbaa !821
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_less_iterEEvT_SL_T0_(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit22, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.019.023 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.019.023, %1
  br i1 %.not24, label %.loopexit22, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.019.026 = phi ptr [ %.sroa.019.023, %.lr.ph ], [ %.sroa.019.0, %bb.e ] ; 9 uses
  %.pn25 = phi ptr [ %0, %.lr.ph ], [ %.sroa.019.026, %bb.e ] ; 3 uses
  %i.d = getelementptr i8, ptr %.pn25, i64 24
  %.val2.i = load i64, ptr %i.d, align 8, !tbaa !821 ; 5 uses
  %.val3.i = load i64, ptr %i.b, align 8, !tbaa !821
  %i.e = icmp ult i64 %.val2.i, %.val3.i
  %i.f = load i64, ptr %.sroa.019.026, align 8, !tbaa !336
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  store ptr null, ptr %.sroa.019.026, align 8, !tbaa !336
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %.sroa.019.026 to i64
  %i.i = sub i64 %i.h, %i.c
  %i.j = ashr exact i64 %i.i, 4                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pn25, i64 32
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.w, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.n, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.m, %_ZZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEN15ExpressionCostsaSEOSA_.exit.i.i.i.i.i ], [ %.sroa.019.026, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !336
  store ptr null, ptr %i.m, align 8, !tbaa !336
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !336  ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !336
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !313
  store ptr %i.r, ptr %.02530, align 8, !tbaa !313
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !386
  store ptr %.02530, ptr %i.s, align 8, !tbaa !313
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5359

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !826    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !827
  store ptr %.0.i, ptr %0, align 8, !tbaa !826
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1592
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !313 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !471
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !471
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !313 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !5360

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !471
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !300
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !313 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !5360

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !300
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !471
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #37
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !827  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !826
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !386 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !313 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !388 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !471
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !313 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !388 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !5361

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !471
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !300
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !313 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !388 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !5361

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i17 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i17, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph35

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit
  %i.j = icmp eq i64 %i.ca, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph35, !llvm.loop !5362

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i20.lcssa = phi i64 [ %.fr.i.i17, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 3 uses
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i20.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i20.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.aq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.09.i.i.i ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !270
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !270
  %i.w = icmp slt i64 %.09.i.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !830
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !830
  %i.ae = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !271
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5363

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ai, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !271
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.07.i.i.i.i.i = phi i64 [ %.098.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val1.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !830
  %i.am = icmp ult i64 %.val1.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !271
  %i.ao = icmp sgt i64 %.098.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i, !llvm.loop !5364

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.f ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.v, ptr %i.ap, align 8, !tbaa !270
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.aq = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i, label %bb.c, !llvm.loop !5365

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i
  %3 = icmp sgt i64 %.fr.i.i20.lcssa, 16
  br i1 %3, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit

.lr.ph.i8.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.ar, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i ], [ %storemerge18.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i10.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i11.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i10.i, align 8, !tbaa !270
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !tbaa !270
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !271
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 4                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = icmp sgt i64 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i12.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i8.i, %.lr.ph.i.i.i21.i
  %.041.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i8.i ] ; 2 uses
  %i.az = shl i64 %.041.i.i.i22.i, 1              ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val2.i.i.i.i23.i = load i64, ptr %i.be, align 8, !tbaa !830
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val3.i.i.i.i24.i = load i64, ptr %i.bf, align 8, !tbaa !830
  %i.bg = icmp ult i64 %.val2.i.i.i.i23.i, %.val3.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bg, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i25.i
  %i.bi = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !271
  %i.bj = icmp slt i64 %spec.select.i.i.i25.i, %i.ax
  br i1 %i.bj, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i12.i, !llvm.loop !5363

._crit_edge.i.i.i12.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i8.i
  %.0.lcssa.i.i.i13.i = phi i64 [ 0, %.lr.ph.i8.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bk = and i64 %i.au, 16
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i12.i
  %i.bm = add nsw i64 %i.av, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa.i.i.i13.i, %i.bn
  br i1 %i.bo, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bp = shl nuw nsw i64 %.0.lcssa.i.i.i13.i, 1
  %i.bq = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i13.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !271
  br label %.lr.ph.i.i.i.i15.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i12.i
  %.not.i.i14.i = icmp eq i64 %.0.lcssa.i.i.i13.i, 0
  br i1 %.not.i.i14.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i15.i.preheader

.lr.ph.i.i.i.i15.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.07.i.i.i.i16.i.ph = phi i64 [ %.0.lcssa.i.i.i13.i, %bb.h ], [ %i.bq, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i15.i

.lr.ph.i.i.i.i15.i:                               ; preds = %.lr.ph.i.i.i.i15.i.preheader, %bb.i
  %.07.i.i.i.i16.i = phi i64 [ %.098.i.i34.i.i.i, %bb.i ], [ %.07.i.i.i.i16.i.ph, %.lr.ph.i.i.i.i15.i.preheader ] ; 3 uses
  %.098.in.i.i.i.i17.i = add nsw i64 %.07.i.i.i.i16.i, -1
  %.098.i.i34.i.i.i = lshr i64 %.098.in.i.i.i.i17.i, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i34.i.i.i ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val1.i.i.i.i.i18.i = load i64, ptr %i.bu, align 8, !tbaa !830
  %i.bv = icmp ult i64 %.val1.i.i.i.i.i18.i, %.sroa.4.0.copyload.i.i11.i
  br i1 %i.bv, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i15.i
  %i.bw = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !271
  %.not5.i.i.i = icmp eq i64 %.098.i.i34.i.i.i, 0
  br i1 %.not5.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i15.i, !llvm.loop !5364

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i15.i, %bb.h
  %.0.lcssa.i.i.i.i19.i = phi i64 [ 0, %bb.h ], [ %.07.i.i.i.i16.i, %.lr.ph.i.i.i.i15.i ], [ 0, %bb.i ]
  %i.bx = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i19.i
  store <2 x i64> %i.as, ptr %i.bx, align 8, !tbaa !270
  %i.by = icmp sgt i64 %i.au, 16
  br i1 %i.by, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit, !llvm.loop !5366

.lr.ph35:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1834 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01933 = phi i64 [ %i.ca, %bb.b ], [ %2, %.lr.ph ]
  %i.bz = phi i64 [ %i.ct, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ca = add nsw i64 %.01933, -1                 ; 3 uses
  %i.cb = lshr i64 %i.bz, 1
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %storemerge1834, i64 -16 ; 4 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !tbaa !830 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  %.val3.i.i.i = load i64, ptr %i.ce, align 8, !tbaa !830 ; 3 uses
  %i.cf = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %i.cg = getelementptr i8, ptr %storemerge1834, i64 -8
  %.val3.i27.i.i = load i64, ptr %i.cg, align 8, !tbaa !830 ; 4 uses
  br i1 %i.cf, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph35
  %i.ch = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !271
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.ci = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.041.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !271
  store <2 x i64> %.sroa.041.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %.sroa.043.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !271
  store <2 x i64> %.sroa.043.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph35
  %i.cj = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.045.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !271
  store <2 x i64> %.sroa.045.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ck = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.047.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !271
  store <2 x i64> %.sroa.047.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.sroa.049.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !271
  store <2 x i64> %.sroa.049.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cn, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1834, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !830 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i ], [ %i.cn, %bb.t ] ; 9 uses
  %i.cl = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val2.i.i15.i = load i64, ptr %i.cl, align 8, !tbaa !830
  %i.cm = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.t, label %.preheader.i.i, !llvm.loop !5367

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.co = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i10.i.i = load i64, ptr %i.co, align 8, !tbaa !830
  %i.cp = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.cp, label %.preheader.i.i, label %bb.u, !llvm.loop !5368

bb.u:                                             ; preds = %.preheader.i.i
  %i.cq = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cq, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.051.0.copyload = load <2 x i64>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !271
  store <2 x i64> %.sroa.051.0.copyload, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !5369

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1834, i64 noundef %i.ca)
  %i.cr = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cs = sub i64 %i.cr, %i.a
  %.fr.i.i = freeze i64 %i.cs                     ; 2 uses
  %i.ct = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 16
  br i1 %i.cu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit, !llvm.loop !5362

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaISE_EEES5_RbbE3$_0E9_M_invokeERKSt9_Any_dataS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 5 uses
  %3 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !299   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = load ptr, ptr %.val, align 8, !tbaa !5374, !nonnull !266, !align !323
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5375, !nonnull !266, !align !323
  %i.d = load i64, ptr %1, align 8, !tbaa !336
  store i64 %i.d, ptr %3, align 8, !tbaa !336
  store ptr null, ptr %1, align 8, !tbaa !336
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5376, !nonnull !266
  invoke void @_ZN6duckdb18ExpressionRewriter10ApplyRulesERNS_15LogicalOperatorERKNS_6vectorISt17reference_wrapperINS_4RuleEELb1ESaIS6_EEENS_10unique_ptrINS_10ExpressionESt14default_deleteISC_ELb1EEERbb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.141") align 8 %2, ptr noundef nonnull align 8 dereferenceable(97) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.c, !inline_history !5370

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !336
  %i.h = load ptr, ptr %1, align 8, !tbaa !336    ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !213
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(88) %i.h) #33, !inline_history !5371
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !336    ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i4.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdb18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaIS7_EEENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISD_ELb1EEERbbE3$_0JRSG_EENSt9enable_ifIXsr7is_voidIT_EE5valueESM_E4typeEOT0_DpOT1_.exit", label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !213
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(88) %i.l) #33, !inline_history !5372
  br label %"_ZSt10__invoke_rIvRZN6duckdb18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaIS7_EEENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISD_ELb1EEERbbE3$_0JRSG_EENSt9enable_ifIXsr7is_voidIT_EE5valueESM_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %3, align 8, !tbaa !336    ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i7.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i.i.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(88) %i.q) #33, !inline_history !5372
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.p

"_ZSt10__invoke_rIvRZN6duckdb18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaIS7_EEENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISD_ELb1EEERbbE3$_0JRSG_EENSt9enable_ifIXsr7is_voidIT_EE5valueESM_E4typeEOT0_DpOT1_.exit": ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaISE_EEES5_RbbE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionRewriter10ApplyRulesERNS1_15LogicalOperatorERKNS1_6vectorISt17reference_wrapperINS1_4RuleEELb1ESaIS8_EEENS1_10unique_ptrINS1_10ExpressionESt14default_deleteISE_ELb1EEERbbE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb18ExpressionRewriter10ApplyRulesERNS_15LogicalOperatorERKNS_6vectorISt17reference_wrapperINS_4RuleEELb1ESaIS6_EEENS_10unique_ptrINS_10ExpressionESt14default_deleteISC_ELb1EEERbbE3$_0", ptr %0, align 8, !tbaa !1552
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionRewriter10ApplyRulesERNS1_15LogicalOperatorERKNS1_6vectorISt17reference_wrapperINS1_4RuleEELb1ESaIS8_EEENS1_10unique_ptrINS1_10ExpressionESt14default_deleteISE_ELb1EEERbbE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !299
  store ptr %.val, ptr %0, align 8, !tbaa !299
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionRewriter10ApplyRulesERNS1_15LogicalOperatorERKNS1_6vectorISt17reference_wrapperINS1_4RuleEELb1ESaIS8_EEENS1_10unique_ptrINS1_10ExpressionESt14default_deleteISE_ELb1EEERbbE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !5377
  store ptr %i.a, ptr %0, align 8, !tbaa !299
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionRewriter10ApplyRulesERNS1_15LogicalOperatorERKNS1_6vectorISt17reference_wrapperINS1_4RuleEELb1ESaIS8_EEENS1_10unique_ptrINS1_10ExpressionESt14default_deleteISE_ELb1EEERbbE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !299 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionRewriter10ApplyRulesERNS1_15LogicalOperatorERKNS1_6vectorISt17reference_wrapperINS1_4RuleEELb1ESaIS8_EEENS1_10unique_ptrINS1_10ExpressionESt14default_deleteISE_ELb1EEERbbE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %.val7.i) #34
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionRewriter10ApplyRulesERNS1_15LogicalOperatorERKNS1_6vectorISt17reference_wrapperINS1_4RuleEELb1ESaIS8_EEENS1_10unique_ptrINS1_10ExpressionESt14default_deleteISE_ELb1EEERbbE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionRewriter10ApplyRulesERNS1_15LogicalOperatorERKNS1_6vectorISt17reference_wrapperINS1_4RuleEELb1ESaIS8_EEENS1_10unique_ptrINS1_10ExpressionESt14default_deleteISE_ELb1EEERbbE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !443    ; 13 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !454  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !457
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !336
  store i64 %i.j, ptr %i.f, align 8, !tbaa !336
  store ptr null, ptr %2, align 8, !tbaa !336
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !454
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !336
  store i64 %i.n, ptr %i.f, align 8, !tbaa !336
  store ptr null, ptr %i.m, align 8, !tbaa !336
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !454
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.f, %bb.d ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !336
  store ptr null, ptr %i.t, align 8, !tbaa !336
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !336  ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !336
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(88) %i.w) #33, !inline_history !5378
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !5379

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, %bb.d
  %i.ac = load ptr, ptr %2, align 8, !tbaa !336
  store ptr null, ptr %2, align 8, !tbaa !336
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !336 ; 3 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !336
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !213
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(88) %i.ad) #33, !inline_history !5380
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.d    ; 4 uses
  %i.ai = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.aj = sub i64 %i.ai, %i.c                     ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm:bb.a
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.ae, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.p, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.t, %bb.f ] ; 3 uses
  %i.al = icmp eq ptr %.020, %i.aj
  %i.am = load ptr, ptr %.119, align 8, !tbaa !313 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.am, null           ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread, %bb.h
  %i.ao = phi i64 [ %i.s, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.ai, %bb.h ]
  %i.ap = phi ptr [ %i.w, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.aj, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.u, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.ak, %bb.h ]
  %.0205769 = phi ptr [ %i.w, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1195967 = phi ptr [ %i.x, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176066 = phi i64 [ %i.t, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %.017, %bb.h ]
  %i.ar = phi ptr [ %i.ab, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.an, %bb.h ]
  %i.as = phi ptr [ %i.ac, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !270
  %i.av = urem i64 %i.au, %i.ao                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.av, %.0176066
  br i1 %.not9.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.av
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !386
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread, %bb.j, %bb.h
  %i.ax = phi ptr [ %i.w, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.ap, %bb.j ], [ %i.aj, %bb.h ]
  %.0205770 = phi ptr [ %i.w, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %.0205769, %bb.j ], [ %.020, %bb.h ]
  %.1195968 = phi ptr [ %i.x, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %.1195967, %bb.j ], [ %.119, %bb.h ]
  %i.ay = phi ptr [ %i.ab, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.ar, %bb.j ], [ %i.an, %bb.h ]
  %i.az = phi ptr [ null, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit.thread ], [ %i.as, %bb.j ], [ null, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !988
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.ay, align 8, !tbaa !386
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKmm.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.be = urem i64 %i.bd, %i.ai                   ; 2 uses
  %.not17.i = icmp eq i64 %i.be, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.be
  store ptr %.020, ptr %i.bf, align 8, !tbaa !386
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bg = load ptr, ptr %.11958, align 8, !tbaa !313
  store ptr %i.bg, ptr %.02056, align 8, !tbaa !313
  tail call void @_ZdlPv(ptr noundef nonnull %.11958) #34
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !985
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !985
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRmEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !313
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !270    ; 7 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !270
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !985
  %.not.not = icmp eq i64 %i.e, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !986  ; 2 uses
  %i.h = urem i64 %i.c, %i.g                      ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !987
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !386  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.critedge27, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.034.0.in = phi ptr [ %i.l, %bb.b ], [ %.sroa.034.0, %bb.d ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !313 ; 4 uses
  %.not = icmp eq ptr %.sroa.034.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !270
  %i.o = icmp eq i64 %i.c, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %bb.c, !llvm.loop !5779

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !986
  %i.r = urem i64 %i.c, %i.q
  br label %.critedge27

bb.f:                                             ; preds = %.thread
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !313  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !270
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %.lr.ph.i.i, !llvm.loop !96

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8, !tbaa !313 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !270  ; 2 uses
  %i.aa = urem i64 %i.z, %i.g
  %.not19.i.i = icmp eq i64 %i.aa, %i.h
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !96

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge27, !llvm.loop !96

.critedge27:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.h, %.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.ac = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29: ; preds = %.critedge27
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  resume { ptr, i32 } %i.ad

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.042.0.ph = phi ptr [ %.sroa.034.0, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit
  %.sroa.443.055 = phi i8 [ 0, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit ], [ 1, %.critedge27 ]
  %.sroa.042.053 = phi ptr [ %.sroa.042.0.ph, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit ], [ %i.ac, %.critedge27 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.042.053, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.443.055, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i25 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i25, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 12 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit"
  %i.j = icmp eq i64 %i.ck, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph46, !llvm.loop !5780

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i28.lcssa = phi i64 [ %.fr.i.i25, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i28.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i28.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.au, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.v = load <2 x i64>, ptr %i.u, align 8
  %i.w = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !1247
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1247
  %i.ae = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !270
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !270
  %i.ai = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5781

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load <2 x i64>, ptr %i.s, align 8, !tbaa !270
  store <2 x i64> %i.ak, ptr %i.t, align 8, !tbaa !270
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i.i.i.i ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !1247 ; 2 uses
  %i.ao = icmp ugt i64 %.val.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.ao, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.011.i.i.i.i.i ; 2 uses
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !270
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !1246
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.val.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !1247
  %i.as = icmp sgt i64 %.0912.i.i.i.i.i, %.010.i.i.i
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !5782

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.v, ptr %i.at, align 8, !tbaa !270
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.au = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !5783

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i28.lcssa, 16
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.av, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i" ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i12.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8
  %i.aw = load <2 x i64>, ptr %i.av, align 8
  %i.ax = load i64, ptr %0, align 8, !tbaa !270
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !1246
  %i.ay = load i64, ptr %i.h, align 8, !tbaa !270
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !1247
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 3 uses
  %i.bb = ashr exact i64 %i.ba, 4                 ; 3 uses
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = lshr i64 %i.bc, 1
  %i.be = icmp sgt i64 %i.bb, 2
  br i1 %i.be, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.037.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bf = shl i64 %.037.i.i.i22.i, 1              ; 2 uses
  %i.bg = add i64 %i.bf, 2                        ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bg
  %i.bi = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %.val.i.i.i.i23.i = load i64, ptr %i.bk, align 8, !tbaa !1247
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val1.i.i.i.i24.i = load i64, ptr %i.bl, align 8, !tbaa !1247
  %i.bm = icmp ugt i64 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bm, i64 %i.bi, i64 %i.bg ; 4 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i25.i
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i22.i
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !tbaa !270
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !270
  %i.bq = icmp slt i64 %spec.select.i.i.i25.i, %i.bd
  br i1 %i.bq, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !5781

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.br = and i64 %i.ba, 16
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bt = add nsw i64 %i.bb, -2
  %i.bu = ashr exact i64 %i.bt, 1
  %i.bv = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bu
  br i1 %i.bv, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bw = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bx = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !tbaa !270
  store <2 x i64> %i.ca, ptr %i.bz, align 8, !tbaa !270
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bx, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i56.i.i.i ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %.val.i.i.i.i.i19.i = load i64, ptr %i.cc, align 8, !tbaa !1247 ; 2 uses
  %i.cd = icmp ugt i64 %.val.i.i.i.i.i19.i, %.sroa.4.0.copyload.i.i12.i
  br i1 %i.cd, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ce = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i.i17.i ; 2 uses
  %i.cf = load i64, ptr %i.cb, align 8, !tbaa !270
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !1246
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.val.i.i.i.i.i19.i, ptr %i.cg, align 8, !tbaa !1247
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !5782

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.ch = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x i64> %i.aw, ptr %i.ch, align 8, !tbaa !270
  %i.ci = icmp sgt i64 %i.ba, 16
  br i1 %i.ci, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !5784

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2645 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02744 = phi i64 [ %i.ck, %bb.b ], [ %2, %.lr.ph ]
  %i.cj = phi i64 [ %i.dz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ck = add nsw i64 %.02744, -1                 ; 3 uses
  %i.cl = lshr i64 %i.cj, 1
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cl ; 5 uses
  %i.cn = getelementptr inbounds i8, ptr %storemerge2645, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !1247 ; 5 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 8      ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.co, align 8, !tbaa !1247 ; 5 uses
  %i.cp = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.cq = getelementptr i8, ptr %storemerge2645, i64 -8 ; 5 uses
  %.val1.i27.i.i = load i64, ptr %i.cq, align 8, !tbaa !1247 ; 4 uses
  br i1 %i.cp, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.cr = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !270
  %i.ct = load <2 x i64>, ptr %0, align 8, !tbaa !270
  store i64 %i.cs, ptr %0, align 8, !tbaa !270
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !270
  store <2 x i64> %i.ct, ptr %i.cm, align 8, !tbaa !270
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cu = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  %i.cv = load i64, ptr %0, align 8, !tbaa !270   ; 2 uses
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = load i64, ptr %i.cn, align 8, !tbaa !270
  store i64 %i.cw, ptr %0, align 8, !tbaa !270
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !270
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !270
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !270
  store i64 %i.cy, ptr %i.h, align 8, !tbaa !270
  store i64 %i.cx, ptr %i.cq, align 8, !tbaa !270
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cz = load i64, ptr %i.f, align 8, !tbaa !270
  store i64 %i.cz, ptr %0, align 8, !tbaa !270
  store i64 %i.cv, ptr %i.f, align 8, !tbaa !270
  %i.da = load i64, ptr %i.h, align 8, !tbaa !270
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !270
  store i64 %i.da, ptr %i.g, align 8, !tbaa !270
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.db = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = load i64, ptr %i.f, align 8, !tbaa !270
  %i.dd = load <2 x i64>, ptr %0, align 8, !tbaa !270
  store i64 %i.dc, ptr %0, align 8, !tbaa !270
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !270
  store <2 x i64> %i.dd, ptr %i.f, align 8, !tbaa !270
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.de = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.df = load i64, ptr %0, align 8, !tbaa !270   ; 2 uses
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = load i64, ptr %i.cn, align 8, !tbaa !270
  store i64 %i.dg, ptr %0, align 8, !tbaa !270
  store i64 %i.df, ptr %i.cn, align 8, !tbaa !270
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !270
  %i.di = load i64, ptr %i.cq, align 8, !tbaa !270
  store i64 %i.di, ptr %i.h, align 8, !tbaa !270
  store i64 %i.dh, ptr %i.cq, align 8, !tbaa !270
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.dj = load i64, ptr %i.cm, align 8, !tbaa !270
  store i64 %i.dj, ptr %0, align 8, !tbaa !270
  store i64 %i.df, ptr %i.cm, align 8, !tbaa !270
  %i.dk = load i64, ptr %i.h, align 8, !tbaa !270
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !270
  store i64 %i.dk, ptr %i.co, align 8, !tbaa !270
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.dn, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2645, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !1247 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.dn, %bb.t ] ; 10 uses
  %i.dl = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.dl, align 8, !tbaa !1247
  %i.dm = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !5785

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.do = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.dp, align 8, !tbaa !1247
  %i.dq = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dq, label %.preheader.i.i, label %bb.u, !llvm.loop !5786

bb.u:                                             ; preds = %.preheader.i.i
  %i.dr = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dr, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.dt = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !270
  %i.du = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !270
  store i64 %i.du, ptr %.sroa.012.1.i.i, align 8, !tbaa !270
  store i64 %i.dt, ptr %.sroa.0.1.i.i, align 8, !tbaa !270
  %i.dv = load i64, ptr %i.do, align 8, !tbaa !270
  %i.dw = load i64, ptr %i.ds, align 8, !tbaa !270
  store i64 %i.dw, ptr %i.do, align 8, !tbaa !270
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !270
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !5787

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2645, i64 noundef %i.ck)
  %i.dx = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dy = sub i64 %i.dx, %i.a
  %.fr.i.i = freeze i64 %i.dy                     ; 2 uses
  %i.dz = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 16
  br i1 %i.ea, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !5780

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS1_S1_EEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  store ptr null, ptr %i.a, align 8, !tbaa !313
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !271
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !473
  %.not.not = icmp eq i64 %i.e, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.035.0.in = phi ptr [ %i.f, %bb.b ], [ %.sroa.035.0, %bb.d ]
  %.sroa.035.0 = load ptr, ptr %.sroa.035.0.in, align 8, !tbaa !313 ; 5 uses
  %.not = icmp eq ptr %.sroa.035.0, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 8
  %i.i = load i64, ptr %i.b, align 8, !tbaa !375
  %i.j = load i64, ptr %i.h, align 8, !tbaa !375
  %i.k = icmp eq i64 %i.i, %i.j
  %i.l = load i64, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  %i.p = select i1 %i.k, i1 %i.o, i1 false
  br i1 %i.p, label %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.c, !llvm.loop !5788

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.q = load i64, ptr %i.b, align 8, !tbaa !375  ; 3 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, -2960836687051489901       ; 2 uses
  %i.u = lshr i64 %i.t, 32
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -2960836687051489901       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !383  ; 3 uses
  %i.z = lshr i64 %i.y, 32
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -2960836687051489901     ; 2 uses
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -2960836687051489901     ; 2 uses
  %i.af = xor i64 %i.ae, %i.w
  %i.ag = lshr i64 %i.af, 32
  %i.ah = xor i64 %i.w, %i.ag
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !475 ; 2 uses
  %i.al = urem i64 %i.ai, %i.ak                   ; 3 uses
  br i1 %.not.not, label %.critedge28, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.am = load ptr, ptr %0, align 8, !tbaa !474
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !386 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %.critedge28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !313 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !388
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aq = phi i64 [ %.pre.i.i, %bb.f ], [ %i.bc, %bb.h ]
  %i.ar = phi ptr [ %i.ap, %bb.f ], [ %i.ba, %bb.h ] ; 4 uses
  %i.as = icmp eq i64 %i.ai, %i.aq
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !375
  %i.av = icmp eq i64 %i.q, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.y, %i.ax
  %i.az = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i, %bb.g
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !313 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !388 ; 2 uses
  %i.bd = urem i64 %i.bc, %i.ak
  %.not19.i.i = icmp eq i64 %i.bd, %i.al
  br i1 %.not19.i.i, label %bb.g, label %.critedge28, !llvm.loop !23

.critedge28:                                      ; preds = %bb.h, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i, %bb.e, %.loopexit
  %i.be = invoke ptr @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.al, i64 noundef %i.ai, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30: ; preds = %.critedge28
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  resume { ptr, i32 } %i.bf

_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.d, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i
  %.sroa.043.0.ph = phi ptr [ %i.ar, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_S2_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i ], [ %.sroa.035.0, %bb.d ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %.sroa.444.055 = phi i8 [ 0, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ 1, %.critedge28 ]
  %.sroa.043.053 = phi ptr [ %.sroa.043.0.ph, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %i.be, %.critedge28 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.043.053, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.444.055, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEESaISB_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<duckdb::ColumnBinding, std::pair<const duckdb::ColumnBinding, duckdb::vector<std::reference_wrapper<duckdb::BoundColumnRefExpression>>>, std::allocator<std::pair<const duckdb::ColumnBinding, duckdb::vector<std::reference_wrapper<duckdb::BoundColumnRefExpression>>>>, std::__detail::_Select1st, duckdb::ColumnBindingEquality, duckdb::ColumnBindingHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !375    ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = xor i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -2960836687051489901       ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !383  ; 3 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -2960836687051489901       ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -2960836687051489901       ; 2 uses
  %i.p = xor i64 %i.o, %i.g
  %i.q = lshr i64 %i.p, 32
  %i.r = xor i64 %i.g, %i.q
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1253 ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !1254
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !386  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.loopexit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !313  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !388
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = phi i64 [ %.pre.i.i, %bb.b ], [ %i.am, %bb.d ]
  %i.ab = phi ptr [ %i.z, %bb.b ], [ %i.ak, %bb.d ] ; 4 uses
  %i.ac = icmp eq i64 %i.s, %i.aa
  br i1 %i.ac, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !375
  %i.af = icmp eq i64 %i.a, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.i, %i.ah
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i, %bb.c
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !313 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ak, null
  br i1 %.not18.i.i, label %.loopexit28, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !388 ; 2 uses
  %i.an = urem i64 %i.am, %i.u
  %.not19.i.i = icmp eq i64 %i.an, %i.v
  br i1 %.not19.i.i, label %bb.c, label %.loopexit28, !llvm.loop !141

.loopexit28:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_6vectorISt17reference_wrapperINS1_24BoundColumnRefExpressionEELb1ESaIS8_EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !5789
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36 ; 5 uses
end_hunk_3
