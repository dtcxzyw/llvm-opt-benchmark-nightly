Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_arrow?download=true
inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EEC2INS0_14ArrowBatchTaskESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !122

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !116
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN6duckdb14ArrowBatchTaskESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  store i32 0, ptr %i.ab, align 8, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !119
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1807
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1807
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i7 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSA_m.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1811 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(360) %i.b) #34, !inline_history !1809
  br label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !69
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE) #34
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !69
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6duckdb25QueryResultChunkScanStateC1ERNS_11QueryResultE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(392)) unnamed_addr #3

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare void @_ZN6duckdb23PhysicalResultCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

declare void @_ZN6duckdb22PhysicalBatchCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not116 = icmp eq ptr %2, %3
  br i1 %.not116, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !585
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !518  ; 27 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 7 uses
  %i.q = add i64 %i.a, -8
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check184 = icmp ult i64 %i.r, 200
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck185

vector.memcheck185:                               ; preds = %bb.d
  %i.u = and i64 %i.r, -8                         ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = add i64 %i.u, %i.b
  %i.y = add i64 %i.x, 8
  %i.z = sub i64 %i.y, %i.a
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.z
  %bound0186 = icmp ult ptr %i.h, %i.aa
  %bound1187 = icmp ult ptr %i.p, %i.w
  %found.conflict188 = and i1 %bound0186, %bound1187
  br i1 %found.conflict188, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck185
  %n.vec190 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.ab = shl i64 %n.vec190, 3                    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ab
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %i.ae = shl i64 %index192, 3                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.h, i64 %i.ae ; 2 uses
  %next.gep194 = getelementptr i8, ptr %i.p, i64 %i.ae ; 4 uses
  %i.af = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load195 = load <2 x i64>, ptr %next.gep194, align 8, !tbaa !521, !alias.scope !1841
  %wide.load196 = load <2 x i64>, ptr %i.af, align 8, !tbaa !521, !alias.scope !1841
  %i.ag = getelementptr i8, ptr %next.gep193, i64 16
  store <2 x i64> %wide.load195, ptr %next.gep193, align 8, !tbaa !521, !alias.scope !1842, !noalias !1841
  store <2 x i64> %wide.load196, ptr %i.ag, align 8, !tbaa !521, !alias.scope !1842, !noalias !1841
  %i.ah = getelementptr i8, ptr %next.gep194, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep194, align 8, !tbaa !521, !alias.scope !1841
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !521, !alias.scope !1841
  %index.next197 = add nuw i64 %index192, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.ai, label %middle.block198, label %vector.body191, !llvm.loop !1815

middle.block198:                                  ; preds = %vector.body191
  %cmp.n199 = icmp eq i64 %i.t, %n.vec190
  br i1 %cmp.n199, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck185, %bb.d, %middle.block198
  %.013.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck185 ], [ %i.h, %bb.d ], [ %i.ac, %middle.block198 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck185 ], [ %i.p, %bb.d ], [ %i.ad, %middle.block198 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !521
  store i64 %i.aj, ptr %.013.i.i.i.i.i, align 8, !tbaa !521
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !521
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1816

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block198
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.am, ptr %i.g, align 8, !tbaa !518
  %i.an = ptrtoint ptr %i.p to i64
  %i.ao = sub i64 %i.an, %i.l
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.av, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.ap, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.h, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !521
  store ptr null, ptr %i.ar, align 8, !tbaa !521
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !521 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !521
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.au) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %i.av = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, !llvm.loop !1817

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ax = icmp sgt i64 %i.d, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55
  %.012.i.i.i.i.i = phi i64 [ %i.bc, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %i.d, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bb, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %1, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ba, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %2, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.ay = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !521
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !521
  %i.az = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !521 ; 3 uses
  store ptr %i.ay, ptr %.0811.i.i.i.i.i, align 8, !tbaa !521
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i52
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.az) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i52
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bc = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1818

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.m ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, %3
  br i1 %.not10.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bf = add i64 %i.a, %i.l
  %i.bg = add i64 %i.bf, -8
  %i.bh = add i64 %i.j, %i.b
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 232
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader271, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bl = and i64 %i.bi, -8                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.h, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = add i64 %i.bl, %i.j
  %i.bp = add i64 %i.bo, 8
  %i.bq = sub i64 %i.bp, %i.l
  %i.br = getelementptr i8, ptr %2, i64 %i.bq
  %bound0 = icmp ult ptr %i.h, %i.br
  %bound1 = icmp ult ptr %i.be, %i.bn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader271, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.h, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.be, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bv ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.be, i64 %i.bv ; 4 uses
  %i.bw = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep151, align 8, !tbaa !521, !alias.scope !1843
  %wide.load152 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !521, !alias.scope !1843
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !521, !alias.scope !1844, !noalias !1843
  store <2 x i64> %wide.load152, ptr %i.bx, align 8, !tbaa !521, !alias.scope !1844, !noalias !1843
  %i.by = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep151, align 8, !tbaa !521, !alias.scope !1843
  store <2 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !521, !alias.scope !1843
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1822

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader271

.lr.ph.i.i.i.i.preheader271:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.sroa.08.011.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader271, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader271 ] ; 2 uses
  %.sroa.08.011.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader271 ] ; 3 uses
  %i.ca = load i64, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !521
  store i64 %i.ca, ptr %.012.i.i.i.i, align 8, !tbaa !521
  store ptr null, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !521
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cb, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1823

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cd = sub nsw i64 %i.d, %i.n
  %i.ce = getelementptr [8 x i8], ptr %i.h, i64 %i.cd ; 5 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.cf = add i64 %i.j, -8
  %i.cg = sub i64 %i.cf, %i.l                     ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.cg, 200
  br i1 %min.iters.check160, label %.lr.ph.i.i.i.i.i57.preheader270, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %i.cj = and i64 %i.cg, -8                       ; 2 uses
  %i.ck = add i64 %i.c, %i.cj
  %i.cl = add i64 %i.ck, 8
  %i.cm = sub i64 %i.cl, %i.m
  %i.cn = getelementptr i8, ptr %i.h, i64 %i.cm
  %i.co = getelementptr i8, ptr %1, i64 %i.cj
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %bound0162 = icmp ult ptr %i.ce, %i.cp
  %bound1163 = icmp ult ptr %1, %i.cn
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i.i.i.i.i57.preheader270, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck161
  %n.vec166 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cq = shl i64 %n.vec166, 3                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ce, i64 %i.cq
  %i.cs = getelementptr i8, ptr %1, i64 %i.cq
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.ct = shl i64 %index168, 3                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.ce, i64 %i.ct ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.ct ; 4 uses
  %i.cu = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load171 = load <2 x i64>, ptr %next.gep170, align 8, !tbaa !521, !alias.scope !1845
  %wide.load172 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !521, !alias.scope !1845
  %i.cv = getelementptr i8, ptr %next.gep169, i64 16
  store <2 x i64> %wide.load171, ptr %next.gep169, align 8, !tbaa !521, !alias.scope !1846, !noalias !1845
  store <2 x i64> %wide.load172, ptr %i.cv, align 8, !tbaa !521, !alias.scope !1846, !noalias !1845
  %i.cw = getelementptr i8, ptr %next.gep170, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep170, align 8, !tbaa !521, !alias.scope !1845
  store <2 x ptr> splat (ptr null), ptr %i.cw, align 8, !tbaa !521, !alias.scope !1845
  %index.next173 = add nuw i64 %index168, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.cx, label %middle.block174, label %vector.body167, !llvm.loop !1827

middle.block174:                                  ; preds = %vector.body167
  %cmp.n175 = icmp eq i64 %i.ci, %n.vec166
  br i1 %cmp.n175, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader270

.lr.ph.i.i.i.i.i57.preheader270:                  ; preds = %vector.memcheck161, %.lr.ph.i.i.i.i.i57.preheader, %middle.block174
  %.013.i.i.i.i.i58.ph = phi ptr [ %i.ce, %vector.memcheck161 ], [ %i.ce, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cr, %middle.block174 ]
  %.sroa.08.012.i.i.i.i.i59.ph = phi ptr [ %1, %vector.memcheck161 ], [ %1, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cs, %middle.block174 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader270, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i57 ], [ %.013.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader270 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.08.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader270 ] ; 3 uses
  %i.cy = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !521
  store i64 %i.cy, ptr %.013.i.i.i.i.i58, align 8, !tbaa !521
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !521
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.cz, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1828

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block174, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.db, ptr %i.g, align 8, !tbaa !518
  %i.dc = ashr exact i64 %i.m, 3                  ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i65 = phi i64 [ %i.di, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %i.dc, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.dh, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.dg, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %i.de = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !521
  store ptr null, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !521
  %i.df = load ptr, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !521 ; 3 uses
  store ptr %i.de, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !521
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i64
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.df) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.df) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  %i.di = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.dj = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1818

bb.e:                                             ; preds = %bb.b
  %i.dk = load ptr, ptr %0, align 8, !tbaa !519   ; 9 uses
  %i.dl = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dm = sub i64 %i.j, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 4 uses
  %i.do = sub nsw i64 1152921504606846975, %i.dn
  %i.dp = icmp ult i64 %i.do, %i.d
  br i1 %i.dp, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.d)
  %i.dq = add nsw i64 %.sroa.speculated.i, %i.dn  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dn
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #35
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.dw = phi ptr [ %i.dv, %bb.g ], [ null, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %i.dk, %1
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %4 = ptrtoaddr ptr %1 to i64
  %i.dx = add i64 %4, -8
  %i.dy = sub i64 %i.dx, %i.dl                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check203 = icmp ult i64 %i.dy, 24
  br i1 %min.iters.check203, label %.lr.ph.i.i.i.i.i73.preheader267, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec205 = and i64 %i.ea, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec205, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dw, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dk, i64 %i.eb
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next212, %vector.body206 ] ; 2 uses
  %i.ee = shl i64 %index207, 3                    ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.dw, i64 %i.ee ; 2 uses
  %next.gep209 = getelementptr i8, ptr %i.dk, i64 %i.ee ; 4 uses
  %i.ef = getelementptr i8, ptr %next.gep209, i64 16
  %wide.load210 = load <2 x i64>, ptr %next.gep209, align 8, !tbaa !521
  %wide.load211 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !521
  %i.eg = getelementptr i8, ptr %next.gep208, i64 16
  store <2 x i64> %wide.load210, ptr %next.gep208, align 8, !tbaa !521
  store <2 x i64> %wide.load211, ptr %i.eg, align 8, !tbaa !521
  %i.eh = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep209, align 8, !tbaa !521
  store <2 x ptr> splat (ptr null), ptr %i.eh, align 8, !tbaa !521
  %index.next212 = add nuw i64 %index207, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.ei, label %middle.block213, label %vector.body206, !llvm.loop !1829

middle.block213:                                  ; preds = %vector.body206
  %cmp.n214 = icmp eq i64 %i.ea, %n.vec205
  br i1 %cmp.n214, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader267

.lr.ph.i.i.i.i.i73.preheader267:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block213
  %.013.i.i.i.i.i74.ph = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ec, %middle.block213 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ed, %middle.block213 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader267, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader267 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader267 ] ; 3 uses
  %i.ej = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !521
  store i64 %i.ej, ptr %.013.i.i.i.i.i74, align 8, !tbaa !521
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !521
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.ek, %1
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1830

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block213, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.dw, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit ], [ %i.ec, %middle.block213 ], [ %i.el, %.lr.ph.i.i.i.i.i73 ] ; 6 uses
  %i.em = add i64 %i.a, -8
  %i.en = sub i64 %i.em, %i.b                     ; 3 uses
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.en, 136
  br i1 %min.iters.check223, label %.lr.ph.i.i.i.i79.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.eq = and i64 %i.en, -8
  %i.er = add i64 %i.eq, 8                        ; 2 uses
  %i.es = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.er
  %i.et = getelementptr i8, ptr %2, i64 %i.er
  %bound0225 = icmp ult ptr %.0.lcssa.i.i.i.i.i77, %i.et
  %bound1226 = icmp ult ptr %2, %i.es
  %found.conflict227 = and i1 %bound0225, %bound1226
  br i1 %found.conflict227, label %.lr.ph.i.i.i.i79.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck224
  %n.vec229 = and i64 %i.ep, 4611686018427387900  ; 3 uses
  %i.eu = shl i64 %n.vec229, 3                    ; 2 uses
  %i.ev = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.eu ; 2 uses
  %i.ew = getelementptr i8, ptr %2, i64 %i.eu
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body230 ] ; 2 uses
  %i.ex = shl i64 %index231, 3                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.ex ; 2 uses
  %next.gep233 = getelementptr i8, ptr %2, i64 %i.ex ; 4 uses
  %i.ey = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load234 = load <2 x i64>, ptr %next.gep233, align 8, !tbaa !521, !alias.scope !1847
  %wide.load235 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !521, !alias.scope !1847
  %i.ez = getelementptr i8, ptr %next.gep232, i64 16
  store <2 x i64> %wide.load234, ptr %next.gep232, align 8, !tbaa !521, !alias.scope !1848, !noalias !1847
  store <2 x i64> %wide.load235, ptr %i.ez, align 8, !tbaa !521, !alias.scope !1848, !noalias !1847
  %i.fa = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep233, align 8, !tbaa !521, !alias.scope !1847
  store <2 x ptr> splat (ptr null), ptr %i.fa, align 8, !tbaa !521, !alias.scope !1847
  %index.next236 = add nuw i64 %index231, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.fb, label %middle.block237, label %vector.body230, !llvm.loop !1834

middle.block237:                                  ; preds = %vector.body230
  %cmp.n238 = icmp eq i64 %i.ep, %n.vec229
  br i1 %cmp.n238, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79.preheader

.lr.ph.i.i.i.i79.preheader:                       ; preds = %vector.memcheck224, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %middle.block237
  %.012.i.i.i.i80.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77, %vector.memcheck224 ], [ %.0.lcssa.i.i.i.i.i77, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ev, %middle.block237 ]
  %.sroa.08.011.i.i.i.i81.ph = phi ptr [ %2, %vector.memcheck224 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ew, %middle.block237 ]
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79.preheader, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i79 ], [ %.012.i.i.i.i80.ph, %.lr.ph.i.i.i.i79.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i81 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i79 ], [ %.sroa.08.011.i.i.i.i81.ph, %.lr.ph.i.i.i.i79.preheader ] ; 3 uses
  %i.fc = load i64, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !521
  store i64 %i.fc, ptr %.012.i.i.i.i80, align 8, !tbaa !521
  store ptr null, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !521
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i81, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 8 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.fd, %3
  br i1 %.not.i.i.i.i82, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79, !llvm.loop !1835

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84: ; preds = %.lr.ph.i.i.i.i79, %middle.block237
  %.lcssa148 = phi ptr [ %i.ev, %middle.block237 ], [ %i.fe, %.lr.ph.i.i.i.i79 ] ; 7 uses
  %.not11.i.i.i.i.i85 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i86.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %5 = ptrtoaddr ptr %1 to i64
  %i.ff = add i64 %i.j, -8
  %i.fg = sub i64 %i.ff, %5                       ; 3 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check247 = icmp ult i64 %i.fg, 136
  br i1 %min.iters.check247, label %.lr.ph.i.i.i.i.i86.preheader265, label %vector.memcheck248

vector.memcheck248:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader
  %i.fj = and i64 %i.fg, -8
  %i.fk = add i64 %i.fj, 8                        ; 2 uses
  %i.fl = getelementptr i8, ptr %.lcssa148, i64 %i.fk
  %i.fm = getelementptr i8, ptr %1, i64 %i.fk
  %bound0249 = icmp ult ptr %.lcssa148, %i.fm
  %bound1250 = icmp ult ptr %1, %i.fl
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph.i.i.i.i.i86.preheader265, label %vector.ph252

vector.ph252:                                     ; preds = %vector.memcheck248
  %n.vec253 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fn = shl i64 %n.vec253, 3                    ; 2 uses
  %i.fo = getelementptr i8, ptr %.lcssa148, i64 %i.fn ; 2 uses
  %i.fp = getelementptr i8, ptr %1, i64 %i.fn
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %i.fq = shl i64 %index255, 3                    ; 2 uses
  %next.gep256 = getelementptr i8, ptr %.lcssa148, i64 %i.fq ; 2 uses
  %next.gep257 = getelementptr i8, ptr %1, i64 %i.fq ; 4 uses
  %i.fr = getelementptr i8, ptr %next.gep257, i64 16
  %wide.load258 = load <2 x i64>, ptr %next.gep257, align 8, !tbaa !521, !alias.scope !1849
  %wide.load259 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !521, !alias.scope !1849
  %i.fs = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x i64> %wide.load258, ptr %next.gep256, align 8, !tbaa !521, !alias.scope !1850, !noalias !1849
  store <2 x i64> %wide.load259, ptr %i.fs, align 8, !tbaa !521, !alias.scope !1850, !noalias !1849
  %i.ft = getelementptr i8, ptr %next.gep257, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep257, align 8, !tbaa !521, !alias.scope !1849
  store <2 x ptr> splat (ptr null), ptr %i.ft, align 8, !tbaa !521, !alias.scope !1849
  %index.next260 = add nuw i64 %index255, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.fu, label %middle.block261, label %vector.body254, !llvm.loop !1839

middle.block261:                                  ; preds = %vector.body254
  %cmp.n262 = icmp eq i64 %i.fi, %n.vec253
  br i1 %cmp.n262, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader265

.lr.ph.i.i.i.i.i86.preheader265:                  ; preds = %vector.memcheck248, %.lr.ph.i.i.i.i.i86.preheader, %middle.block261
  %.013.i.i.i.i.i87.ph = phi ptr [ %.lcssa148, %vector.memcheck248 ], [ %.lcssa148, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fo, %middle.block261 ]
  %.sroa.08.012.i.i.i.i.i88.ph = phi ptr [ %1, %vector.memcheck248 ], [ %1, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fp, %middle.block261 ]
  br label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader265, %.lr.ph.i.i.i.i.i86
  %.013.i.i.i.i.i87 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i86 ], [ %.013.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i86.preheader265 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i88 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i86 ], [ %.sroa.08.012.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i86.preheader265 ] ; 3 uses
  %i.fv = load i64, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !521
  store i64 %i.fv, ptr %.013.i.i.i.i.i87, align 8, !tbaa !521
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !521
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.fw, %i.h
  br i1 %.not.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86, !llvm.loop !1840

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91: ; preds = %.lr.ph.i.i.i.i.i86, %middle.block261, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %.0.lcssa.i.i.i.i.i90 = phi ptr [ %.lcssa148, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84 ], [ %i.fo, %middle.block261 ], [ %i.fx, %.lr.ph.i.i.i.i.i86 ]
  %.not4.i.i = icmp eq ptr %i.dk, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.fz, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.dk, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91 ] ; 2 uses
  %i.fy = load ptr, ptr %.05.i.i, align 8, !tbaa !521 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i92, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fy) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.fy) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fz, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91
  %.not.i93 = icmp eq ptr %i.dk, null
  br i1 %.not.i93, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.dk) #37
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, %bb.h
  store ptr %i.dw, ptr %0, align 8, !tbaa !519
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.g, align 8, !tbaa !518
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dt
  store ptr %i.ga, ptr %i.e, align 8, !tbaa !585
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25ArrowCollectorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ArrowCollectorGlobalStateE, i64 16), ptr %0, align 8, !tbaa !121
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !119
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1851
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1851
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, !prof !122

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !519  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !518  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !521 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.v) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !519
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !616  ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
end_hunk_0
