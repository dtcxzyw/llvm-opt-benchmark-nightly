inline.NumInlined: 13629
inline.NumDeleted: 7416
begin_hunk_0_@_ZNK6duckdb23PhysicalBatchCopyToFile8FinalizeERNS_8PipelineERNS_5EventERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE:bb.a
  br label %_ZN6duckdb10shared_ptrINS_28ProcessRemainingBatchesEventELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_28ProcessRemainingBatchesEventELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i19, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.v

bb.u:                                             ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #30
  call void @_ZN6duckdb10shared_ptrINS_28ProcessRemainingBatchesEventELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume

bb.v:                                             ; preds = %_ZN6duckdb10shared_ptrINS_28ProcessRemainingBatchesEventELb1EED2Ev.exit, %_ZNK6duckdb23PhysicalBatchCopyToFile12ExecuteTasksERNS_13ClientContextERNS_15GlobalSinkStateE.exit
  ret i8 0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23PhysicalBatchCopyToFile18RepartitionBatchesERNS_13ClientContextERNS_15GlobalSinkStateEmb(ptr noundef nonnull align 8 dereferenceable(1067) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(81) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::tuple.2683", align 8   ; 4 uses
  %6 = alloca %"class.std::tuple.2476", align 1   ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.duckdb::vector.262", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.duckdb::vector.122", align 8 ; 6 uses
  %17 = alloca %"class.duckdb::vector.262", align 8 ; 8 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %18 = alloca %"class.duckdb::vector.531", align 8 ; 12 uses
  %19 = alloca %"class.duckdb::unique_ptr.518", align 8 ; 28 uses
  %20 = alloca %"struct.duckdb::ColumnDataAppendState", align 8 ; 17 uses
  %21 = alloca %"class.duckdb::unique_ptr.537", align 8 ; 6 uses
  %22 = alloca %"class.duckdb::unique_ptr.357", align 8 ; 9 uses
  %23 = alloca %"class.duckdb::ColumnDataChunkIterationHelper", align 8 ; 6 uses
  %24 = alloca %"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator", align 8 ; 15 uses
  %25 = alloca %"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator", align 8 ; 13 uses
  %26 = alloca %"class.duckdb::unique_ptr.537", align 8 ; 6 uses
  %27 = alloca %"class.duckdb::unique_ptr.357", align 8 ; 6 uses
  %28 = alloca %"class.duckdb::unique_ptr.537", align 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 480 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !366
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.fv, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  br i1 %4, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 553
  %i.p = load atomic i8, ptr %i.o seq_cst, align 1, !range !323, !noundef !264
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.fv, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !371  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 448 ; 2 uses
  %.not387426 = icmp eq ptr %i.s, %i.t
  br i1 %.not387426, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.051428 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.sroa.0374.0427 = phi ptr [ %i.ad, %bb.h ], [ %i.s, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0374.0427, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !460
  %.not = icmp ult i64 %i.v, %3
  br i1 %.not, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0374.0427, i64 40
  %i.x = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17FixedRawBatchDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !98
  %i.ac = add i64 %i.ab, %.051428                 ; 2 uses
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0374.0427) #35 ; 2 uses
  %.not387 = icmp eq ptr %i.ad, %i.t
  br i1 %.not387, label %._crit_edge, label %.lr.ph, !llvm.loop !469

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

._crit_edge:                                      ; preds = %bb.h, %.lr.ph, %bb.e
  %.051.lcssa = phi i64 [ 0, %bb.e ], [ %.051428, %.lr.ph ], [ %i.ac, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !470
  %.not72 = icmp ult i64 %.051.lcssa, %i.ag
  br i1 %.not72, label %bb.fv, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i64 0, ptr %i.g, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !371 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 448 ; 6 uses
  %.not388434 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not388434, label %bb.r, label %.lr.ph437

.lr.ph437:                                        ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph437, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit
  %i.am = phi ptr [ null, %.lr.ph437 ], [ %i.bx, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit ] ; 8 uses
  %i.an = phi ptr [ null, %.lr.ph437 ], [ %i.bz, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit ] ; 6 uses
  %storemerge435 = phi ptr [ %i.ai, %.lr.ph437 ], [ %i.ca, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit ] ; 4 uses
  %i.ao = phi ptr [ null, %.lr.ph437 ], [ %i.by, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit ] ; 14 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge435, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !460 ; 2 uses
  %.not73 = icmp ult i64 %i.aq, %3
  br i1 %.not73, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  store i64 %i.aq, ptr %i.g, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge435, i64 40 ; 4 uses
  %.not.i.i101 = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i101, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !439
  store i64 %i.as, ptr %i.an, align 8, !tbaa !439
  store ptr null, ptr %i.ar, align 8, !tbaa !439
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.n:                                             ; preds = %bb.l
  %i.at = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.au = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.o, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.an, ptr %i.ak, align 8
  store ptr %i.am, ptr %i.al, align 8
  store ptr %i.ao, ptr %18, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #33
          to label %.noexc102 unwind label %.loopexit ; 10 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  %i.bf = load i64, ptr %i.ar, align 8, !tbaa !439
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !439
  store ptr null, ptr %i.ar, align 8, !tbaa !439
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.am
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc102
  %29 = sub i64 %i.at, %i.au
  %30 = add i64 %29, -8                           ; 2 uses
  %i.bg = lshr i64 %30, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %30, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader690, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bd, i64 8
  %i.bi = add i64 %i.at, -8
  %i.bj = sub i64 %i.bi, %i.au
  %i.bk = and i64 %i.bj, -8                       ; 2 uses
  %scevgep663 = getelementptr i8, ptr %scevgep, i64 %i.bk
  %scevgep664 = getelementptr i8, ptr %i.ao, i64 8
  %scevgep665 = getelementptr i8, ptr %scevgep664, i64 %i.bk
  %bound0 = icmp ult ptr %i.bd, %scevgep665
  %bound1 = icmp ult ptr %i.ao, %scevgep663
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader690, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bd, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ao, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bo ; 2 uses
  %next.gep666 = getelementptr i8, ptr %i.ao, i64 %i.bo ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.bp = getelementptr i8, ptr %next.gep666, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep666, align 8, !tbaa !439, !alias.scope !524, !noalias !519
  %wide.load667 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !439, !alias.scope !524, !noalias !519
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !439, !alias.scope !527, !noalias !524
  store <2 x i64> %wide.load667, ptr %i.bq, align 8, !tbaa !439, !alias.scope !527, !noalias !524
  %i.br = getelementptr i8, ptr %next.gep666, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep666, align 8, !tbaa !439, !alias.scope !524, !noalias !519
  store <2 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !439, !alias.scope !524, !noalias !519
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !529

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader690

.lr.ph.i.i.i.i.i.i.i.preheader690:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader690, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader690 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader690 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !522, !noalias !519
  store i64 %i.bt, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !519, !noalias !522
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !439, !alias.scope !522, !noalias !519
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !532

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc102
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.noexc102 ], [ %i.bm, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.m
  %i.bx = phi ptr [ %i.bw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.am, %bb.m ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.an, %bb.m ]
  %i.by = phi ptr [ %i.bd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ca = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %storemerge435) #35 ; 2 uses
  %i.cb = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %storemerge435, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #30 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !439 ; 3 uses
  %.not.i.i.i.i.i.i.i103 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i103, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !344 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17FixedRawBatchDataEEclEPS1_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  tail call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.cf) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.cf) #31
  br label %_ZNKSt14default_deleteIN6duckdb17FixedRawBatchDataEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17FixedRawBatchDataEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %bb.q
  tail call void @_ZdlPv(ptr noundef nonnull %i.cd) #31
  br label %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit

_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb17FixedRawBatchDataEEclEPS1_.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cb) #31
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !366
  %i.ch = add i64 %i.cg, -1
  store i64 %i.ch, ptr %i.l, align 8, !tbaa !366
  %.not388 = icmp eq ptr %i.ca, %i.aj
  br i1 %.not388, label %.sink.split, label %bb.k

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %i.ak, align 8
  store ptr %i.am, ptr %i.al, align 8
  store ptr %i.ao, ptr %18, align 8
  br label %bb.fw

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.sink.split:                                      ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit, %bb.k
  %.lcssa629.sink = phi ptr [ %i.an, %bb.k ], [ %i.bz, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit ] ; 2 uses
  %.lcssa631.sink = phi ptr [ %i.am, %bb.k ], [ %i.bx, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit ]
  %.lcssa431.ph = phi ptr [ %i.ao, %bb.k ], [ %i.by, %_ZNSt3mapImN6duckdb10unique_ptrINS0_17FixedRawBatchDataESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E.exit ]
  store ptr %.lcssa629.sink, ptr %i.ak, align 8
  store ptr %.lcssa631.sink, ptr %i.al, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.j
  %i.ci = phi ptr [ null, %bb.j ], [ %.lcssa629.sink, %.sink.split ] ; 2 uses
  %.lcssa431 = phi ptr [ null, %bb.j ], [ %.lcssa431.ph, %.sink.split ] ; 3 uses
  store ptr %.lcssa431, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store ptr null, ptr %19, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store ptr %i.cj, ptr %20, align 8, !tbaa !534
  %i.ck = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 1, ptr %i.ck, align 8, !tbaa !535
  %i.cl = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cm, align 8, !tbaa !419
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cn, i8 0, i64 17, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not389454 = icmp eq ptr %.lcssa431, %i.ci
  br i1 %.not389454, label %_ZNSt10unique_ptrIN6duckdb16PrepareBatchTaskESt14default_deleteIS1_EED2Ev.exit274, label %.lr.ph457

.lr.ph457:                                        ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 536 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %25, i64 152
  %i.da = getelementptr inbounds nuw i8, ptr %25, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %25, i64 72
  %i.df = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  br label %bb.s

._crit_edge458:                                   ; preds = %bb.es
  %.pre502 = load ptr, ptr %19, align 8, !tbaa !439
  %i.do = icmp eq ptr %.pre502, null
  br i1 %i.do, label %_ZNSt10unique_ptrIN6duckdb16PrepareBatchTaskESt14default_deleteIS1_EED2Ev.exit274, label %bb.et

bb.s:                                             ; preds = %.lr.ph457, %bb.es
  %.sroa.0365.0455 = phi ptr [ %.lcssa431, %.lr.ph457 ], [ %i.nu, %bb.es ] ; 13 uses
  %i.dp = load ptr, ptr %19, align 8, !tbaa !439
  %.not391 = icmp eq ptr %i.dp, null
  br i1 %.not391, label %bb.t, label %bb.be

bb.t:                                             ; preds = %bb.s
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17FixedRawBatchDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0365.0455)
          to label %bb.u unwind label %bb.ae
end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EEixEm:bb.a
bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb9DataTable23GetOptimisticCollectionERNS_13ClientContextENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(512), i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_14BatchMergeTaskELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !713
  %i.e = load ptr, ptr %0, align 8, !tbaa !722    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !98
  store i64 %i.i, ptr %i.b, align 8, !tbaa !98
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_14BatchMergeTaskELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !739

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_14BatchMergeTaskELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb22BatchInsertGlobalState16MergeCollectionsERNS_13ClientContextERKNS_6vectorINS_18RowGroupBatchEntryELb1ESaIS4_EEERNS_20OptimisticDataWriterE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::CollectionMerger", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !264, !align !265 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(124) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(688) %i.b)
  store ptr %1, ptr %4, align 8, !tbaa !597
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !771
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 1, ptr %i.i, align 8, !tbaa !773
  %i.j = load ptr, ptr %2, align 8, !tbaa !769    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !769  ; 2 uses
  %.not27 = icmp eq ptr %i.j, %i.l
  br i1 %.not27, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit
  store ptr %i.ax, ptr %i.m, align 8
  store ptr %i.av, ptr %i.n, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa24 = phi ptr [ %i.aw, %._crit_edge ], [ null, %bb.a ]
  %.013.lcssa = phi i64 [ %i.ba, %._crit_edge ], [ 0, %bb.a ]
  store ptr %.lcssa24, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i8 1, ptr %i.o seq_cst, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN6duckdb18BatchMemoryManager21ReduceUnflushedMemoryEm(ptr noundef nonnull align 8 dereferenceable(113) %i.p, i64 noundef %.013.lcssa)
          to label %bb.h unwind label %bb.k

bb.c:                                             ; preds = %.lr.ph, %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.av, %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit ] ; 7 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit ] ; 5 uses
  %.01329 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit ]
  %.sroa.019.028 = phi ptr [ %i.j, %.lr.ph ], [ %i.bb, %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit ] ; 3 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit ] ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.019.028, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.t, align 8, !tbaa !98 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !98
  br label %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit

bb.e:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.f, label %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %i.m, align 8
  store ptr %i.q, ptr %i.n, align 8
  store ptr %i.s, ptr %i.h, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #33
          to label %.noexc15 unwind label %.loopexit ; 8 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i64 %.sroa.0.0.copyload, ptr %i.af, align 8, !tbaa !98
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %i.ag = ptrtoaddr ptr %i.ae to i64
  %5 = sub i64 %i.u, %i.v
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ah = lshr i64 %6, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  %i.aj = sub i64 %i.ag, %i.v
  %diff.check = icmp ult i64 %i.aj, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.s, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.an ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.s, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.ao = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep87, align 8, !tbaa !98, !alias.scope !784, !noalias !781
  %wide.load88 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !98, !alias.scope !784, !noalias !781
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !98, !alias.scope !781, !noalias !784
  store <2 x i64> %wide.load88, ptr %i.ap, align 8, !tbaa !98, !alias.scope !781, !noalias !784
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader90

.lr.ph.i.i.i.i.i.i.i.preheader90:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader90, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader90 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.ar = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !98, !alias.scope !784, !noalias !781
  store i64 %i.ar, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !98, !alias.scope !781, !noalias !784
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !787

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc15 ], [ %i.al, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #31
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit

_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d
  %i.av = phi ptr [ %i.au, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ]
  %i.aw = phi ptr [ %i.ae, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.019.028, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !745
  %i.ba = add i64 %i.az, %.01329                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.028, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.l
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %i.m, align 8
  store ptr %i.q, ptr %i.n, align 8
  store ptr %i.s, ptr %i.h, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.bc = invoke i64 @_ZN6duckdb16CollectionMerger5FlushERNS_20OptimisticDataWriterE(ptr noundef nonnull align 8 dereferenceable(41) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !788 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i16, label %_ZN6duckdb16CollectionMergerD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #31
  br label %_ZN6duckdb16CollectionMergerD2Ev.exit

_ZN6duckdb16CollectionMergerD2Ev.exit:            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i64 %i.bc

bb.k:                                             ; preds = %bb.h, %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !788
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %i.bf = phi ptr [ %.pre, %bb.k ], [ %i.s, %.loopexit ], [ %i.s, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.be, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i17, label %_ZN6duckdb16CollectionMergerD2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #31
  br label %_ZN6duckdb16CollectionMergerD2Ev.exit18

_ZN6duckdb16CollectionMergerD2Ev.exit18:          ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE(ptr noundef nonnull align 8 dereferenceable(41) %0, i64 %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !789  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !790
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !789
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !788  ; 7 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  store i64 %1, ptr %i.s, align 8, !tbaa !98
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.t = ptrtoaddr ptr %i.r to i64
  %5 = sub i64 %i.h, %i.i
  %6 = add i64 %5, -8                             ; 2 uses
  %i.u = lshr i64 %6, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  %i.w = sub i64 %i.t, %i.i
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.r, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.aa ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.g, i64 %i.aa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.ab = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !98, !alias.scope !794, !noalias !791
  %wide.load17 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !98, !alias.scope !794, !noalias !791
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !98, !alias.scope !791, !noalias !794
  store <2 x i64> %wide.load17, ptr %i.ac, align 8, !tbaa !98, !alias.scope !791, !noalias !794
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !796

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.i.preheader19:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader19 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader19 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !98, !alias.scope !794, !noalias !791
  store i64 %i.ae, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !98, !alias.scope !791, !noalias !794
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !797

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #31
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !788
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !789
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !790
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.aj = phi ptr [ %i.f, %bb.b ], [ %i.ah, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ak = icmp eq i8 %2, 0
  br i1 %i.ak, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backERKS1_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.al, align 8, !tbaa !773
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !788
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ugt i64 %i.ap, 8
  br i1 %i.aq, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.n unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.au) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0, label %bb.k, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ar) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backERKS1_.exit
  ret void

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn10 = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.k ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZN6duckdb16CollectionMerger5FlushERNS_20OptimisticDataWriterE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::TableAppendState", align 8 ; 9 uses
  %3 = alloca %"class.duckdb::DataChunk", align 8 ; 11 uses
  %4 = alloca %"class.duckdb::vector.1143", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %5 = alloca %"class.duckdb::TableScanState", align 8 ; 8 uses
  %6 = alloca %"class.duckdb::vector.1143", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::QueryContext", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::TransactionData", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !798
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !798
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !799, !nonnull !264, !align !265
  %i.k = load ptr, ptr %0, align 8, !tbaa !800, !nonnull !264, !align !265
  %i.l = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb9DataTable23GetOptimisticCollectionERNS_13ClientContextENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(124) %i.j, ptr noundef nonnull align 8 dereferenceable(512) %i.k, i64 %i.h) ; 4 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 4 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !789
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !788
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, 8
  br i1 %i.s, label %bb.c, label %bb.az

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb18RowGroupCollection8GetTypesEv(ptr noundef nonnull align 8 dereferenceable(217) %i.m) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN6duckdb16TableAppendStateC1Ev(ptr noundef nonnull align 8 dereferenceable(296) %2)
  invoke void @_ZN6duckdb18RowGroupCollection16InitializeAppendERNS_16TableAppendStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.m, ptr noundef nonnull align 8 dereferenceable(296) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !800, !nonnull !264, !align !265
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(512) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 2048)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !98
end_hunk_1
begin_hunk_2_@_ZNK6duckdb10unique_ptrINS_20OptimisticDataWriterESt14default_deleteIS1_ELb1EEdeEv:bb.a
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_20OptimisticDataWriterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb19PhysicalBatchInsert8FinalizeERNS_8PipelineERNS_5EventERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector.1048", align 8 ; 17 uses
  %6 = alloca %"class.duckdb::unique_ptr.1054", align 8 ; 17 uses
  %7 = alloca %"class.duckdb::unique_ptr.1054", align 8 ; 10 uses
  %8 = alloca %"class.duckdb::unique_ptr.867", align 8 ; 8 uses
  %9 = alloca %"struct.duckdb::LocalAppendState", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.duckdb::RowGroupIterationHelper", align 8 ; 9 uses
  %13 = alloca %"class.duckdb::RowGroupIterationHelper::RowGroupIterator", align 8 ; 9 uses
  %14 = alloca %"class.duckdb::RowGroupIterationHelper::RowGroupIterator", align 8 ; 7 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !453, !nonnull !264, !align !265 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !741, !nonnull !264, !align !265 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(124) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(688) %i.c) ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.j = load atomic i8, ptr %i.i seq_cst, align 8, !range !323, !noundef !264
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.m = load i64, ptr %i.l, align 8, !tbaa !818
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.o = load i64, ptr %i.n, align 8, !tbaa !687
  %.not = icmp ult i64 %i.m, %i.o
  br i1 %.not, label %bb.bo, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr null, ptr %6, align 8, !tbaa !966
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 392 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !769  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !769  ; 2 uses
  %.not233262 = icmp eq ptr %i.q, %i.s
  br i1 %.not233262, label %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge266:                                   ; preds = %bb.z
  %.pre285 = load ptr, ptr %i.p, align 8, !tbaa !708 ; 2 uses
  %.pre286 = load ptr, ptr %i.r, align 8, !tbaa !707
  %i.v = icmp eq ptr %.pre286, %.pre285
  br i1 %i.v, label %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN6duckdb18RowGroupBatchEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb18RowGroupBatchEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge266
  store ptr %.pre285, ptr %i.r, align 8, !tbaa !707
  br label %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit

_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit: ; preds = %._crit_edge266, %_ZSt8_DestroyIPN6duckdb18RowGroupBatchEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.w = load ptr, ptr %6, align 8                ; 2 uses
  %.not234 = icmp eq ptr %i.w, null
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  br i1 %.not234, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit161, label %bb.ad

_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread: ; preds = %bb.c
  %i.y = load ptr, ptr %6, align 8                ; 2 uses
  %.not234331 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br i1 %.not234331, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE7reserveEm.exit, label %.thread332

.thread332:                                       ; preds = %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.af

bb.d:                                             ; preds = %.lr.ph265, %bb.z
  %i.ac = phi ptr [ null, %.lr.ph265 ], [ %i.dy, %bb.z ] ; 3 uses
  %i.ad = phi ptr [ null, %.lr.ph265 ], [ %i.dz, %bb.z ] ; 13 uses
  %i.ae = phi ptr [ null, %.lr.ph265 ], [ %i.ea, %bb.z ] ; 5 uses
  %i.af = phi ptr [ null, %.lr.ph265 ], [ %i.eb, %bb.z ] ; 5 uses
  %.sroa.0219.0263 = phi ptr [ %i.q, %.lr.ph265 ], [ %i.ec, %bb.z ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0219.0263, i64 32 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !724
  %i.ai = icmp eq i8 %i.ah, 1
  %i.aj = load ptr, ptr %6, align 8               ; 2 uses
  %.not239 = icmp eq ptr %i.aj, null              ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  br i1 %.not239, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33
          to label %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g ; 5 uses

_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f
  store ptr %3, ptr %i.ak, align 8, !tbaa !597, !noalias !969
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.g, ptr %i.al, align 8, !tbaa !771, !noalias !969
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !noalias !969
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i8 1, ptr %i.an, align 8, !tbaa !773, !noalias !969
  store ptr %i.ak, ptr %6, align 8, !tbaa !972
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit189

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit, %bb.e
  %i.ap = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.i unwind label %.loopexit240

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0219.0263, i64 24
  %.sroa.027.0.copyload = load i64, ptr %i.aq, align 8, !tbaa !98
  %i.ar = load i8, ptr %i.ag, align 8, !tbaa !724
  invoke void @_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE(ptr noundef nonnull align 8 dereferenceable(41) %i.ap, i64 %.sroa.027.0.copyload, i8 noundef zeroext %i.ar)
          to label %bb.j unwind label %.loopexit240

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0219.0263, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !745
  invoke void @_ZN6duckdb18BatchMemoryManager21ReduceUnflushedMemoryEm(ptr noundef nonnull align 8 dereferenceable(113) %i.h, i64 noundef %i.at)
          to label %bb.z unwind label %.loopexit240

.loopexit240:                                     ; preds = %bb.h, %bb.i, %bb.j, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit242 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit189

.loopexit.split-lp241:                            ; preds = %bb.n
  %lpad.loopexit.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit189

bb.k:                                             ; preds = %bb.d
  %i.au = ptrtoint ptr %i.aj to i64               ; 2 uses
  br i1 %.not239, label %_ZN6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i, label %bb.m, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.l
  store i64 %i.au, ptr %i.af, align 8, !tbaa !972
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.t, align 8, !tbaa !973
  store ptr null, ptr %6, align 8, !tbaa !972
  br label %_ZN6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc unwind label %.loopexit.split-lp241

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #33
          to label %.noexc122 unwind label %.loopexit240 ; 12 uses

.noexc122:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i64 %i.au, ptr %i.bh, align 8, !tbaa !972
  store ptr null, ptr %6, align 8, !tbaa !972
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc122
  %15 = sub i64 %i.aw, %i.ax
  %16 = add i64 %15, -8                           ; 2 uses
  %i.bi = lshr i64 %16, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check372 = icmp ult i64 %16, 56
  br i1 %min.iters.check372, label %.lr.ph.i.i.i.i.i.i.i.preheader432, label %vector.memcheck363

vector.memcheck363:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep364 = getelementptr i8, ptr %i.bg, i64 8
  %i.bk = add i64 %i.aw, -8
  %i.bl = sub i64 %i.bk, %i.ax
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %scevgep365 = getelementptr i8, ptr %scevgep364, i64 %i.bm
  %scevgep366 = getelementptr i8, ptr %i.ad, i64 8
  %scevgep367 = getelementptr i8, ptr %scevgep366, i64 %i.bm
  %bound0368 = icmp ult ptr %i.bg, %scevgep367
  %bound1369 = icmp ult ptr %i.ad, %scevgep365
  %found.conflict370 = and i1 %bound0368, %bound1369
  br i1 %found.conflict370, label %.lr.ph.i.i.i.i.i.i.i.preheader432, label %vector.ph373

vector.ph373:                                     ; preds = %vector.memcheck363
  %n.vec375 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bn = shl i64 %n.vec375, 3                    ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bg, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ad, i64 %i.bn
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph373
  %index377 = phi i64 [ 0, %vector.ph373 ], [ %index.next382, %vector.body376 ] ; 2 uses
  %i.bq = shl i64 %index377, 3                    ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.bg, i64 %i.bq ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.ad, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.br = getelementptr i8, ptr %next.gep379, i64 16
  %wide.load380 = load <2 x i64>, ptr %next.gep379, align 8, !tbaa !972, !alias.scope !981, !noalias !976
  %wide.load381 = load <2 x i64>, ptr %i.br, align 8, !tbaa !972, !alias.scope !981, !noalias !976
  %i.bs = getelementptr i8, ptr %next.gep378, i64 16
  store <2 x i64> %wide.load380, ptr %next.gep378, align 8, !tbaa !972, !alias.scope !984, !noalias !981
  store <2 x i64> %wide.load381, ptr %i.bs, align 8, !tbaa !972, !alias.scope !984, !noalias !981
  %i.bt = getelementptr i8, ptr %next.gep379, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep379, align 8, !tbaa !972, !alias.scope !981, !noalias !976
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !972, !alias.scope !981, !noalias !976
  %index.next382 = add nuw i64 %index377, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.bu, label %middle.block383, label %vector.body376, !llvm.loop !986

middle.block383:                                  ; preds = %vector.body376
  %cmp.n384 = icmp eq i64 %i.bj, %n.vec375
  br i1 %cmp.n384, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader432

.lr.ph.i.i.i.i.i.i.i.preheader432:                ; preds = %vector.memcheck363, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block383
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck363 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block383 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck363 ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block383 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader432, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader432 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader432 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !972, !alias.scope !979, !noalias !976
  store i64 %i.bv, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !972, !alias.scope !976, !noalias !979
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !972, !alias.scope !979, !noalias !976
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.ae
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !987

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block383, %.noexc122
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.noexc122 ], [ %i.bo, %middle.block383 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.o
  store ptr %i.bg, ptr %5, align 8, !tbaa !988
  store ptr %i.by, ptr %i.t, align 8, !tbaa !973
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be ; 3 uses
  store ptr %i.bz, ptr %i.u, align 8, !tbaa !989
  %.pr = load ptr, ptr %6, align 8, !tbaa !972    ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !972
  %.not.i.i.i123 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i123, label %_ZN6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !788 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdlPv(ptr noundef nonnull %i.cb) #31
  br label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i: ; preds = %bb.q, %bb.p
  call void @_ZdlPv(ptr noundef nonnull %.pr) #31
  br label %_ZN6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %bb.k
  %i.cc = phi ptr [ %i.bz, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i ], [ %i.bz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.ac, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ac, %bb.k ] ; 5 uses
  %i.cd = phi ptr [ %i.by, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i ], [ %i.by, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.av, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.af, %bb.k ] ; 3 uses
  %i.ce = phi ptr [ %i.bg, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i ], [ %i.bg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ad, %bb.k ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.cf = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33
          to label %bb.r unwind label %bb.aa      ; 5 uses

bb.r:                                             ; preds = %_ZN6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  store ptr %3, ptr %i.cf, align 8, !tbaa !597, !noalias !990
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.g, ptr %i.cg, align 8, !tbaa !771, !noalias !990
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !noalias !990
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i8 1, ptr %i.ci, align 8, !tbaa !773, !noalias !990
  store ptr %i.cf, ptr %7, align 8, !tbaa !972, !alias.scope !990
  %i.cj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.s unwind label %.loopexit245

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0219.0263, i64 24
  %.sroa.026.0.copyload = load i64, ptr %i.ck, align 8, !tbaa !98
  %i.cl = load i8, ptr %i.ag, align 8, !tbaa !724
  invoke void @_ZN6duckdb16CollectionMerger13AddCollectionENS_13PhysicalIndexENS_17RowGroupBatchTypeE(ptr noundef nonnull align 8 dereferenceable(41) %i.cj, i64 %.sroa.026.0.copyload, i8 noundef zeroext %i.cl)
          to label %bb.t unwind label %.loopexit245

bb.t:                                             ; preds = %bb.s
  %.not.i.i126 = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i126, label %bb.u, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141.thread: ; preds = %bb.t
  %i.cm = load i64, ptr %7, align 8, !tbaa !972
  store i64 %i.cm, ptr %i.cd, align 8, !tbaa !972
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.t, align 8, !tbaa !973
  br label %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145

bb.u:                                             ; preds = %bb.t
  %i.co = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.cp = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.v, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i127

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc139 unwind label %.loopexit.split-lp246

.noexc139:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i127: ; preds = %bb.u
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i128 = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i128, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i129 = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i129)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #33
          to label %.noexc140 unwind label %.loopexit245 ; 12 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i127
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  %i.da = load i64, ptr %7, align 8, !tbaa !972
  store i64 %i.da, ptr %i.cz, align 8, !tbaa !972
  store ptr null, ptr %7, align 8, !tbaa !972
  %.not10.i.i.i.i.i.i.i130 = icmp eq ptr %i.ce, %i.cc
  br i1 %.not10.i.i.i.i.i.i.i130, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i135, label %.lr.ph.i.i.i.i.i.i.i131.preheader

.lr.ph.i.i.i.i.i.i.i131.preheader:                ; preds = %.noexc140
  %17 = sub i64 %i.co, %i.cp
  %18 = add i64 %17, -8                           ; 2 uses
  %i.db = lshr i64 %18, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %18, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i131.preheader431, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i131.preheader
  %scevgep = getelementptr i8, ptr %i.cy, i64 8
  %i.dd = add i64 %i.co, -8
  %i.de = sub i64 %i.dd, %i.cp
  %i.df = and i64 %i.de, -8                       ; 2 uses
  %scevgep357 = getelementptr i8, ptr %scevgep, i64 %i.df
  %scevgep358 = getelementptr i8, ptr %i.ce, i64 8
  %scevgep359 = getelementptr i8, ptr %scevgep358, i64 %i.df
  %bound0 = icmp ult ptr %i.cy, %scevgep359
  %bound1 = icmp ult ptr %i.ce, %scevgep357
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i131.preheader431, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dc, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cy, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.ce, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dj ; 2 uses
  %next.gep360 = getelementptr i8, ptr %i.ce, i64 %i.dj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.dk = getelementptr i8, ptr %next.gep360, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep360, align 8, !tbaa !972, !alias.scope !998, !noalias !993
  %wide.load361 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !972, !alias.scope !998, !noalias !993
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !972, !alias.scope !1001, !noalias !998
  store <2 x i64> %wide.load361, ptr %i.dl, align 8, !tbaa !972, !alias.scope !1001, !noalias !998
  %i.dm = getelementptr i8, ptr %next.gep360, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep360, align 8, !tbaa !972, !alias.scope !998, !noalias !993
  store <2 x ptr> splat (ptr null), ptr %i.dm, align 8, !tbaa !972, !alias.scope !998, !noalias !993
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !1003

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i135, label %.lr.ph.i.i.i.i.i.i.i131.preheader431

.lr.ph.i.i.i.i.i.i.i131.preheader431:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i131.preheader, %middle.block
  %.012.i.i.i.i.i.i.i132.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i131.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.i.i.i133.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i131.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i131

.lr.ph.i.i.i.i.i.i.i131:                          ; preds = %.lr.ph.i.i.i.i.i.i.i131.preheader431, %.lr.ph.i.i.i.i.i.i.i131
  %.012.i.i.i.i.i.i.i132 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i131 ], [ %.012.i.i.i.i.i.i.i132.ph, %.lr.ph.i.i.i.i.i.i.i131.preheader431 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i133 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i131 ], [ %.0911.i.i.i.i.i.i.i133.ph, %.lr.ph.i.i.i.i.i.i.i131.preheader431 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.do = load i64, ptr %.0911.i.i.i.i.i.i.i133, align 8, !tbaa !972, !alias.scope !996, !noalias !993
  store i64 %i.do, ptr %.012.i.i.i.i.i.i.i132, align 8, !tbaa !972, !alias.scope !993, !noalias !996
  store ptr null, ptr %.0911.i.i.i.i.i.i.i133, align 8, !tbaa !972, !alias.scope !996, !noalias !993
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i133, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i132, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i134 = icmp eq ptr %i.dp, %i.cc
  br i1 %.not.i.i.i.i.i.i.i134, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i135, label %.lr.ph.i.i.i.i.i.i.i131, !llvm.loop !1004

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i135: ; preds = %.lr.ph.i.i.i.i.i.i.i131, %middle.block, %.noexc140
  %.0.lcssa.i.i.i.i.i.i.i136 = phi ptr [ %i.cy, %.noexc140 ], [ %i.dh, %middle.block ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i131 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i136, i64 8 ; 3 uses
  %.not.i23.i.i.i137 = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i.i.i137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i135
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i135, %bb.w
  store ptr %i.cy, ptr %5, align 8, !tbaa !988
  store ptr %i.dr, ptr %i.t, align 8, !tbaa !973
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw ; 3 uses
  store ptr %i.ds, ptr %i.u, align 8, !tbaa !989
  %.pr223 = load ptr, ptr %7, align 8, !tbaa !972 ; 3 uses
  %.not.i142 = icmp eq ptr %.pr223, null
  br i1 %.not.i142, label %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141
  %i.dt = getelementptr inbounds nuw i8, ptr %.pr223, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !788 ; 2 uses
  %.not.i.i.i.i.i.i143 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i143, label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i144, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPv(ptr noundef nonnull %i.du) #31
  br label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i144

_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i144: ; preds = %bb.y, %bb.x
  call void @_ZdlPv(ptr noundef nonnull %.pr223) #31
  br label %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145

_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i144
  %i.dv = phi ptr [ %i.cc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141.thread ], [ %i.ds, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141 ], [ %i.ds, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i144 ] ; 2 uses
  %i.dw = phi ptr [ %i.ce, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141.thread ], [ %i.cy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141 ], [ %i.cy, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i144 ]
  %i.dx = phi ptr [ %i.cn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141.thread ], [ %i.dr, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit141 ], [ %i.dr, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145
  %i.dy = phi ptr [ %i.ac, %bb.j ], [ %i.dv, %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145 ] ; 3 uses
  %i.dz = phi ptr [ %i.ad, %bb.j ], [ %i.dw, %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145 ] ; 4 uses
  %i.ea = phi ptr [ %i.ae, %bb.j ], [ %i.dv, %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145 ]
  %i.eb = phi ptr [ %i.af, %bb.j ], [ %i.dx, %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit145 ] ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0219.0263, i64 40 ; 2 uses
  %.not233 = icmp eq ptr %i.ec, %i.s
  br i1 %.not233, label %._crit_edge266, label %bb.d

bb.aa:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit245:                                     ; preds = %bb.r, %bb.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i127
  %lpad.loopexit247 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp246:                            ; preds = %bb.v
  %lpad.loopexit.split-lp248 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp246, %.loopexit245
  %lpad.phi249 = phi { ptr, i32 } [ %lpad.loopexit247, %.loopexit245 ], [ %lpad.loopexit.split-lp248, %.loopexit.split-lp246 ]
  call void @_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn116 = phi { ptr, i32 } [ %lpad.phi249, %bb.ab ], [ %i.ed, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit189

bb.ad:                                            ; preds = %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.not.i.i146 = icmp eq ptr %i.eb, %i.dy
  br i1 %.not.i.i146, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.x, ptr %i.eb, align 8, !tbaa !972
  store ptr null, ptr %6, align 8, !tbaa !972
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !973
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit161

bb.af:                                            ; preds = %.thread332, %bb.ad
  %i.eh = phi ptr [ %i.ab, %.thread332 ], [ %i.ef, %bb.ad ]
  %i.ei = phi ptr [ %i.z, %.thread332 ], [ %i.ee, %bb.ad ]
  %i.ej = phi ptr [ null, %.thread332 ], [ %i.dy, %bb.ad ] ; 3 uses
  %i.ek = phi ptr [ null, %.thread332 ], [ %i.dz, %bb.ad ] ; 10 uses
  %i.el = phi i64 [ %i.aa, %.thread332 ], [ %i.x, %bb.ad ]
  %i.em = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.en = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775800
  br i1 %i.ep, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i147

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc159 unwind label %bb.ai

.noexc159:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i147: ; preds = %bb.af
  %i.eq = ashr exact i64 %i.eo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i148 = call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i.i148, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = call i64 @llvm.umin.i64(i64 %i.er, i64 1152921504606846975)
  %i.eu = select i1 %i.es, i64 1152921504606846975, i64 %i.et ; 3 uses
  %.not.i.i.i.i149 = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i149)
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #33
          to label %.noexc160 unwind label %bb.ai ; 11 uses

.noexc160:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i147
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eo
  store i64 %i.el, ptr %i.ex, align 8, !tbaa !972
  store ptr null, ptr %6, align 8, !tbaa !972
  %.not10.i.i.i.i.i.i.i150 = icmp eq ptr %i.ek, %i.ej
  br i1 %.not10.i.i.i.i.i.i.i150, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i155, label %.lr.ph.i.i.i.i.i.i.i151.preheader

.lr.ph.i.i.i.i.i.i.i151.preheader:                ; preds = %.noexc160
  %19 = sub i64 %i.em, %i.en
  %20 = add i64 %19, -8                           ; 2 uses
  %i.ey = lshr i64 %20, 3
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check394 = icmp ult i64 %20, 152
  br i1 %min.iters.check394, label %.lr.ph.i.i.i.i.i.i.i151.preheader429, label %vector.memcheck387

vector.memcheck387:                               ; preds = %.lr.ph.i.i.i.i.i.i.i151.preheader
  %i.fa = add i64 %i.em, -8
  %i.fb = sub i64 %i.fa, %i.en
  %i.fc = and i64 %i.fb, -8
  %i.fd = add i64 %i.fc, 8                        ; 2 uses
  %scevgep388 = getelementptr i8, ptr %i.ew, i64 %i.fd
  %scevgep389 = getelementptr i8, ptr %i.ek, i64 %i.fd
  %bound0390 = icmp ult ptr %i.ew, %scevgep389
  %bound1391 = icmp ult ptr %i.ek, %scevgep388
  %found.conflict392 = and i1 %bound0390, %bound1391
  br i1 %found.conflict392, label %.lr.ph.i.i.i.i.i.i.i151.preheader429, label %vector.ph395

vector.ph395:                                     ; preds = %vector.memcheck387
  %n.vec397 = and i64 %i.ez, 4611686018427387900  ; 3 uses
  %i.fe = shl i64 %n.vec397, 3                    ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ew, i64 %i.fe  ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ek, i64 %i.fe
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph395
  %index399 = phi i64 [ 0, %vector.ph395 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.fh = shl i64 %index399, 3                    ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.ew, i64 %i.fh ; 2 uses
  %next.gep401 = getelementptr i8, ptr %i.ek, i64 %i.fh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.fi = getelementptr i8, ptr %next.gep401, i64 16
  %wide.load402 = load <2 x i64>, ptr %next.gep401, align 8, !tbaa !972, !alias.scope !1010, !noalias !1005
  %wide.load403 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !972, !alias.scope !1010, !noalias !1005
  %i.fj = getelementptr i8, ptr %next.gep400, i64 16
  store <2 x i64> %wide.load402, ptr %next.gep400, align 8, !tbaa !972, !alias.scope !1013, !noalias !1010
  store <2 x i64> %wide.load403, ptr %i.fj, align 8, !tbaa !972, !alias.scope !1013, !noalias !1010
  %i.fk = getelementptr i8, ptr %next.gep401, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep401, align 8, !tbaa !972, !alias.scope !1010, !noalias !1005
  store <2 x ptr> splat (ptr null), ptr %i.fk, align 8, !tbaa !972, !alias.scope !1010, !noalias !1005
  %index.next404 = add nuw i64 %index399, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.fl, label %middle.block405, label %vector.body398, !llvm.loop !1015

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.ez, %n.vec397
  br i1 %cmp.n406, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i155, label %.lr.ph.i.i.i.i.i.i.i151.preheader429

.lr.ph.i.i.i.i.i.i.i151.preheader429:             ; preds = %vector.memcheck387, %.lr.ph.i.i.i.i.i.i.i151.preheader, %middle.block405
  %.012.i.i.i.i.i.i.i152.ph = phi ptr [ %i.ew, %vector.memcheck387 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i151.preheader ], [ %i.ff, %middle.block405 ]
  %.0911.i.i.i.i.i.i.i153.ph = phi ptr [ %i.ek, %vector.memcheck387 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i151.preheader ], [ %i.fg, %middle.block405 ]
  br label %.lr.ph.i.i.i.i.i.i.i151

.lr.ph.i.i.i.i.i.i.i151:                          ; preds = %.lr.ph.i.i.i.i.i.i.i151.preheader429, %.lr.ph.i.i.i.i.i.i.i151
  %.012.i.i.i.i.i.i.i152 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i151 ], [ %.012.i.i.i.i.i.i.i152.ph, %.lr.ph.i.i.i.i.i.i.i151.preheader429 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i153 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i151 ], [ %.0911.i.i.i.i.i.i.i153.ph, %.lr.ph.i.i.i.i.i.i.i151.preheader429 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.fm = load i64, ptr %.0911.i.i.i.i.i.i.i153, align 8, !tbaa !972, !alias.scope !1008, !noalias !1005
  store i64 %i.fm, ptr %.012.i.i.i.i.i.i.i152, align 8, !tbaa !972, !alias.scope !1005, !noalias !1008
  store ptr null, ptr %.0911.i.i.i.i.i.i.i153, align 8, !tbaa !972, !alias.scope !1008, !noalias !1005
  %i.fn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i153, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i152, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i154 = icmp eq ptr %i.fn, %i.ej
  br i1 %.not.i.i.i.i.i.i.i154, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i155, label %.lr.ph.i.i.i.i.i.i.i151, !llvm.loop !1016

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i155: ; preds = %.lr.ph.i.i.i.i.i.i.i151, %middle.block405, %.noexc160
  %.0.lcssa.i.i.i.i.i.i.i156 = phi ptr [ %i.ew, %.noexc160 ], [ %i.ff, %middle.block405 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i151 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i156, i64 8 ; 2 uses
  %.not.i23.i.i.i157 = icmp eq ptr %i.ek, null
  br i1 %.not.i23.i.i.i157, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i158, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i155
  call void @_ZdlPv(ptr noundef nonnull %i.ek) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i158

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i158: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i155
  store ptr %i.ew, ptr %5, align 8, !tbaa !988
  store ptr %i.fp, ptr %i.ei, align 8, !tbaa !973
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.fq, ptr %i.eh, align 8, !tbaa !989
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit161

bb.ai:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i147, %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit189

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit161: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i158, %bb.ae, %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit
  %i.fs = phi ptr [ %i.ew, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i158 ], [ %i.dz, %bb.ae ], [ %i.dz, %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit ] ; 2 uses
  %i.ft = phi ptr [ %i.fp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i158 ], [ %i.eg, %bb.ae ], [ %i.eb, %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, 9223372036854775800
  br i1 %i.fy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit161
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #32
          to label %.noexc163 unwind label %.thread

.noexc163:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit161
  %.not235 = icmp eq ptr %i.ft, %i.fs
  br i1 %.not235, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ak
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #33
          to label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fx
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE7reserveEm.exit: ; preds = %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.ak
  %i.gb = phi ptr [ %i.ft, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ft, %bb.ak ], [ null, %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread ] ; 2 uses
  %i.gc = phi ptr [ %i.fu, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.fu, %bb.ak ], [ %i.z, %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread ]
  %.sroa.17.1 = phi ptr [ %i.ga, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.ak ], [ null, %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread ]
  %.sroa.11.1 = phi ptr [ %i.fz, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.ak ], [ null, %_ZN6duckdb6vectorINS_18RowGroupBatchEntryELb1ESaIS1_EE5clearEv.exit.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.gd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc165 unwind label %bb.an ; 3 uses

.noexc165:                                        ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE7reserveEm.exit
  invoke void @_ZN6duckdb20OptimisticDataWriterC1ERNS_13ClientContextERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(124) %i.g)
          to label %bb.am unwind label %bb.al, !noalias !1017

bb.al:                                            ; preds = %.noexc165
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.gd) #31, !noalias !1017
  br label %bb.bm

bb.am:                                            ; preds = %.noexc165
  store ptr %i.gd, ptr %8, align 8, !tbaa !922, !alias.scope !1017
  %i.gf = load ptr, ptr %5, align 8, !tbaa !1020  ; 2 uses
  %.not236267 = icmp eq ptr %i.gf, %i.gb
  br i1 %.not236267, label %._crit_edge278, label %.lr.ph273

.preheader:                                       ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit
  %.not237275 = icmp eq ptr %.sroa.0208.4, %.sroa.11.2
  br i1 %.not237275, label %._crit_edge278, label %.lr.ph277

.thread:                                          ; preds = %bb.aj, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit189

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE7reserveEm.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph273:                                        ; preds = %bb.am, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit
  %.sroa.0208.0271 = phi ptr [ %.sroa.0208.4, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.11.1, %bb.am ] ; 10 uses
  %.sroa.11.0270 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.11.1, %bb.am ] ; 6 uses
  %.sroa.0205.0269 = phi ptr [ %i.hm, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit ], [ %i.gf, %bb.am ] ; 2 uses
  %.sroa.17.0268 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.17.1, %bb.am ] ; 2 uses
  %i.gi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16CollectionMergerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0205.0269)
          to label %bb.ao unwind label %.loopexit

bb.ao:                                            ; preds = %.lr.ph273
  %i.gj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_20OptimisticDataWriterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ap unwind label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.gk = invoke i64 @_ZN6duckdb16CollectionMerger5FlushERNS_20OptimisticDataWriterE(ptr noundef nonnull align 8 dereferenceable(41) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.gj)
          to label %bb.aq unwind label %.loopexit ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i166 = icmp eq ptr %.sroa.11.0270, %.sroa.17.0268
  br i1 %.not.i.i166, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.gk, ptr %.sroa.11.0270, align 8, !tbaa !98
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit

bb.as:                                            ; preds = %bb.aq
  %i.gl = ptrtoint ptr %.sroa.11.0270 to i64      ; 2 uses
  %i.gm = ptrtoint ptr %.sroa.0208.0271 to i64    ; 3 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.at, label %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc176 unwind label %.loopexit.split-lp

.noexc176:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i167 = call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i167, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i.i168 = icmp ne i64 %i.gt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i168)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #33
          to label %.noexc177 unwind label %.loopexit ; 8 uses

.noexc177:                                        ; preds = %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  store i64 %i.gk, ptr %i.gw, align 8, !tbaa !98
  %.not10.i.i.i.i.i.i.i169 = icmp eq ptr %.sroa.0208.0271, %.sroa.11.0270
  br i1 %.not10.i.i.i.i.i.i.i169, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i170.preheader

.lr.ph.i.i.i.i.i.i.i170.preheader:                ; preds = %.noexc177
  %i.gx = ptrtoaddr ptr %i.gv to i64
  %21 = sub i64 %i.gl, %i.gm
  %22 = add i64 %21, -8                           ; 2 uses
  %i.gy = lshr i64 %22, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check411 = icmp ult i64 %22, 24
  %i.ha = sub i64 %i.gx, %i.gm
  %diff.check = icmp ult i64 %i.ha, 32
  %or.cond = or i1 %min.iters.check411, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i170.preheader426, label %vector.ph412

vector.ph412:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i170.preheader
  %n.vec414 = and i64 %i.gz, 4611686018427387900  ; 3 uses
  %i.hb = shl i64 %n.vec414, 3                    ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gv, i64 %i.hb  ; 2 uses
  %i.hd = getelementptr i8, ptr %.sroa.0208.0271, i64 %i.hb
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph412
  %index416 = phi i64 [ 0, %vector.ph412 ], [ %index.next421, %vector.body415 ] ; 2 uses
  %i.he = shl i64 %index416, 3                    ; 2 uses
  %next.gep417 = getelementptr i8, ptr %i.gv, i64 %i.he ; 2 uses
  %next.gep418 = getelementptr i8, ptr %.sroa.0208.0271, i64 %i.he ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.hf = getelementptr i8, ptr %next.gep418, i64 16
  %wide.load419 = load <2 x i64>, ptr %next.gep418, align 8, !tbaa !98, !alias.scope !1024, !noalias !1021
  %wide.load420 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !98, !alias.scope !1024, !noalias !1021
  %i.hg = getelementptr i8, ptr %next.gep417, i64 16
  store <2 x i64> %wide.load419, ptr %next.gep417, align 8, !tbaa !98, !alias.scope !1021, !noalias !1024
  store <2 x i64> %wide.load420, ptr %i.hg, align 8, !tbaa !98, !alias.scope !1021, !noalias !1024
  %index.next421 = add nuw i64 %index416, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next421, %n.vec414
  br i1 %i.hh, label %middle.block422, label %vector.body415, !llvm.loop !1026

middle.block422:                                  ; preds = %vector.body415
  %cmp.n423 = icmp eq i64 %i.gz, %n.vec414
  br i1 %cmp.n423, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i170.preheader426

.lr.ph.i.i.i.i.i.i.i170.preheader426:             ; preds = %.lr.ph.i.i.i.i.i.i.i170.preheader, %middle.block422
  %.012.i.i.i.i.i.i.i171.ph = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i170.preheader ], [ %i.hc, %middle.block422 ]
  %.0911.i.i.i.i.i.i.i172.ph = phi ptr [ %.sroa.0208.0271, %.lr.ph.i.i.i.i.i.i.i170.preheader ], [ %i.hd, %middle.block422 ]
  br label %.lr.ph.i.i.i.i.i.i.i170

.lr.ph.i.i.i.i.i.i.i170:                          ; preds = %.lr.ph.i.i.i.i.i.i.i170.preheader426, %.lr.ph.i.i.i.i.i.i.i170
  %.012.i.i.i.i.i.i.i171 = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i170 ], [ %.012.i.i.i.i.i.i.i171.ph, %.lr.ph.i.i.i.i.i.i.i170.preheader426 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i172 = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i.i170 ], [ %.0911.i.i.i.i.i.i.i172.ph, %.lr.ph.i.i.i.i.i.i.i170.preheader426 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.hi = load i64, ptr %.0911.i.i.i.i.i.i.i172, align 8, !tbaa !98, !alias.scope !1024, !noalias !1021
  store i64 %i.hi, ptr %.012.i.i.i.i.i.i.i171, align 8, !tbaa !98, !alias.scope !1021, !noalias !1024
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i172, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i171, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i173 = icmp eq ptr %i.hj, %.sroa.11.0270
  br i1 %.not.i.i.i.i.i.i.i173, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i170, !llvm.loop !1027

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i170, %middle.block422, %.noexc177
  %.0.lcssa.i.i.i.i.i.i.i174 = phi ptr [ %i.gv, %.noexc177 ], [ %i.hc, %middle.block422 ], [ %i.hk, %.lr.ph.i.i.i.i.i.i.i170 ]
  %.not.i23.i.i.i175 = icmp eq ptr %.sroa.0208.0271, null
  br i1 %.not.i23.i.i.i175, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0208.0271) #31
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.au, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ar
  %.sroa.17.2 = phi ptr [ %i.hl, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.0268, %bb.ar ]
  %.0.lcssa.i.i.i.i.i.i.i174.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i174, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.0270, %bb.ar ] ; 2 uses
  %.sroa.0208.4 = phi ptr [ %i.gv, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0208.0271, %bb.ar ] ; 6 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i174.pn, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0205.0269, i64 8 ; 2 uses
  %.not236 = icmp eq ptr %i.hm, %i.gb
  br i1 %.not236, label %.preheader, label %.lr.ph273

.loopexit:                                        ; preds = %.lr.ph273, %bb.ao, %bb.ap, %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

._crit_edge278:                                   ; preds = %bb.ax, %bb.am, %.preheader
  %.sroa.0208.0.lcssa339 = phi ptr [ %.sroa.11.1, %bb.am ], [ %.sroa.0208.4, %.preheader ], [ %.sroa.0208.4, %bb.ax ] ; 3 uses
  %i.hn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9DataTable19GetOptimisticWriterERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(124) %i.g, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.az unwind label %bb.bk     ; 2 uses

.lr.ph277:                                        ; preds = %.preheader, %bb.ax
  %.sroa.0199.0276 = phi ptr [ %i.hp, %bb.ax ], [ %.sroa.0208.4, %.preheader ] ; 3 uses
  %.sroa.019.0.copyload = load i64, ptr %.sroa.0199.0276, align 8, !tbaa !98 ; 2 uses
  %i.ho = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb9DataTable23GetOptimisticCollectionERNS_13ClientContextENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(124) %i.g, ptr noundef nonnull align 8 dereferenceable(512) %3, i64 %.sroa.019.0.copyload)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %.lr.ph277
  invoke void @_ZN6duckdb9DataTable10LocalMergeERNS_13ClientContextERNS_25OptimisticWriteCollectionE(ptr noundef nonnull align 8 dereferenceable(124) %i.g, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.ho)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6duckdb9DataTable25ResetOptimisticCollectionERNS_13ClientContextENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(124) %i.g, ptr noundef nonnull align 8 dereferenceable(512) %3, i64 %.sroa.019.0.copyload)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0199.0276, i64 8
  %.not237 = icmp eq ptr %.sroa.0199.0276, %.0.lcssa.i.i.i.i.i.i.i174.pn
  br i1 %.not237, label %._crit_edge278, label %.lr.ph277

bb.ay:                                            ; preds = %bb.aw, %bb.av, %.lr.ph277
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.az:                                            ; preds = %._crit_edge278
  %i.hr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_20OptimisticDataWriterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ba unwind label %bb.bk

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN6duckdb20OptimisticDataWriter5MergeERS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %bb.bb unwind label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6duckdb20OptimisticDataWriter10FinalFlushEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hn)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN6duckdb18BatchMemoryManager10FinalCheckEv(ptr noundef nonnull align 8 dereferenceable(113) %i.h)
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.hs = load ptr, ptr %8, align 8, !tbaa !922   ; 3 uses
  %.not.i178 = icmp eq ptr %i.hs, null
  br i1 %.not.i178, label %_ZNSt10unique_ptrIN6duckdb20OptimisticDataWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20OptimisticDataWriterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20OptimisticDataWriterEEclEPS1_.exit.i: ; preds = %bb.bd
  call void @_ZN6duckdb20OptimisticDataWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hs) #30
  call void @_ZdlPv(ptr noundef nonnull %i.hs) #31
  br label %_ZNSt10unique_ptrIN6duckdb20OptimisticDataWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20OptimisticDataWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bd, %_ZNKSt14default_deleteIN6duckdb20OptimisticDataWriterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.not.i.i.i179 = icmp eq ptr %.sroa.0208.0.lcssa339, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20OptimisticDataWriterESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0208.0.lcssa339) #31
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb20OptimisticDataWriterESt14default_deleteIS1_EED2Ev.exit, %bb.be
  %i.ht = load ptr, ptr %6, align 8, !tbaa !972   ; 3 uses
  %.not.i180 = icmp eq ptr %i.ht, null
  br i1 %.not.i180, label %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit183, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !788 ; 2 uses
  %.not.i.i.i.i.i.i181 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i181, label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i182, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef nonnull %i.hv) #31
  br label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i182

_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i182: ; preds = %bb.bg, %bb.bf
  call void @_ZdlPv(ptr noundef nonnull %i.ht) #31
  br label %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit183

_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit183: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hw = load ptr, ptr %5, align 8, !tbaa !988   ; 4 uses
  %i.hx = load ptr, ptr %i.gc, align 8, !tbaa !973 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hw, %i.hx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit183, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ib, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.hw, %_ZNSt10unique_ptrIN6duckdb16CollectionMergerESt14default_deleteIS1_EED2Ev.exit183 ] ; 2 uses
  %i.hy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !972 ; 3 uses
  %.not.i.i.i.i.i184 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i184, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !788 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i185 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i185, label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i.i.i186, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef nonnull %i.ia) #31
  br label %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i.i.i186

_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i.i.i186: ; preds = %bb.bi, %bb.bh
  call void @_ZdlPv(ptr noundef nonnull %i.hy) #31
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16CollectionMergerEEclEPS1_.exit.i.i.i.i.i186, %.lr.ph.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.ib, %i.hx
  br i1 %.not.i.i.i187, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16CollectionMergerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1028

end_hunk_2
begin_hunk_3_@_ZNK6duckdb18PhysicalCopyToFile15CreateFileStateERNS_13ClientContextERNS_15GlobalSinkStateERNS_14StorageLockKeyE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK6duckdb15FilenamePattern14CreateFilenameERNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_m(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN6duckdb25CopyToFunctionGlobalState7AddFileERKNS_14StorageLockKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22CopyFunctionReturnTypeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.427", align 8 ; 13 uses
  %6 = alloca %"class.duckdb::unique_ptr.619", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb9make_uniqINS_14CopyToFileInfoEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.427") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = icmp eq i8 %3, 2
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.b = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #33
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.c, i8 0, i64 120, i1 false), !noalias !1175
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i8 0, i64 16, i1 false), !noalias !1175
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 1)
          to label %.noexc.i unwind label %bb.d, !noalias !1175

.noexc.i:                                         ; preds = %.noexc
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.c, !noalias !1175

bb.c:                                             ; preds = %.noexc.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #30, !noalias !1175
  br label %.body.i

bb.d:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  call void @_ZdlPv(ptr noundef nonnull %i.b) #31, !noalias !1175
  br label %.body

bb.e:                                             ; preds = %.noexc.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #30, !noalias !1175
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.g, ptr %i.f, align 8, !tbaa !416, !noalias !1175
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %i.h, align 8, !tbaa !418, !noalias !1175
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !1175
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !419, !noalias !1175
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1175
  store ptr %i.b, ptr %6, align 8, !tbaa !420, !alias.scope !1175
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CopyToFileInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !420  ; 7 uses
  store ptr %i.b, ptr %i.m, align 8, !tbaa !420
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb26CopyFunctionFileStatisticsESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !422  ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapIS5_N6duckdb5ValueENS9_33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaIS6_IS7_SA_EEEESaISG_ENSt8__detail10_Select1stESC_SB_NSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.g, %.noexc.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %bb.g ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !179 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13unordered_mapIS8_N6duckdb5ValueENSB_33CaseInsensitiveStringHashFunctionENSB_29CaseInsensitiveStringEqualityESaIS2_IS9_SC_EEEELb1EEEEE18_M_deallocate_nodeEPSJ_(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.h

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapIS5_N6duckdb5ValueENS9_33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaIS6_IS7_SA_EEEESaISG_ENSt8__detail10_Select1stESC_SB_NSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !423

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapIS5_N6duckdb5ValueENS9_33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaIS6_IS7_SA_EEEESaISG_ENSt8__detail10_Select1stESC_SB_NSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !416
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.w = load i64, ptr %i.v, align 8, !tbaa !418
  %i.x = shl i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !416  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapIS5_N6duckdb5ValueENS9_33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaIS6_IS7_SA_EEEESaISG_ENSt8__detail10_Select1stESC_SB_NSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.y) #31
  br label %_ZN6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapIS5_N6duckdb5ValueENS9_33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaIS6_IS7_SA_EEEESaISG_ENSt8__detail10_Select1stESC_SB_NSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ab) #30
  call void @_ZdlPv(ptr noundef nonnull %i.n) #31
  br label %_ZNSt10unique_ptrIN6duckdb26CopyFunctionFileStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb26CopyFunctionFileStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ac = load ptr, ptr %5, align 8, !tbaa !411
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb26CopyFunctionFileStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #30
  br label %.body

.body:                                            ; preds = %bb.j, %.body.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.ad, %bb.j ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.r

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb26CopyFunctionFileStatisticsESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %.sroa.016.0 = phi ptr [ %i.ac, %_ZNSt10unique_ptrIN6duckdb26CopyFunctionFileStatisticsESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1146 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1178
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.m, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.l
  %i.ak = load i64, ptr %5, align 8, !tbaa !411
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !411
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !1146
  br label %_ZNSt10unique_ptrIN6duckdb14CopyToFileInfoESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !1145 ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.n, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc11 unwind label %bb.q

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #33
          to label %.noexc12 unwind label %bb.q   ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %5, align 8, !tbaa !411
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !411
  store ptr null, ptr %5, align 8, !tbaa !411
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i9.preheader

.lr.ph.i.i.i.i.i.i.i9.preheader:                  ; preds = %.noexc12
  %7 = sub i64 %i.an, %i.ao
  %8 = add i64 %7, -8                             ; 2 uses
  %i.ba = lshr i64 %8, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i9.preheader34, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i9.preheader
  %i.bc = add i64 %i.an, -8
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bf
  %scevgep30 = getelementptr i8, ptr %i.am, i64 %i.bf
  %bound0 = icmp ult ptr %i.ax, %scevgep30
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i9.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ax, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bj ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.am, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.bk = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep31, align 8, !tbaa !411, !alias.scope !1184, !noalias !1179
  %wide.load32 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !411, !alias.scope !1184, !noalias !1179
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !411, !alias.scope !1187, !noalias !1184
  store <2 x i64> %wide.load32, ptr %i.bl, align 8, !tbaa !411, !alias.scope !1187, !noalias !1184
  %i.bm = getelementptr i8, ptr %next.gep31, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep31, align 8, !tbaa !411, !alias.scope !1184, !noalias !1179
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !411, !alias.scope !1184, !noalias !1179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i9.preheader34

.lr.ph.i.i.i.i.i.i.i9.preheader34:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i9.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i9.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i9.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i.i9:                            ; preds = %.lr.ph.i.i.i.i.i.i.i9.preheader34, %.lr.ph.i.i.i.i.i.i.i9
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i9 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i9.preheader34 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i9 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i9.preheader34 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !411, !alias.scope !1182, !noalias !1179
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !411, !alias.scope !1179, !noalias !1182
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !411, !alias.scope !1182, !noalias !1179
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i10 = icmp eq ptr %i.bp, %i.ah
  br i1 %.not.i.i.i.i.i.i.i10, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i9, !llvm.loop !1190

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i9, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc12 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i9 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.o
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !1145
  store ptr %i.br, ptr %i.ag, align 8, !tbaa !1146
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !1178
  %.pr18 = load ptr, ptr %5, align 8, !tbaa !411  ; 2 uses
  %.not.i13 = icmp eq ptr %.pr18, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb14CopyToFileInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZNKSt14default_deleteIN6duckdb14CopyToFileInfoEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pr18)
  br label %_ZNSt10unique_ptrIN6duckdb14CopyToFileInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14CopyToFileInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.sroa.016.0

bb.q:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CopyToFileInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %.pn, %.body ]
  %i.bu = load ptr, ptr %5, align 8, !tbaa !411   ; 2 uses
  %.not.i14 = icmp eq ptr %i.bu, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb14CopyToFileInfoESt14default_deleteIS1_EED2Ev.exit15, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNKSt14default_deleteIN6duckdb14CopyToFileInfoEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.bu)
  br label %_ZNSt10unique_ptrIN6duckdb14CopyToFileInfoESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN6duckdb14CopyToFileInfoESt14default_deleteIS1_EED2Ev.exit15: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !420    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18PhysicalCopyToFile17GetLocalSinkStateERNS_16ExecutionContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.586") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1224) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.1416", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr.348", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1146
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1191, !range !323, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = load ptr, ptr %2, align 8, !tbaa !306, !nonnull !264, !align !265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.g = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33, !noalias !1192 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 -1, i64 16, i1 false), !noalias !1192
end_hunk_3
begin_hunk_4_@_ZN6duckdb14PhysicalExportC2ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_12CopyFunctionENS_10unique_ptrINS_8CopyInfoESt14default_deleteIS9_ELb1EEEmNS8_INS_15BoundExportDataESA_ISD_ELb1EEE:bb.a
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !141
  store ptr null, ptr %i.r, align 8, !tbaa !196
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.x = load i64, ptr %i.w, align 8
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 840 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !7
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 856 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 848
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !15
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !14
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(888) %i.j) #30
  br label %.body

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 848 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 984
  store i64 %i.al, ptr %i.am, align 8, !tbaa !11
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !15
  store i64 0, ptr %i.ak, align 8, !tbaa !11
  store i8 0, ptr %i.ac, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 872 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr null, ptr %i.ap, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 880
  %i.ar = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !141
  store ptr null, ptr %i.aq, align 8, !tbaa !39
  store <2 x ptr> %i.ar, ptr %i.an, align 8, !tbaa !141
  store ptr null, ptr %i.ao, align 8, !tbaa !199
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.at = load i64, ptr %4, align 8, !tbaa !1452
  store i64 %i.at, ptr %i.as, align 8, !tbaa !1452
  store ptr null, ptr %4, align 8, !tbaa !1452
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.av = load i64, ptr %6, align 8, !tbaa !1454
  store i64 %i.av, ptr %i.au, align 8, !tbaa !1454
  store ptr null, ptr %6, align 8, !tbaa !1454
  ret void

bb.h:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.aj, %bb.f ]
  call void @_ZN6duckdb16PhysicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #30
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aw, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb14PhysicalExport20GetGlobalSourceStateERNS_13ClientContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.479") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb17ExportSourceStateESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33, !noalias !1456 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 1, !tbaa !638, !noalias !1456
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !1456
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17ExportSourceStateE, i64 16), ptr %i.a, align 8, !tbaa !43, !noalias !1456
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.d, align 8, !tbaa !1459, !noalias !1456
  store ptr %i.a, ptr %0, align 8, !tbaa !1316
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(168) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.1276", align 8 ; 11 uses
  %4 = alloca %"class.std::function.1276", align 8 ; 11 uses
  %5 = alloca %"class.std::function.1276", align 8 ; 11 uses
  %6 = alloca %"class.std::function.1276", align 8 ; 11 uses
  %7 = alloca %"class.std::function.1276", align 8 ; 11 uses
  %8 = alloca %"class.std::function.1276", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1461   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1461 ; 2 uses
  %.not113 = icmp eq ptr %i.a, %i.c
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ab, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.sroa.068.0114 = phi ptr [ %i.a, %.lr.ph ], [ %i.db, %bb.ab ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.068.0114, align 8, !tbaa !1463 ; 17 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(80) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(248) %i.s) ; 2 uses
  %i.x = call noundef zeroext i1 @_ZNK6duckdb7Catalog15IsSystemCatalogEv(ptr noundef nonnull align 8 dereferenceable(80) %i.w)
  br i1 %i.x, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef zeroext i1 @_ZNK6duckdb7Catalog18IsTemporaryCatalogEv(ptr noundef nonnull align 8 dereferenceable(80) %i.w)
  br i1 %i.y, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 66
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !1465, !range !323, !noundef !264
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !1466 ; 5 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !1469
  %.not.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.s to i64
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !1466
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !1466
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %2, align 8, !tbaa !1470  ; 7 uses
  %i.ai = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.h, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #33 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = ptrtoint ptr %i.s to i64
  store i64 %i.au, ptr %i.at, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = ptrtoaddr ptr %i.as to i64
  %9 = sub i64 %i.ai, %i.aj
  %10 = add i64 %9, -8                            ; 2 uses
  %i.aw = lshr i64 %10, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24
  %i.ay = sub i64 %i.av, %i.aj
  %diff.check = icmp ult i64 %i.ay, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.as, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ah, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bc ; 2 uses
  %next.gep132 = getelementptr i8, ptr %i.ah, i64 %i.bc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.bd = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep132, align 8, !alias.scope !1474, !noalias !1471
  %wide.load133 = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !1474, !noalias !1471
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1471, !noalias !1474
  store <2 x i64> %wide.load133, ptr %i.be, align 8, !alias.scope !1471, !noalias !1474
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1476

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader135

.lr.ph.i.i.i.i.i.i.i.preheader135:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader135, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader135 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader135 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1474, !noalias !1471
  store i64 %i.bg, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1471, !noalias !1474
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1477

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.as, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ba, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.as, ptr %2, align 8, !tbaa !1470
  store ptr %i.bj, ptr %i.d, align 8, !tbaa !1466
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !1469
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 0, ptr %i.h, align 8
  store i64 %i.f, ptr %3, align 8, !tbaa !1478
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.g, align 8, !tbaa !141
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(248) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %0, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !1240 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i64 0, ptr %i.j, align 8
  store i64 %i.f, ptr %4, align 8, !tbaa !1478
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_1E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_1E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.i, align 8, !tbaa !141
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(248) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %0, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.af

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !1240 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bv, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit39 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit39:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i64 0, ptr %i.l, align 8
  store i64 %i.f, ptr %5, align 8, !tbaa !1478
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_2E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_2E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.k, align 8, !tbaa !141
  %i.bz = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(248) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %0, i8 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit39
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !1240 ; 2 uses
  %.not.i40 = icmp eq ptr %i.cc, null
  br i1 %.not.i40, label %_ZNSt14_Function_baseD2Ev.exit41, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit41 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit41:                 ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i64 0, ptr %i.n, align 8
  store i64 %i.f, ptr %6, align 8, !tbaa !1478
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_3E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_3E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.m, align 8, !tbaa !141
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(248) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %0, i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.s unwind label %bb.al

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit41
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !1240 ; 2 uses
  %.not.i42 = icmp eq ptr %i.cj, null
  br i1 %.not.i42, label %_ZNSt14_Function_baseD2Ev.exit43, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit43 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit43:                 ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i64 0, ptr %i.p, align 8
  store i64 %i.f, ptr %7, align 8, !tbaa !1478
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_4E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.o, align 8, !tbaa !141
  %i.cn = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 128
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(248) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %0, i8 noundef zeroext 30, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.v unwind label %bb.ao

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit43
  %i.cq = load ptr, ptr %i.o, align 8, !tbaa !1240 ; 2 uses
  %.not.i44 = icmp eq ptr %i.cq, null
  br i1 %.not.i44, label %_ZNSt14_Function_baseD2Ev.exit45, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
end_hunk_4
begin_hunk_5_@_ZN6duckdb14PhysicalExport19GetNaiveExportOrderERNS_13ClientContextERNS_7CatalogE:bb.a
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_ZN6duckdbL10AddEntriesERNS_6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EEES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %bb.ad unwind label %bb.ab

bb.z:                                             ; preds = %bb.a
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit23

bb.aa:                                            ; preds = %bb.c, %bb.b
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i, %bb.r, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE7reserveEm.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %0, align 8, !tbaa !1470  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %i.dr) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit

bb.ad:                                            ; preds = %bb.y
  %i.ds = load ptr, ptr %4, align 8, !tbaa !1485  ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i21, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit
  %i.du = load ptr, ptr %i.cs, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.du) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2.i: ; preds = %bb.ag, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i
  %i.dv = load ptr, ptr %i.cj, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2.i
  call void @_ZdlPv(ptr noundef nonnull %i.dv) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4.i: ; preds = %bb.ah, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2.i
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4.i
  call void @_ZdlPv(ptr noundef nonnull %i.dw) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6.i: ; preds = %bb.ai, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4.i
  %i.dx = load ptr, ptr %i.bs, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef nonnull %i.dx) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8.i: ; preds = %bb.aj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6.i
  %i.dy = load ptr, ptr %i.bj, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i9.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i9.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8.i
  call void @_ZdlPv(ptr noundef nonnull %i.dy) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10.i: ; preds = %bb.ak, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8.i
  %i.dz = load ptr, ptr %3, align 8, !tbaa !1470  ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i11.i, label %_ZN6duckdb13ExportEntriesD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10.i
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #31
  br label %_ZN6duckdb13ExportEntriesD2Ev.exit

_ZN6duckdb13ExportEntriesD2Ev.exit:               ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.aa ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.ac ] ; 2 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !1485  ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit23, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit23

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EED2Ev.exit23: ; preds = %bb.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.do, %bb.z ], [ %.pn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit ], [ %.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb13ExportEntriesD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6duckdb7Catalog10GetSchemasERNS_13ClientContextE(ptr dead_on_unwind writable sret(%"class.duckdb::vector.1668") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #2

declare void @_ZN6duckdb19ReorderTableEntriesERNS_6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EEE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL10AddEntriesERNS_6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EEES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1480   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1480 ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %_ZN6duckdb6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !1466
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backERKS3_.exit
  %.pre12 = load ptr, ptr %1, align 8, !tbaa !1470 ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !1466
  %i.f = icmp eq ptr %.pre13, %.pre12
  br i1 %i.f, label %_ZN6duckdb6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge
  store ptr %.pre12, ptr %i.b, align 8, !tbaa !1466
  br label %_ZN6duckdb6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EE5clearEv.exit

_ZN6duckdb6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backERKS3_.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.ap, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backERKS3_.exit ] ; 5 uses
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.aq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !1469
  %.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.sroa.07.011, align 8
  store i64 %i.i, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !1466
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !1466
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !1470   ; 7 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i6 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i6)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #33 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = load i64, ptr %.sroa.07.011, align 8
  store i64 %i.y, ptr %i.x, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = sub i64 %i.m, %i.n
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %i.ac = sub i64 %i.z, %i.n
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.l, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.ah = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep22, align 8, !alias.scope !1490, !noalias !1487
  %wide.load23 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !1490, !noalias !1487
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1487, !noalias !1490
  store <2 x i64> %wide.load23, ptr %i.ai, align 8, !alias.scope !1487, !noalias !1490
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1492

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader25

.lr.ph.i.i.i.i.i.i.preheader25:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader25 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader25 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !1490, !noalias !1487
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !1487, !noalias !1490
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1493

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1470
  store ptr %i.an, ptr %i.d, align 8, !tbaa !1466
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !1469
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.ap = phi ptr [ %i.k, %bb.c ], [ %i.an, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13ExportEntriesD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit2, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit4, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit6, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1470 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit8, %bb.g
  %i.m = load ptr, ptr %0, align 8, !tbaa !1470   ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit12

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit12: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit10, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb14PhysicalExport15GetDataInternalERNS_16ExecutionContextERNS_9DataChunkERNS_19OperatorSourceInputE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector.2138", align 8  ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.duckdb::SQLIdentifier", align 8 ; 11 uses
  %13 = alloca %"class.duckdb::SQLString", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"class.duckdb::unique_ptr.656", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.duckdb::vector.1684", align 16 ; 12 uses
  %25 = alloca %"class.duckdb::vector.1684", align 16 ; 6 uses
  %26 = alloca %"class.duckdb::optional_ptr.1731", align 8 ; 6 uses
  %27 = alloca %"class.duckdb::basic_stringstream", align 8 ; 16 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.duckdb::basic_stringstream", align 8 ; 15 uses
  %31 = alloca %"struct.duckdb::ExportedTableData", align 8 ; 19 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !1319, !nonnull !264, !align !265
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1459, !range !323, !noundef !264
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.dq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !306, !nonnull !264, !align !265 ; 3 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb10FileSystem13GetFileSystemERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.k) ; 4 uses
end_hunk_5
begin_hunk_6_@_ZNK6duckdb14PhysicalInsert18OnConflictHandlingERNS_17TableCatalogEntryERNS_16ExecutionContextERNS_17InsertGlobalStateERNS_16InsertLocalStateERNS_9DataChunkE:bb.a
  %.sroa.09.042.i = load ptr, ptr %i.do, align 8, !tbaa !179 ; 2 uses
  %.not1943.i = icmp eq ptr %.sroa.09.042.i, null
  br i1 %.not1943.i, label %._crit_edge47.i, label %.lr.ph46.i

._crit_edge47.i:                                  ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i, %bb.bi
  %i.dp = phi ptr [ null, %bb.bi ], [ %i.gh, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i ] ; 4 uses
  store ptr %i.dp, ptr %11, align 8, !noalias !1650
  %i.dq = load i64, ptr %i.dc, align 8, !tbaa !345, !noalias !1650
  invoke fastcc void @_ZN6duckdbL25CheckDistinctnessInternalERNS_12ValidityMaskERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS5_EEEmRSt3mapImNS2_ImLb1ESaImEEESt4lessImESaISt4pairIKmSB_EEE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(48) %30)
          to label %bb.bw unwind label %bb.by

bb.bj:                                            ; preds = %bb.bh
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.lr.ph46.i:                                       ; preds = %bb.bi, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i
  %i.ds = phi ptr [ %i.gg, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i ], [ null, %bb.bi ] ; 6 uses
  %.sroa.09.044.i = phi ptr [ %.sroa.09.0.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i ], [ %.sroa.09.042.i, %bb.bi ] ; 2 uses
  %i.dt = phi ptr [ %i.gh, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i ], [ null, %bb.bi ] ; 18 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.09.044.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !98 ; 5 uses
  %i.dw = load i64, ptr %i.cy, align 8, !tbaa !1655, !noalias !1650 ; 2 uses
  %i.dx = urem i64 %i.dv, %i.dw                   ; 3 uses
  %i.dy = load ptr, ptr %9, align 8, !tbaa !1653, !noalias !1650
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1086 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph46.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !179 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !98
  %i.ee = icmp eq i64 %i.dv, %i.ed
  br i1 %i.ee, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bm
  %i.ef = icmp eq i64 %i.dv, %i.ei
  br i1 %i.ef, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1657

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bk, %bb.bl
  %.020.i.i.i.i.i = phi ptr [ %i.eg, %bb.bl ], [ %i.eb, %bb.bk ]
  %i.eg = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !179 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !98 ; 2 uses
  %i.ej = urem i64 %i.ei, %i.dw
  %.not19.i.i.i.i.i = icmp eq i64 %i.ej, %i.dx
  br i1 %.not19.i.i.i.i.i, label %bb.bl, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !1657

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.bm
  br label %.loopexit.i.i.i, !llvm.loop !1657

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %.lr.ph46.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !1650
  store ptr %9, ptr %8, align 8, !tbaa !1658, !noalias !1650
  %i.ek = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc.i unwind label %.loopexit20.i ; 5 uses

.noexc.i:                                         ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.ek, align 8, !tbaa !179
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %i.dv, ptr %i.el, align 8, !tbaa !1662
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr null, ptr %i.em, align 8, !tbaa !1671
  store ptr %i.ek, ptr %i.di, align 8, !tbaa !1672, !noalias !1650
  %i.en = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %i.dx, i64 noundef %i.dv, ptr noundef nonnull %i.ek, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i unwind label %bb.bn

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !1650
  br label %.loopexit.i

bb.bn:                                            ; preds = %.noexc.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dt, ptr %11, align 8, !noalias !1650
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !1650
  br label %.body.i

.loopexit.i:                                      ; preds = %bb.bl, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i, %bb.bk
  %.pn.i.i.i = phi ptr [ %i.en, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i ], [ %i.eb, %bb.bk ], [ %i.eg, %bb.bl ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.ep = load ptr, ptr %.1.i.i.i, align 8, !tbaa !1673 ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i163, label %.noexc.i.i, label %_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv.exit.i, !prof !46

.noexc.i.i:                                       ; preds = %.loopexit.i
  store ptr %i.dt, ptr %11, align 8, !noalias !1650
  %i.eq = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !1650
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.er, ptr %7, align 8, !tbaa !7, !noalias !1650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !1650
  store i64 49, ptr %i.a, align 8, !tbaa !98, !noalias !1650
  %i.es = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc79.i:                                       ; preds = %.noexc.i.i
  store ptr %i.es, ptr %7, align 8, !tbaa !15, !noalias !1650
  %i.et = load i64, ptr %i.a, align 8, !tbaa !98, !noalias !1650 ; 3 uses
  store i64 %i.et, ptr %i.er, align 8, !tbaa !14, !noalias !1650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.es, ptr noundef nonnull align 1 dereferenceable(49) @.str.66, i64 49, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !11, !noalias !1650
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !1650
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.noexc79.i
  invoke void @__cxa_throw(ptr nonnull %i.eq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.br unwind label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !1650
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %.noexc79.i
  %.0.i.i.i = phi i1 [ false, %bb.bo ], [ true, %.noexc79.i ] ; 2 uses
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ey = load ptr, ptr %7, align 8, !tbaa !15, !noalias !1650 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.er
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bp
  call void @_ZdlPv(ptr noundef %i.ey) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !1650
  br i1 %.0.i.i.i, label %bb.bq, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !1650
  br i1 %.0.i.i.i, label %bb.bq, label %.body.i

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.eq) #30
  br label %.body.i

bb.br:                                            ; preds = %bb.bo
  unreachable

_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv.exit.i: ; preds = %.loopexit.i
  %i.fa = load ptr, ptr %i.dk, align 8, !tbaa !1674, !noalias !1650
  %.not.i.i.i164 = icmp eq ptr %i.ds, %i.fa
  br i1 %.not.i.i.i164, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv.exit.i
  %i.fb = ptrtoint ptr %i.ep to i64
  store i64 %i.fb, ptr %i.ds, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  store ptr %i.fc, ptr %i.dj, align 8, !tbaa !1677, !noalias !1650
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i

bb.bt:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv.exit.i
  %i.fd = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.fe = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 3 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775800
  br i1 %i.fg, label %bb.bu, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.dt, ptr %11, align 8, !noalias !1650
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

.noexc37.i:                                       ; preds = %bb.bu
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bt
  %i.fh = ashr exact i64 %i.ff, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 1152921504606846975)
  %i.fl = select i1 %i.fj, i64 1152921504606846975, i64 %i.fk ; 3 uses
  %.not.i.i.i.i36.i = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i36.i)
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #33
          to label %.noexc38.i unwind label %.loopexit20.i ; 8 uses

.noexc38.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff
  %i.fp = ptrtoint ptr %i.ep to i64
  store i64 %i.fp, ptr %i.fo, align 8
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.ds
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc38.i
  %i.fq = ptrtoaddr ptr %i.fn to i64
  %37 = sub i64 %i.fd, %i.fe
  %38 = add i64 %37, -8                           ; 2 uses
  %i.fr = lshr i64 %38, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %38, 24
  %i.ft = sub i64 %i.fq, %i.fe
  %diff.check391 = icmp ult i64 %i.ft, 32
  %or.cond = or i1 %min.iters.check393, %diff.check391
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader413, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec396 = and i64 %i.fs, 4611686018427387900  ; 3 uses
  %i.fu = shl i64 %n.vec396, 3                    ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fn, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.dt, i64 %i.fu
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph394
  %index398 = phi i64 [ 0, %vector.ph394 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %i.fx = shl i64 %index398, 3                    ; 2 uses
  %next.gep399 = getelementptr i8, ptr %i.fn, i64 %i.fx ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.dt, i64 %i.fx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %i.fy = getelementptr i8, ptr %next.gep400, i64 16
  %wide.load401 = load <2 x i64>, ptr %next.gep400, align 8, !alias.scope !1681, !noalias !1678
  %wide.load402 = load <2 x i64>, ptr %i.fy, align 8, !alias.scope !1681, !noalias !1678
  %i.fz = getelementptr i8, ptr %next.gep399, i64 16
  store <2 x i64> %wide.load401, ptr %next.gep399, align 8, !alias.scope !1678, !noalias !1681
  store <2 x i64> %wide.load402, ptr %i.fz, align 8, !alias.scope !1678, !noalias !1681
  %index.next403 = add nuw i64 %index398, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.ga, label %middle.block404, label %vector.body397, !llvm.loop !1683

middle.block404:                                  ; preds = %vector.body397
  %cmp.n405 = icmp eq i64 %i.fs, %n.vec396
  br i1 %cmp.n405, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader413

.lr.ph.i.i.i.i.i.i.i.i.preheader413:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block404
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.fv, %middle.block404 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.fw, %middle.block404 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader413, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader413 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader413 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %i.gb = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !alias.scope !1681, !noalias !1678
  store i64 %i.gb, ptr %.012.i.i.i.i.i.i.i.i, align 8, !alias.scope !1678, !noalias !1681
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.ds
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1684

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block404, %.noexc38.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fn, %.noexc38.i ], [ %i.fv, %middle.block404 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.bv, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  store ptr %i.ge, ptr %i.dj, align 8, !tbaa !1677, !noalias !1650
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.gf, ptr %i.dk, align 8, !tbaa !1674, !noalias !1650
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.bs
  %i.gg = phi ptr [ %i.ge, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.fc, %bb.bs ]
  %i.gh = phi ptr [ %i.fn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.dt, %bb.bs ] ; 2 uses
  %.sroa.09.0.i = load ptr, ptr %.sroa.09.044.i, align 8, !tbaa !179 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.09.0.i, null
  br i1 %.not19.i, label %._crit_edge47.i, label %.lr.ph46.i

.loopexit20.i:                                    ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.loopexit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dt, ptr %11, align 8, !noalias !1650
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.bu
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bw:                                            ; preds = %._crit_edge47.i
  %.not.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !1650
  %i.gi = load ptr, ptr %.sroa.014.049.i, align 8, !tbaa !179 ; 2 uses
  %.not18.i = icmp eq ptr %i.gi, null
  br i1 %.not18.i, label %.loopexit21.i, label %bb.bh

bb.by:                                            ; preds = %._crit_edge47.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.by, %.loopexit.split-lp.i, %.loopexit20.i, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bn
  %i.gk = phi ptr [ %i.dp, %bb.by ], [ %i.dt, %bb.bn ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dt, %bb.bq ], [ %i.dt, %.loopexit20.i ], [ %i.dt, %.loopexit.split-lp.i ] ; 2 uses
  %.pn28.i = phi { ptr, i32 } [ %i.gj, %bb.by ], [ %i.eo, %bb.bn ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.bq ], [ %lpad.loopexit.i, %.loopexit20.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.not.i.i.i39.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i39.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40.i, label %bb.bz

bb.bz:                                            ; preds = %.body.i
  call void @_ZdlPv(ptr noundef nonnull %i.gk) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40.i: ; preds = %bb.bz, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !1650
  br label %bb.cy

bb.ca:                                            ; preds = %bb.bg
  %i.gl = getelementptr i8, ptr %.val, i64 16     ; 2 uses
  %.val.i = load ptr, ptr %i.gl, align 8, !tbaa !1372, !noalias !1650
  invoke fastcc void @_ZN6duckdbL15PrepareSortKeysERNS_9DataChunkERSt13unordered_mapImNS_10unique_ptrINS_6VectorESt14default_deleteIS4_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS7_EEERKSt13unordered_setImS9_SB_SaImEE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr %.val.i)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30, !noalias !1650
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !1650
  %.sroa.03.034.i = load ptr, ptr %i.gl, align 8, !tbaa !179, !noalias !1650 ; 2 uses
  %.not35.i = icmp eq ptr %.sroa.03.034.i, null
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cb
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.cd

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit70.i, %bb.cb
  %i.gp = load i64, ptr %i.dc, align 8, !tbaa !345, !noalias !1650
  invoke fastcc void @_ZN6duckdbL25CheckDistinctnessInternalERNS_12ValidityMaskERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS5_EEEmRSt3mapImNS2_ImLb1ESaImEEESt4lessImESaISt4pairIKmSB_EEE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.gp, ptr noundef nonnull align 8 dereferenceable(48) %30)
          to label %bb.cn unwind label %bb.cp

bb.cc:                                            ; preds = %bb.ca
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cd:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit70.i, %.lr.ph.i
  %i.gr = phi ptr [ null, %.lr.ph.i ], [ %i.iv, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit70.i ] ; 6 uses
  %.sroa.03.036.i = phi ptr [ %.sroa.03.034.i, %.lr.ph.i ], [ %.sroa.03.0.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit70.i ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.03.036.i, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !98 ; 5 uses
  %i.gu = load i64, ptr %i.cy, align 8, !tbaa !1655, !noalias !1650 ; 2 uses
  %i.gv = urem i64 %i.gt, %i.gu                   ; 3 uses
  %i.gw = load ptr, ptr %9, align 8, !tbaa !1653, !noalias !1650
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !1086 ; 2 uses
  %.not.i.i.i.i41.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i41.i, label %.loopexit.i.i47.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !179 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !98
  %i.hc = icmp eq i64 %i.gt, %i.hb
  br i1 %i.hc, label %.loopexit22.i, label %.lr.ph.i.i.i.i42.i

bb.cf:                                            ; preds = %bb.cg
  %i.hd = icmp eq i64 %i.gt, %i.hg
  br i1 %i.hd, label %.loopexit22.i, label %.lr.ph.i.i.i.i42.i, !llvm.loop !1657

.lr.ph.i.i.i.i42.i:                               ; preds = %bb.ce, %bb.cf
  %.020.i.i.i.i43.i = phi ptr [ %i.he, %bb.cf ], [ %i.gz, %bb.ce ]
  %i.he = load ptr, ptr %.020.i.i.i.i43.i, align 8, !tbaa !179 ; 4 uses
  %.not18.i.i.i.i44.i = icmp eq ptr %i.he, null
  br i1 %.not18.i.i.i.i44.i, label %.loopexit.i.i47.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i42.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !98 ; 2 uses
  %i.hh = urem i64 %i.hg, %i.gu
  %.not19.i.i.i.i45.i = icmp eq i64 %i.hh, %i.gv
  br i1 %.not19.i.i.i.i45.i, label %bb.cf, label %..loopexit_crit_edge21.i.i.i.i46.i, !llvm.loop !1657

..loopexit_crit_edge21.i.i.i.i46.i:               ; preds = %bb.cg
  br label %.loopexit.i.i47.i, !llvm.loop !1657

.loopexit.i.i47.i:                                ; preds = %.lr.ph.i.i.i.i42.i, %..loopexit_crit_edge21.i.i.i.i46.i, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !1650
  store ptr %9, ptr %6, align 8, !tbaa !1658, !noalias !1650
  %i.hi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc51.i unwind label %.loopexit23.i ; 5 uses

.noexc51.i:                                       ; preds = %.loopexit.i.i47.i
  store ptr null, ptr %i.hi, align 8, !tbaa !179
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %i.gt, ptr %i.hj, align 8, !tbaa !1662
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store ptr null, ptr %i.hk, align 8, !tbaa !1671
  store ptr %i.hi, ptr %i.gm, align 8, !tbaa !1672, !noalias !1650
  %i.hl = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %i.gv, i64 noundef %i.gt, ptr noundef nonnull %i.hi, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i48.i unwind label %bb.ch

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i48.i: ; preds = %.noexc51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !1650
  br label %.loopexit22.i

bb.ch:                                            ; preds = %.noexc51.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !1650
  br label %.body52.i

.loopexit22.i:                                    ; preds = %bb.cf, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i48.i, %bb.ce
  %.pn.i.i49.i = phi ptr [ %i.hl, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i48.i ], [ %i.gz, %bb.ce ], [ %i.he, %bb.cf ]
  %.1.i.i50.i = getelementptr inbounds nuw i8, ptr %.pn.i.i49.i, i64 16
  %i.hn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.1.i.i50.i)
          to label %bb.ci unwind label %.loopexit23.i ; 2 uses

bb.ci:                                            ; preds = %.loopexit22.i
  %i.ho = load ptr, ptr %i.go, align 8, !tbaa !1674, !noalias !1650
  %.not.i.i55.i = icmp eq ptr %i.gr, %i.ho
  br i1 %.not.i.i55.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hp = ptrtoint ptr %i.hn to i64
  store i64 %i.hp, ptr %i.gr, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  store ptr %i.hq, ptr %i.gn, align 8, !tbaa !1677, !noalias !1650
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit70.i

bb.ck:                                            ; preds = %bb.ci
  %i.hr = load ptr, ptr %12, align 8, !tbaa !1685, !noalias !1650 ; 7 uses
  %i.hs = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64               ; 3 uses
  %i.hu = sub i64 %i.hs, %i.ht                    ; 3 uses
  %i.hv = icmp eq i64 %i.hu, 9223372036854775800
  br i1 %i.hv, label %bb.cl, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i56.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc68.i unwind label %.loopexit.split-lp24.i

.noexc68.i:                                       ; preds = %bb.cl
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i56.i: ; preds = %bb.ck
  %i.hw = ashr exact i64 %i.hu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i57.i = call i64 @llvm.umax.i64(i64 %i.hw, i64 1)
  %i.hx = add nsw i64 %.sroa.speculated.i.i.i.i57.i, %i.hw ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hw
  %i.hz = call i64 @llvm.umin.i64(i64 %i.hx, i64 1152921504606846975)
  %i.ia = select i1 %i.hy, i64 1152921504606846975, i64 %i.hz ; 3 uses
  %.not.i.i.i.i58.i = icmp ne i64 %i.ia, 0
  call void @llvm.assume(i1 %.not.i.i.i.i58.i)
  %i.ib = shl nuw nsw i64 %i.ia, 3
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #33
          to label %.noexc69.i unwind label %.loopexit23.i ; 8 uses

.noexc69.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i56.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hu
  %i.ie = ptrtoint ptr %i.hn to i64
  store i64 %i.ie, ptr %i.id, align 8
  %.not10.i.i.i.i.i.i.i59.i = icmp eq ptr %i.hr, %i.gr
  br i1 %.not10.i.i.i.i.i.i.i59.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i64.i, label %.lr.ph.i.i.i.i.i.i.i60.i.preheader

.lr.ph.i.i.i.i.i.i.i60.i.preheader:               ; preds = %.noexc69.i
  %i.if = ptrtoaddr ptr %i.ic to i64
  %39 = sub i64 %i.hs, %i.ht
  %40 = add i64 %39, -8                           ; 2 uses
  %i.ig = lshr i64 %40, 3
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %40, 24
  %i.ii = sub i64 %i.if, %i.ht
  %diff.check = icmp ult i64 %i.ii, 32
  %or.cond408 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond408, label %.lr.ph.i.i.i.i.i.i.i60.i.preheader426, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i60.i.preheader
  %n.vec = and i64 %i.ih, 4611686018427387900     ; 3 uses
  %i.ij = shl i64 %n.vec, 3                       ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ic, i64 %i.ij  ; 2 uses
  %i.il = getelementptr i8, ptr %i.hr, i64 %i.ij
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.im = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ic, i64 %i.im ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.hr, i64 %i.im ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %i.in = getelementptr i8, ptr %next.gep387, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep387, align 8, !alias.scope !1689, !noalias !1686
  %wide.load388 = load <2 x i64>, ptr %i.in, align 8, !alias.scope !1689, !noalias !1686
  %i.io = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1686, !noalias !1689
  store <2 x i64> %wide.load388, ptr %i.io, align 8, !alias.scope !1686, !noalias !1689
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !1691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ih, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i64.i, label %.lr.ph.i.i.i.i.i.i.i60.i.preheader426

.lr.ph.i.i.i.i.i.i.i60.i.preheader426:            ; preds = %.lr.ph.i.i.i.i.i.i.i60.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i61.i.ph = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i.i60.i.preheader ], [ %i.ik, %middle.block ]
  %.0911.i.i.i.i.i.i.i62.i.ph = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.i.i60.i.preheader ], [ %i.il, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i60.i

.lr.ph.i.i.i.i.i.i.i60.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i60.i.preheader426, %.lr.ph.i.i.i.i.i.i.i60.i
  %.012.i.i.i.i.i.i.i61.i = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i60.i ], [ %.012.i.i.i.i.i.i.i61.i.ph, %.lr.ph.i.i.i.i.i.i.i60.i.preheader426 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i62.i = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i.i.i60.i ], [ %.0911.i.i.i.i.i.i.i62.i.ph, %.lr.ph.i.i.i.i.i.i.i60.i.preheader426 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %i.iq = load i64, ptr %.0911.i.i.i.i.i.i.i62.i, align 8, !alias.scope !1689, !noalias !1686
  store i64 %i.iq, ptr %.012.i.i.i.i.i.i.i61.i, align 8, !alias.scope !1686, !noalias !1689
  %i.ir = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i62.i, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i61.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i63.i = icmp eq ptr %i.ir, %i.gr
  br i1 %.not.i.i.i.i.i.i.i63.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i64.i, label %.lr.ph.i.i.i.i.i.i.i60.i, !llvm.loop !1692

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i64.i: ; preds = %.lr.ph.i.i.i.i.i.i.i60.i, %middle.block, %.noexc69.i
  %.0.lcssa.i.i.i.i.i.i.i65.i = phi ptr [ %i.ic, %.noexc69.i ], [ %i.ik, %middle.block ], [ %i.is, %.lr.ph.i.i.i.i.i.i.i60.i ]
  %i.it = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i65.i, i64 8 ; 2 uses
  %.not.i23.i.i.i66.i = icmp eq ptr %i.hr, null
  br i1 %.not.i23.i.i.i66.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i67.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i64.i
  call void @_ZdlPv(ptr noundef nonnull %i.hr) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i67.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i67.i: ; preds = %bb.cm, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i64.i
  store ptr %i.ic, ptr %12, align 8, !tbaa !1685, !noalias !1650
  store ptr %i.it, ptr %i.gn, align 8, !tbaa !1677, !noalias !1650
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ia
  store ptr %i.iu, ptr %i.go, align 8, !tbaa !1674, !noalias !1650
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit70.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE9push_backEOS3_.exit70.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i67.i, %bb.cj
  %i.iv = phi ptr [ %i.it, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i67.i ], [ %i.hq, %bb.cj ]
  %.sroa.03.0.i = load ptr, ptr %.sroa.03.036.i, align 8, !tbaa !179 ; 2 uses
  %.not.i161 = icmp eq ptr %.sroa.03.0.i, null
  br i1 %.not.i161, label %._crit_edge.i, label %bb.cd

.loopexit23.i:                                    ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i56.i, %.loopexit22.i, %.loopexit.i.i47.i
  %lpad.loopexit25.i = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i

.loopexit.split-lp24.i:                           ; preds = %bb.cl
  %lpad.loopexit.split-lp26.i = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i

bb.cn:                                            ; preds = %._crit_edge.i
  %i.iw = load ptr, ptr %12, align 8, !tbaa !1685, !noalias !1650 ; 2 uses
  %.not.i.i.i71.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i71.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit72.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef nonnull %i.iw) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit72.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit72.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !1650
  br label %.loopexit21.i

bb.cp:                                            ; preds = %._crit_edge.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i

.body52.i:                                        ; preds = %bb.cp, %.loopexit.split-lp24.i, %.loopexit23.i, %bb.ch
  %.pn.i = phi { ptr, i32 } [ %i.ix, %bb.cp ], [ %i.hm, %bb.ch ], [ %lpad.loopexit25.i, %.loopexit23.i ], [ %lpad.loopexit.split-lp26.i, %.loopexit.split-lp24.i ]
  %i.iy = load ptr, ptr %12, align 8, !tbaa !1685, !noalias !1650 ; 2 uses
  %.not.i.i.i73.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i73.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit74.i, label %bb.cq

bb.cq:                                            ; preds = %.body52.i
  call void @_ZdlPv(ptr noundef nonnull %i.iy) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit74.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit74.i: ; preds = %bb.cq, %.body52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !1650
  br label %bb.cy

.loopexit21.i:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit72.i, %.preheader.i
  %i.iz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !39, !noalias !1650 ; 8 uses
  %.not.i.i.i.i75.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i75.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %.loopexit21.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.jb, align 8, !tbaa !40
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !42
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !43
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #30, !inline_history !1693
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !43
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #30, !inline_history !1693
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !1650
  %.not.i.i.i.i.i.i162 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i.i.i.i162, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.je, %bb.cu ], [ %i.jo, %bb.cv ]
  %i.jp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jp, label %bb.cw, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, !prof !46

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #30
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cs, %.loopexit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !1650
  %i.jq = load ptr, ptr %i.cz, align 8, !tbaa !1694, !noalias !1650 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i76.i

.lr.ph.i.i.i.i76.i:                               ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.jr, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.jq, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 3 uses
  %i.jr = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !179 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !1673 ; 3 uses
  %.not.i.i.i.i.i.i.i77.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i.i77.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i76.i
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.jt) #30
  call void @_ZdlPv(ptr noundef nonnull %i.jt) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i76.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #31
  %.not.i.i.i.i78.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i78.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i76.i, !llvm.loop !1695

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i
  %i.ju = load ptr, ptr %9, align 8, !tbaa !1653, !noalias !1650
  %i.jv = load i64, ptr %i.cy, align 8, !tbaa !1655, !noalias !1650
  %i.jw = shl i64 %i.jv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ju, i8 0, i64 %i.jw, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !noalias !1650
  %i.jx = load ptr, ptr %9, align 8, !tbaa !1653, !noalias !1650 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.cx
end_hunk_6
begin_hunk_7_@_ZNK6duckdb14PhysicalInsert15GetDataInternalERNS_16ExecutionContextERNS_9DataChunkERNS_19OperatorSourceInputE:bb.a
  %i.p = load i64, ptr %i.o, align 8, !tbaa !345
  %i.q = icmp eq i64 %i.p, 0
  %i.r = zext i1 %i.q to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi i8 [ %i.r, %bb.e ], [ 1, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17PhysicalMergeIntoC2ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEESt3mapINS_20MergeActionConditionENS3_INS_10unique_ptrINS_17MergeIntoOperatorESt14default_deleteISA_ELb1EEELb1ESaISD_EEESt4lessIS8_ESaISt4pairIKS8_SF_EEEmNS_12optional_idxEbb(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4, i64 %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.262", align 16 ; 7 uses
  %9 = alloca %"class.std::map.1950", align 8     ; 11 uses
  %10 = alloca %"struct.duckdb::MergeActionRange", align 8 ; 8 uses
  %.sroa.7 = alloca [23 x i8], align 1            ; 9 uses
  %i.a = load <2 x ptr>, ptr %2, align 8, !tbaa !189
  store <2 x ptr> %i.a, ptr %8, align 16, !tbaa !189
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !191
  store ptr %i.d, ptr %i.b, align 16, !tbaa !191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb16PhysicalOperatorC2ERNS_12PhysicalPlanENS_20PhysicalOperatorTypeENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 49, ptr noundef nonnull %8, i64 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = zext i1 %7 to i8
  %i.g = zext i1 %6 to i8
  %i.h = load ptr, ptr %8, align 16, !tbaa !193   ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !194  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !195

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %8, align 16, !tbaa !193
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #31
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTVN6duckdb17PhysicalMergeIntoE, i64 16), ptr %0, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i8 0, i64 72, i1 false)
  store i64 %4, ptr %i.o, align 8, !tbaa !1731
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %5, ptr %i.p, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.g, ptr %i.q, align 8, !tbaa !1750
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 %i.f, ptr %i.r, align 1, !tbaa !1751
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !639
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.t, align 8, !tbaa !579
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.s, ptr %i.u, align 8, !tbaa !371
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.s, ptr %i.v, align 8, !tbaa !640
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !366
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !371  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.y, %i.z
  br i1 %.not75, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.e

._crit_edge78:                                    ; preds = %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE7emplaceIJRS6_RS2_EEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_.exit, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.af = invoke noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #33
          to label %bb.l unwind label %_ZNSt12_Vector_baseIN6duckdb20MergeActionConditionESaIS1_EED2Ev.exit.i.i ; 5 uses

_ZNSt12_Vector_baseIN6duckdb20MergeActionConditionESaIS1_EED2Ev.exit.i.i: ; preds = %._crit_edge78
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #30
  br label %bb.ab

bb.e:                                             ; preds = %.lr.ph77, %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE7emplaceIJRS6_RS2_EEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_.exit
  %.sroa.058.076 = phi ptr [ %i.y, %.lr.ph77 ], [ %i.cj, %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE7emplaceIJRS6_RS2_EEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_.exit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.058.076, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i64 0, ptr %i.ae, align 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1752
  store i8 %i.aj, ptr %10, align 8, !tbaa !1755
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !1757 ; 2 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !1758 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !1759
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.058.076, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1760 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.058.076, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1760 ; 2 uses
  %.not6473 = icmp eq ptr %i.ar, %i.at
  br i1 %.not6473, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !1761
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %.pre89 = ptrtoint ptr %i.ch to i64
  %.pre90 = ptrtoint ptr %i.cf to i64
  %.pre92 = sub i64 %.pre89, %.pre90
  %.pre94 = ashr exact i64 %.pre92, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.pre-phi95 = phi i64 [ %.pre94, %._crit_edge.loopexit ], [ %i.ap, %bb.e ]
  store i64 %.pre-phi95, ptr %i.ad, align 8, !tbaa !1762
  %i.au = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_emplace_uniqueIJRS3_RS4_EEES2_ISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE7emplaceIJRS6_RS2_EEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_.exit unwind label %bb.j ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.av = phi ptr [ %i.cf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.al, %.lr.ph.preheader ] ; 11 uses
  %i.aw = phi ptr [ %i.cg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %.pre, %.lr.ph.preheader ] ; 5 uses
  %i.ax = phi ptr [ %i.ch, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.ak, %.lr.ph.preheader ] ; 3 uses
  %.sroa.054.074 = phi ptr [ %i.ci, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.ar, %.lr.ph.preheader ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ay = load i64, ptr %.sroa.054.074, align 8, !tbaa !1763
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !1763
  store ptr null, ptr %.sroa.054.074, align 8, !tbaa !1763
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !1757
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ba = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc unwind label %.loopexit.split-lp66

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #33
          to label %.noexc30 unwind label %.loopexit65 ; 11 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = load i64, ptr %.sroa.054.074, align 8, !tbaa !1763
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !1763
  store ptr null, ptr %.sroa.054.074, align 8, !tbaa !1763
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc30
  %11 = sub i64 %i.ba, %i.bb
  %12 = add i64 %11, -8                           ; 2 uses
  %i.bn = lshr i64 %12, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader136, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bk, i64 8
  %i.bp = add i64 %i.ba, -8
  %i.bq = sub i64 %i.bp, %i.bb
  %i.br = and i64 %i.bq, -8                       ; 2 uses
  %scevgep129 = getelementptr i8, ptr %scevgep, i64 %i.br
  %scevgep130 = getelementptr i8, ptr %i.av, i64 8
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.br
  %bound0 = icmp ult ptr %i.bk, %scevgep131
  %bound1 = icmp ult ptr %i.av, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader136, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.av, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.bv ; 2 uses
  %next.gep132 = getelementptr i8, ptr %i.av, i64 %i.bv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.bw = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep132, align 8, !tbaa !1763, !alias.scope !1770, !noalias !1765
  %wide.load133 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !1763, !alias.scope !1770, !noalias !1765
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1763, !alias.scope !1773, !noalias !1770
  store <2 x i64> %wide.load133, ptr %i.bx, align 8, !tbaa !1763, !alias.scope !1773, !noalias !1770
  %i.by = getelementptr i8, ptr %next.gep132, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep132, align 8, !tbaa !1763, !alias.scope !1770, !noalias !1765
  store <2 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !1763, !alias.scope !1770, !noalias !1765
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1775

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader136

.lr.ph.i.i.i.i.i.i.i.preheader136:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader136, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader136 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader136 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1763, !alias.scope !1768, !noalias !1765
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1763, !alias.scope !1765, !noalias !1768
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1763, !alias.scope !1768, !noalias !1765
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1776

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc30
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.noexc30 ], [ %i.bt, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.av) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !1758
  store ptr %i.cd, ptr %i.ab, align 8, !tbaa !1757
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store ptr %i.ce, ptr %i.ac, align 8, !tbaa !1761
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  %i.cf = phi ptr [ %i.bk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.av, %bb.f ] ; 2 uses
  %i.cg = phi ptr [ %i.ce, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.aw, %bb.f ]
  %i.ch = phi ptr [ %i.cd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.az, %bb.f ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.054.074, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.ci, %i.at
  br i1 %.not64, label %._crit_edge.loopexit, label %.lr.ph

.loopexit65:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit67 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp66:                             ; preds = %bb.h
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE7emplaceIJRS6_RS2_EEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.cj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.058.076) #35 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.z
  br i1 %.not, label %._crit_edge78, label %bb.e

bb.j:                                             ; preds = %._crit_edge
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit65, %.loopexit.split-lp66, %bb.j
  %.pn26 = phi { ptr, i32 } [ %i.ck, %bb.j ], [ %lpad.loopexit67, %.loopexit65 ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.body

bb.l:                                             ; preds = %._crit_edge78
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 3 ; 2 uses
  store i8 0, ptr %i.af, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !1777 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.af, ptr %i.m, align 8, !tbaa !1777
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !1778
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !1779
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph80, label %_ZNSt6vectorIN6duckdb20MergeActionConditionESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb20MergeActionConditionESaIS1_EED2Ev.exit: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #31
  %.pre87 = load ptr, ptr %i.cn, align 8, !tbaa !1778
  %.pre88 = load ptr, ptr %i.m, align 8, !tbaa !1777
  %i.cp = icmp eq ptr %.pre87, %.pre88
  br i1 %i.cp, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.l, %_ZNSt6vectorIN6duckdb20MergeActionConditionESaIS1_EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7
  %.sroa.7.7..sroa_idx140 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7
  br label %bb.n

._crit_edge81:                                    ; preds = %_ZNSt6vectorIN6duckdb16MergeActionRangeESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN6duckdb20MergeActionConditionESaIS1_EED2Ev.exit
  %i.cs = load ptr, ptr %i.t, align 8, !tbaa !579
  invoke void @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.cs)
          to label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %._crit_edge81
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #34
  unreachable

_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %._crit_edge81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void

bb.n:                                             ; preds = %.lr.ph80, %_ZNSt6vectorIN6duckdb16MergeActionRangeESaIS1_EE9push_backERKS1_.exit
  %.079 = phi i64 [ 0, %.lr.ph80 ], [ %i.ec, %_ZNSt6vectorIN6duckdb16MergeActionRangeESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.cv = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN6duckdb6vectorINS_20MergeActionConditionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.079)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !579 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %bb.o
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !1780 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i32
  %.012.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i32 ], [ %.1.i.i.i, %bb.p ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i32 ], [ %.19.i.i.i, %bb.p ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !1780
  %i.da = icmp ult i8 %i.cz, %i.cx                ; 3 uses
  %.19.i.i.i = select i1 %i.da, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.da, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !580 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i33, label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %bb.p, !llvm.loop !1781

_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %bb.p
  %i.db = icmp eq ptr %.19.i.i.i, %i.s
  br i1 %i.db, label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit

_ZNSt3mapIN6duckdb20MergeActionConditionENS0_16MergeActionRangeESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread: ; preds = %bb.o, %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7.7..sroa_idx140, i8 0, i64 16, i1 false)
  br label %bb.s

end_hunk_7
begin_hunk_8_@_ZN6duckdb17GlobalSourceStateD2Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i4.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i4.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !2298
  br label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i, %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !403

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !400
  br label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.ab = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb23StateWithBlockableTasksD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #31
  br label %_ZN6duckdb23StateWithBlockableTasksD2Ev.exit

_ZN6duckdb23StateWithBlockableTasksD2Ev.exit:     ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17ExportSourceStateD0Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !400  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.l, label %bb.e, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !inline_history !2718
  br label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i

_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !339  ; 4 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i2.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i2.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i4.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i4.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !2719
  br label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i, %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !403

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !400
  br label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.ab = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i, label %_ZN6duckdb17GlobalSourceStateD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #31
  br label %_ZN6duckdb17GlobalSourceStateD2Ev.exit

_ZN6duckdb17GlobalSourceStateD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1465, !range !323, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.e, 1
  %.pre25.i.i.i = load ptr, ptr %0, align 8, !tbaa !2762 ; 4 uses
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.pre25.i.i.i, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre25.i.i.i, i64 104 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1466 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pre25.i.i.i, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1469
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %1 to i64
  store i64 %i.k, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1466
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.g, align 8, !tbaa !1466
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !1470 ; 7 uses
  %i.o = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #33 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = ptrtoint ptr %1 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ab = ptrtoaddr ptr %i.y to i64
  %2 = sub i64 %i.o, %i.p
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ac = lshr i64 %3, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ae = sub i64 %i.ab, %i.p
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  %i.aj = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 8, !alias.scope !2767, !noalias !2764
  %wide.load14 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !2767, !noalias !2764
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2764, !noalias !2767
  store <2 x i64> %wide.load14, ptr %i.ak, align 8, !alias.scope !2764, !noalias !2767
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !2769

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader36

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader36:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader36, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader36 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader36 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2767, !noalias !2764
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2764, !noalias !2767
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2770

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !1470
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !1466
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !1469
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, %bb.d
  %.pr.i.i.i = load i8, ptr %i.d, align 8, !tbaa !50
  %i.ar = icmp eq i8 %.pr.i.i.i, 1
  br i1 %i.ar, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit._ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread_crit_edge.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit._ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread_crit_edge.i.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !2762
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread.i.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit._ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread_crit_edge.i.i.i, %bb.b
  %i.as = phi ptr [ %.pre.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit._ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread_crit_edge.i.i.i ], [ %.pre25.i.i.i, %bb.b ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1466 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1469
  %.not.i.i6.i.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i6.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread.i.i.i
  %i.ay = ptrtoint ptr %1 to i64
  store i64 %i.ay, ptr %i.av, align 8
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !1466
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !1466
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

bb.i:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.thread.i.i.i
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !1470 ; 7 uses
  %i.bc = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.j, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i7.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i7.i.i.i: ; preds = %bb.i
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i8.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i8.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i9.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i9.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #33 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  %i.bo = ptrtoint ptr %1 to i64
  store i64 %i.bo, ptr %i.bn, align 8
  %.not10.i.i.i.i.i.i.i10.i.i.i = icmp eq ptr %i.bb, %i.av
  br i1 %.not10.i.i.i.i.i.i.i10.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i15.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader:           ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i7.i.i.i
  %i.bp = ptrtoaddr ptr %i.bm to i64
  %4 = sub i64 %i.bc, %i.bd
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bq = lshr i64 %5, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check19 = icmp ult i64 %5, 56
  %i.bs = sub i64 %i.bp, %i.bd
  %diff.check17 = icmp ult i64 %i.bs, 32
  %or.cond34 = or i1 %min.iters.check19, %diff.check17
  br i1 %or.cond34, label %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader35, label %vector.ph20

vector.ph20:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader
  %n.vec22 = and i64 %i.br, 4611686018427387900   ; 3 uses
  %i.bt = shl i64 %n.vec22, 3                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bb, i64 %i.bt
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph20
  %index24 = phi i64 [ 0, %vector.ph20 ], [ %index.next29, %vector.body23 ] ; 2 uses
  %i.bw = shl i64 %index24, 3                     ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.bm, i64 %i.bw ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bb, i64 %i.bw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  %i.bx = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load27 = load <2 x i64>, ptr %next.gep26, align 8, !alias.scope !2774, !noalias !2771
  %wide.load28 = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !2774, !noalias !2771
  %i.by = getelementptr i8, ptr %next.gep25, i64 16
  store <2 x i64> %wide.load27, ptr %next.gep25, align 8, !alias.scope !2771, !noalias !2774
  store <2 x i64> %wide.load28, ptr %i.by, align 8, !alias.scope !2771, !noalias !2774
  %index.next29 = add nuw i64 %index24, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next29, %n.vec22
  br i1 %i.bz, label %middle.block30, label %vector.body23, !llvm.loop !2776

middle.block30:                                   ; preds = %vector.body23
  %cmp.n31 = icmp eq i64 %i.br, %n.vec22
  br i1 %cmp.n31, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i15.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader35

.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader35:         ; preds = %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader, %middle.block30
  %.012.i.i.i.i.i.i.i12.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader ], [ %i.bu, %middle.block30 ]
  %.0911.i.i.i.i.i.i.i13.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader ], [ %i.bv, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i11.i.i.i

.lr.ph.i.i.i.i.i.i.i11.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader35, %.lr.ph.i.i.i.i.i.i.i11.i.i.i
  %.012.i.i.i.i.i.i.i12.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i11.i.i.i ], [ %.012.i.i.i.i.i.i.i12.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader35 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i13.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i11.i.i.i ], [ %.0911.i.i.i.i.i.i.i13.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i11.i.i.i.preheader35 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i.i13.i.i.i, align 8, !alias.scope !2774, !noalias !2771
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i.i12.i.i.i, align 8, !alias.scope !2771, !noalias !2774
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i13.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i12.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i14.i.i.i = icmp eq ptr %i.cb, %i.av
  br i1 %.not.i.i.i.i.i.i.i14.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i15.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11.i.i.i, !llvm.loop !2777

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i15.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i11.i.i.i, %middle.block30, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i7.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i16.i.i.i = phi ptr [ %i.bm, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i7.i.i.i ], [ %i.bu, %middle.block30 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i11.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i16.i.i.i, i64 8
  %.not.i23.i.i.i17.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i23.i.i.i17.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i18.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i15.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i18.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i18.i.i.i: ; preds = %bb.k, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i15.i.i.i
  store ptr %i.bm, ptr %i.at, align 8, !tbaa !1470
  store ptr %i.cd, ptr %i.au, align 8, !tbaa !1466
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.ce, ptr %i.aw, align 8, !tbaa !1469
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i.i.i, %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i18.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_0", ptr %0, align 8, !tbaa !2685
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1478
  store i64 %.val.i, ptr %0, align 8, !tbaa !1478
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1465, !range !323, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1466 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1469
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %1 to i64
  store i64 %i.i, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1466
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !1466
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1470 ; 7 uses
  %i.m = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #33 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %1 to i64
  store i64 %i.y, ptr %i.x, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = sub i64 %i.m, %i.n
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ac = sub i64 %i.z, %i.n
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.l, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !2781, !noalias !2778
  %wide.load5 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !2781, !noalias !2778
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2778, !noalias !2781
  store <2 x i64> %wide.load5, ptr %i.ai, align 8, !alias.scope !2778, !noalias !2781
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2781, !noalias !2778
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2778, !noalias !2781
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2784

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1470
  store ptr %i.an, ptr %i.e, align 8, !tbaa !1466
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !1469
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_1E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_1", ptr %0, align 8, !tbaa !2685
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1478
  store i64 %.val.i, ptr %0, align 8, !tbaa !1478
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_2E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1465, !range !323, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1466 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1469
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %1 to i64
  store i64 %i.i, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1466
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !1466
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1470 ; 7 uses
  %i.m = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #33 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %1 to i64
  store i64 %i.y, ptr %i.x, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = sub i64 %i.m, %i.n
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ac = sub i64 %i.z, %i.n
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.l, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !2788, !noalias !2785
  %wide.load5 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !2788, !noalias !2785
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2785, !noalias !2788
  store <2 x i64> %wide.load5, ptr %i.ai, align 8, !alias.scope !2785, !noalias !2788
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2788, !noalias !2785
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2785, !noalias !2788
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2791

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1470
  store ptr %i.an, ptr %i.e, align 8, !tbaa !1466
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !1469
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_2E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_2", ptr %0, align 8, !tbaa !2685
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1478
  store i64 %.val.i, ptr %0, align 8, !tbaa !1478
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_3E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1465, !range !323, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1466 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1469
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %1 to i64
  store i64 %i.i, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1466
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !1466
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1470 ; 7 uses
  %i.m = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #33 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %1 to i64
  store i64 %i.y, ptr %i.x, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = sub i64 %i.m, %i.n
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ac = sub i64 %i.z, %i.n
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.l, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !2795, !noalias !2792
  %wide.load5 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !2795, !noalias !2792
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2792, !noalias !2795
  store <2 x i64> %wide.load5, ptr %i.ai, align 8, !alias.scope !2792, !noalias !2795
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2795, !noalias !2792
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2792, !noalias !2795
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2798

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1470
  store ptr %i.an, ptr %i.e, align 8, !tbaa !1466
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !1469
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_3E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_3E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_3", ptr %0, align 8, !tbaa !2685
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_3E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_3E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1478
  store i64 %.val.i, ptr %0, align 8, !tbaa !1478
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_3E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_3E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_4E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1465, !range !323, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ne i8 %i.e, 30
  %or.cond.not.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1466 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1469
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64
  store i64 %i.l, ptr %i.i, align 8
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1466
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.h, align 8, !tbaa !1466
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1470 ; 7 uses
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #33 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = ptrtoint ptr %1 to i64
  store i64 %i.ab, ptr %i.aa, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ac = ptrtoaddr ptr %i.z to i64
  %2 = sub i64 %i.p, %i.q
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ad = lshr i64 %3, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.af = sub i64 %i.ac, %i.q
  %diff.check = icmp ult i64 %i.af, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.z, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.o, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  %i.ak = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !2802, !noalias !2799
  %wide.load5 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !2802, !noalias !2799
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2799, !noalias !2802
  store <2 x i64> %wide.load5, ptr %i.al, align 8, !alias.scope !2799, !noalias !2802
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2804

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2802, !noalias !2799
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2799, !noalias !2802
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2805

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.z, ptr %i.g, align 8, !tbaa !1470
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !1466
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !1469
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_4", ptr %0, align 8, !tbaa !2685
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1478
  store i64 %.val.i, ptr %0, align 8, !tbaa !1478
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_5E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1465, !range !323, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ne i8 %i.e, 31
  %or.cond.not.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1466 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1469
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64
  store i64 %i.l, ptr %i.i, align 8
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1466
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.h, align 8, !tbaa !1466
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1470 ; 7 uses
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #33 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = ptrtoint ptr %1 to i64
  store i64 %i.ab, ptr %i.aa, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ac = ptrtoaddr ptr %i.z to i64
  %2 = sub i64 %i.p, %i.q
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ad = lshr i64 %3, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.af = sub i64 %i.ac, %i.q
  %diff.check = icmp ult i64 %i.af, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.z, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.o, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.ak = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !2809, !noalias !2806
  %wide.load5 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !2809, !noalias !2806
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2806, !noalias !2809
  store <2 x i64> %wide.load5, ptr %i.al, align 8, !alias.scope !2806, !noalias !2809
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2811

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2809, !noalias !2806
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2806, !noalias !2809
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2812

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.z, ptr %i.g, align 8, !tbaa !1470
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !1466
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !1469
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_5", ptr %0, align 8, !tbaa !2685
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1478
  store i64 %.val.i, ptr %0, align 8, !tbaa !1478
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #25 {
bb.a:
  %.fr35 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr35 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEET_SK_SK_T0_.exit"
  %i.h = icmp eq i64 %i.dg, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !2813

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ee, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr35, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ap, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load ptr, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.037.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.037.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %.val.i.i.us.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !1506
  %.val1.i.i.us.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !1506
  %i.z = getelementptr i8, ptr %.val.i.i.us.i.i.i, i64 8
  %.val.val.i.i.us.i.i.i = load i64, ptr %i.z, align 8, !tbaa !1481
  %i.aa = getelementptr i8, ptr %.val1.i.i.us.i.i.i, i64 8
  %.val1.val.i.i.us.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !1481
  %i.ab = icmp ult i64 %.val.val.i.i.us.i.i.i, %.val1.val.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.037.i.us.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8
  store i64 %i.ae, ptr %i.ad, align 8
  %i.af = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.af, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !2814

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.ag = getelementptr i8, ptr %.sroa.03.0.copyload.us.i.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %.val.val.i26.i.us.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !1481
  %.val.i.i.i.us.i.i.i = load ptr, ptr %i.ah, align 8 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val.i.i.i.us.i.i.i, i64 8
  %.val.val.i.i.i.us.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !1481
  %i.aj = icmp ult i64 %.val.val.i.i.i.us.i.i.i, %.val.val.i26.i.us.i.i.i
  br i1 %i.aj, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %.val.i.i.i.us.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.am, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i", !llvm.loop !2815

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  %i.ao = ptrtoint ptr %.sroa.03.0.copyload.us.i.i.i to i64
  store i64 %i.ao, ptr %i.an, align 8
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ap = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !2816

end_hunk_8
begin_hunk_9_@_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE17_M_emplace_uniqueIJRS3_RS4_EEES2_ISt17_Rb_tree_iteratorIS5_EbEDpOT_:bb.a
  %i.v = load i64, ptr %i.u, align 8, !tbaa !366
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !366
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #31
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_16MergeActionRangeEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread25, %bb.e
  %.sroa.3.031 = phi i8 [ 1, %.thread25 ], [ 0, %bb.e ]
  %.sroa.017.030 = phi ptr [ %i.a, %.thread25 ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.017.030, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.031, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1844
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20MergeIntoGlobalStateC2ERNS_13ClientContextERKNS_17PhysicalMergeIntoE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(226) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.299", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !638
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !1599
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb20MergeIntoGlobalStateE, i64 16), ptr %0, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %2, ptr %i.d, align 8, !tbaa !2900
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1760 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1760 ; 2 uses
  %.not20 = icmp eq ptr %i.h, %i.j
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  store atomic i64 0, ptr %i.m seq_cst, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %.sroa.015.021 = phi ptr [ %i.h, %.lr.ph ], [ %i.bj, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17MergeIntoOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.021)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1844
  %.not19 = icmp eq ptr %i.p, null
  br i1 %.not19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17MergeIntoOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.021)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1844 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.299") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.h unwind label %bb.l

bb.g:                                             ; preds = %bb.c
  store ptr null, ptr %3, align 8, !tbaa !645
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !1870 ; 6 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !2901
  %.not.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h
  %i.y = load i64, ptr %3, align 8, !tbaa !258
  store i64 %i.y, ptr %i.w, align 8, !tbaa !258
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.k, align 8, !tbaa !1870
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !1871 ; 10 uses
  %i.ab = ptrtoint ptr %i.w to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.j, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33
          to label %.noexc11 unwind label %.loopexit ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = load i64, ptr %3, align 8, !tbaa !258
  store i64 %i.an, ptr %i.am, align 8, !tbaa !258
  store ptr null, ptr %3, align 8, !tbaa !258
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.w
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %4 = sub i64 %i.ab, %i.ac
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ao = lshr i64 %5, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.al, i64 8
  %i.aq = add i64 %i.ab, -8
  %i.ar = sub i64 %i.aq, %i.ac
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %scevgep28 = getelementptr i8, ptr %scevgep, i64 %i.as
  %scevgep29 = getelementptr i8, ptr %i.aa, i64 8
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.as
  %bound0 = icmp ult ptr %i.al, %scevgep30
  %bound1 = icmp ult ptr %i.aa, %scevgep28
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.al, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.aa, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.aw ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.aa, i64 %i.aw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  %i.ax = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep31, align 8, !tbaa !258, !alias.scope !2907, !noalias !2902
  %wide.load32 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !258, !alias.scope !2907, !noalias !2902
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !258, !alias.scope !2910, !noalias !2907
  store <2 x i64> %wide.load32, ptr %i.ay, align 8, !tbaa !258, !alias.scope !2910, !noalias !2907
  %i.az = getelementptr i8, ptr %next.gep31, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep31, align 8, !tbaa !258, !alias.scope !2907, !noalias !2902
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !258, !alias.scope !2907, !noalias !2902
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !2912

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !258, !alias.scope !2905, !noalias !2902
  store i64 %i.bb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !258, !alias.scope !2902, !noalias !2905
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !258, !alias.scope !2905, !noalias !2902
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2913

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc11 ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.k
  store ptr %i.al, ptr %i.f, align 8, !tbaa !1871
  store ptr %i.be, ptr %i.k, align 8, !tbaa !1870
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bf, ptr %i.l, align 8, !tbaa !2901
  %.pr = load ptr, ptr %3, align 8, !tbaa !258    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bg = load ptr, ptr %.pr, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(81) %.pr) #30, !inline_history !259
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit14

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !258   ; 3 uses
  %.not.i12 = icmp eq ptr %i.bl, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i13: ; preds = %bb.m
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(81) %i.bl) #30, !inline_history !259
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit14: ; preds = %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i13, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %lpad.phi, %bb.m ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #30
  call void @_ZN6duckdb15GlobalSinkStateD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1871   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1870 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !258 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(81) %i.d) #30, !inline_history !2914
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2915

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1871
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb20MergeIntoGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb20MergeIntoGlobalStateE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1871 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1870 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !258 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
end_hunk_9
begin_hunk_10_@_ZN6duckdb11MatchResultD2Ev:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !42
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30, !inline_history !1420
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30, !inline_history !1420
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22MergeGlobalSourceStateC2ERNS_13ClientContextERKNS_17PhysicalMergeIntoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(226) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.479", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !638
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb22MergeGlobalSourceStateE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1751, !range !323, !noundef !264
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1757
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !1758
  %.not46 = icmp eq ptr %i.k, %i.l
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit30

bb.d:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27
  %.01545 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27 ] ; 3 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.01545)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb10unique_ptrINS_17MergeIntoOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1844
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.01545)
          to label %bb.h unwind label %.thread38  ; 2 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.i unwind label %.thread38

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1844
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !258
  store ptr null, ptr %i.u, align 8, !tbaa !258
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !258  ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !258
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(81) %i.y) #30, !inline_history !2956
  br label %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !1844 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.479") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit unwind label %.thread

_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.j
  %i.ag = load ptr, ptr %3, align 8, !tbaa !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit30

.thread:                                          ; preds = %bb.j, %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit30

bb.l:                                             ; preds = %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.f
  %.sroa.0.1 = phi ptr [ %i.ag, %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit ], [ null, %bb.f ] ; 5 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !1897 ; 6 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !2957
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = ptrtoint ptr %.sroa.0.1 to i64
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !1893
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.n, align 8, !tbaa !1897
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27

bb.n:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1900 ; 10 uses
  %i.ao = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.o, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33
          to label %.noexc24 unwind label %.loopexit42 ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %.sroa.0.1 to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !1893
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc24
  %4 = sub i64 %i.ao, %i.ap
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bb = lshr i64 %5, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ay, i64 8
  %i.bd = add i64 %i.ao, -8
  %i.be = sub i64 %i.bd, %i.ap
  %i.bf = and i64 %i.be, -8                       ; 2 uses
  %scevgep60 = getelementptr i8, ptr %scevgep, i64 %i.bf
  %scevgep61 = getelementptr i8, ptr %i.an, i64 8
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.bf
  %bound0 = icmp ult ptr %i.ay, %scevgep62
  %bound1 = icmp ult ptr %i.an, %scevgep60
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bj ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.an, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  call void @llvm.experimental.noalias.scope.decl(metadata !2961)
  %i.bk = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep63, align 8, !tbaa !1893, !alias.scope !2963, !noalias !2958
  %wide.load64 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !1893, !alias.scope !2963, !noalias !2958
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1893, !alias.scope !2966, !noalias !2963
  store <2 x i64> %wide.load64, ptr %i.bl, align 8, !tbaa !1893, !alias.scope !2966, !noalias !2963
  %i.bm = getelementptr i8, ptr %next.gep63, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep63, align 8, !tbaa !1893, !alias.scope !2963, !noalias !2958
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !1893, !alias.scope !2963, !noalias !2958
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !2968

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader66

.lr.ph.i.i.i.i.i.i.i.preheader66:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader66, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader66 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader66 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  call void @llvm.experimental.noalias.scope.decl(metadata !2961)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1893, !alias.scope !2961, !noalias !2958
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1893, !alias.scope !2958, !noalias !2961
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1893, !alias.scope !2961, !noalias !2958
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2969

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc24
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc24 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !1900
  store ptr %i.br, ptr %i.n, align 8, !tbaa !1897
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bs, ptr %i.o, align 8, !tbaa !2957
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.bt = add nuw i64 %.01545, 1                  ; 2 uses
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !1757
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !1758
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = icmp ult i64 %i.bt, %i.bz
  br i1 %i.ca, label %bb.d, label %.loopexit, !llvm.loop !2970

.thread38:                                        ; preds = %bb.h, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit30

.loopexit42:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit42
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit42 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit30, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i29

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i29: ; preds = %bb.q
  %i.cb = load ptr, ptr %.sroa.0.1, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1) #30, !inline_history !2971
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit30

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27, %.preheader, %bb.a
  ret void

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit30: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i29, %bb.q, %.thread, %.thread38, %bb.k, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.ah, %bb.k ], [ %i.ai, %.thread ], [ %lpad.phi, %bb.q ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i29 ], [ %lpad.thr_comm, %.thread38 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #30
  call void @_ZN6duckdb17GlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #30
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1900   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1897 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !1893 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #30, !inline_history !2972
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2973

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1900
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb22MergeGlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb22MergeGlobalSourceStateE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1900 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1897 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1893 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(80) %i.e) #30, !inline_history !2974
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

end_hunk_10
begin_hunk_11_@_ZN6duckdb22MergeGlobalSourceStateD2Ev:bb.a
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i4.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i4.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #30, !inline_history !2719
  br label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i, %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.ak, %i.n
  br i1 %.not.i.i.i.i.i1, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !403

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !400
  br label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.al = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i, label %_ZN6duckdb17GlobalSourceStateD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #31
  br label %_ZN6duckdb17GlobalSourceStateD2Ev.exit

_ZN6duckdb17GlobalSourceStateD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb22MergeGlobalSourceStateD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb22MergeGlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21MergeLocalSourceStateC2ERNS_16ExecutionContextERKNS_17PhysicalMergeIntoERNS_22MergeGlobalSourceStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(226) %2, ptr noundef nonnull align 8 dereferenceable(104) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.2022", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::vector.262", align 8 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb21MergeLocalSourceStateE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1751, !range !323, !noundef !264
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1757
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !1758
  %.not56 = icmp eq ptr %i.h, %i.i
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit35, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not57 = icmp eq i64 %i.s, 24
  br i1 %.not57, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.p

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit35
  %.02051 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit35 ] ; 3 uses
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_17MergeIntoOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.02051)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb10unique_ptrINS_17MergeIntoOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1844
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !1844 ; 2 uses
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.02051)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2022") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit unwind label %.thread

_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.h
  %i.af = load ptr, ptr %4, align 8, !tbaa !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit38

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit38

bb.j:                                             ; preds = %_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.d
  %.sroa.0.0 = phi ptr [ %i.af, %_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit ], [ null, %bb.d ] ; 5 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !1901 ; 6 uses
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !2975
  %.not.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1894
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.k, align 8, !tbaa !1901
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit35

bb.l:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !1902 ; 10 uses
  %i.an = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #33
          to label %.noexc32 unwind label %.loopexit ; 10 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !1894
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc32
  %6 = sub i64 %i.an, %i.ao
  %7 = add i64 %6, -8                             ; 2 uses
  %i.ba = lshr i64 %7, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ax, i64 8
  %i.bc = add i64 %i.an, -8
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %scevgep77 = getelementptr i8, ptr %scevgep, i64 %i.be
  %scevgep78 = getelementptr i8, ptr %i.am, i64 8
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.be
  %bound0 = icmp ult ptr %i.ax, %scevgep79
  %bound1 = icmp ult ptr %i.am, %scevgep77
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bi ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.am, i64 %i.bi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  %i.bj = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !1894, !alias.scope !2981, !noalias !2976
  %wide.load81 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !1894, !alias.scope !2981, !noalias !2976
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1894, !alias.scope !2984, !noalias !2981
  store <2 x i64> %wide.load81, ptr %i.bk, align 8, !tbaa !1894, !alias.scope !2984, !noalias !2981
  %i.bl = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !1894, !alias.scope !2981, !noalias !2976
  store <2 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !1894, !alias.scope !2981, !noalias !2976
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !2986

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader83

.lr.ph.i.i.i.i.i.i.i.preheader83:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader83, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader83 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1894, !alias.scope !2979, !noalias !2976
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1894, !alias.scope !2976, !noalias !2979
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1894, !alias.scope !2979, !noalias !2976
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2987

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc32
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc32 ], [ %i.bg, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !1902
  store ptr %i.bq, ptr %i.k, align 8, !tbaa !1901
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.br, ptr %i.l, align 8, !tbaa !2975
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit35: ; preds = %bb.k, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.bs = add nuw i64 %.02051, 1                  ; 2 uses
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !1757
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !1758
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ult i64 %i.bs, %i.by
  br i1 %i.bz, label %bb.b, label %._crit_edge, !llvm.loop !2988

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i36 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i37: ; preds = %bb.o
  %i.ca = load ptr, ptr %.sroa.0.0, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.0.0) #30, !inline_history !2989
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit38

._crit_edge55:                                    ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit, %._crit_edge
  %i.cd = load ptr, ptr %1, align 8, !tbaa !306, !nonnull !264, !align !265
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 2048)
          to label %bb.u unwind label %bb.x

bb.p:                                             ; preds = %.lr.ph54, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit
  %.052 = phi i64 [ 0, %.lr.ph54 ], [ %i.cj, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit ] ; 2 uses
  %i.ce = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.052)
          to label %bb.q unwind label %bb.t       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !194 ; 3 uses
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !191
  %.not.i39 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i39, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.noexc40 unwind label %bb.t

.noexc40:                                         ; preds = %bb.r
  %i.ch = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.ci, ptr %i.t, align 8, !tbaa !194
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit unwind label %bb.t

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit: ; preds = %.noexc40, %bb.s
  %i.cj = add nuw i64 %.052, 1                    ; 2 uses
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24
  %i.cq = add nsw i64 %i.cp, -1
  %i.cr = icmp ult i64 %i.cj, %i.cq
  br i1 %i.cr, label %bb.p, label %._crit_edge55, !llvm.loop !2990

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.u:                                             ; preds = %._crit_edge55
  %i.ct = load ptr, ptr %5, align 8, !tbaa !193   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !194 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %i.ct, %bb.u ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cw, %i.cv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !195

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !193
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.u
  %i.cx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ct, %bb.u ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #31
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  ret void

bb.x:                                             ; preds = %._crit_edge55
  %i.cy = landingpad { ptr, i32 }
end_hunk_11
