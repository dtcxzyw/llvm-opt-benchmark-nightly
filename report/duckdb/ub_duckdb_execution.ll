inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN6duckdb9make_uniqINS_18ColumnDataConsumerEJRNS_20ColumnDataCollectionERNS_6vectorImLb1ESaImEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

bb.j:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorImSaImEED2Ev.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.x) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

_ZNSt6vectorImSaImEED2Ev.exit8:                   ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.w, %bb.j ], [ %i.w, %bb.k ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #39
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1138   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb18ColumnDataConsumer14InitializeScanEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25PerfectAggregateHashTableC2ERNS_13ClientContextERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEES8_NS5_INS_15AggregateObjectELb1ESaISB_EEENS5_INS_5ValueELb1ESaISE_EEENS5_ImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(352) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef captures(none) %4, ptr noundef nonnull %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.33", align 16 ; 6 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::vector.275", align 16 ; 7 uses
  %i.a = load <2 x ptr>, ptr %4, align 8, !tbaa !73
  store <2 x ptr> %i.a, ptr %8, align 16, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  store ptr %i.d, ptr %i.b, align 16, !tbaa !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb22BaseAggregateHashTableC2ERNS_13ClientContextERNS_9AllocatorERKNS_6vectorINS_15AggregateObjectELb1ESaIS6_EEENS5_INS_11LogicalTypeELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %8)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load ptr, ptr %8, align 16, !tbaa !81    ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #40
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #39
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25PerfectAggregateHashTableE, i64 16), ptr %0, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 51)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load <2 x ptr>, ptr %7, align 8, !tbaa !59
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  store ptr %i.o, ptr %i.m, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  store i64 0, ptr %i.p, align 8, !tbaa !1216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.t = load <2 x ptr>, ptr %6, align 8, !tbaa !1237
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !1237
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1238
  store ptr %i.w, ptr %i.u, align 8, !tbaa !1238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.y) #40
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.ab = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  invoke void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 2048)
          to label %bb.h unwind label %bb.g, !noalias !1239

bb.g:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #39, !noalias !1239
  br label %.body37

bb.h:                                             ; preds = %.noexc
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !309, !alias.scope !1239
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !59  ; 8 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !59  ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %.not60 = icmp eq ptr %i.ae, %i.ag
  %.pre = load i64, ptr %i.p, align 8, !tbaa !1216 ; 4 uses
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %11 = add i64 %i.ah, -8
  %i.ai = sub i64 %11, %i.af                      ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check, label %.lr.ph.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = add i64 %i.ah, -8
  %i.am = sub i64 %i.al, %i.af
  %i.an = and i64 %i.am, -8
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.an
  %scevgep83 = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.p, %scevgep83
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap
  %i.ar = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ar, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi84 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !39, !alias.scope !1242
  %wide.load85 = load <2 x i64>, ptr %i.at, align 8, !tbaa !39, !alias.scope !1242
  %i.au = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.av = add <2 x i64> %vec.phi84, %wide.load85  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1245

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.av, %i.au
  %i.ax = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  store i64 %i.ax, ptr %i.p, align 8, !tbaa !1216, !alias.scope !1246, !noalias !1242
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader86

.lr.ph.preheader86:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.preheader ], [ %i.ax, %middle.block ]
  %.sroa.056.061.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.h
  %i.ay = phi i64 [ %.pre, %bb.h ], [ %i.ax, %middle.block ], [ %i.br, %.lr.ph ]
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !1248
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !82
  %i.bd = load ptr, ptr %3, align 8, !tbaa !81
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !1249
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bk = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %bb.m unwind label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #40
  br label %bb.ai

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.k:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #40
  br label %bb.ah

bb.l:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.lr.ph:                                           ; preds = %.lr.ph.preheader86, %.lr.ph
  %i.bp = phi i64 [ %i.br, %.lr.ph ], [ %.ph, %.lr.ph.preheader86 ]
  %.sroa.056.061 = phi ptr [ %i.bs, %.lr.ph ], [ %.sroa.056.061.ph, %.lr.ph.preheader86 ] ; 2 uses
  %i.bq = load i64, ptr %.sroa.056.061, align 8, !tbaa !39
  %i.br = add i64 %i.bp, %i.bq                    ; 3 uses
  store i64 %i.br, ptr %i.p, align 8, !tbaa !1216
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.056.061, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.ag
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1250

bb.m:                                             ; preds = %._crit_edge
  %i.bt = load <2 x ptr>, ptr %5, align 8, !tbaa !282
  store <2 x ptr> %i.bt, ptr %10, align 16, !tbaa !282
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !283
  store ptr %i.bw, ptr %i.bu, align 16, !tbaa !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15TupleDataLayout10InitializeENS_6vectorINS_15AggregateObjectELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(217) %i.bk, ptr noundef nonnull %10)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.by = load ptr, ptr %10, align 16, !tbaa !77
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !80
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb15AggregateObjectEEEvT_S5_(ptr noundef %i.by, ptr noundef %i.bz)
          to label %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.p

_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.n
  %i.ca = load ptr, ptr %10, align 16, !tbaa !77  ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #39
  br label %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #41
  unreachable

_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  %i.cd = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !872 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !1251
  %i.ch = load i64, ptr %i.ba, align 8, !tbaa !1248 ; 2 uses
  %i.ci = mul i64 %i.ch, %i.cf
  %i.cj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ci) #38
          to label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit unwind label %bb.t ; 2 uses

_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit: ; preds = %bb.q
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !382 ; 2 uses
  store ptr %i.cj, ptr %i.q, align 8, !tbaa !382
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #39
  %.pre67 = load ptr, ptr %i.q, align 8, !tbaa !382
  %.pre68 = load i64, ptr %i.ba, align 8, !tbaa !1248
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  %i.cl = phi i64 [ %.pre68, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.ch, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ] ; 2 uses
  %i.cm = phi ptr [ %.pre67, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.cj, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !1252
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cl) #38
          to label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit unwind label %bb.u ; 2 uses

_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.cp = load ptr, ptr %i.r, align 8, !tbaa !317 ; 2 uses
  store ptr %i.co, ptr %i.r, align 8, !tbaa !317
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #39
  %.pre69 = load ptr, ptr %i.r, align 8, !tbaa !317
  %.pre70 = load i64, ptr %i.ba, align 8, !tbaa !1248
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  %i.cq = phi i64 [ %.pre70, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.cl, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ]
  %i.cr = phi ptr [ %.pre69, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.co, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ]
  call void @llvm.memset.p0.i64(ptr align 1 %i.cr, i8 0, i64 %i.cq, i1 false)
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.v

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !427
  %i.cu = load i64, ptr %i.ba, align 8, !tbaa !1248
  %.not66 = icmp eq i64 %i.cu, 0
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64

._crit_edge65:                                    ; preds = %bb.aa, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.018.lcssa = phi i64 [ 0, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.1, %bb.aa ]
  %i.cv = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %bb.ab unwind label %bb.ae

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit, %._crit_edge
  %i.cw = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZNK6duckdb25RadixPartitionedHashTable7CombineERNS_16ExecutionContextERNS_15GlobalSinkStateERNS_14LocalSinkStateE:bb.a
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !355
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit

bb.r:                                             ; preds = %_ZN6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEaSEOS4_.exit33
  invoke void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit: ; preds = %bb.q, %bb.r
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_14ArenaAllocatorELb1EEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.s unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit
  %i.aw = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %bb.t unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.ax = invoke noundef i64 @_ZNK6duckdb14ArenaAllocator14AllocationSizeEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit36 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit36:          ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1797
  %i.ba = add i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !1797
  %i.bb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #40 ; 0 uses
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i37 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i37, label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bd, align 8, !tbaa !264
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !269
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #40, !inline_history !367
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #40, !inline_history !367
  br label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i38 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %bb.x ], [ %i.bq, %bb.y ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.br, label %bb.z, label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit, !prof !58

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #40
  br label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit36, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.bs = load ptr, ptr %4, align 8, !tbaa !307   ; 3 uses
  %.not.i39 = icmp eq ptr %i.bs, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.bs) #40, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.ab:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ag, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.af, %bb.o ]
  call void @_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.j, %bb.f ]
  %i.bw = load ptr, ptr %4, align 8, !tbaa !307   ; 3 uses
  %.not.i40 = icmp eq ptr %i.bw, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i41: ; preds = %bb.ac
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.bw) #40, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit42: ; preds = %bb.ac, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb25RadixPartitionedHashTable8FinalizeERNS_13ClientContextERNS_15GlobalSinkStateE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(81) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.1418", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40, !noalias !1798 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #37, !noalias !1798
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit:  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef i64 @_ZNK6duckdb20PartitionedTupleData5CountEv(ptr noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 %i.f, ptr %i.g, align 8, !tbaa !1801
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 113
  %i.i = load atomic i8, ptr %i.h seq_cst, align 1, !range !66, !noundef !69
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1686
  %i.p = icmp eq i64 %i.o, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ %i.p, %bb.g ]
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb20PartitionedTupleData13GetPartitionsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %bb.i unwind label %bb.n       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1802 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !487  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 6 uses
  %i.aa = icmp ugt i64 %i.y, 1152921504606846975
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #37
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1803
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !1696 ; 10 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.x
  br i1 %i.ah, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1697 ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.al = sub i64 %i.ak, %i.af
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38
          to label %.noexc52 unwind label %bb.o   ; 9 uses

.noexc52:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.aj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc52
  %4 = add i64 %i.ak, -8
  %i.an = sub i64 %4, %i.af                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader119, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aq = add i64 %i.ak, -8
  %i.ar = sub i64 %i.aq, %i.af
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.at
  %scevgep87 = getelementptr i8, ptr %i.ad, i64 %i.at
  %bound0 = icmp ult ptr %i.am, %scevgep87
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.am, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ax ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.ad, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %i.ay = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep88, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  %wide.load89 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1698, !alias.scope !1812, !noalias !1809
  store <2 x i64> %wide.load89, ptr %i.az, align 8, !tbaa !1698, !alias.scope !1812, !noalias !1809
  %i.ba = getelementptr i8, ptr %next.gep88, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep88, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1814

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader119

.lr.ph.i.i.i.i.i.preheader119:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader119, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1807, !noalias !1804
  store i64 %i.bc, ptr %.012.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1804, !noalias !1807
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1807, !noalias !1804
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1815

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc52
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.am, ptr %i.z, align 8, !tbaa !1696
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store ptr %i.bf, ptr %i.ai, align 8, !tbaa !1697
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.x
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !1803
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %.not67 = icmp eq ptr %i.t, %i.u
  br i1 %.not67, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.p

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.n:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.p:                                             ; preds = %.lr.ph, %bb.ai
  %.04366 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %bb.ai ] ; 2 uses
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !487
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.04366 ; 4 uses
  %i.bp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.bq = invoke noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.bp)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.br = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.br)
          to label %bb.t unwind label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !39
  %i.bu = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 4096)
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fmul nnan double %i.bv, 1.500000e+00
  %i.bx = fptoui double %i.bw to i64
  %i.by = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.bx)
          to label %_ZN6duckdb25GroupedAggregateHashTable19GetCapacityForCountEm.exit unwind label %bb.ae

_ZN6duckdb25GroupedAggregateHashTable19GetCapacityForCountEm.exit: ; preds = %bb.t
  %i.bz = shl i64 %i.by, 3
  %i.ca = add i64 %i.bz, %i.bq
  %i.cb = load i64, ptr %i.bh, align 8, !tbaa !1816
  %i.cc = call noundef i64 @llvm.umax.i64(i64 %i.cb, i64 %i.ca)
  store i64 %i.cc, ptr %i.bh, align 8, !tbaa !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.cd = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38
          to label %bb.u unwind label %bb.af      ; 7 uses

bb.u:                                             ; preds = %_ZN6duckdb25GroupedAggregateHashTable19GetCapacityForCountEm.exit
  %i.ce = load i64, ptr %i.bo, align 8, !tbaa !376, !noalias !1817
  store ptr null, ptr %i.bo, align 8, !tbaa !376, !noalias !1817
  store i8 1, ptr %i.cd, align 1, !tbaa !1457, !noalias !1817
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.cf, i8 0, i64 65, i1 false), !noalias !1817
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !376, !noalias !1817
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  store double 0.000000e+00, ptr %i.ch, align 8, !tbaa !1820, !noalias !1817
  store ptr %i.cd, ptr %3, align 8, !tbaa !1698, !alias.scope !1817
  %i.ci = load ptr, ptr %i.bi, align 8, !tbaa !1697 ; 6 uses
  %i.cj = load ptr, ptr %i.ab, align 8, !tbaa !1803
  %.not.i = icmp eq ptr %i.ci, %i.cj
  %i.ck = ptrtoint ptr %i.cd to i64               ; 2 uses
  br i1 %.not.i, label %bb.v, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.u
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !1698
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cl, ptr %i.bi, align 8, !tbaa !1697
  br label %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !1696 ; 10 uses
  %i.cn = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc55 unwind label %bb.ag

.noexc55:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #38
          to label %.noexc56 unwind label %.thread ; 10 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp
  store i64 %i.ck, ptr %i.cy, align 8, !tbaa !1698
  store ptr null, ptr %3, align 8, !tbaa !1698
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.ci
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader
end_hunk_1
