inline.NumInlined: 10453
inline.NumDeleted: 5814
begin_hunk_0_@_ZN6duckdb18ExpressionExecutorD2Ev:bb.a
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !180    ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #30
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb19AggregateFilterData11ApplyFilterERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = tail call noundef i64 @_ZN6duckdb18ExpressionExecutor16SelectExpressionERNS_9DataChunkERNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  tail call void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.c, i64 noundef 0)
  ret i64 %i.c
}

declare void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare noundef i64 @_ZN6duckdb18ExpressionExecutor16SelectExpressionERNS_9DataChunkERNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22AggregateFilterDataSetC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22AggregateFilterDataSet10InitializeERNS_13ClientContextERKNS_6vectorINS_15AggregateObjectELb1ESaIS4_EEERKNS3_INS_11LogicalTypeELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.199", align 8 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !183    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183  ; 3 uses
  %.not25.not29 = icmp eq ptr %i.a, %i.c
  br i1 %.not25.not29, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.022.030, i64 416 ; 2 uses
  %.not25.not = icmp eq ptr %i.d, %i.c
  br i1 %.not25.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.022.030 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.022.030, i64 408
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 416
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.l = load ptr, ptr %2, align 8, !tbaa !159
  %.not34 = icmp eq ptr %i.k, %i.l
  br i1 %.not34, label %.critedge, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.c, %bb.h
  %.02032 = phi i64 [ %i.u, %bb.h ], [ 0, %bb.c ] ; 3 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(416) ptr @_ZNK6duckdb6vectorINS_15AggregateObjectELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.02032)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  %.not21 = icmp eq ptr %i.o, null
  br i1 %.not21, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.p = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #28, !noalias !184 ; 4 uses
  invoke void @_ZN6duckdb19AggregateFilterDataC1ERNS_13ClientContextERNS_10ExpressionERKNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.p, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN6duckdb9make_uniqINS_19AggregateFilterDataEJRNS_13ClientContextERNS_10ExpressionERKNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.e, !noalias !184

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #30, !noalias !184
  br label %common.resume

_ZN6duckdb9make_uniqINS_19AggregateFilterDataEJRNS_13ClientContextERNS_10ExpressionERKNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.d
  store ptr %i.p, ptr %4, align 8, !tbaa !187, !alias.scope !184
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_19AggregateFilterDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.02032)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZN6duckdb9make_uniqINS_19AggregateFilterDataEJRNS_13ClientContextERNS_10ExpressionERKNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187  ; 3 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !187
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb19AggregateFilterDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19AggregateFilterDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb19AggregateFilterDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZN6duckdb19AggregateFilterDataD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.s) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #30
  br label %_ZNSt10unique_ptrIN6duckdb19AggregateFilterDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19AggregateFilterDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb19AggregateFilterDataEEclEPS1_.exit.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb9make_uniqINS_19AggregateFilterDataEJRNS_13ClientContextERNS_10ExpressionERKNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19AggregateFilterDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19AggregateFilterDataESt14default_deleteIS1_EED2Ev.exit, %.lr.ph33
  %i.u = add nuw i64 %.02032, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.w = load ptr, ptr %2, align 8, !tbaa !159
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 416
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph33, label %.critedge, !llvm.loop !189

.critedge:                                        ; preds = %bb.b, %bb.h, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !193    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !195
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !190
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !195
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !187, !alias.scope !202, !noalias !197
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !187, !alias.scope !202, !noalias !197
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !187, !alias.scope !205, !noalias !202
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !187, !alias.scope !205, !noalias !202
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !187, !alias.scope !202, !noalias !197
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !187, !alias.scope !202, !noalias !197
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !187, !alias.scope !200, !noalias !197
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !187, !alias.scope !197, !noalias !200
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !187, !alias.scope !200, !noalias !197
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !210

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !193
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !190
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !194
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !187 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb19AggregateFilterDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb19AggregateFilterDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb19AggregateFilterDataD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.au) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb19AggregateFilterDataEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !211

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !190
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(416) ptr @_ZNK6duckdb6vectorINS_15AggregateObjectELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.e = load ptr, ptr %0, align 8, !tbaa !159    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 416                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !212
  store i64 %i.i, ptr %i.b, align 8, !tbaa !212
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_15AggregateObjectELb1ESaIS1_EE3getILb1EEERKS1_m.exit, label %bb.b, !prof !213

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_15AggregateObjectELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [416 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_19AggregateFilterDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN6duckdb31DistinctAggregateCollectionInfo19CreateTableIndexMapEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predINS3_21FindMatchingAggregateEEEET_SF_SF_T0_St26random_access_iterator_tag(ptr %.sroa.047.093, ptr %.sroa.12.092, ptr nonnull %i.o)
          to label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESt6vectorIS5_SaIS5_EEEENS3_21FindMatchingAggregateEET_SC_SC_T0_.exit unwind label %bb.l ; 2 uses

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESt6vectorIS5_SaIS5_EEEENS3_21FindMatchingAggregateEET_SC_SC_T0_.exit: ; preds = %bb.f
  %.not62 = icmp eq ptr %i.q, %.sroa.12.092
  %i.r = ptrtoint ptr %.sroa.047.093 to i64       ; 4 uses
  br i1 %.not62, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESt6vectorIS5_SaIS5_EEEENS3_21FindMatchingAggregateEET_SC_SC_T0_.exit
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.s, %i.r
  %i.u = ashr exact i64 %i.t, 3
  %i.v = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.u)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.m

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.g
  %i.w = load i64, ptr %.sroa.044.090, align 8, !tbaa !212 ; 5 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !225  ; 2 uses
  %i.y = urem i64 %i.w, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !243 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !212
  %i.af = icmp eq i64 %i.w, %i.ae
  br i1 %i.af, label %.loopexit63, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ag = icmp eq i64 %i.w, %i.aj
  br i1 %i.ag, label %.loopexit63, label %.lr.ph.i.i.i.i, !llvm.loop !244

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.020.i.i.i.i = phi ptr [ %i.ah, %bb.i ], [ %i.ac, %bb.h ]
  %i.ah = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !243 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !212 ; 2 uses
  %i.ak = urem i64 %i.aj, %i.x
  %.not19.i.i.i.i = icmp eq i64 %i.ak, %i.y
  br i1 %.not19.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !244

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.j
  br label %.loopexit.i.i, !llvm.loop !244

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.al = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc unwind label %bb.m     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.al, align 8, !tbaa !243
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.w, ptr %i.am, align 8, !tbaa !245
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %i.an, align 8, !tbaa !247
  %i.ao = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.y, i64 noundef %i.w, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %.loopexit63 unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #30
  br label %.body

.loopexit63:                                      ; preds = %bb.i, %.noexc, %bb.h
  %.pn.i.i = phi ptr [ %i.ao, %.noexc ], [ %i.ac, %bb.h ], [ %i.ah, %bb.i ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %i.v, ptr %.1.i.i, align 8, !tbaa !212
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %.loopexit.i.i, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESt6vectorIS5_SaIS5_EEEENS3_21FindMatchingAggregateEET_SC_SC_T0_.exit
  %i.at = ptrtoint ptr %.sroa.12.092 to i64       ; 2 uses
  %i.au = sub i64 %i.at, %i.r                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 3                 ; 4 uses
  %i.aw = load i64, ptr %.sroa.044.090, align 8, !tbaa !212 ; 5 uses
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !225 ; 2 uses
  %i.ay = urem i64 %i.aw, %i.ax                   ; 3 uses
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i19, label %.loopexit.i.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !243 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !212
  %i.bf = icmp eq i64 %i.aw, %i.be
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i.i.i.i20

bb.p:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.aw, %i.bj
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i20, !llvm.loop !244

.lr.ph.i.i.i.i20:                                 ; preds = %bb.o, %bb.p
  %.020.i.i.i.i21 = phi ptr [ %i.bh, %bb.p ], [ %i.bc, %bb.o ]
  %i.bh = load ptr, ptr %.020.i.i.i.i21, align 8, !tbaa !243 ; 4 uses
  %.not18.i.i.i.i22 = icmp eq ptr %i.bh, null
  br i1 %.not18.i.i.i.i22, label %.loopexit.i.i25, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !212 ; 2 uses
  %i.bk = urem i64 %i.bj, %i.ax
  %.not19.i.i.i.i23 = icmp eq i64 %i.bk, %i.ay
  br i1 %.not19.i.i.i.i23, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i24, !llvm.loop !244

..loopexit_crit_edge21.i.i.i.i24:                 ; preds = %bb.q
  br label %.loopexit.i.i25, !llvm.loop !244

.loopexit.i.i25:                                  ; preds = %.lr.ph.i.i.i.i20, %..loopexit_crit_edge21.i.i.i.i24, %bb.n
  %i.bl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc29 unwind label %bb.v   ; 5 uses

.noexc29:                                         ; preds = %.loopexit.i.i25
  store ptr null, ptr %i.bl, align 8, !tbaa !243
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.aw, ptr %i.bm, align 8, !tbaa !245
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %i.bn, align 8, !tbaa !247
  %i.bo = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.ay, i64 noundef %i.aw, ptr noundef nonnull %i.bl, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i26

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i26: ; preds = %.noexc29
  %i.bp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bl) #30
  br label %.body

.loopexit:                                        ; preds = %bb.p, %.noexc29, %bb.o
  %.pn.i.i27 = phi ptr [ %i.bo, %.noexc29 ], [ %i.bc, %bb.o ], [ %i.bh, %bb.p ]
  %.1.i.i28 = getelementptr inbounds nuw i8, ptr %.pn.i.i27, i64 16
  store i64 %i.av, ptr %.1.i.i28, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %.sroa.12.092, %.sroa.20.091
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit
  store i64 %i.p, ptr %.sroa.12.092, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.12.092, i64 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE9push_backEOS3_.exit

bb.s:                                             ; preds = %.loopexit
  %i.br = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.br, label %bb.t, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.av
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i33 = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i33)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %.noexc35 unwind label %.loopexit64 ; 8 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.au
  store i64 %i.p, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.047.093, %.sroa.12.092
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc35
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %1 = add i64 %i.at, -8
  %2 = sub i64 %1, %i.r                           ; 2 uses
  %i.ca = lshr i64 %2, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  %i.cc = sub i64 %i.bz, %i.r
  %diff.check = icmp ult i64 %i.cc, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cd = shl i64 %n.vec, 3                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bx, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.047.093, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cg ; 2 uses
  %next.gep155 = getelementptr i8, ptr %.sroa.047.093, i64 %i.cg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.ch = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep155, align 8, !alias.scope !251, !noalias !248
  %wide.load156 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !251, !noalias !248
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !248, !noalias !251
  store <2 x i64> %wide.load156, ptr %i.ci, align 8, !alias.scope !248, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader158

.lr.ph.i.i.i.i.i.i.i.preheader158:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.047.093, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader158, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader158 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader158 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !251, !noalias !248
  store i64 %i.ck, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !248, !noalias !251
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %.sroa.12.092
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !254

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc35
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.noexc35 ], [ %i.ce, %middle.block ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %.sroa.047.093, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.047.093) #30
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.r, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %.loopexit63
  %.sroa.20.1 = phi ptr [ %.sroa.20.091, %.loopexit63 ], [ %i.co, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.20.091, %bb.r ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.092, %.loopexit63 ], [ %i.cn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.bq, %bb.r ] ; 2 uses
  %.sroa.047.1 = phi ptr [ %.sroa.047.093, %.loopexit63 ], [ %i.bx, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.047.093, %bb.r ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.044.090, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.c
  br i1 %.not, label %._crit_edge, label %bb.c

bb.v:                                             ; preds = %.loopexit.i.i25
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit64:                                      ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit64, %.loopexit.split-lp, %bb.l, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.m, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i26, %bb.v, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.ar, %bb.l ], [ %i.bp, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i26 ], [ %i.ap, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.as, %bb.m ], [ %i.cq, %bb.v ], [ %lpad.loopexit, %.loopexit64 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i36 = icmp eq ptr %.sroa.047.093, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EED2Ev.exit37, label %bb.w

bb.w:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.047.093) #30
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EED2Ev.exit37

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundAggregateExpressionEESaIS3_EED2Ev.exit37: ; preds = %.body, %bb.w
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !212
  store i64 %i.i, ptr %i.b, align 8, !tbaa !212
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit, label %bb.b, !prof !213

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
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

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN6duckdb22DistinctAggregateStateC2ERKNS_21DistinctAggregateDataERNS_13ClientContextE:bb.a
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit57

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit57: ; preds = %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i56, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ah ], [ %i.cw, %bb.ai ], [ %i.cw, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body

bb.aj:                                            ; preds = %bb.ad, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.lr.ph90:                                         ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %.sroa.065.088 = phi ptr [ %i.dg, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ], [ %i.cp, %bb.ae ] ; 3 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !293 ; 3 uses
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !294
  %.not.i58 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i58, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph90
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.088)
          to label %.noexc59 unwind label %bb.am

.noexc59:                                         ; preds = %bb.ak
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !293
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.df, ptr %i.v, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.al:                                            ; preds = %.lr.ph90
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.088)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.am

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc59, %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.065.088, i64 24 ; 2 uses
  %.not75 = icmp eq ptr %i.dg, %i.cr
  br i1 %.not75, label %._crit_edge91, label %.lr.ph90

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.an:                                            ; preds = %.noexc52
  store ptr %i.cs, ptr %6, align 8, !tbaa !295, !alias.scope !290
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bx)
          to label %bb.ao unwind label %bb.av     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !295 ; 3 uses
  store ptr %i.cs, ptr %i.di, align 8, !tbaa !295
  %.not.i.i.i.i.i61 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i61, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ao
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.dj) #27
  call void @_ZdlPv(ptr noundef nonnull %i.dj) #30
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bx)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.dl, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 2048)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.dm = load ptr, ptr %5, align 8, !tbaa !297   ; 3 uses
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !293 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dm, %i.dn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i ], [ %i.dm, %bb.ar ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #27
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.do, %i.dn
  br i1 %.not.i.i.i63, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !298

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !297
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ar
  %i.dp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.dm, %bb.ar ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #30
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.x, %._crit_edge
  %i.dq = add nuw i64 %storemerge92, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.t
  br i1 %exitcond.not, label %._crit_edge95, label %bb.e, !llvm.loop !299

bb.au:                                            ; preds = %._crit_edge91
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body53

bb.av:                                            ; preds = %bb.an
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %.body53

.body53:                                          ; preds = %bb.au, %bb.af, %bb.av
  %.pn39 = phi { ptr, i32 } [ %i.ds, %bb.av ], [ %i.dr, %bb.au ], [ %i.ct, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aq, %bb.ap, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aj, %bb.am, %bb.aw, %.body53
  %.pn41.pn = phi { ptr, i32 } [ %.pn39, %.body53 ], [ %i.dt, %bb.aw ], [ %i.dh, %bb.am ], [ %i.db, %bb.aj ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body

.body:                                            ; preds = %.loopexit79, %.loopexit.split-lp, %bb.i, %bb.ag, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit57, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.l, %bb.o, %bb.d
  %.pn46.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.cu, %bb.ag ], [ %i.al, %bb.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn41.pn, %bb.ax ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit57 ], [ %i.ay, %bb.o ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.l ], [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #27
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) #27
  resume { ptr, i32 } %.pn46.pn
}

declare void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !300  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !303    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !305
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !305
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !286, !alias.scope !312, !noalias !307
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !286, !alias.scope !312, !noalias !307
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !286, !alias.scope !315, !noalias !312
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !286, !alias.scope !315, !noalias !312
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !286, !alias.scope !312, !noalias !307
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !286, !alias.scope !312, !noalias !307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !286, !alias.scope !310, !noalias !307
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !286, !alias.scope !307, !noalias !310
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !286, !alias.scope !310, !noalias !307
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !318

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !303
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !300
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !304
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !286 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(81) %i.au) #27, !inline_history !319
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !320

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !324    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !325
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !326
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !321
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !326
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !295, !alias.scope !333, !noalias !328
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !295, !alias.scope !333, !noalias !328
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !295, !alias.scope !336, !noalias !333
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !295, !alias.scope !336, !noalias !333
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !295, !alias.scope !333, !noalias !328
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !295, !alias.scope !333, !noalias !328
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !295, !alias.scope !331, !noalias !328
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !295, !alias.scope !328, !noalias !331
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !295, !alias.scope !331, !noalias !328
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !339

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !324
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !321
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !325
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !295 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.au) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !340

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !321
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

declare void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !341
  %i.e = load ptr, ptr %0, align 8, !tbaa !342    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_2
begin_hunk_3_@_ZN6duckdb21DistinctAggregateDataC2ERKNS_31DistinctAggregateCollectionInfoERKSt3setImSt4lessImESaImEEPKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteISD_ELb1EEELb1ESaISG_EEENS_21TupleDataValidityTypeE:bb.a
bb.bb:                                            ; preds = %bb.at
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb25RadixPartitionedHashTableESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  br label %.body

.body:                                            ; preds = %bb.ba, %bb.as, %bb.bb
  %.pn54 = phi { ptr, i32 } [ %i.fc, %bb.bb ], [ %i.fb, %bb.ba ], [ %i.et, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bk

.lr.ph146:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedHashTableESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %.sroa.0103.0145 = phi ptr [ %i.ft, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ], [ %.pre167, %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedHashTableESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.fd = load ptr, ptr %.sroa.0103.0145, align 8, !tbaa !122 ; 2 uses
  %.not.i96 = icmp eq ptr %i.fd, null
  br i1 %.not.i96, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !33

.noexc.i:                                         ; preds = %.lr.ph146
  %i.fe = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ff, ptr %5, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 49, ptr %i.a, align 8, !tbaa !212
  %i.fg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc102 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc102:                                        ; preds = %.noexc.i
  store ptr %i.fg, ptr %5, align 8, !tbaa !153
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !212 ; 3 uses
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fg, ptr noundef nonnull align 1 dereferenceable(49) @.str.19, i64 49, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !281
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  store i8 0, ptr %i.fj, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.noexc102
  invoke void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.bf unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc102
  %.0.i.i = phi i1 [ false, %bb.bc ], [ true, %.noexc102 ] ; 2 uses
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fm = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ff
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.fm) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.0.i.i, label %bb.be, label %.body97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.0.i.i, label %bb.be, label %.body97

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.fe) #27
  br label %.body97

bb.bf:                                            ; preds = %bb.bc
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph146
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 56 ; 2 uses
  %i.fp = load ptr, ptr %i.aj, align 8, !tbaa !293 ; 3 uses
  %i.fq = load ptr, ptr %i.ak, align 8, !tbaa !294
  %.not.i99 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i99, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %.noexc100 unwind label %bb.bi

.noexc100:                                        ; preds = %bb.bg
  %i.fr = load ptr, ptr %i.aj, align 8, !tbaa !293
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store ptr %i.fs, ptr %i.aj, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.bh:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.bi

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc100, %bb.bh
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0103.0145, i64 8 ; 2 uses
  %.not119 = icmp eq ptr %i.ft, %.pre168
  br i1 %.not119, label %._crit_edge147, label %.lr.ph146

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body97

.body97:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.be, %bb.bi
  %eh.lpad-body98 = phi { ptr, i32 } [ %i.fu, %bb.bi ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.be ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bk

bb.bj:                                            ; preds = %bb.r, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0111.0149, i64 8 ; 2 uses
  %.not116 = icmp eq ptr %i.fv, %i.aa
  br i1 %.not116, label %._crit_edge151, label %bb.i

bb.bk:                                            ; preds = %.loopexit123, %.loopexit.split-lp, %bb.s, %bb.v, %bb.ab, %.body97, %.body, %bb.az, %bb.ay, %bb.aj, %bb.h
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.bo, %bb.s ], [ %.pn, %bb.ay ], [ %i.cp, %bb.ab ], [ %i.bv, %bb.v ], [ %i.ei, %bb.aj ], [ %eh.lpad-body98, %.body97 ], [ %.pn54, %.body ], [ %i.fa, %bb.az ], [ %lpad.loopexit, %.loopexit123 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #27
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  resume { ptr, i32 } %.pn58.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !344    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !369
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !370
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !343
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !370
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !345, !alias.scope !377, !noalias !372
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !345, !alias.scope !377, !noalias !372
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !345, !alias.scope !380, !noalias !377
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !345, !alias.scope !380, !noalias !377
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !345, !alias.scope !377, !noalias !372
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !345, !alias.scope !377, !noalias !372
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !345, !alias.scope !375, !noalias !372
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !345, !alias.scope !372, !noalias !375
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !345, !alias.scope !375, !noalias !372
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !383

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !344
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !343
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !369
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !345 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb20GroupedAggregateDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20GroupedAggregateDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb20GroupedAggregateDataD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.au) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20GroupedAggregateDataEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !384

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !343
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !342    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !385
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !386
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !341
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !386
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !284, !alias.scope !393, !noalias !388
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !284, !alias.scope !393, !noalias !388
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !284, !alias.scope !396, !noalias !393
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !284, !alias.scope !396, !noalias !393
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !284, !alias.scope !393, !noalias !388
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !284, !alias.scope !393, !noalias !388
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !284, !alias.scope !391, !noalias !388
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !284, !alias.scope !388, !noalias !391
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !284, !alias.scope !391, !noalias !388
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !399

_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !342
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !341
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !385
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !284 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedHashTableEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb25RadixPartitionedHashTableEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb25RadixPartitionedHashTableD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.au) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedHashTableEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !400

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !341
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !341
  %i.e = load ptr, ptr %0, align 8, !tbaa !342    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !212
  store i64 %i.i, ptr %i.b, align 8, !tbaa !212
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !213

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_3
begin_hunk_4_@_ZN6duckdb6vectorINS_10unique_ptrINS_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb20GroupedAggregateDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !345    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb20GroupedAggregateDataEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb20GroupedAggregateDataEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb20GroupedAggregateDataD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.a) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb20GroupedAggregateDataEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20GroupedAggregateData18InitializeDistinctERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEEPKNS_6vectorIS5_Lb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.28", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.a) ; 6 uses
  tail call void @_ZN6duckdb20GroupedAggregateData24InitializeDistinctGroupsEPKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !401
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !293  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !294
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !293
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.e, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !78
  %.not40 = icmp eq ptr %i.n, %i.o
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  br label %bb.d

._crit_edge:                                      ; preds = %bb.n, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !413
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.o, label %bb.t

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %.02139 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.n ] ; 2 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %.02139) ; 3 uses
  %i.ab = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !293 ; 3 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !294
  %.not.i25 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit26

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit26

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit26: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ah = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.28") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.ah)
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !75  ; 6 uses
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !414
  %.not.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit26
  %i.an = load i64, ptr %3, align 8, !tbaa !122
  store i64 %i.an, ptr %i.al, align 8, !tbaa !122
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !75
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit26
  %i.ap = load ptr, ptr %0, align 8, !tbaa !78    ; 10 uses
  %i.aq = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #28
          to label %.noexc27 unwind label %.loopexit ; 10 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  %i.bc = load i64, ptr %3, align 8, !tbaa !122
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !122
  store ptr null, ptr %3, align 8, !tbaa !122
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.al
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc27
  %6 = add i64 %i.aq, -8
  %7 = sub i64 %6, %i.ar                          ; 2 uses
  %i.bd = lshr i64 %7, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ba, i64 8
  %i.bf = add i64 %i.aq, -8
  %i.bg = sub i64 %i.bf, %i.ar
  %i.bh = and i64 %i.bg, -8                       ; 2 uses
  %scevgep53 = getelementptr i8, ptr %scevgep, i64 %i.bh
  %scevgep54 = getelementptr i8, ptr %i.ap, i64 8
  %scevgep55 = getelementptr i8, ptr %scevgep54, i64 %i.bh
  %bound0 = icmp ult ptr %i.ba, %scevgep55
  %bound1 = icmp ult ptr %i.ap, %scevgep53
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ba, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ap, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.bl ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ap, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.bm = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep56, align 8, !tbaa !122, !alias.scope !420, !noalias !415
  %wide.load57 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !122, !alias.scope !420, !noalias !415
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !122, !alias.scope !423, !noalias !420
  store <2 x i64> %wide.load57, ptr %i.bn, align 8, !tbaa !122, !alias.scope !423, !noalias !420
  %i.bo = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !122, !alias.scope !420, !noalias !415
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !122, !alias.scope !420, !noalias !415
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader59

.lr.ph.i.i.i.i.i.i.i.preheader59:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader59, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader59 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader59 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !418, !noalias !415
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !415, !noalias !418
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !418, !noalias !415
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !426

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc27
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.noexc27 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.i
  store ptr %i.ba, ptr %0, align 8, !tbaa !78
  store ptr %i.bt, ptr %i.s, align 8, !tbaa !75
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bu, ptr %i.t, align 8, !tbaa !414
  %.pr = load ptr, ptr %3, align 8, !tbaa !122    ; 3 uses
  %.not.i28 = icmp eq ptr %.pr, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bv = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #27, !inline_history !427
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.by = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !293 ; 3 uses
  %i.cb = load ptr, ptr %i.v, align 8, !tbaa !294
  %.not.i29 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  %i.cc = load ptr, ptr %i.u, align 8, !tbaa !293
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cd, ptr %i.u, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit30

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit30

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit30: ; preds = %bb.j, %bb.k
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !122
  %.not38 = icmp eq ptr %i.ce, null
  br i1 %.not38, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit30
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !401
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !401
  br label %bb.n

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ch = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %.not.i31 = icmp eq ptr %i.ch, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit33, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i32

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i32: ; preds = %bb.m
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(88) %i.ch) #27, !inline_history !427
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit33

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit33: ; preds = %bb.m, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.u

bb.n:                                             ; preds = %bb.l, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit30
  %i.cl = add nuw i64 %.02139, 1                  ; 2 uses
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  %i.cs = icmp ult i64 %i.cl, %i.cr
  br i1 %i.cs, label %bb.d, label %._crit_edge, !llvm.loop !428

bb.o:                                             ; preds = %._crit_edge
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.v unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cx = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.cx) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.s, label %bb.u

end_hunk_4
begin_hunk_5_@_ZN6duckdb31HashAggregateGroupingLocalStateC2ERKNS_21PhysicalHashAggregateERKNS_25HashAggregateGroupingDataERNS_16ExecutionContextE:bb.a
  br i1 %.not.i.i.i.i.i37, label %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit39, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i.i.i.i38

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i.i.i.i38: ; preds = %bb.w
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bl) #27, !inline_history !460
  br label %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit39

_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit39: ; preds = %bb.w, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i.i.i.i38
  %i.bp = load ptr, ptr %5, align 8, !tbaa !458   ; 3 uses
  %.not.i40 = icmp eq ptr %i.bp, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i41: ; preds = %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit39
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bp) #27, !inline_history !461
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit42: ; preds = %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit39, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit42
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.049.058, i64 8 ; 2 uses
  %.not53 = icmp eq ptr %i.bt, %i.ad
  br i1 %.not53, label %.loopexit54, label %bb.m

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit45

bb.z:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !458   ; 3 uses
  %.not.i43 = icmp eq ptr %i.bw, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i44: ; preds = %bb.z
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bw) #27, !inline_history !461
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit45

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i44, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.bv, %bb.z ], [ %i.bv, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body

.loopexit54:                                      ; preds = %bb.x, %bb.i, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit
  ret void

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit45, %bb.s, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.r, %bb.j, %bb.l, %bb.k, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.bh, %bb.s ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit45 ], [ %i.bg, %bb.r ], [ %i.bc, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  %i.ca = load ptr, ptr %0, align 8, !tbaa !458   ; 3 uses
  %.not.i46 = icmp eq ptr %i.ca, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit48, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i47

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i47: ; preds = %.body
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ca) #27, !inline_history !461
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit48

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit48: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i47
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK6duckdb25RadixPartitionedHashTable17GetLocalSinkStateERNS_16ExecutionContextE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.356") align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_31DistinctAggregateCollectionInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_31DistinctAggregateCollectionInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_31DistinctAggregateCollectionInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !465    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !466
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !467
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !462
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !467
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !458, !alias.scope !474, !noalias !469
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !458, !alias.scope !474, !noalias !469
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !458, !alias.scope !477, !noalias !474
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !458, !alias.scope !477, !noalias !474
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !458, !alias.scope !474, !noalias !469
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !458, !alias.scope !474, !noalias !469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !458, !alias.scope !472, !noalias !469
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !458, !alias.scope !469, !noalias !472
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !458, !alias.scope !472, !noalias !469
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !480

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !465
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !462
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !466
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !458 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.au) #27, !inline_history !481
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !482

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !462
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !284    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14LocalSinkStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462
  %i.e = load ptr, ptr %0, align 8, !tbaa !465    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_5
begin_hunk_6_@_ZN6duckdb20GroupedAggregateData17InitializeGroupbyENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_NS1_INS1_ImLb0ESaImEEELb1ESaISA_EEE:bb.a

bb.q:                                             ; preds = %.noexc58
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.t unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %.noexc58
  %.0.i.i = phi i1 [ false, %bb.q ], [ true, %.noexc58 ] ; 2 uses
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cc = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bv
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.cc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0.i.i, label %bb.s, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0.i.i, label %bb.s, label %.body

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bu) #27
  br label %.body

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 56 ; 2 uses
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !293 ; 3 uses
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !294
  %.not.i35 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i35, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.noexc36 unwind label %bb.w

.noexc36:                                         ; preds = %bb.u
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !293
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.ci, ptr %i.x, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit38

bb.v:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit38 unwind label %bb.w

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit38: ; preds = %.noexc36, %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.063.091, i64 8 ; 2 uses
  %.not76 = icmp eq ptr %i.cj, %i.bq
  br i1 %.not76, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %._crit_edge
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !401
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !401
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56 ; 2 uses
  %i.cp = load ptr, ptr %i.aa, align 8, !tbaa !293 ; 3 uses
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !294
  %.not.i39 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.noexc40 unwind label %.loopexit

.noexc40:                                         ; preds = %bb.z
  %i.cr = load ptr, ptr %i.aa, align 8, !tbaa !293
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %i.cs, ptr %i.aa, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit42

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit42 unwind label %.loopexit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit42: ; preds = %.noexc40, %bb.aa, %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 352
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !413
  %.not78 = icmp eq ptr %i.cu, null
  br i1 %.not78, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit42
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ar unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ab
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.024 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cz = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.cz) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.024, label %bb.af, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.024, label %bb.af, label %.body

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn74 = phi { ptr, i32 } [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.cv) #27
  br label %.body

bb.ag:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit42
  %i.dc = load ptr, ptr %i.ad, align 8, !tbaa !75 ; 6 uses
  %i.dd = load ptr, ptr %i.ae, align 8, !tbaa !414
  %.not.i.i43 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i.i43, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = load i64, ptr %.sroa.068.093, align 8, !tbaa !122
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !122
  store ptr null, ptr %.sroa.068.093, align 8, !tbaa !122
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.df, ptr %i.ad, align 8, !tbaa !75
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dg = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 10 uses
  %i.dh = ptrtoint ptr %i.dc to i64               ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.aj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i44, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #28
          to label %.noexc47 unwind label %.loopexit ; 10 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  %i.dt = load i64, ptr %.sroa.068.093, align 8, !tbaa !122
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !122
  store ptr null, ptr %.sroa.068.093, align 8, !tbaa !122
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.dc
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc47
  %9 = add i64 %i.dh, -8
  %10 = sub i64 %9, %i.di                         ; 2 uses
  %i.du = lshr i64 %10, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader167, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dr, i64 8
  %i.dw = add i64 %i.dh, -8
  %i.dx = sub i64 %i.dw, %i.di
  %i.dy = and i64 %i.dx, -8                       ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep, i64 %i.dy
  %scevgep162 = getelementptr i8, ptr %i.dg, i64 8
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.dy
  %bound0 = icmp ult ptr %i.dr, %scevgep163
  %bound1 = icmp ult ptr %i.dg, %scevgep161
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dv, 4611686018427387900     ; 3 uses
  %i.dz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dr, i64 %i.dz  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dg, i64 %i.dz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ec = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dr, i64 %i.ec ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.dg, i64 %i.ec ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.ed = getelementptr i8, ptr %next.gep164, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep164, align 8, !tbaa !122, !alias.scope !529, !noalias !524
  %wide.load165 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !122, !alias.scope !529, !noalias !524
  %i.ee = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !122, !alias.scope !532, !noalias !529
  store <2 x i64> %wide.load165, ptr %i.ee, align 8, !tbaa !122, !alias.scope !532, !noalias !529
  %i.ef = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep164, align 8, !tbaa !122, !alias.scope !529, !noalias !524
  store <2 x ptr> splat (ptr null), ptr %i.ef, align 8, !tbaa !122, !alias.scope !529, !noalias !524
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader167

.lr.ph.i.i.i.i.i.i.i.preheader167:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dr, %vector.memcheck ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ea, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader167, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader167 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader167 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.eh = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !527, !noalias !524
  store i64 %i.eh, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !524, !noalias !527
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !527, !noalias !524
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.dc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !535

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc47
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.noexc47 ], [ %i.ea, %middle.block ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dr, ptr %i.ac, align 8, !tbaa !78
  store ptr %i.ek, ptr %i.ad, align 8, !tbaa !75
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.el, ptr %i.ae, align 8, !tbaa !414
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.068.093, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.em, %i.q
  br i1 %.not, label %._crit_edge96, label %bb.g

._crit_edge101:                                   ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit57
  %.pre = load ptr, ptr %6, align 8, !tbaa !297   ; 3 uses
  %.pre109 = load ptr, ptr %i.ag, align 8, !tbaa !293 ; 2 uses
  %.not4.i.i.i48 = icmp eq ptr %.pre, %.pre109
  br i1 %.not4.i.i.i48, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %._crit_edge101, %.lr.ph.i.i.i49
  %.05.i.i.i50 = phi ptr [ %i.en, %.lr.ph.i.i.i49 ], [ %.pre, %._crit_edge101 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i50) #27
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i50, i64 24 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.en, %.pre109
  br i1 %.not.i.i.i51, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i49, !llvm.loop !298

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i49
  %.pr.i52 = load ptr, ptr %6, align 8, !tbaa !297
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %._crit_edge96, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge101
  %i.eo = phi ptr [ %.pr.i52, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge101 ], [ %i.af, %._crit_edge96 ] ; 2 uses
  %.not.i.i1.i53 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i1.i53, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.eo) #30
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.am:                                            ; preds = %.lr.ph100, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit57
  %.sroa.059.098 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.et, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit57 ] ; 3 uses
  %i.ep = load ptr, ptr %i.ai, align 8, !tbaa !293 ; 3 uses
  %i.eq = load ptr, ptr %i.aj, align 8, !tbaa !294
  %.not.i54 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i54, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.059.098)
          to label %.noexc55 unwind label %bb.ap

.noexc55:                                         ; preds = %bb.an
  %i.er = load ptr, ptr %i.ai, align 8, !tbaa !293
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr %i.es, ptr %i.ai, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit57

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.059.098)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit57 unwind label %bb.ap

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit57: ; preds = %.noexc55, %bb.ao
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.059.098, i64 24 ; 2 uses
  %.not75 = icmp eq ptr %i.et, %i.ah
  br i1 %.not75, label %._crit_edge101, label %bb.am

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit79, %.loopexit.split-lp80, %.loopexit, %.loopexit.split-lp, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.s, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ap, %bb.f
  %.pn27.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.eu, %bb.ap ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn74, %bb.af ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ck, %bb.w ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.s ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aq

bb.aq:                                            ; preds = %.body, %bb.e
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %.body ], [ %i.al, %bb.e ]
  resume { ptr, i32 } %.pn27.pn.pn

bb.ar:                                            ; preds = %bb.ad
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !212
  store i64 %i.i, ptr %i.b, align 8, !tbaa !212
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !213

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

end_hunk_6
begin_hunk_7_@_ZN6duckdb34HashAggregateDistinctFinalizeEvent19CreateGlobalSourcesEv:bb.a
_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %._crit_edge
  %i.cd = load <2 x ptr>, ptr %9, align 16, !tbaa !767
  store <2 x ptr> %i.cd, ptr %i.cb, align 8, !tbaa !767
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cf = load ptr, ptr %i.ba, align 16, !tbaa !769
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !769
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cg, ptr %i.bd, align 8, !tbaa !761
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit unwind label %.loopexit176

.loopexit176:                                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.h
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp177:                            ; preds = %bb.f
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %i.ch = phi ptr [ %i.bp, %.lr.ph ], [ %i.jt, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ]
  %.1223 = phi i64 [ %.0225, %.lr.ph ], [ %.2, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %storemerge222 = phi i64 [ 0, %.lr.ph ], [ %i.jr, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %storemerge222
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !122 ; 3 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %.noexc.i133, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !33

.noexc.i133:                                      ; preds = %bb.i
  %i.ck = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.cl, ptr %8, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i64 49, ptr %i.f, align 8, !tbaa !212
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc134 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc134:                                        ; preds = %.noexc.i133
  store ptr %i.cm, ptr %8, align 8, !tbaa !153
  %i.cn = load i64, ptr %i.f, align 8, !tbaa !212 ; 3 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cm, ptr noundef nonnull align 1 dereferenceable(49) @.str.19, i64 49, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !281
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc134
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.m unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i133
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.noexc134
  %.0.i.i = phi i1 [ false, %bb.j ], [ true, %.noexc134 ] ; 2 uses
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cl
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.cs) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %.0.i.i, label %bb.l, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %.0.i.i, label %bb.l, label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ck) #27
  br label %.body

bb.m:                                             ; preds = %bb.j
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !255
  %.not.i47 = icmp eq i8 %i.cv, 25
  br i1 %.not.i47, label %_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.cw = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cz = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.cz) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.0.i, label %bb.r, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.0.i, label %bb.r, label %.body

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cw) #27
  br label %.body

bb.s:                                             ; preds = %bb.p
  unreachable

_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 488
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !80
  %i.de = icmp eq i8 %i.dd, 2
  br i1 %i.de, label %bb.y, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v.exit
  %i.df = load ptr, ptr %i.bb, align 8, !tbaa !773 ; 6 uses
  %i.dg = load ptr, ptr %i.ba, align 16, !tbaa !769
  %.not.i.i50 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i50, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.df, align 8, !tbaa !774
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dh, ptr %i.bb, align 8, !tbaa !773
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %9, align 16, !tbaa !772  ; 10 uses
  %i.dj = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp

.noexc51:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.dn = ashr exact i64 %i.dl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975)
  %i.dr = select i1 %i.dp, i64 1152921504606846975, i64 %i.dq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #28
          to label %.noexc52 unwind label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit56.loopexit ; 10 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl
  store i64 0, ptr %i.du, align 8, !tbaa !774
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.di, %i.df
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc52
  %11 = add i64 %i.dj, -8
  %12 = sub i64 %11, %i.dk                        ; 2 uses
  %i.dv = lshr i64 %12, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %12, 56
  br i1 %min.iters.check317, label %.lr.ph.i.i.i.i.i.i.i.preheader335, label %vector.memcheck308

vector.memcheck308:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep309 = getelementptr i8, ptr %i.dt, i64 8
  %i.dx = add i64 %i.dj, -8
  %i.dy = sub i64 %i.dx, %i.dk
  %i.dz = and i64 %i.dy, -8                       ; 2 uses
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.dz
  %scevgep311 = getelementptr i8, ptr %i.di, i64 8
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.dz
  %bound0313 = icmp ult ptr %i.dt, %scevgep312
  %bound1314 = icmp ult ptr %i.di, %scevgep310
  %found.conflict315 = and i1 %bound0313, %bound1314
  br i1 %found.conflict315, label %.lr.ph.i.i.i.i.i.i.i.preheader335, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck308
  %n.vec320 = and i64 %i.dw, 4611686018427387900  ; 3 uses
  %i.ea = shl i64 %n.vec320, 3                    ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dt, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.di, i64 %i.ea
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph318
  %index322 = phi i64 [ 0, %vector.ph318 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.ed = shl i64 %index322, 3                    ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.dt, i64 %i.ed ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.di, i64 %i.ed ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.ee = getelementptr i8, ptr %next.gep324, i64 16
  %wide.load325 = load <2 x i64>, ptr %next.gep324, align 8, !tbaa !774, !alias.scope !780, !noalias !775
  %wide.load326 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !774, !alias.scope !780, !noalias !775
  %i.ef = getelementptr i8, ptr %next.gep323, i64 16
  store <2 x i64> %wide.load325, ptr %next.gep323, align 8, !tbaa !774, !alias.scope !783, !noalias !780
  store <2 x i64> %wide.load326, ptr %i.ef, align 8, !tbaa !774, !alias.scope !783, !noalias !780
  %i.eg = getelementptr i8, ptr %next.gep324, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep324, align 8, !tbaa !774, !alias.scope !780, !noalias !775
  store <2 x ptr> splat (ptr null), ptr %i.eg, align 8, !tbaa !774, !alias.scope !780, !noalias !775
  %index.next327 = add nuw i64 %index322, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.eh, label %middle.block328, label %vector.body321, !llvm.loop !785

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.dw, %n.vec320
  br i1 %cmp.n329, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader335

.lr.ph.i.i.i.i.i.i.i.preheader335:                ; preds = %vector.memcheck308, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block328
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dt, %vector.memcheck308 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eb, %middle.block328 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.di, %vector.memcheck308 ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ec, %middle.block328 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader335, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader335 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader335 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.ei = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !778, !noalias !775
  store i64 %i.ei, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !775, !noalias !778
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !778, !noalias !775
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.df
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !786

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block328, %.noexc52
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.noexc52 ], [ %i.eb, %middle.block328 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.di) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dt, ptr %9, align 16, !tbaa !772
  store ptr %i.el, ptr %i.bb, align 8, !tbaa !773
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.em, ptr %i.ba, align 16, !tbaa !769
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit56.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp: ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v.exit
  %i.en = load ptr, ptr %i.bw, align 8, !tbaa !258, !nonnull !151, !align !241 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 80
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !282
  %.not.not.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.not.i.i.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.eq, %bb.z ], [ %.sroa.06.0.i.i.i, %bb.ab ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !243 ; 4 uses
  %.not.i.i.i59 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i59, label %.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !212
  %i.et = icmp eq i64 %storemerge222, %i.es
  br i1 %i.et, label %.loopexit, label %bb.aa, !llvm.loop !283

bb.ac:                                            ; preds = %bb.y
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !225 ; 2 uses
  %i.ex = urem i64 %storemerge222, %i.ew          ; 2 uses
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !218
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ex
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i57, label %.loopexit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !243 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !212
  %i.fe = icmp eq i64 %storemerge222, %i.fd
  br i1 %i.fe, label %.loopexit, label %.lr.ph.i.i.i.i.i58

bb.ae:                                            ; preds = %bb.af
  %i.ff = icmp eq i64 %storemerge222, %i.fi
  br i1 %i.ff, label %.loopexit, label %.lr.ph.i.i.i.i.i58, !llvm.loop !244

.lr.ph.i.i.i.i.i58:                               ; preds = %bb.ad, %bb.ae
  %.020.i.i.i.i.i = phi ptr [ %i.fg, %bb.ae ], [ %i.fb, %bb.ad ]
  %i.fg = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !243 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i58
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !212 ; 2 uses
  %i.fj = urem i64 %i.fi, %i.ew
  %.not19.i.i.i.i.i = icmp eq i64 %i.fj, %i.ex
  br i1 %.not19.i.i.i.i.i, label %bb.ae, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !244

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.af
  br label %.loopexit.i.i, !llvm.loop !244

.loopexit.i.i:                                    ; preds = %bb.ac, %.lr.ph.i.i.i.i.i58, %bb.aa, %..loopexit_crit_edge21.i.i.i.i.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.34) #29
          to label %.noexc60 unwind label %bb.bh

.noexc60:                                         ; preds = %.loopexit.i.i
  unreachable

.loopexit:                                        ; preds = %bb.ae, %bb.ab, %bb.ad
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ab ], [ %i.fb, %bb.ad ], [ %i.fg, %bb.ae ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !212 ; 6 uses
  %i.fm = load ptr, ptr %i.by, align 8, !tbaa !341
  %i.fn = load ptr, ptr %i.bx, align 8, !tbaa !342 ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.fl, ptr %i.i, align 8, !tbaa !212
  store i64 %i.fr, ptr %i.j, align 8, !tbaa !212
  %.not.i.i.i61 = icmp ult i64 %i.fl, %i.fr
  br i1 %.not.i.i.i61, label %bb.ak, label %.noexc.i137, !prof !213

.noexc.i137:                                      ; preds = %.loopexit
  %i.fs = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ft, ptr %5, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 55, ptr %i.e, align 8, !tbaa !212
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc138 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i62 ; 3 uses

.noexc138:                                        ; preds = %.noexc.i137
  store ptr %i.fu, ptr %5, align 8, !tbaa !153
  %i.fv = load i64, ptr %i.e, align 8, !tbaa !212 ; 3 uses
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fu, ptr noundef nonnull align 1 dereferenceable(55) @.str.14, i64 55, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !281
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
end_hunk_7
begin_hunk_8_@_ZN6duckdb34HashAggregateDistinctFinalizeEvent19CreateGlobalSourcesEv:bb.a
  br i1 %.0.i.i.i83, label %bb.ar, label %.body

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i80
  %.pn8.i.i.i81 = phi { ptr, i32 } [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i80 ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i85 ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84 ]
  call void @__cxa_free_exception(ptr %i.gu) #27
  br label %.body

bb.as:                                            ; preds = %bb.ap
  unreachable

bb.at:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EEptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.fl
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !286 ; 2 uses
  %.not.i88 = icmp eq ptr %i.hf, null
  br i1 %.not.i88, label %.noexc.i149, label %_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv.exit, !prof !33

.noexc.i149:                                      ; preds = %bb.at
  %i.hg = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.hh, ptr %2, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 49, ptr %i.b, align 8, !tbaa !212
  %i.hi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc150 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89 ; 3 uses

.noexc150:                                        ; preds = %.noexc.i149
  store ptr %i.hi, ptr %2, align 8, !tbaa !153
  %i.hj = load i64, ptr %i.b, align 8, !tbaa !212 ; 3 uses
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.hi, ptr noundef nonnull align 1 dereferenceable(49) @.str.19, i64 49, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !281
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj
  store i8 0, ptr %i.hl, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc150
  invoke void @__cxa_throw(ptr nonnull %i.hg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ax unwind label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89: ; preds = %.noexc.i149
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %.noexc150
  %.0.i.i92 = phi i1 [ false, %bb.au ], [ true, %.noexc150 ] ; 2 uses
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ho = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hh
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.ho) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i92, label %bb.aw, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i92, label %bb.aw, label %.body

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89
  %.pn9.i.i90 = phi { ptr, i32 } [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89 ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94 ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93 ]
  call void @__cxa_free_exception(ptr %i.hg) #27
  br label %.body

bb.ax:                                            ; preds = %bb.au
  unreachable

_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %bb.at
  %i.hq = invoke noundef i64 @_ZNK6duckdb25RadixPartitionedHashTable10MaxThreadsERNS_15GlobalSinkStateE(ptr noundef nonnull align 8 dereferenceable(112) %i.gd, ptr noundef nonnull align 8 dereferenceable(81) %i.hf)
          to label %bb.ay unwind label %bb.bi

bb.ay:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.hr = add i64 %i.hq, %.1223
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.hs = load ptr, ptr %i.gc, align 8, !tbaa !284 ; 2 uses
  %.not.i97 = icmp eq ptr %i.hs, null
  br i1 %.not.i97, label %.noexc.i153, label %_ZNK6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EEptEv.exit106, !prof !33

.noexc.i153:                                      ; preds = %bb.ay
  %i.ht = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.hu, ptr %1, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 49, ptr %i.a, align 8, !tbaa !212
  %i.hv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc154 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i98 ; 3 uses

.noexc154:                                        ; preds = %.noexc.i153
  store ptr %i.hv, ptr %1, align 8, !tbaa !153
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !212 ; 3 uses
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.hv, ptr noundef nonnull align 1 dereferenceable(49) @.str.19, i64 49, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !281
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hw
  store i8 0, ptr %i.hy, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc154
  invoke void @__cxa_throw(ptr nonnull %i.ht, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.bc unwind label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i98: ; preds = %.noexc.i153
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az, %.noexc154
  %.0.i.i101 = phi i1 [ false, %bb.az ], [ true, %.noexc154 ] ; 2 uses
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ib = load ptr, ptr %1, align 8, !tbaa !153   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hu
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102: ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef %i.ib) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i.i101, label %bb.bb, label %.body104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i.i101, label %bb.bb, label %.body104

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i98
  %.pn9.i.i99 = phi { ptr, i32 } [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i98 ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103 ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102 ]
  call void @__cxa_free_exception(ptr %i.ht) #27
  br label %.body104

bb.bc:                                            ; preds = %bb.az
  unreachable

_ZNK6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EEptEv.exit106: ; preds = %bb.ay
  %i.id = load ptr, ptr %i.bc, align 8, !tbaa !738, !nonnull !151, !align !241
  invoke void @_ZNK6duckdb25RadixPartitionedHashTable20GetGlobalSourceStateERNS_13ClientContextE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.533") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %i.hs, ptr noundef nonnull align 8 dereferenceable(512) %i.id)
          to label %bb.bd unwind label %bb.bj

bb.bd:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EEptEv.exit106
  %i.ie = load ptr, ptr %i.bb, align 8, !tbaa !773 ; 6 uses
  %i.if = load ptr, ptr %i.ba, align 16, !tbaa !769
  %.not.i.i107 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i.i107, label %bb.be, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122.thread: ; preds = %bb.bd
  %i.ig = load i64, ptr %10, align 8, !tbaa !774
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !774
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ih, ptr %i.bb, align 8, !tbaa !773
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit125

bb.be:                                            ; preds = %bb.bd
  %i.ii = load ptr, ptr %9, align 16, !tbaa !772  ; 10 uses
  %i.ij = ptrtoint ptr %i.ie to i64               ; 3 uses
  %i.ik = ptrtoint ptr %i.ii to i64               ; 3 uses
  %i.il = sub i64 %i.ij, %i.ik                    ; 3 uses
  %i.im = icmp eq i64 %i.il, 9223372036854775800
  br i1 %i.im, label %bb.bf, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc120 unwind label %.loopexit.split-lp

.noexc120:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108: ; preds = %bb.be
  %i.in = ashr exact i64 %i.il, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i109 = call i64 @llvm.umax.i64(i64 %i.in, i64 1)
  %i.io = add nsw i64 %.sroa.speculated.i.i.i.i109, %i.in ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.in
  %i.iq = call i64 @llvm.umin.i64(i64 %i.io, i64 1152921504606846975)
  %i.ir = select i1 %i.ip, i64 1152921504606846975, i64 %i.iq ; 3 uses
  %.not.i.i.i.i110 = icmp ne i64 %i.ir, 0
  call void @llvm.assume(i1 %.not.i.i.i.i110)
  %i.is = shl nuw nsw i64 %i.ir, 3
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #28
          to label %.noexc121 unwind label %.loopexit172 ; 10 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.il
  %i.iv = load i64, ptr %10, align 8, !tbaa !774
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !774
  store ptr null, ptr %10, align 8, !tbaa !774
  %.not10.i.i.i.i.i.i.i111 = icmp eq ptr %i.ii, %i.ie
  br i1 %.not10.i.i.i.i.i.i.i111, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %.noexc121
  %13 = add i64 %i.ij, -8
  %14 = sub i64 %13, %i.ik                        ; 2 uses
  %i.iw = lshr i64 %14, 3
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader332, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader
  %scevgep = getelementptr i8, ptr %i.it, i64 8
  %i.iy = add i64 %i.ij, -8
  %i.iz = sub i64 %i.iy, %i.ik
  %i.ja = and i64 %i.iz, -8                       ; 2 uses
  %scevgep302 = getelementptr i8, ptr %scevgep, i64 %i.ja
  %scevgep303 = getelementptr i8, ptr %i.ii, i64 8
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.ja
  %bound0 = icmp ult ptr %i.it, %scevgep304
  %bound1 = icmp ult ptr %i.ii, %scevgep302
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader332, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ix, 4611686018427387900     ; 3 uses
  %i.jb = shl i64 %n.vec, 3                       ; 2 uses
  %i.jc = getelementptr i8, ptr %i.it, i64 %i.jb  ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.je = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.it, i64 %i.je ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.ii, i64 %i.je ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.jf = getelementptr i8, ptr %next.gep305, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep305, align 8, !tbaa !774, !alias.scope !792, !noalias !787
  %wide.load306 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !774, !alias.scope !792, !noalias !787
  %i.jg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !774, !alias.scope !795, !noalias !792
  store <2 x i64> %wide.load306, ptr %i.jg, align 8, !tbaa !774, !alias.scope !795, !noalias !792
  %i.jh = getelementptr i8, ptr %next.gep305, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep305, align 8, !tbaa !774, !alias.scope !792, !noalias !787
  store <2 x ptr> splat (ptr null), ptr %i.jh, align 8, !tbaa !774, !alias.scope !792, !noalias !787
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ix, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116, label %.lr.ph.i.i.i.i.i.i.i112.preheader332

.lr.ph.i.i.i.i.i.i.i112.preheader332:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i112.preheader, %middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi ptr [ %i.it, %vector.memcheck ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i112.preheader ], [ %i.jc, %middle.block ]
  %.0911.i.i.i.i.i.i.i114.ph = phi ptr [ %i.ii, %vector.memcheck ], [ %i.ii, %.lr.ph.i.i.i.i.i.i.i112.preheader ], [ %i.jd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader332, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader332 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i114 = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0911.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader332 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.jj = load i64, ptr %.0911.i.i.i.i.i.i.i114, align 8, !tbaa !774, !alias.scope !790, !noalias !787
  store i64 %i.jj, ptr %.012.i.i.i.i.i.i.i113, align 8, !tbaa !774, !alias.scope !787, !noalias !790
  store ptr null, ptr %.0911.i.i.i.i.i.i.i114, align 8, !tbaa !774, !alias.scope !790, !noalias !787
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i114, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i113, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i115 = icmp eq ptr %i.jk, %i.ie
  br i1 %.not.i.i.i.i.i.i.i115, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116, label %.lr.ph.i.i.i.i.i.i.i112, !llvm.loop !798

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116: ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %.noexc121
  %.0.lcssa.i.i.i.i.i.i.i117 = phi ptr [ %i.it, %.noexc121 ], [ %i.jc, %middle.block ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i112 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i117, i64 8
  %.not.i23.i.i.i118 = icmp eq ptr %i.ii, null
  br i1 %.not.i23.i.i.i118, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116
  call void @_ZdlPv(ptr noundef nonnull %i.ii) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i116, %bb.bg
  store ptr %i.it, ptr %9, align 16, !tbaa !772
  store ptr %i.jm, ptr %i.bb, align 8, !tbaa !773
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.ir
  store ptr %i.jn, ptr %i.ba, align 16, !tbaa !769
  %.pr = load ptr, ptr %10, align 8, !tbaa !774   ; 3 uses
  %.not.i123 = icmp eq ptr %.pr, null
  br i1 %.not.i123, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit125, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i124

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i124: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122
  %i.jo = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(80) %.pr) #27, !inline_history !799
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit125

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit125: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit122, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.u, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit125
  %.2 = phi i64 [ %i.hr, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit125 ], [ %.1223, %bb.u ], [ %.1223, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.jr = add nuw i64 %storemerge222, 1           ; 2 uses
  %i.js = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.jt = load ptr, ptr %i.m, align 8, !tbaa !78  ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = ashr exact i64 %i.jw, 3
  %i.jy = icmp ult i64 %i.jr, %i.jx
  br i1 %i.jy, label %bb.i, label %._crit_edge, !llvm.loop !800

bb.bh:                                            ; preds = %.loopexit.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bj:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EEptEv.exit106
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body104

.loopexit172:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i108
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp, %.loopexit172
  %lpad.phi175 = phi { ptr, i32 } [ %lpad.loopexit173, %.loopexit172 ], [ %lpad.loopexit.split-lp174, %.loopexit.split-lp ] ; 2 uses
  %i.kc = load ptr, ptr %10, align 8, !tbaa !774  ; 3 uses
  %.not.i126 = icmp eq ptr %i.kc, null
  br i1 %.not.i126, label %.body104, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i127

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i127: ; preds = %bb.bk
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !7
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(80) %i.kc) #27, !inline_history !799
  br label %.body104

.body104:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i127, %bb.bk, %bb.bj, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102
  %.pn = phi { ptr, i32 } [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102 ], [ %i.kb, %bb.bj ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103 ], [ %.pn9.i.i99, %bb.bb ], [ %lpad.phi175, %bb.bk ], [ %lpad.phi175, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.body

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.h
  %.pre241 = load ptr, ptr %9, align 16, !tbaa !772 ; 3 uses
  %.pre242 = load ptr, ptr %i.bb, align 8, !tbaa !773 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre241, %.pre242
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kk, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre241, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.kg = load ptr, ptr %.05.i.i.i, align 8, !tbaa !774 ; 3 uses
  %.not.i.i.i.i.i129 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i.i129, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !7
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(80) %i.kg) #27, !inline_history !801
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.kk, %.pre242
  br i1 %.not.i.i.i130, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !802

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 16, !tbaa !772
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit
  %i.kl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre241, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.kl) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.km = add nuw i64 %.021224, 1                 ; 2 uses
  %i.kn = load ptr, ptr %i.k, align 8, !tbaa !746, !nonnull !151, !align !241 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 336 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 344
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !518
  %i.kr = load ptr, ptr %i.ko, align 8, !tbaa !538
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
end_hunk_8
begin_hunk_9_@_ZN6duckdb20GroupedAggregateData20SetGroupingFunctionsERNS_6vectorINS1_ImLb0ESaImEEELb1ESaIS3_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1552", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !981
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !981
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !984, !noalias !981 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !987, !noalias !981 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #30
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !988

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !984, !noalias !981
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !981
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !981
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !153    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !153    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20GroupedAggregateData24InitializeDistinctGroupsEPKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.28", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !279    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !279  ; 2 uses
  %.not1719 = icmp eq ptr %i.a, %i.c
  br i1 %.not1719, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.013.020 = phi ptr [ %i.a, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.i = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.020)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !293  ; 3 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !294
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.d, align 8, !tbaa !293
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.020) ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.28") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %i.o)
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !75   ; 6 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !414
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.f, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.u = load i64, ptr %2, align 8, !tbaa !122
  store i64 %i.u, ptr %i.s, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.g, align 8, !tbaa !75
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !78     ; 10 uses
  %i.x = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #28
          to label %.noexc8 unwind label %.loopexit18 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  %i.aj = load i64, ptr %2, align 8, !tbaa !122
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !122
  store ptr null, ptr %2, align 8, !tbaa !122
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.s
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc8
  %3 = add i64 %i.x, -8
  %4 = sub i64 %3, %i.y                           ; 2 uses
  %i.ak = lshr i64 %4, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  %i.am = add i64 %i.x, -8
  %i.an = sub i64 %i.am, %i.y
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %scevgep30 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep31 = getelementptr i8, ptr %i.w, i64 8
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.ao
  %bound0 = icmp ult ptr %i.ah, %scevgep32
  %bound1 = icmp ult ptr %i.w, %scevgep30
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ah, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.w, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.as ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.w, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.at = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 8, !tbaa !122, !alias.scope !994, !noalias !989
  %wide.load34 = load <2 x i64>, ptr %i.at, align 8, !tbaa !122, !alias.scope !994, !noalias !989
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !122, !alias.scope !997, !noalias !994
  store <2 x i64> %wide.load34, ptr %i.au, align 8, !tbaa !122, !alias.scope !997, !noalias !994
  %i.av = getelementptr i8, ptr %next.gep33, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep33, align 8, !tbaa !122, !alias.scope !994, !noalias !989
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !122, !alias.scope !994, !noalias !989
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !999

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader36

.lr.ph.i.i.i.i.i.i.i.preheader36:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader36, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader36 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader36 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !992, !noalias !989
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !989, !noalias !992
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !992, !noalias !989
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1000

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc8 ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.w) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.h
  store ptr %i.ah, ptr %0, align 8, !tbaa !78
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !414
  %.pr = load ptr, ptr %2, align 8, !tbaa !122    ; 3 uses
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bc = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #27, !inline_history !427
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.020, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.bf, %i.c
  br i1 %.not17, label %.loopexit, label %bb.c

.loopexit18:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit18
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit18 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bg = load ptr, ptr %2, align 8, !tbaa !122   ; 3 uses
  %.not.i10 = icmp eq ptr %i.bg, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i11: ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(88) %i.bg) #27, !inline_history !427
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit12: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_ImLb0ESaImEEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !491
  %i.e = load ptr, ptr %0, align 8, !tbaa !488    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !212
  store i64 %i.i, ptr %i.b, align 8, !tbaa !212
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS0_ImLb0ESaImEEELb1ESaIS2_EE3getILb1EEERS2_m.exit, label %bb.b, !prof !213

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
end_hunk_9
begin_hunk_10_@_ZN6duckdb26PhysicalUngroupedAggregateC2ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEEmNS_21TupleDataValidityTypeE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN6duckdb31DistinctAggregateCollectionInfo6CreateERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.329") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.q = load ptr, ptr %7, align 8, !tbaa !356
  store ptr null, ptr %7, align 8, !tbaa !356
  call void @_ZNSt15__uniq_ptr_implIN6duckdb31DistinctAggregateCollectionInfoESt14default_deleteIS1_EE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q) #27
  call void @_ZNSt10unique_ptrIN6duckdb31DistinctAggregateCollectionInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !356
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb21DistinctAggregateDataESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %bb.k

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_31DistinctAggregateCollectionInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN6duckdb21DistinctAggregateDataC1ERKNS_31DistinctAggregateCollectionInfoENS_21TupleDataValidityTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.u, i8 noundef zeroext %5)
          to label %_ZN6duckdb9make_uniqINS_21DistinctAggregateDataEJRNS_31DistinctAggregateCollectionInfoERNS_21TupleDataValidityTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.i, !noalias !1214

bb.i:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.v) #30, !noalias !1214
  br label %.body

_ZN6duckdb9make_uniqINS_21DistinctAggregateDataEJRNS_31DistinctAggregateCollectionInfoERNS_21TupleDataValidityTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !446  ; 3 uses
  store ptr %i.v, ptr %i.o, align 8, !tbaa !446
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb21DistinctAggregateDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21DistinctAggregateDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb21DistinctAggregateDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_21DistinctAggregateDataEJRNS_31DistinctAggregateCollectionInfoERNS_21TupleDataValidityTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @_ZN6duckdb21DistinctAggregateDataD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.x) #27
  call void @_ZdlPv(ptr noundef nonnull %i.x) #30
  br label %_ZNSt10unique_ptrIN6duckdb21DistinctAggregateDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21DistinctAggregateDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_21DistinctAggregateDataEJRNS_31DistinctAggregateCollectionInfoERNS_21TupleDataValidityTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb21DistinctAggregateDataEEclEPS1_.exit.i.i.i.i.i, %bb.d
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.y, %bb.j ], [ %i.w, %bb.i ]
  call void @_ZNSt10unique_ptrIN6duckdb31DistinctAggregateCollectionInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #27
  call void @_ZNSt10unique_ptrIN6duckdb21DistinctAggregateDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #27
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #27
  call void @_ZN6duckdb16PhysicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #27
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23UngroupedAggregateStateC2ERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !227
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -1) ; 2 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #28
          to label %_ZNSt10unique_ptrIA_St6atomicImESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b ; 2 uses

_ZNSt10unique_ptrIA_St6atomicImESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !noalias !1217
  store ptr %i.l, ptr %i.d, align 8, !tbaa !1220
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_St6atomicImESt14default_deleteIS2_EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, %_ZNSt10unique_ptrIA_St6atomicImESt14default_deleteIS2_EED2Ev.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %.02180 = phi i64 [ 0, %.lr.ph ], [ %i.dt, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.02180)
          to label %bb.d unwind label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.e unwind label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %bb.f unwind label %bb.w       ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 328
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.z = invoke noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(368) %i.w)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #28
          to label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit unwind label %bb.x ; 4 uses

_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 336
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1221
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(368) %i.w, ptr noundef nonnull %i.aa)
          to label %bb.h unwind label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit

bb.h:                                             ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !1222 ; 6 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !1223
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = ptrtoint ptr %i.aa to i64
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !1171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !1222
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !1224 ; 10 uses
  %i.ai = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #28
          to label %.noexc27 unwind label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit ; 10 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = ptrtoint ptr %i.aa to i64
  store i64 %i.au, ptr %i.at, align 8, !tbaa !1171
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc27
  %2 = add i64 %i.ai, -8
  %3 = sub i64 %2, %i.aj                          ; 2 uses
  %i.av = lshr i64 %3, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check128 = icmp ult i64 %3, 56
  br i1 %min.iters.check128, label %.lr.ph.i.i.i.i.i.i.i.preheader144, label %vector.memcheck123

vector.memcheck123:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.as, i64 8
  %i.ax = add i64 %i.ai, -8
  %i.ay = sub i64 %i.ax, %i.aj
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %scevgep124 = getelementptr i8, ptr %scevgep, i64 %i.az
  %scevgep125 = getelementptr i8, ptr %i.ah, i64 8
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.az
  %bound0 = icmp ult ptr %i.as, %scevgep126
  %bound1 = icmp ult ptr %i.ah, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader144, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck123
  %n.vec131 = and i64 %i.aw, 4611686018427387900  ; 3 uses
  %i.ba = shl i64 %n.vec131, 3                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ah, i64 %i.ba
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph129
  %index133 = phi i64 [ 0, %vector.ph129 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %i.bd = shl i64 %index133, 3                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.as, i64 %i.bd ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.ah, i64 %i.bd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.be = getelementptr i8, ptr %next.gep135, i64 16
  %wide.load136 = load <2 x i64>, ptr %next.gep135, align 8, !tbaa !1171, !alias.scope !1230, !noalias !1225
  %wide.load137 = load <2 x i64>, ptr %i.be, align 8, !tbaa !1171, !alias.scope !1230, !noalias !1225
  %i.bf = getelementptr i8, ptr %next.gep134, i64 16
  store <2 x i64> %wide.load136, ptr %next.gep134, align 8, !tbaa !1171, !alias.scope !1233, !noalias !1230
  store <2 x i64> %wide.load137, ptr %i.bf, align 8, !tbaa !1171, !alias.scope !1233, !noalias !1230
  %i.bg = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep135, align 8, !tbaa !1171, !alias.scope !1230, !noalias !1225
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !1171, !alias.scope !1230, !noalias !1225
  %index.next138 = add nuw i64 %index133, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.bh, label %middle.block139, label %vector.body132, !llvm.loop !1235

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.aw, %n.vec131
  br i1 %cmp.n140, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader144

.lr.ph.i.i.i.i.i.i.i.preheader144:                ; preds = %vector.memcheck123, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block139
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck123 ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block139 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck123 ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block139 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader144, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader144 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader144 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1171, !alias.scope !1228, !noalias !1225
  store i64 %i.bi, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1171, !alias.scope !1225, !noalias !1228
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1171, !alias.scope !1228, !noalias !1225
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1236

_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block139, %.noexc27
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.as, %.noexc27 ], [ %i.bb, %middle.block139 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.as, ptr %i.a, align 8, !tbaa !1224
  store ptr %i.bl, ptr %i.m, align 8, !tbaa !1222
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bm, ptr %i.n, align 8, !tbaa !1223
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 480
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !1237 ; 6 uses
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !1238
  %.not.i.i28 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE9push_backEOS5_.exit
  %i.br = ptrtoint ptr %i.bo to i64
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.o, align 8, !tbaa !1237
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE9push_backEOS5_.exit
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !1239 ; 7 uses
  %i.bu = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.o, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #28
          to label %.noexc39 unwind label %.loopexit ; 8 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = ptrtoint ptr %i.bo to i64
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !26
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.bt, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc39
  %i.ch = ptrtoaddr ptr %i.ce to i64
  %4 = add i64 %i.bu, -8
  %5 = sub i64 %4, %i.bv                          ; 2 uses
  %i.ci = lshr i64 %5, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.ck = sub i64 %i.ch, %i.bv
  %diff.check = icmp ult i64 %i.ck, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i32.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.cl = shl i64 %n.vec, 3                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bt, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.co ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.bt, i64 %i.co ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.cp = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !26, !alias.scope !1243, !noalias !1240
  %wide.load121 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !26, !alias.scope !1243, !noalias !1240
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !26, !alias.scope !1240, !noalias !1243
  store <2 x i64> %wide.load121, ptr %i.cq, align 8, !tbaa !26, !alias.scope !1240, !noalias !1243
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32.preheader143

.lr.ph.i.i.i.i.i.i.i32.preheader143:              ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.cm, %middle.block ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader143, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader143 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader143 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !26, !alias.scope !1243, !noalias !1240
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i33, align 8, !tbaa !26, !alias.scope !1240, !noalias !1243
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ct, %i.bp
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !1246

_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block, %.noexc39
  %.0.lcssa.i.i.i.i.i.i.i36 = phi ptr [ %i.ce, %.noexc39 ], [ %i.cm, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i36, i64 8
  %.not.i23.i.i.i37 = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i.i37, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bt) #30
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !1239
  store ptr %i.cv, ptr %i.o, align 8, !tbaa !1237
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cw, ptr %i.p, align 8, !tbaa !1238
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1247 ; 2 uses
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !1248 ; 3 uses
  %i.da = load ptr, ptr %i.r, align 8, !tbaa !1249
  %.not.i.i40 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i.i40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE9push_backEOS3_.exit
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !13
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !1248
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.q, align 8, !tbaa !1248
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE9push_backEOS3_.exit
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !1250 ; 4 uses
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 5 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.s, label %_ZNKSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc43 unwind label %.loopexit.split-lp69

.noexc43:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i41 = tail call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i41, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i.i42 = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i42)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #28
          to label %.noexc44 unwind label %.loopexit68 ; 4 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dg ; 2 uses
  store ptr %i.cy, ptr %i.dp, align 8, !tbaa !13
  %i.dq = icmp sgt i64 %i.dg, 0
  br i1 %i.dq, label %bb.t, label %_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

bb.t:                                             ; preds = %.noexc44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr align 8 %i.dd, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i: ; preds = %bb.t, %.noexc44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.dd) #30
  br label %_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  store ptr %i.do, ptr %i.c, align 8, !tbaa !1250
  store ptr %i.dr, ptr %i.q, align 8, !tbaa !1248
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.ds, ptr %i.r, align 8, !tbaa !1249
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.q, %_ZNSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.dt = add nuw i64 %.02180, 1                  ; 2 uses
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.dv = load ptr, ptr %1, align 8, !tbaa !78
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3
  %i.ea = icmp ult i64 %i.dt, %i.dz
  br i1 %i.ea, label %bb.c, label %._crit_edge, !llvm.loop !1251

bb.v:                                             ; preds = %bb.c
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

bb.w:                                             ; preds = %bb.e, %bb.d
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

bb.x:                                             ; preds = %bb.g, %bb.f
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_12FunctionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit65 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

.loopexit68:                                      ; preds = %_ZNKSt6vectorIPFvRN6duckdb6VectorERNS0_18AggregateInputDataEmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

.loopexit.split-lp69:                             ; preds = %bb.s
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit: ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit, %_ZNKSt6vectorIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit.split-lp, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i47.loopexit.split-lp ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #30
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit48

end_hunk_10
begin_hunk_11_@_ZN6duckdb6VectorD2Ev:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9  ; 8 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i6, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !25
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27, !inline_history !1255
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27, !inline_history !1255
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !33

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb23UngroupedAggregateState4MoveERS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((24, 32)) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1224 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1222 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1256
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !1256
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1223
  store ptr %i.i, ptr %i.f, align 8, !tbaa !1223
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1252

_ZSt8_DestroyIPN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEEEvPT_.exit.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrIA_hSt14default_deleteIS2_ELb0EEELb1ESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZN6duckdb6vectorINS_10unique_ptrIA_hSt14default_deleteIS2_ELb0EEELb1ESaIS5_EEaSEOS7_.exit

_ZN6duckdb6vectorINS_10unique_ptrIA_hSt14default_deleteIS2_ELb0EEELb1ESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrIA_hSt14default_deleteIS2_ELb0EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1250 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load <2 x ptr>, ptr %i.l, align 8, !tbaa !1257
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !1257
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1249
  store ptr %i.r, ptr %i.o, align 8, !tbaa !1249
  %.not.i.i.i.i.i.i3 = icmp eq ptr %i.n, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i3, label %_ZN6duckdb6vectorIPFvRNS_6VectorERNS_18AggregateInputDataEmELb1ESaIS6_EEaSEOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb6vectorINS_10unique_ptrIA_hSt14default_deleteIS2_ELb0EEELb1ESaIS5_EEaSEOS7_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #30
  br label %_ZN6duckdb6vectorIPFvRNS_6VectorERNS_18AggregateInputDataEmELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorIPFvRNS_6VectorERNS_18AggregateInputDataEmELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZN6duckdb6vectorINS_10unique_ptrIA_hSt14default_deleteIS2_ELb0EEELb1ESaIS5_EEaSEOS7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb29GlobalUngroupedAggregateState15CreateAllocatorEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.964", align 8 ; 5 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1258, !nonnull !151, !align !241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %i.e = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 2048)
          to label %bb.d unwind label %bb.c, !noalias !1259

bb.c:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #30, !noalias !1259
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.e, ptr %1, align 8, !tbaa !1085, !alias.scope !1259
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1084 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1262
  %.not.i = icmp eq ptr %i.h, %i.j
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  br i1 %.not.i, label %bb.e, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.d
  store i64 %i.k, ptr %i.h, align 8, !tbaa !1085
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !1084
  br label %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !1081 ; 10 uses
  %i.n = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc7 unwind label %bb.k

.noexc7:                                          ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28
          to label %.noexc8 unwind label %bb.k    ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store i64 %i.k, ptr %i.y, align 8, !tbaa !1085
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc8
  %2 = add i64 %i.n, -8
  %3 = sub i64 %2, %i.o                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ab = add i64 %i.n, -8
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep15 = getelementptr i8, ptr %i.m, i64 %i.ae
  %bound0 = icmp ult ptr %i.x, %scevgep15
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.m, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.aj = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !1085, !alias.scope !1268, !noalias !1263
  %wide.load17 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1085, !alias.scope !1268, !noalias !1263
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1085, !alias.scope !1271, !noalias !1268
  store <2 x i64> %wide.load17, ptr %i.ak, align 8, !tbaa !1085, !alias.scope !1271, !noalias !1268
  %i.al = getelementptr i8, ptr %next.gep16, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep16, align 8, !tbaa !1085, !alias.scope !1268, !noalias !1263
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1085, !alias.scope !1268, !noalias !1263
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.i.preheader19:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader19 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader19 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1085, !alias.scope !1266, !noalias !1263
  store i64 %i.an, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !1085, !alias.scope !1263, !noalias !1266
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1085, !alias.scope !1266, !noalias !1263
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1274

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc8 ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.g
  store ptr %i.x, ptr %i.b, align 8, !tbaa !1081
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !1084
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !1262
  br label %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14ArenaAllocatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_14ArenaAllocatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.au = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #27 ; 0 uses
  ret ptr %i.at

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  br label %.body

.body:                                            ; preds = %bb.j, %bb.c, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.av, %bb.j ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.body
  %.pn5 = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %.pn, %.body ]
  %i.ay = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #27 ; 0 uses
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1085   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb14ArenaAllocatorEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14ArenaAllocatorEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb14ArenaAllocatorEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14ArenaAllocatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1275   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1275 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_10unique_ptrINS_14ArenaAllocatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op
end_hunk_11
begin_hunk_12_@_ZNK6duckdb26PhysicalUngroupedAggregate7CombineERNS_16ExecutionContextERNS_24OperatorSinkCombineInputE:bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !286
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !13
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !595, !nonnull !151, !align !241
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !13
  call void @_ZNK6duckdb26PhysicalUngroupedAggregate15CombineDistinctERNS_16ExecutionContextERNS_24OperatorSinkCombineInputE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @_ZN6duckdb29GlobalUngroupedAggregateState7CombineERNS_28LocalUngroupedAggregateStateE(ptr noundef nonnull align 8 dereferenceable(232) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !1034, !nonnull !151, !align !241
  %i.i = tail call noundef nonnull align 8 dereferenceable(536) ptr @_ZN6duckdb13QueryProfiler3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1295, !nonnull !151, !align !241
  tail call void @_ZN6duckdb16OperatorProfiler5FlushERKNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !1295, !nonnull !151, !align !241
  tail call void @_ZN6duckdb13QueryProfiler5FlushERNS_16OperatorProfilerE(ptr noundef nonnull align 8 dereferenceable(536) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i8 0
}

declare noundef nonnull align 8 dereferenceable(536) ptr @_ZN6duckdb13QueryProfiler3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #3

declare void @_ZN6duckdb16OperatorProfiler5FlushERKNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZN6duckdb13QueryProfiler5FlushERNS_16OperatorProfilerE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb39UngroupedDistinctAggregateFinalizeEvent8ScheduleEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::shared_ptr.548", align 16 ; 6 uses
  %2 = alloca %"class.duckdb::unique_ptr.533", align 8 ; 9 uses
  %3 = alloca %"class.duckdb::vector.490", align 16 ; 14 uses
  %4 = alloca %"class.duckdb::shared_ptr.496", align 16 ; 12 uses
  %5 = alloca %"class.duckdb::unique_ptr.1067", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::shared_ptr.548", align 16 ; 8 uses
  %7 = alloca %"class.duckdb::vector.490", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1296, !nonnull !151, !align !241 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.e = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_21DistinctAggregateDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !78
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %i.q = call i64 @llvm.umax.i64(i64 %.1, i64 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.020.lcssa = phi i64 [ 1, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1304, !nonnull !151, !align !241
  %i.t = call noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.s)
  %i.u = call noundef i32 @_ZN6duckdb13TaskScheduler15NumberOfThreadsEv(ptr noundef nonnull align 8 dereferenceable(124) %i.t)
  %i.v = call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.u) ; 2 uses
  %i.w = call noundef i64 @llvm.umin.i64(i64 %.020.lcssa, i64 %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not148 = icmp eq i64 %i.v, 0
  br i1 %.not148, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  br label %bb.x

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %.020143 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %storemerge141 = phi i64 [ 0, %.lr.ph ], [ %i.fl, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 10 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %storemerge141)
  %i.ah = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ai = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.ah) ; 0 uses
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !439
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !258, !nonnull !151, !align !241 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !282
  %.not.not.i.i.i.i = icmp eq i64 %i.ao, 0        ; 2 uses
  br i1 %.not.not.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.ap, %bb.d ], [ %.sroa.06.0.i.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !243 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !212
  %i.as = icmp eq i64 %storemerge141, %i.ar
  br i1 %i.as, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit, label %bb.e, !llvm.loop !283

bb.g:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !225 ; 2 uses
  %i.aw = urem i64 %storemerge141, %i.av          ; 2 uses
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !218
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !243 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = icmp eq i64 %storemerge141, %i.bc
  br i1 %i.bd, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread205, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.be = icmp eq i64 %storemerge141, %i.bh
  br i1 %i.be, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !244

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.i ], [ %i.ba, %bb.h ]
  %i.bf = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !243 ; 3 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !212 ; 2 uses
  %i.bi = urem i64 %i.bh, %i.av
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bi, %i.aw
  br i1 %.not19.i.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !244

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.j
  br label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread, !llvm.loop !244

_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.g, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.b
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !773 ; 6 uses
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !769
  %.not.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread
  store i64 0, ptr %i.bj, align 8, !tbaa !774
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.o, align 8, !tbaa !773
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !772 ; 10 uses
  %i.bn = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %.noexc, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.noexc:                                           ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8, !tbaa !774
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %8 = add i64 %i.bn, -8
  %9 = sub i64 %8, %i.bo                          ; 2 uses
  %i.bz = lshr i64 %9, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader273, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bx, i64 8
  %i.cb = add i64 %i.bn, -8
  %i.cc = sub i64 %i.cb, %i.bo
  %i.cd = and i64 %i.cc, -8                       ; 2 uses
  %scevgep238 = getelementptr i8, ptr %scevgep, i64 %i.cd
  %scevgep239 = getelementptr i8, ptr %i.bm, i64 8
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 %i.cd
  %bound0 = icmp ult ptr %i.bx, %scevgep240
  %bound1 = icmp ult ptr %i.bm, %scevgep238
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader273, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bx, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bm, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.ch ; 2 uses
  %next.gep241 = getelementptr i8, ptr %i.bm, i64 %i.ch ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.ci = getelementptr i8, ptr %next.gep241, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep241, align 8, !tbaa !774, !alias.scope !1310, !noalias !1305
  %wide.load242 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !774, !alias.scope !1310, !noalias !1305
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !774, !alias.scope !1313, !noalias !1310
  store <2 x i64> %wide.load242, ptr %i.cj, align 8, !tbaa !774, !alias.scope !1313, !noalias !1310
  %i.ck = getelementptr i8, ptr %next.gep241, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep241, align 8, !tbaa !774, !alias.scope !1310, !noalias !1305
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !tbaa !774, !alias.scope !1310, !noalias !1305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader273

.lr.ph.i.i.i.i.i.i.i.preheader273:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader273, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader273 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader273 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !1308, !noalias !1305
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !1305, !noalias !1308
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !1308, !noalias !1305
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1316

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bx, ptr %i.m, align 8, !tbaa !772
  store ptr %i.cp, ptr %i.o, align 8, !tbaa !773
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.p, align 8, !tbaa !769
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit: ; preds = %bb.i, %bb.f
  br i1 %.not.not.i.i.i.i, label %bb.n, label %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread205

bb.n:                                             ; preds = %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.cr, %bb.n ], [ %.sroa.06.0.i.i.i, %bb.p ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !243 ; 4 uses
  %.not.i.i.i44 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i44, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !212
  %i.cu = icmp eq i64 %storemerge141, %i.ct
  br i1 %i.cu, label %_ZNKSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE2atERS5_.exit, label %bb.o, !llvm.loop !283

_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread205: ; preds = %bb.h, %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !225 ; 2 uses
  %i.cy = urem i64 %storemerge141, %i.cx          ; 2 uses
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !218
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread205
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !243 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !212
  %i.df = icmp eq i64 %storemerge141, %i.de
  br i1 %i.df, label %_ZNKSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE2atERS5_.exit, label %.lr.ph.i.i.i.i.i

bb.r:                                             ; preds = %bb.s
  %i.dg = icmp eq i64 %storemerge141, %i.dj
  br i1 %i.dg, label %_ZNKSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE2atERS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !244

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %bb.r
  %.020.i.i.i.i.i = phi ptr [ %i.dh, %bb.r ], [ %i.dc, %bb.q ]
  %i.dh = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !243 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !212 ; 2 uses
  %i.dk = urem i64 %i.dj, %i.cx
  %.not19.i.i.i.i.i = icmp eq i64 %i.dk, %i.cy
  br i1 %.not19.i.i.i.i.i, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !244

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.s
  br label %.loopexit.i.i, !llvm.loop !244

.loopexit.i.i:                                    ; preds = %_ZNK6duckdb21DistinctAggregateData10IsDistinctEm.exit.thread205, %.lr.ph.i.i.i.i.i, %bb.o, %..loopexit_crit_edge21.i.i.i.i.i
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE2atERS5_.exit: ; preds = %bb.r, %bb.p, %bb.q
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.p ], [ %i.dc, %bb.q ], [ %i.dh, %bb.r ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !212 ; 2 uses
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.dm)
  %i.do = call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_25RadixPartitionedHashTableESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !1317, !nonnull !151, !align !241
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 328
  %i.dr = call noundef ptr @_ZNK6duckdb10unique_ptrINS_22DistinctAggregateStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 noundef %i.dm)
  %i.du = call noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
  %i.dv = call noundef i64 @_ZNK6duckdb25RadixPartitionedHashTable10MaxThreadsERNS_15GlobalSinkStateE(ptr noundef nonnull align 8 dereferenceable(112) %i.do, ptr noundef nonnull align 8 dereferenceable(81) %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !1304, !nonnull !151, !align !241
  call void @_ZNK6duckdb25RadixPartitionedHashTable20GetGlobalSourceStateERNS_13ClientContextE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.533") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %i.do, ptr noundef nonnull align 8 dereferenceable(512) %i.dw)
  %i.dx = load ptr, ptr %i.o, align 8, !tbaa !773 ; 6 uses
  %i.dy = load ptr, ptr %i.p, align 8, !tbaa !769
  %.not.i.i45 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i.i45, label %bb.t, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60.thread: ; preds = %_ZNKSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE2atERS5_.exit
  %i.dz = load i64, ptr %2, align 8, !tbaa !774
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !774
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.ea, ptr %i.o, align 8, !tbaa !773
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit63

bb.t:                                             ; preds = %_ZNKSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE2atERS5_.exit
  %i.eb = load ptr, ptr %i.m, align 8, !tbaa !772 ; 10 uses
  %i.ec = ptrtoint ptr %i.dx to i64               ; 3 uses
  %i.ed = ptrtoint ptr %i.eb to i64               ; 3 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 3 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775800
  br i1 %i.ef, label %bb.u, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc58 unwind label %.loopexit.split-lp120

.noexc58:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.t
  %i.eg = ashr exact i64 %i.ee, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 1152921504606846975)
  %i.ek = select i1 %i.ei, i64 1152921504606846975, i64 %i.ej ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.el = shl nuw nsw i64 %i.ek, 3
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #28
          to label %.noexc59 unwind label %.loopexit119 ; 10 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee
  %i.eo = load i64, ptr %2, align 8, !tbaa !774
  store i64 %i.eo, ptr %i.en, align 8, !tbaa !774
  store ptr null, ptr %2, align 8, !tbaa !774
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i.i.i50.preheader:                 ; preds = %.noexc59
  %10 = add i64 %i.ec, -8
  %11 = sub i64 %10, %i.ed                        ; 2 uses
  %i.ep = lshr i64 %11, 3
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check253 = icmp ult i64 %11, 56
  br i1 %min.iters.check253, label %.lr.ph.i.i.i.i.i.i.i50.preheader274, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader
  %scevgep245 = getelementptr i8, ptr %i.em, i64 8
  %i.er = add i64 %i.ec, -8
  %i.es = sub i64 %i.er, %i.ed
  %i.et = and i64 %i.es, -8                       ; 2 uses
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.et
  %scevgep247 = getelementptr i8, ptr %i.eb, i64 8
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.et
  %bound0249 = icmp ult ptr %i.em, %scevgep248
  %bound1250 = icmp ult ptr %i.eb, %scevgep246
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph.i.i.i.i.i.i.i50.preheader274, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck244
  %n.vec256 = and i64 %i.eq, 4611686018427387900  ; 3 uses
  %i.eu = shl i64 %n.vec256, 3                    ; 2 uses
  %i.ev = getelementptr i8, ptr %i.em, i64 %i.eu  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eb, i64 %i.eu
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph254
  %index258 = phi i64 [ 0, %vector.ph254 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.ex = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %i.em, i64 %i.ex ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.eb, i64 %i.ex ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.ey = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <2 x i64>, ptr %next.gep260, align 8, !tbaa !774, !alias.scope !1323, !noalias !1318
  %wide.load262 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !774, !alias.scope !1323, !noalias !1318
  %i.ez = getelementptr i8, ptr %next.gep259, i64 16
  store <2 x i64> %wide.load261, ptr %next.gep259, align 8, !tbaa !774, !alias.scope !1326, !noalias !1323
  store <2 x i64> %wide.load262, ptr %i.ez, align 8, !tbaa !774, !alias.scope !1326, !noalias !1323
  %i.fa = getelementptr i8, ptr %next.gep260, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep260, align 8, !tbaa !774, !alias.scope !1323, !noalias !1318
  store <2 x ptr> splat (ptr null), ptr %i.fa, align 8, !tbaa !774, !alias.scope !1323, !noalias !1318
  %index.next263 = add nuw i64 %index258, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.fb, label %middle.block264, label %vector.body257, !llvm.loop !1328

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.eq, %n.vec256
  br i1 %cmp.n265, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader274

.lr.ph.i.i.i.i.i.i.i50.preheader274:              ; preds = %vector.memcheck244, %.lr.ph.i.i.i.i.i.i.i50.preheader, %middle.block264
  %.012.i.i.i.i.i.i.i51.ph = phi ptr [ %i.em, %vector.memcheck244 ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.ev, %middle.block264 ]
  %.0911.i.i.i.i.i.i.i52.ph = phi ptr [ %i.eb, %vector.memcheck244 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.ew, %middle.block264 ]
  br label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader274, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.012.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader274 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.0911.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader274 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.fc = load i64, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !774, !alias.scope !1321, !noalias !1318
  store i64 %i.fc, ptr %.012.i.i.i.i.i.i.i51, align 8, !tbaa !774, !alias.scope !1318, !noalias !1321
  store ptr null, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !774, !alias.scope !1321, !noalias !1318
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.fd, %i.dx
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !1329

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %middle.block264, %.noexc59
  %.0.lcssa.i.i.i.i.i.i.i55 = phi ptr [ %i.em, %.noexc59 ], [ %i.ev, %middle.block264 ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i55, i64 8
  %.not.i23.i.i.i56 = icmp eq ptr %i.eb, null
  br i1 %.not.i23.i.i.i56, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  call void @_ZdlPv(ptr noundef nonnull %i.eb) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, %bb.v
  store ptr %i.em, ptr %i.m, align 8, !tbaa !772
  store ptr %i.ff, ptr %i.o, align 8, !tbaa !773
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.fg, ptr %i.p, align 8, !tbaa !769
  %.pr = load ptr, ptr %2, align 8, !tbaa !774    ; 3 uses
  %.not.i61 = icmp eq ptr %.pr, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit63, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i62

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i62: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60
  %i.fh = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(80) %.pr) #27, !inline_history !799
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit63

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit63: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i62
  %i.fk = add i64 %i.dv, %.020143
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.k, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit63
  %.1 = phi i64 [ %i.fk, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit63 ], [ %.020143, %bb.k ], [ %.020143, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.fl = add nuw i64 %storemerge141, 1           ; 2 uses
  %i.fm = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3
  %i.fs = icmp ult i64 %i.fl, %i.fr
  br i1 %i.fs, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !1330

.loopexit119:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp120:                            ; preds = %bb.u
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp120, %.loopexit119
  %lpad.phi123 = phi { ptr, i32 } [ %lpad.loopexit121, %.loopexit119 ], [ %lpad.loopexit.split-lp122, %.loopexit.split-lp120 ]
  %i.ft = load ptr, ptr %2, align 8, !tbaa !774   ; 3 uses
  %.not.i64 = icmp eq ptr %i.ft, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i65: ; preds = %bb.w
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !7
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(80) %i.ft) #27, !inline_history !799
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit66: ; preds = %bb.w, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.bz

._crit_edge147.loopexit:                          ; preds = %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit
  %i.fx = load <2 x ptr>, ptr %3, align 16, !tbaa !646
  %.pre167 = load ptr, ptr %i.ad, align 16, !tbaa !641
  br label %._crit_edge147

._crit_edge147:                                   ; preds = %._crit_edge147.loopexit, %._crit_edge
  %i.fy = phi ptr [ %.pre167, %._crit_edge147.loopexit ], [ null, %._crit_edge ]
  %i.fz = phi <2 x ptr> [ %i.fx, %._crit_edge147.loopexit ], [ splat (ptr null), %._crit_edge ]
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x ptr> %i.fz, ptr %7, align 16, !tbaa !646
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.fy, ptr %i.gb, align 16, !tbaa !641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb5Event8SetTasksENS_6vectorINS_10shared_ptrINS_4TaskELb1EEELb1ESaIS4_EEE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull %7)
          to label %bb.bi unwind label %bb.bx

bb.x:                                             ; preds = %.lr.ph146, %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit
  %.0144 = phi i64 [ 0, %.lr.ph146 ], [ %i.jo, %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.gc = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %bb.y unwind label %bb.ba

bb.y:                                             ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !649, !nonnull !151, !align !241
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6duckdb23enable_shared_from_thisINS_5EventEE16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.548") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %bb.z unwind label %bb.bb

bb.z:                                             ; preds = %bb.y
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !1296, !nonnull !151, !align !241
  %i.gg = load ptr, ptr %i.z, align 8, !tbaa !1317, !nonnull !151, !align !241
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.gh = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28
          to label %.noexc69 unwind label %bb.bc  ; 3 uses

.noexc69:                                         ; preds = %bb.z
  %i.gi = load <2 x ptr>, ptr %6, align 16, !tbaa !13, !noalias !1331
  store ptr null, ptr %i.ab, align 8, !tbaa !9, !noalias !1331
  store <2 x ptr> %i.gi, ptr %1, align 16, !tbaa !13, !noalias !1331
  store ptr null, ptr %6, align 16, !tbaa !684, !noalias !1331
  invoke void @_ZN6duckdb38UngroupedDistinctAggregateFinalizeTaskC2ERNS_8ExecutorENS_10shared_ptrINS_5EventELb1EEERKNS_26PhysicalUngroupedAggregateERNS_33UngroupedAggregateGlobalSinkStateE(ptr noundef nonnull align 8 dereferenceable(209) %i.gh, ptr noundef nonnull align 8 dereferenceable(424) %i.ge, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(176) %i.gf, ptr noundef nonnull align 8 dereferenceable(336) %i.gg)
          to label %bb.aa unwind label %bb.ah, !noalias !1331

bb.aa:                                            ; preds = %.noexc69
  store ptr %i.gh, ptr %5, align 8, !tbaa !1334, !alias.scope !1331
  %i.gj = load ptr, ptr %i.aa, align 8, !tbaa !9, !noalias !1331 ; 8 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i67, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %i.gl = load atomic i64, ptr %i.gk acquire, align 8, !noalias !1331 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 4294967297
  %i.gn = trunc i64 %i.gl to i32                  ; 2 uses
  br i1 %i.gm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.gk, align 8, !tbaa !20, !noalias !1331
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 0, ptr %i.go, align 4, !tbaa !25, !noalias !1331
end_hunk_12
begin_hunk_13_@_ZN6duckdb21WindowGlobalSinkStateC2ERKNS_14PhysicalWindowERNS_13ClientContextE:bb.a
  invoke void @_ZN6duckdb21WindowLeadLagExecutorC1ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %i.bq, ptr noundef nonnull align 8 dereferenceable(296) %i.az, ptr noundef nonnull align 8 dereferenceable(248) %i.i)
          to label %_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit unwind label %bb.z, !noalias !1417

bb.z:                                             ; preds = %.noexc37
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #30, !noalias !1417
  br label %.body

bb.aa:                                            ; preds = %bb.j
  %i.bs = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #28
          to label %.noexc38 unwind label %bb.au  ; 3 uses

.noexc38:                                         ; preds = %bb.aa
  invoke void @_ZN6duckdb18WindowFillExecutorC1ERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(112) %i.bs, ptr noundef nonnull align 8 dereferenceable(296) %i.az, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(248) %i.i)
          to label %_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit unwind label %bb.ab, !noalias !1420

bb.ab:                                            ; preds = %.noexc38
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bs) #30, !noalias !1420
  br label %.body

bb.ac:                                            ; preds = %bb.j
  %i.bu = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #28
          to label %.noexc39 unwind label %bb.au  ; 3 uses

.noexc39:                                         ; preds = %bb.ac
  invoke void @_ZN6duckdb24WindowFirstValueExecutorC1ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %i.bu, ptr noundef nonnull align 8 dereferenceable(296) %i.az, ptr noundef nonnull align 8 dereferenceable(248) %i.i)
          to label %_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit unwind label %bb.ad, !noalias !1423

bb.ad:                                            ; preds = %.noexc39
  %i.bv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bu) #30, !noalias !1423
  br label %.body

bb.ae:                                            ; preds = %bb.j
  %i.bw = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #28
          to label %.noexc40 unwind label %bb.au  ; 3 uses

.noexc40:                                         ; preds = %bb.ae
  invoke void @_ZN6duckdb23WindowLastValueExecutorC1ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %i.bw, ptr noundef nonnull align 8 dereferenceable(296) %i.az, ptr noundef nonnull align 8 dereferenceable(248) %i.i)
          to label %_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit unwind label %bb.af, !noalias !1426

bb.af:                                            ; preds = %.noexc40
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bw) #30, !noalias !1426
  br label %.body

bb.ag:                                            ; preds = %bb.j
  %i.by = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #28
          to label %.noexc41 unwind label %bb.au  ; 3 uses

.noexc41:                                         ; preds = %bb.ag
  invoke void @_ZN6duckdb22WindowNthValueExecutorC1ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull align 8 dereferenceable(296) %i.az, ptr noundef nonnull align 8 dereferenceable(248) %i.i)
          to label %_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit unwind label %bb.ah, !noalias !1429

bb.ah:                                            ; preds = %.noexc41
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.by) #30, !noalias !1429
  br label %.body

bb.ai:                                            ; preds = %bb.j
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1393 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1393
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !1393
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i, !noalias !1393

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !1393
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !1392, !noalias !1393
  invoke void @_ZN6duckdb22ExpressionTypeToStringB5cxx11ENS_14ExpressionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %i.cc)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, !noalias !1393

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.al unwind label %bb.am, !noalias !1393

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ao unwind label %bb.am, !noalias !1393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i: ; preds = %bb.ai
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cf = load ptr, ptr %5, align 8, !tbaa !153, !noalias !1393 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.cf) #30, !noalias !1393
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1393
  %i.ci = load ptr, ptr %3, align 8, !tbaa !153, !noalias !1393 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.aj
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1393
  %i.cm = load ptr, ptr %3, align 8, !tbaa !153, !noalias !1393 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  call void @_ZdlPv(ptr noundef %i.cm) #30, !noalias !1393
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ci) #30, !noalias !1393
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1393
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1393
  br i1 %.0.i, label %bb.an, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1393
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1393
  br i1 %.0.i, label %bb.an, label %.body

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i
  %.pn.pn76.ph.i = phi { ptr, i32 } [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1393
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1393
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %.pn.pn76.i = phi { ptr, i32 } [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i ], [ %.pn.pn76.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.ca) #27, !noalias !1393
  br label %.body

bb.ao:                                            ; preds = %bb.al
  unreachable

_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit: ; preds = %.noexc41, %.noexc40, %.noexc39, %.noexc38, %.noexc37, %.noexc36, %.noexc35, %.noexc34, %.noexc33, %.noexc32, %.noexc31, %.noexc
  %.sink.i = phi ptr [ %i.bw, %.noexc40 ], [ %i.bu, %.noexc39 ], [ %i.bs, %.noexc38 ], [ %i.bq, %.noexc37 ], [ %i.bo, %.noexc36 ], [ %i.bm, %.noexc35 ], [ %i.bk, %.noexc34 ], [ %i.bi, %.noexc33 ], [ %i.bg, %.noexc32 ], [ %i.be, %.noexc31 ], [ %i.bc, %.noexc ], [ %i.by, %.noexc41 ] ; 4 uses
  %i.cp = load ptr, ptr %i.ar, align 8, !tbaa !1432 ; 6 uses
  %i.cq = load ptr, ptr %i.as, align 8, !tbaa !1435
  %.not.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit
  %i.cr = ptrtoint ptr %.sink.i to i64
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !1436
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cs, ptr %i.ar, align 8, !tbaa !1432
  br label %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit

bb.aq:                                            ; preds = %_ZN6duckdbL21WindowExecutorFactoryERNS_21BoundWindowExpressionERNS_13ClientContextERNS_23WindowSharedExpressionsENS_21WindowAggregationModeE.exit
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !1438 ; 10 uses
  %i.cu = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.ar, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc42 unwind label %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit.split-lp

.noexc42:                                         ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aq
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #28
          to label %.noexc43 unwind label %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit ; 10 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  %i.dg = ptrtoint ptr %.sink.i to i64
  store i64 %i.dg, ptr %i.df, align 8, !tbaa !1436
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cp
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc43
  %8 = add i64 %i.cu, -8
  %9 = sub i64 %8, %i.cv                          ; 2 uses
  %i.dh = lshr i64 %9, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader207, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.de, i64 8
  %i.dj = add i64 %i.cu, -8
  %i.dk = sub i64 %i.dj, %i.cv
  %i.dl = and i64 %i.dk, -8                       ; 2 uses
  %scevgep201 = getelementptr i8, ptr %scevgep, i64 %i.dl
  %scevgep202 = getelementptr i8, ptr %i.ct, i64 8
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.dl
  %bound0 = icmp ult ptr %i.de, %scevgep203
  %bound1 = icmp ult ptr %i.ct, %scevgep201
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader207, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dm = shl i64 %n.vec, 3                       ; 2 uses
  %i.dn = getelementptr i8, ptr %i.de, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.ct, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dp ; 2 uses
  %next.gep204 = getelementptr i8, ptr %i.ct, i64 %i.dp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.dq = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep204, align 8, !tbaa !1436, !alias.scope !1444, !noalias !1439
  %wide.load205 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !1436, !alias.scope !1444, !noalias !1439
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1436, !alias.scope !1447, !noalias !1444
  store <2 x i64> %wide.load205, ptr %i.dr, align 8, !tbaa !1436, !alias.scope !1447, !noalias !1444
  %i.ds = getelementptr i8, ptr %next.gep204, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep204, align 8, !tbaa !1436, !alias.scope !1444, !noalias !1439
  store <2 x ptr> splat (ptr null), ptr %i.ds, align 8, !tbaa !1436, !alias.scope !1444, !noalias !1439
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1449

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader207

.lr.ph.i.i.i.i.i.i.preheader207:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dn, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader207, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader207 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader207 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.du = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1436, !alias.scope !1442, !noalias !1439
  store i64 %i.du, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !1436, !alias.scope !1439, !noalias !1442
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1436, !alias.scope !1442, !noalias !1439
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.cp
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1450

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc43
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc43 ], [ %i.dn, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ct) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.as, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.de, ptr %i.h, align 8, !tbaa !1438
  store ptr %i.dx, ptr %i.ar, align 8, !tbaa !1432
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dy, ptr %i.as, align 8, !tbaa !1435
  br label %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ap, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.dz = add nuw i64 %.02293, 1                  ; 2 uses
  %i.ea = load ptr, ptr %i.ao, align 8, !tbaa !75
  %i.eb = load ptr, ptr %i.ah, align 8, !tbaa !78
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3
  %i.eg = icmp ult i64 %i.dz, %i.ef
  br i1 %i.eg, label %bb.g, label %._crit_edge, !llvm.loop !1451

bb.at:                                            ; preds = %bb.i, %bb.h, %bb.g
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14WindowExecutorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47

_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit.split-lp: ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47

_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47: ; preds = %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb14WindowExecutorESt14default_deleteIS1_EED2Ev.exit47.loopexit.split-lp ]
  %i.ej = load ptr, ptr %.sink.i, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  tail call void %i.el(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.sink.i) #27, !inline_history !1452
  br label %.body

bb.av:                                            ; preds = %._crit_edge
  %i.em = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %i.en = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.eo = load ptr, ptr %i.au, align 8, !tbaa !1010
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.es = load i64, ptr %i.er, align 8, !tbaa !941
  invoke void @_ZN6duckdb12SortStrategy7FactoryERNS_13ClientContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEERKNS3_INS_16BoundOrderByNodeELb1ESaISD_EEERKNS3_INS_11LogicalTypeELb1ESaISI_EEERKNS3_INS4_INS_14BaseStatisticsES6_ISN_ELb1EEELb1ESaISP_EEEmb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1080") align 8 %6, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 noundef %i.es, i1 noundef zeroext false)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.et = load ptr, ptr %6, align 8, !tbaa !1453
  store ptr null, ptr %6, align 8, !tbaa !1453
  %i.eu = load ptr, ptr %i.f, align 8, !tbaa !1453 ; 3 uses
  store ptr %i.et, ptr %i.f, align 8, !tbaa !1453
  %.not.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.aw
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eu) #27, !inline_history !1455
  %.pr = load ptr, ptr %6, align 8, !tbaa !1453   ; 3 uses
  %.not.i48 = icmp eq ptr %.pr, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ey = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #27, !inline_history !1456
  br label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aw, %_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.fb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ax unwind label %bb.ba     ; 2 uses

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  invoke void %i.fe(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.283") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(512) %2)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ff = load ptr, ptr %7, align 8, !tbaa !286
  store ptr null, ptr %7, align 8, !tbaa !286
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !286 ; 3 uses
  store ptr %i.ff, ptr %i.g, align 8, !tbaa !286
  %.not.i.i.i.i.i49 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i49, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ay
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !7
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(81) %i.fg) #27, !inline_history !288
  %.pr60 = load ptr, ptr %7, align 8, !tbaa !286  ; 3 uses
  %.not.i50 = icmp eq ptr %.pr60, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.fk = load ptr, ptr %.pr60, align 8, !tbaa !7
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(81) %.pr60) #27, !inline_history !289
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ay, %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.az:                                            ; preds = %bb.av, %._crit_edge
end_hunk_13
begin_hunk_14_@_ZN6duckdb23WindowGlobalSourceStateC2ERNS_13ClientContextERNS_21WindowGlobalSinkStateE:bb.a
  %storemerge34 = phi i64 [ %i.bh, %bb.r ], [ 0, %.preheader ] ; 5 uses
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %storemerge34)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1493 ; 2 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.r, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !1474, !nonnull !151, !align !241
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %storemerge34)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  %i.aw = invoke noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #28
          to label %.noexc unwind label %bb.s     ; 3 uses

.noexc:                                           ; preds = %bb.m
  invoke void @_ZN6duckdb15WindowHashGroupC1ERNS_21WindowGlobalSinkStateERKNS_12SortStrategy8ChunkRowEm(ptr noundef nonnull align 8 dereferenceable(312) %i.aw, ptr noundef nonnull align 8 dereferenceable(400) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef %storemerge34)
          to label %bb.o unwind label %bb.n, !noalias !1495

bb.n:                                             ; preds = %.noexc
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #30, !noalias !1495
  br label %.body

bb.o:                                             ; preds = %.noexc
  store ptr %i.aw, ptr %4, align 8, !tbaa !1498, !alias.scope !1495
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !1500
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowHashGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 304
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !1501
  %i.bb = load i64, ptr %i.g, align 8, !tbaa !1500
  %i.bc = add i64 %i.bb, %i.as
  store i64 %i.bc, ptr %i.g, align 8, !tbaa !1500
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15WindowHashGroupESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %storemerge34)
          to label %bb.q unwind label %bb.t       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %4, align 8, !tbaa !1498
  store ptr null, ptr %4, align 8, !tbaa !1498
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1498 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !1498
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i22, label %_ZN6duckdb10unique_ptrINS_15WindowHashGroupESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.q
  call void @_ZN6duckdb15WindowHashGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.bf) #27
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #30
  br label %_ZN6duckdb10unique_ptrINS_15WindowHashGroupESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15WindowHashGroupESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i.i.i.i.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !1498  ; 3 uses
  %.not.i23 = icmp eq ptr %i.bg, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb15WindowHashGroupESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15WindowHashGroupESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb15WindowHashGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.bg) #27
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #30
  br label %_ZNSt10unique_ptrIN6duckdb15WindowHashGroupESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15WindowHashGroupESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15WindowHashGroupESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN6duckdb15WindowHashGroupESt14default_deleteIS1_EED2Ev.exit
  %i.bh = add nuw i64 %storemerge34, 1            ; 2 uses
  %i.bi = load ptr, ptr %i.af, align 8, !tbaa !1489
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !1492
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4
  %i.bo = icmp ult i64 %i.bh, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !1539

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15WindowHashGroupESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  br label %.body

.body:                                            ; preds = %bb.s, %bb.n, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %i.bp, %bb.s ], [ %i.ax, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  ret void

bb.v:                                             ; preds = %bb.k, %.body, %bb.i, %bb.h, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.ap, %bb.h ], [ %i.aq, %bb.i ], [ %.pn, %.body ], [ %i.at, %bb.k ]
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %i.br) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.v, %bb.w
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !1540 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #30
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.x
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #27
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !774 ; 3 uses
  %.not.i25 = icmp eq ptr %i.bt, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i26

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i26: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(80) %i.bt) #27, !inline_history !799
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit27: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i26
  call void @_ZN6duckdb17GlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1541 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1542   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1543
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !1544
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1541
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !1544
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1498, !alias.scope !1551, !noalias !1546
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1498, !alias.scope !1551, !noalias !1546
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1498, !alias.scope !1554, !noalias !1551
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !1498, !alias.scope !1554, !noalias !1551
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1498, !alias.scope !1551, !noalias !1546
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1498, !alias.scope !1551, !noalias !1546
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1498, !alias.scope !1549, !noalias !1546
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1498, !alias.scope !1546, !noalias !1549
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1498, !alias.scope !1549, !noalias !1546
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1557

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1542
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1541
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !1543
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1498 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb15WindowHashGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.au) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowHashGroupEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1558

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1541
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1489
  %i.e = load ptr, ptr %0, align 8, !tbaa !1492   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !212
  store i64 %i.i, ptr %i.b, align 8, !tbaa !212
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EE3getILb1EEERKS2_m.exit, label %bb.b, !prof !213

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EE3getILb1EEERKS2_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowHashGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_14
begin_hunk_15_@_ZN6duckdb22WindowLocalSourceState4MaskERNS_16ExecutionContextERNS_14InterruptStateE:bb.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb15WindowHashGroup15GetGlobalStatesERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::ValidityMask>, std::allocator<std::pair<const unsigned long, duckdb::ValidityMask>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.283", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1620, !nonnull !151, !align !241 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !300
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !303
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1432 ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !1438 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.k, %i.q
  %.not36 = icmp eq ptr %i.n, %i.m
  %or.cond = or i1 %i.r, %.not36
  br i1 %or.cond, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %.sroa.026.037 = phi ptr [ %i.n, %.lr.ph ], [ %i.de, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14WindowExecutorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.026.037)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1648, !nonnull !151, !align !241 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1379
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !1380
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24
  %i.ar = add nsw i64 %i.aq, %i.ai                ; 5 uses
  %i.as = load i64, ptr %i.t, align 8, !tbaa !1588 ; 2 uses
  %i.at = urem i64 %i.ar, %i.as                   ; 3 uses
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !1587
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !243 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !212
  %i.ba = icmp eq i64 %i.ar, %i.az
  br i1 %i.ba, label %.loopexit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.bb = icmp eq i64 %i.ar, %i.be
  br i1 %i.bb, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1652

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.bc, %bb.f ], [ %i.ax, %bb.e ]
  %i.bc = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !243 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !212 ; 2 uses
  %i.bf = urem i64 %i.be, %i.as
  %.not19.i.i.i.i = icmp eq i64 %i.bf, %i.at
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1652

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit.i.i, !llvm.loop !1652

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.s, ptr %2, align 8, !tbaa !1653
  %i.bg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
          to label %.noexc unwind label %bb.o     ; 6 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bg, align 8, !tbaa !243
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.ar, ptr %i.bh, align 8, !tbaa !1657
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.bj, align 8, !tbaa !1586
  store ptr %i.bg, ptr %i.u, align 8, !tbaa !1659
  %i.bk = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb12ValidityMaskEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 noundef %i.at, i64 noundef %i.ar, ptr noundef nonnull %i.bg, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12ValidityMaskEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.h

_ZNSt10_HashtableImSt4pairIKmN6duckdb12ValidityMaskEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.loopexit

bb.h:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb12ValidityMaskEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

.loopexit:                                        ; preds = %bb.f, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12ValidityMaskEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.e
  %.pn.i.i = phi ptr [ %i.bk, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12ValidityMaskEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.ax, %bb.e ], [ %i.bc, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14WindowExecutorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.026.037)
          to label %bb.i unwind label %bb.p       ; 2 uses

bb.i:                                             ; preds = %.loopexit
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.bn = load i64, ptr %i.v, align 8, !tbaa !1646
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.283") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.1.i.i)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !300 ; 6 uses
  %i.bs = load ptr, ptr %i.x, align 8, !tbaa !304
  %.not.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i, label %bb.k, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.j
  %i.bt = load i64, ptr %3, align 8, !tbaa !286
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !286
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !303 ; 10 uses
  %i.bw = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64               ; 3 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc21 unwind label %.loopexit33 ; 10 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  %i.ci = load i64, ptr %3, align 8, !tbaa !286
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !286
  store ptr null, ptr %3, align 8, !tbaa !286
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.br
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc21
  %4 = add i64 %i.bw, -8
  %5 = sub i64 %4, %i.bx                          ; 2 uses
  %i.cj = lshr i64 %5, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cg, i64 8
  %i.cl = add i64 %i.bw, -8
  %i.cm = sub i64 %i.cl, %i.bx
  %i.cn = and i64 %i.cm, -8                       ; 2 uses
  %scevgep54 = getelementptr i8, ptr %scevgep, i64 %i.cn
  %scevgep55 = getelementptr i8, ptr %i.bv, i64 8
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %i.cn
  %bound0 = icmp ult ptr %i.cg, %scevgep56
  %bound1 = icmp ult ptr %i.bv, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cg, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bv, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cr ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.bv, i64 %i.cr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.cs = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !286, !alias.scope !1718, !noalias !1713
  %wide.load58 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !286, !alias.scope !1718, !noalias !1713
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !286, !alias.scope !1721, !noalias !1718
  store <2 x i64> %wide.load58, ptr %i.ct, align 8, !tbaa !286, !alias.scope !1721, !noalias !1718
  %i.cu = getelementptr i8, ptr %next.gep57, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep57, align 8, !tbaa !286, !alias.scope !1718, !noalias !1713
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !286, !alias.scope !1718, !noalias !1713
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.i.preheader60:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader60 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !286, !alias.scope !1716, !noalias !1713
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !286, !alias.scope !1713, !noalias !1716
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !286, !alias.scope !1716, !noalias !1713
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.br
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1724

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc21
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cg, %.noexc21 ], [ %i.cp, %middle.block ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.m
  store ptr %i.cg, ptr %i.e, align 8, !tbaa !303
  store ptr %i.cz, ptr %i.f, align 8, !tbaa !300
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.da, ptr %i.x, align 8, !tbaa !304
  %.pr = load ptr, ptr %3, align 8, !tbaa !286    ; 3 uses
  %.not.i22 = icmp eq ptr %.pr, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.db = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(81) %.pr) #27, !inline_history !289
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.026.037, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.de, %i.m
  br i1 %.not, label %.loopexit32, label %bb.c

bb.n:                                             ; preds = %bb.c
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %.loopexit.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.i, %.loopexit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit25

.loopexit33:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit33
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit33 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !286   ; 3 uses
  %.not.i23 = icmp eq ptr %i.di, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i24: ; preds = %bb.q
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(81) %i.di) #27, !inline_history !289
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit25: ; preds = %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i24, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.p ], [ %lpad.phi, %bb.q ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

.body:                                            ; preds = %bb.o, %bb.h, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit25, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.n ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit25 ], [ %i.dg, %bb.o ], [ %i.bl, %bb.h ]
  %i.dm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn

.loopexit32:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.dn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22WindowLocalSourceState4SinkERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::unique_ptr.356", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.1261", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::OperatorSinkInput", align 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1682, !nonnull !151, !align !241
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1474, !nonnull !151, !align !241 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_15WindowHashGroupELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1709
  %i.q = load ptr, ptr %1, align 8, !tbaa !1034, !nonnull !151, !align !241
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb15WindowHashGroup15GetGlobalStatesERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(312) %i.p, ptr noundef nonnull align 8 dereferenceable(512) %i.q) ; 3 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_15WindowHashGroupELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !1709 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16WindowSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1706
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1725 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1576
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !1577 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24                ; 2 uses
  %.not.i.i = icmp ult i64 %i.x, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, i64 noundef %i.x, i64 noundef %i.ae) #29
  unreachable

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE2atEm.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.x ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1726
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1726
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %.preheader112, label %.loopexit

.preheader112:                                    ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE2atEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1432
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !1438
  %.not121 = icmp eq ptr %i.al, %i.am
  br i1 %.not121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader112
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %.035115 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_14WindowExecutorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.035115)
  %i.ap = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14WindowExecutorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 2 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %.035115)
  %i.ar = call noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.356") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(81) %i.ar)
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !462 ; 6 uses
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !466
  %.not.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.c
  %i.ax = load i64, ptr %8, align 8, !tbaa !458
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !458
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !462
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !465 ; 10 uses
  %i.ba = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #28
          to label %.noexc37 unwind label %.loopexit113 ; 10 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = load i64, ptr %8, align 8, !tbaa !458
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !458
  store ptr null, ptr %8, align 8, !tbaa !458
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc37
  %11 = add i64 %i.ba, -8
  %12 = sub i64 %11, %i.bb                        ; 2 uses
  %i.bn = lshr i64 %12, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bk, i64 8
  %i.bp = add i64 %i.ba, -8
  %i.bq = sub i64 %i.bp, %i.bb
  %i.br = and i64 %i.bq, -8                       ; 2 uses
  %scevgep146 = getelementptr i8, ptr %scevgep, i64 %i.br
  %scevgep147 = getelementptr i8, ptr %i.az, i64 8
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.br
  %bound0 = icmp ult ptr %i.bk, %scevgep148
  %bound1 = icmp ult ptr %i.az, %scevgep146
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.az, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.bv ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.az, i64 %i.bv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  %i.bw = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep149, align 8, !tbaa !458, !alias.scope !1732, !noalias !1727
  %wide.load150 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !458, !alias.scope !1732, !noalias !1727
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !458, !alias.scope !1735, !noalias !1732
  store <2 x i64> %wide.load150, ptr %i.bx, align 8, !tbaa !458, !alias.scope !1735, !noalias !1732
  %i.by = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep149, align 8, !tbaa !458, !alias.scope !1732, !noalias !1727
  store <2 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !458, !alias.scope !1732, !noalias !1727
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1737

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader152

.lr.ph.i.i.i.i.i.i.preheader152:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader152, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader152 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader152 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !458, !alias.scope !1730, !noalias !1727
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !458, !alias.scope !1727, !noalias !1730
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !458, !alias.scope !1730, !noalias !1727
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1738

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc37
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bk, %.noexc37 ], [ %i.bt, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.az) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.f
  store ptr %i.bk, ptr %i.af, align 8, !tbaa !465
  store ptr %i.cd, ptr %i.ah, align 8, !tbaa !462
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.ce, ptr %i.an, align 8, !tbaa !466
  %.pr = load ptr, ptr %8, align 8, !tbaa !458    ; 3 uses
  %.not.i38 = icmp eq ptr %.pr, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.cf = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.pr) #27, !inline_history !461
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ci = add nuw i64 %.035115, 1                 ; 2 uses
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !1432
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !1438
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %i.cp = icmp ult i64 %i.ci, %i.co
  br i1 %i.cp, label %bb.c, label %.loopexit, !llvm.loop !1739

.loopexit113:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit113
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit113 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cq = load ptr, ptr %8, align 8, !tbaa !458   ; 3 uses
  %.not.i39 = icmp eq ptr %i.cq, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit41, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i40

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i40: ; preds = %bb.g
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.cq) #27, !inline_history !461
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit41

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i75, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i61, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i54, %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.y, %bb.p, %bb.i, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit41
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit41 ], [ %i.dg, %bb.i ], [ %i.ff, %bb.p ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60 ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i53 ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.y ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.ac ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i54 ], [ %.pn8.i.i.i50, %bb.ag ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i61 ], [ %.pn9.i.i57, %bb.ak ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i75 ], [ %.pn9.i.i71, %bb.ao ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit41: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, %.preheader112, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE2atEm.exit
  call void @_ZNK6duckdb12optional_ptrINS_15WindowHashGroupELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !1709 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_16WindowSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1619, !noalias !1740
  %.not.i42 = icmp eq ptr %i.cw, null
  br i1 %.not.i42, label %_ZNK6duckdb15WindowHashGroup10GetScannerEm.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.cx = load ptr, ptr %i.u, align 8, !tbaa !1706
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1708
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !1620, !noalias !1740, !nonnull !151, !align !241
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db), !noalias !1740
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv), !noalias !1740
  %i.df = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28, !noalias !1743 ; 3 uses
  invoke void @_ZN6duckdb28WindowCollectionChunkScannerC2ERNS_20ColumnDataCollectionERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(232) %i.df, ptr noundef nonnull align 8 dereferenceable(112) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 noundef %i.cz)
          to label %_ZNK6duckdb15WindowHashGroup10GetScannerEm.exit unwind label %bb.i, !noalias !1743

bb.i:                                             ; preds = %bb.h
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.df) #30, !noalias !1743
  br label %common.resume

_ZNK6duckdb15WindowHashGroup10GetScannerEm.exit:  ; preds = %.loopexit, %bb.h
  %storemerge.i = phi ptr [ null, %.loopexit ], [ %i.df, %bb.h ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1624 ; 4 uses
  store ptr %storemerge.i, ptr %i.dh, align 8, !tbaa !1624
  %.not.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb28WindowCollectionChunkScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb28WindowCollectionChunkScannerEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb28WindowCollectionChunkScannerEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNK6duckdb15WindowHashGroup10GetScannerEm.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.dj) #27
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.dk) #27
  call void @_ZdlPv(ptr noundef nonnull %i.di) #30
  %.pr106 = load ptr, ptr %i.dh, align 8, !tbaa !1624
  br label %_ZNSt10unique_ptrIN6duckdb28WindowCollectionChunkScannerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb28WindowCollectionChunkScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb28WindowCollectionChunkScannerEEclEPS1_.exit.i.i.i.i.i, %_ZNK6duckdb15WindowHashGroup10GetScannerEm.exit
  %i.dl = phi ptr [ %.pr106, %_ZNKSt14default_deleteIN6duckdb28WindowCollectionChunkScannerEEclEPS1_.exit.i.i.i.i.i ], [ %storemerge.i, %_ZNK6duckdb15WindowHashGroup10GetScannerEm.exit ]
  %.not110 = icmp eq ptr %i.dl, null
  br i1 %.not110, label %_ZN6duckdb10unique_ptrINS_28WindowCollectionChunkScannerESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %.preheader

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN6duckdb28WindowCollectionChunkScannerESt14default_deleteIS1_EED2Ev.exit
  call void @_ZNK6duckdb12optional_ptrINS_16WindowSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !1706
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !1708
  call void @_ZNK6duckdb12optional_ptrINS_16WindowSourceTaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.dp = load ptr, ptr %i.u, align 8, !tbaa !1706
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1707
  %i.ds = icmp ult i64 %i.do, %i.dr
  br i1 %i.ds, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
end_hunk_15
begin_hunk_16_@_ZN6duckdb20StreamingWindowState12LeadLagState10ExecuteLagERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorE:bb.a
bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i28
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #27
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit30

_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit30: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i28, %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 2048, ptr %i.bt, align 8, !tbaa !1586
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 noundef %i.e, i64 noundef %i.ba, i64 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit30, %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20StreamingWindowState12LeadLagState11ExecuteLeadERNS_16ExecutionContextERNS_9DataChunkES5_RNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(104) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !559  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2068 ; 4 uses
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1895
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  store i64 %i.i, ptr %i.h, align 8, !tbaa !1895
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb18ExpressionExecutor7ExecuteEPNS_9DataChunkERS1_(ptr noundef nonnull align 8 dereferenceable(65) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %i.b, i64 noundef %i.f, i64 noundef 0)
  %i.k = sub nuw i64 %i.b, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.039 = phi i64 [ %i.b, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !559
  %i.n = add i64 %i.m, %i.b
  %i.o = icmp ult i64 %.039, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1895
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  store i64 %i.q, ptr %i.p, align 8, !tbaa !1895
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb18ExpressionExecutor7ExecuteEPNS_9DataChunkERS1_(ptr noundef nonnull align 8 dereferenceable(65) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  %i.s = sub i64 %.039, %i.b                      ; 2 uses
  %i.t = load i64, ptr %i.l, align 8, !tbaa !559
  %i.u = sub i64 %.039, %.0
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.u) ; 2 uses
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %i.v, i64 noundef %i.s, i64 noundef %.0)
  %i.w = sub i64 %.0, %i.s
  %i.x = add i64 %i.w, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.x, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.y = icmp ult i64 %.1, %i.b
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = sub nuw i64 %i.b, %.1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %i.z, i64 noundef 0, i64 noundef %.1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2066
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
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
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1885 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1888   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2070
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2071
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1885
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2071
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1746, !alias.scope !2078, !noalias !2073
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1746, !alias.scope !2078, !noalias !2073
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1746, !alias.scope !2081, !noalias !2078
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !1746, !alias.scope !2081, !noalias !2078
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1746, !alias.scope !2078, !noalias !2073
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1746, !alias.scope !2078, !noalias !2073
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2083

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1746, !alias.scope !2076, !noalias !2073
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1746, !alias.scope !2073, !noalias !2076
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1746, !alias.scope !2076, !noalias !2073
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2084

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1888
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1885
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !2070
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1746 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.au) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2085

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1885
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1879 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1882   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2086
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2087
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1879
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2087
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1883, !alias.scope !2094, !noalias !2089
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1883, !alias.scope !2094, !noalias !2089
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1883, !alias.scope !2097, !noalias !2094
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !1883, !alias.scope !2097, !noalias !2094
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1883, !alias.scope !2094, !noalias !2089
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1883, !alias.scope !2094, !noalias !2089
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2099

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1883, !alias.scope !2092, !noalias !2089
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1883, !alias.scope !2089, !noalias !2092
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1883, !alias.scope !2092, !noalias !2089
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2100

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1882
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1879
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !2086
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1883 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb20StreamingWindowState14AggregateStateEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20StreamingWindowState14AggregateStateEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb20StreamingWindowState14AggregateStateD2Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %i.au) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20StreamingWindowState14AggregateStateEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2101

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1879
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1889 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1892   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2102
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2103
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1889
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2103
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1893, !alias.scope !2110, !noalias !2105
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1893, !alias.scope !2110, !noalias !2105
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1893, !alias.scope !2113, !noalias !2110
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !1893, !alias.scope !2113, !noalias !2110
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1893, !alias.scope !2110, !noalias !2105
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1893, !alias.scope !2110, !noalias !2105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1893, !alias.scope !2108, !noalias !2105
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1893, !alias.scope !2105, !noalias !2108
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1893, !alias.scope !2108, !noalias !2105
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2116

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1892
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1889
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !2102
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1893 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb20StreamingWindowState12LeadLagStateEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i, ptr noundef nonnull %i.au)
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2117

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1889
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb20StreamingWindowState14AggregateStateESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1883   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb20StreamingWindowState14AggregateStateEEclEPS2_.exit

_ZNKSt14default_deleteIN6duckdb20StreamingWindowState14AggregateStateEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb20StreamingWindowState14AggregateStateD2Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %i.a) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb20StreamingWindowState14AggregateStateEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb20StreamingWindowState13GetFirstValueERNS_13ClientContextERNS_9DataChunkERNS_21BoundWindowExpressionE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(296) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::ExpressionExecutor", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::DataChunk", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 11 uses
  %8 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(65) %5, ptr noundef nonnull align 8 dereferenceable(512) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %5, ptr noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc unwind label %.body19.thread ; 4 uses

.noexc:                                           ; preds = %bb.h
  store ptr %i.g, ptr %7, align 8, !tbaa !297
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !294
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !293
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 2048)
          to label %bb.l unwind label %bb.u

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #27 ; 0 uses
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
end_hunk_16
begin_hunk_17_@_ZN6duckdb10shared_ptrINS_34HashAggregateDistinctFinalizeEventELb1EE18__enable_weak_thisINS_5EventES1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSC_S7_:bb.a
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_34HashAggregateDistinctFinalizeEventEEERKNS0_IT_Lb1EEEPS1_.exit: ; preds = %_ZNK6duckdb8weak_ptrINS_5EventELb1EE7expiredEv.exit.thread
  store ptr %2, ptr %1, align 8, !tbaa !693
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d, %bb.e
  store ptr %2, ptr %1, align 8, !tbaa !693
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i7 = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_34HashAggregateDistinctFinalizeEventEEERKNS0_IT_Lb1EEEPS1_.exit, %bb.h, %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !578  ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not6.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i7.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i7.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !2288
  br label %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  store ptr %i.g, ptr %i.a, align 8, !tbaa !578
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ab, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !25
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !645
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27, !inline_history !645
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i9 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.p ], [ %i.ao, %bb.q ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.r, label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, !prof !33

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #27
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit:  ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, %_ZNK6duckdb8weak_ptrINS_5EventELb1EE7expiredEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb30HashAggregateGlobalSourceStateC2ERNS_13ClientContextERKNS_21PhysicalHashAggregateE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(496) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.533", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !1181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb30HashAggregateGlobalSourceStateE, i64 16), ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.c, align 8, !tbaa !690
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2240 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2240 ; 2 uses
  %.not19 = icmp eq ptr %i.g, %i.i
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %.sroa.015.020 = phi ptr [ %i.g, %.lr.ph ], [ %i.ay, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK6duckdb25RadixPartitionedHashTable20GetGlobalSourceStateERNS_13ClientContextE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.533") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.015.020, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !773  ; 6 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !769
  %.not.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i, label %bb.d, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.c
  %i.n = load i64, ptr %3, align 8, !tbaa !774
  store i64 %i.n, ptr %i.l, align 8, !tbaa !774
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !773
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !772  ; 10 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28
          to label %.noexc11 unwind label %.loopexit ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  %i.ac = load i64, ptr %3, align 8, !tbaa !774
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !774
  store ptr null, ptr %3, align 8, !tbaa !774
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %4 = add i64 %i.q, -8
  %5 = sub i64 %4, %i.r                           ; 2 uses
  %i.ad = lshr i64 %5, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.aa, i64 8
  %i.af = add i64 %i.q, -8
  %i.ag = sub i64 %i.af, %i.r
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %scevgep27 = getelementptr i8, ptr %scevgep, i64 %i.ah
  %scevgep28 = getelementptr i8, ptr %i.p, i64 8
  %scevgep29 = getelementptr i8, ptr %scevgep28, i64 %i.ah
  %bound0 = icmp ult ptr %i.aa, %scevgep29
  %bound1 = icmp ult ptr %i.p, %scevgep27
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.al ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.p, i64 %i.al ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  %i.am = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !774, !alias.scope !2295, !noalias !2290
  %wide.load31 = load <2 x i64>, ptr %i.am, align 8, !tbaa !774, !alias.scope !2295, !noalias !2290
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !774, !alias.scope !2298, !noalias !2295
  store <2 x i64> %wide.load31, ptr %i.an, align 8, !tbaa !774, !alias.scope !2298, !noalias !2295
  %i.ao = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !774, !alias.scope !2295, !noalias !2290
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !774, !alias.scope !2295, !noalias !2290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !2300

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !2293, !noalias !2290
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !2290, !noalias !2293
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !774, !alias.scope !2293, !noalias !2290
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2301

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.noexc11 ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.p) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.f
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !772
  store ptr %i.at, ptr %i.j, align 8, !tbaa !773
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.au, ptr %i.k, align 8, !tbaa !769
  %.pr = load ptr, ptr %3, align 8, !tbaa !774    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.av = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(80) %.pr) #27, !inline_history !799
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 120 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit14

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !774   ; 3 uses
  %.not.i12 = icmp eq ptr %i.ba, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i13: ; preds = %bb.h
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(80) %i.ba) #27, !inline_history !799
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit14: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i13, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.az, %bb.g ], [ %lpad.phi, %bb.h ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #27
  call void @_ZN6duckdb17GlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb30HashAggregateGlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb30HashAggregateGlobalSourceStateE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !772  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !773  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !774 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(80) %i.e) #27, !inline_history !801
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !802

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !772
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1770 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1771 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !578  ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN6duckdb30HashAggregateGlobalSourceStateD2Ev:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !578 ; 4 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i2.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i2.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
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
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27, !inline_history !1970
  br label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i, %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.ak, %i.n
  br i1 %.not.i.i.i.i.i1, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1774

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !1770
  br label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.al = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i, label %_ZN6duckdb17GlobalSourceStateD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #30
  br label %_ZN6duckdb17GlobalSourceStateD2Ev.exit

_ZN6duckdb17GlobalSourceStateD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb30HashAggregateGlobalSourceStateD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb30HashAggregateGlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb30HashAggregateGlobalSourceState10MaxThreadsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2302, !nonnull !151, !align !241 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2240
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2240
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !2302, !nonnull !151, !align !241 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 336 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !518
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !538
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.q = phi ptr [ %i.k, %.lr.ph ], [ %i.y, %bb.c ]
  %.01013 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.c ]
  %.01112 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.c ] ; 3 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6duckdb6vectorINS_25HashAggregateGroupingDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %.01112)
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_32HashAggregateGroupingGlobalStateELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.01112)
  %i.t = tail call noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6duckdb25RadixPartitionedHashTable10MaxThreadsERNS_15GlobalSinkStateE(ptr noundef nonnull align 8 dereferenceable(112) %i.r, ptr noundef nonnull align 8 dereferenceable(81) %i.t)
  %i.v = add i64 %i.u, %.01013                    ; 2 uses
  %i.w = add nuw i64 %.01112, 1                   ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !2302, !nonnull !151, !align !241 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 344
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !518
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !538
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 120
  %i.ag = icmp ult i64 %i.w, %i.af
  br i1 %i.ag, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !2304

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit, %bb.a
  %.0 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.p, %._crit_edge.loopexit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb29HashAggregateLocalSourceStateC2ERNS_16ExecutionContextERKNS_21PhysicalHashAggregateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(496) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.612", align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb29HashAggregateLocalSourceStateE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !920
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2240 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2240 ; 2 uses
  %.not18 = icmp eq ptr %i.d, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %.sroa.014.019 = phi ptr [ %i.d, %.lr.ph ], [ %i.av, %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK6duckdb25RadixPartitionedHashTable19GetLocalSourceStateERNS_16ExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.612") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.014.019, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !925  ; 6 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !2305
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.d, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.c
  %i.k = load i64, ptr %3, align 8, !tbaa !888
  store i64 %i.k, ptr %i.i, align 8, !tbaa !888
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !925
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !928  ; 10 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28
          to label %.noexc10 unwind label %.loopexit ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = load i64, ptr %3, align 8, !tbaa !888
  store i64 %i.z, ptr %i.y, align 8, !tbaa !888
  store ptr null, ptr %3, align 8, !tbaa !888
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %4 = add i64 %i.n, -8
  %5 = sub i64 %4, %i.o                           ; 2 uses
  %i.aa = lshr i64 %5, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.x, i64 8
  %i.ac = add i64 %i.n, -8
  %i.ad = sub i64 %i.ac, %i.o
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep, i64 %i.ae
  %scevgep27 = getelementptr i8, ptr %i.m, i64 8
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.ae
  %bound0 = icmp ult ptr %i.x, %scevgep28
  %bound1 = icmp ult ptr %i.m, %scevgep26
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.m, i64 %i.ai ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.aj = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !tbaa !888, !alias.scope !2311, !noalias !2306
  %wide.load30 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !888, !alias.scope !2311, !noalias !2306
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !888, !alias.scope !2314, !noalias !2311
  store <2 x i64> %wide.load30, ptr %i.ak, align 8, !tbaa !888, !alias.scope !2314, !noalias !2311
  %i.al = getelementptr i8, ptr %next.gep29, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep29, align 8, !tbaa !888, !alias.scope !2311, !noalias !2306
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !888, !alias.scope !2311, !noalias !2306
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader32

.lr.ph.i.i.i.i.i.i.i.preheader32:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader32, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader32 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader32 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !888, !alias.scope !2309, !noalias !2306
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !888, !alias.scope !2306, !noalias !2309
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !888, !alias.scope !2309, !noalias !2306
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2317

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc10 ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.f
  store ptr %i.x, ptr %i.b, align 8, !tbaa !928
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !925
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !2305
  %.pr = load ptr, ptr %3, align 8, !tbaa !888    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #27, !inline_history !890
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 120 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit13

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !888   ; 3 uses
  %.not.i11 = icmp eq ptr %i.ax, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i12: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #27, !inline_history !890
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i12, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %lpad.phi, %bb.h ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !928    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !925  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !888 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #27, !inline_history !2318
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2319

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !928
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb29HashAggregateLocalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb29HashAggregateLocalSourceStateE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !928  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !925  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !888 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16LocalSourceStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #27, !inline_history !2320
end_hunk_18
