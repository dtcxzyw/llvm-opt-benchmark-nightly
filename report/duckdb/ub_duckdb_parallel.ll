inline.NumInlined: 6986
inline.NumDeleted: 3568
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_13OperatorStateESt14default_deleteIS1_ELb1EEdeEv:bb.a
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13OperatorStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16PipelineExecutor11EndOperatorERNS_16PhysicalOperatorENS_12optional_ptrINS_9DataChunkELb1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.411", align 8 ; 3 uses
  store ptr %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1096, !nonnull !132, !align !133
  tail call void @_ZN6duckdb16OperatorProfiler11EndOperatorENS_12optional_ptrINS_9DataChunkELb1EEE(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr %2)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_9DataChunkELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.c = load ptr, ptr %3, align 8, !tbaa !1097
  call void @_ZN6duckdb9DataChunk6VerifyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 4) i8 @_ZN6duckdb16PipelineExecutor19ExecutePushInternalERNS_9DataChunkERNS_15ExecutionBudgetEm(ptr noundef nonnull align 8 dereferenceable(513) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::OperatorSinkInput", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !894
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN6duckdb15ExecutionBudget4NextEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %.not = icmp eq ptr %1, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN6duckdb15ExecutionBudget4NextEv.exit
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
  %i.m = call noundef zeroext i8 @_ZN6duckdb16PipelineExecutor7ExecuteERNS_9DataChunkES2_m(ptr noundef nonnull align 8 dereferenceable(513) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 noundef %3) ; 2 uses
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %_ZN6duckdb15ExecutionBudget4NextEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.016 = phi i8 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.o = load i64, ptr %i.e, align 8, !tbaa !894
  %.not23 = icmp eq i64 %i.o, 0
  br i1 %.not23, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !485
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load atomic i8, ptr %i.t seq_cst, align 8, !range !268, !noundef !132
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %_ZN6duckdb16PipelineExecutor13StartOperatorERNS_16PhysicalOperatorE.exit

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN6duckdb18InterruptExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN6duckdb18InterruptExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.w) #34
  resume { ptr, i32 } %i.x

_ZN6duckdb16PipelineExecutor13StartOperatorERNS_16PhysicalOperatorE.exit: ; preds = %bb.e
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1096, !nonnull !132, !align !133
  call void @_ZN6duckdb16OperatorProfiler13StartOperatorENS_12optional_ptrIKNS_16PhysicalOperatorELb1EEE(ptr noundef nonnull align 8 dereferenceable(160) %i.y, ptr nonnull align 8 dereferenceable(136) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.z = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !485
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = call noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  store ptr %i.ad, ptr %4, align 8, !tbaa !768
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !987
  store ptr %i.k, ptr %i.j, align 8, !tbaa !1079
  %i.af = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !485 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 224
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef zeroext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !1099
  %i.am = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !1096, !nonnull !132, !align !133
  call void @_ZN6duckdb16OperatorProfiler11EndOperatorENS_12optional_ptrINS_9DataChunkELb1EEE(ptr noundef nonnull align 8 dereferenceable(160) %i.ao, ptr null)
  switch i8 %i.al, label %bb.j [
    i8 2, label %.thread27
    i8 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN6duckdb16PipelineExecutor13StartOperatorERNS_16PhysicalOperatorE.exit
  call void @_ZN6duckdb16PipelineExecutor16FinishProcessingEi(ptr noundef nonnull align 8 dereferenceable(513) %0, i32 noundef -1)
  br label %.thread27

.thread27:                                        ; preds = %_ZN6duckdb16PipelineExecutor13StartOperatorERNS_16PhysicalOperatorE.exit, %bb.i
  %.1.ph = phi i8 [ 2, %bb.i ], [ 3, %_ZN6duckdb16PipelineExecutor13StartOperatorERNS_16PhysicalOperatorE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZN6duckdb15ExecutionBudget4NextEv.exit.thread

bb.j:                                             ; preds = %_ZN6duckdb16PipelineExecutor13StartOperatorERNS_16PhysicalOperatorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j
  %.not30 = icmp eq i8 %.016, 0
  br i1 %.not30, label %_ZN6duckdb15ExecutionBudget4NextEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %2, align 8, !tbaa !885   ; 2 uses
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !887
  %.not.i = icmp ult i64 %i.ap, %i.aq
  br i1 %.not.i, label %_ZN6duckdb15ExecutionBudget4NextEv.exit, label %_ZN6duckdb15ExecutionBudget4NextEv.exit.thread

_ZN6duckdb15ExecutionBudget4NextEv.exit:          ; preds = %bb.l
  %i.ar = add nuw i64 %i.ap, 1
  store i64 %i.ar, ptr %2, align 8, !tbaa !885
  br label %bb.b

_ZN6duckdb15ExecutionBudget4NextEv.exit.thread:   ; preds = %bb.l, %bb.k, %bb.c, %.thread27, %bb.a
  %.5 = phi i8 [ 0, %bb.a ], [ %.1.ph, %.thread27 ], [ 1, %bb.l ], [ 2, %bb.c ], [ 0, %bb.k ]
  ret i8 %.5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZN6duckdb16PipelineExecutor9NextBatchERNS_9DataChunkEb(ptr noundef nonnull align 8 dereferenceable(513) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::OperatorPartitionData", align 8 ; 18 uses
  %4 = alloca %"struct.duckdb::OperatorPartitionData", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::OperatorSinkNextBatchInput", align 8 ; 7 uses
  %11 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %12 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load i64, ptr %i.d, align 8, !tbaa !236
  %i.f = add i64 %i.e, 9999999999999              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i64 %i.f, ptr %3, align 8, !tbaa !1100
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !894
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.m = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !485  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OperatorPartitionData") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.z = load i64, ptr %4, align 8, !tbaa !1100   ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !257
  store i64 %i.z, ptr %3, align 8, !tbaa !1100
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !1108 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1109 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !1110
  store <2 x ptr> %i.ag, ptr %i.j, align 8, !tbaa !1110
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1111
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !1111
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ab, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 64
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aj) #34
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(128) %.05.i.i.i.i.i.i.i) #34
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1112

_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6duckdb21OperatorPartitionDataaSEOS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #36
  br label %_ZN6duckdb21OperatorPartitionDataaSEOS0_.exit

_ZN6duckdb21OperatorPartitionDataaSEOS0_.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = load i64, ptr %i.am, align 8, !tbaa !236
  %i.ao = add i64 %i.an, 1
  %i.ap = add i64 %i.ao, %i.z                     ; 2 uses
  store i64 %i.ap, ptr %3, align 8, !tbaa !1100
  %.not35 = icmp ult i64 %i.ap, %i.f
  br i1 %.not35, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb21OperatorPartitionDataaSEOS0_.exit
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.be unwind label %bb.m

bb.k:                                             ; preds = %bb.x, %bb.v, %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.l:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %.026 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.av) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.026, label %bb.n, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.026, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4162 = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aq) #34
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4161 = phi { ptr, i32 } [ %.pn4162, %bb.n ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @_ZN6duckdb21OperatorPartitionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #34
  br label %bb.r

bb.p:                                             ; preds = %_ZN6duckdb21OperatorPartitionDataaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !1108 ; 3 uses
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !1109 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.p ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ba) #34
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(128) %.05.i.i.i.i) #34
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.az
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1112

_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !1108
  br label %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.p
  %i.bc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ay, %bb.p ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb21OperatorPartitionDataD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #36
  br label %_ZN6duckdb21OperatorPartitionDataD2Ev.exit

_ZN6duckdb21OperatorPartitionDataD2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6duckdb19ColumnPartitionDataES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %.pre = load i64, ptr %3, align 8, !tbaa !1100
  br label %bb.v

bb.r:                                             ; preds = %bb.o, %bb.l
  %.pn41.pn = phi { ptr, i32 } [ %.pn4161, %bb.o ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.bd

bb.s:                                             ; preds = %bb.a
  br i1 %2, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bd = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.u unwind label %bb.k       ; 2 uses

bb.u:                                             ; preds = %bb.t
  store i64 %i.bd, ptr %3, align 8, !tbaa !1100
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %_ZN6duckdb21OperatorPartitionDataD2Ev.exit
  %i.be = phi i64 [ %i.f, %bb.s ], [ %i.bd, %bb.u ], [ %.pre, %_ZN6duckdb21OperatorPartitionDataD2Ev.exit ]
  %i.bf = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.w unwind label %bb.k

bb.w:                                             ; preds = %bb.v
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.bb, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.y unwind label %bb.k

bb.y:                                             ; preds = %bb.x
  %i.bi = load i64, ptr %3, align 8, !tbaa !1100
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.bk = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.bl = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !257
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.be unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread: ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.024 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.bo = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.bo) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.024, label %bb.ae, label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.024, label %bb.ae, label %bb.bd

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn3965 = phi { ptr, i32 } [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  call void @__cxa_free_exception(ptr %i.bk) #34
  br label %bb.bd

bb.af:                                            ; preds = %bb.y
  %i.br = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ag unwind label %bb.aq     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bs = load i64, ptr %3, align 8, !tbaa !1100
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.bs)
          to label %bb.ah unwind label %bb.ar

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
