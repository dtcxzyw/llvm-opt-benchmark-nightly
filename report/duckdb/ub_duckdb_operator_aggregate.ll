inline.NumInlined: 10453
inline.NumDeleted: 5814
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6duckdb20StreamingWindowState14AggregateState7ExecuteERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorE:bb.a
  br i1 %.not.i.i.i.i.i176, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mx = add nsw i32 %i.mo, -1
  store i32 %i.mx, ptr %i.ml, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177

bb.cb:                                            ; preds = %bb.bz
  %i.my = atomicrmw volatile add ptr %i.ml, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i178 = phi i32 [ %i.mo, %bb.ca ], [ %i.my, %bb.cb ]
  %i.mz = icmp eq i32 %.0.i.i.i.i.i.i178, 1
  br i1 %i.mz, label %bb.cc, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit179, !prof !33

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #27
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit179

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit179: ; preds = %.loopexit, %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i177, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.cd:                                            ; preds = %.loopexit211, %.loopexit.split-lp, %.body
  %.sroa.0196.0218 = phi ptr [ %.sroa.0196.0.lcssa, %.body ], [ %.sroa.0196.0230, %.loopexit211 ], [ %.sroa.0196.0230, %.loopexit.split-lp ] ; 2 uses
  %.pn114 = phi { ptr, i32 } [ %.pn112, %.body ], [ %lpad.loopexit, %.loopexit211 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0196.0218, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorImSaImEED2Ev.exit181, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0196.0218) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit181

_ZNSt6vectorImSaImEED2Ev.exit181:                 ; preds = %bb.ce, %bb.cd, %bb.aj
  %.pn114.pn = phi { ptr, i32 } [ %i.gw, %bb.aj ], [ %.pn114, %bb.cd ], [ %.pn114, %bb.ce ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.s, %bb.x, %bb.y, %bb.af, %_ZNSt6vectorImSaImEED2Ev.exit181
  %.pn118.pn.pn = phi { ptr, i32 } [ %.pn114.pn, %_ZNSt6vectorImSaImEED2Ev.exit181 ], [ %i.er, %bb.s ], [ %i.ex, %bb.x ], [ %i.fs, %bb.af ], [ %i.ey, %bb.y ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.cg

bb.cg:                                            ; preds = %bb.r, %bb.cf, %bb.k, %bb.h
  %.pn126 = phi { ptr, i32 } [ %i.eq, %bb.r ], [ %i.ba, %bb.h ], [ %i.dm, %bb.k ], [ %.pn118.pn.pn, %bb.cf ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn126
}

declare void @_ZN6duckdb9DataChunk7FlattenEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN6duckdb9DataChunk9ReferenceERS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

declare void @_ZN6duckdb9DataChunk4HashERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1862   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !33

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

_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef i64 @_ZN6duckdb25GroupedAggregateHashTable18FindOrCreateGroupsERNS_9DataChunkERNS_6VectorES4_RNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(2912), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23PhysicalStreamingWindow16ExecuteFunctionsERNS_16ExecutionContextERNS_9DataChunkES4_RNS_19GlobalOperatorStateE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.duckdb::ExpressionExecutor", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::Vector", align 8    ; 10 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::Vector", align 8   ; 9 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %15 = alloca %"class.duckdb::ExpressionExecutor", align 8 ; 11 uses
  %16 = alloca %"class.duckdb::Vector", align 8   ; 10 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %19 = alloca %"class.duckdb::Vector", align 8   ; 9 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %21 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13OperatorStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !559  ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1010 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !293
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !297
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !78
  %.not286 = icmp eq ptr %i.v, %i.w
  br i1 %.not286, label %._crit_edge285, label %.lr.ph284

.lr.ph284:                                        ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not287 = icmp eq i64 %i.h, 0                  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 248 ; 4 uses
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.an = add i64 %i.h, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.an, i64 -9223372036854775808)
  %i.ao = add nuw i64 %umin, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 5
  %n.mod.vf = and i64 %i.ao, 3                    ; 2 uses
  %i.ap = icmp eq i64 %n.mod.vf, 0
  %i.aq = select i1 %i.ap, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.ao, %i.aq                   ; 2 uses
  br label %bb.b

._crit_edge285:                                   ; preds = %.loopexit, %bb.a
  %i.ar = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.h)
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = atomicrmw add ptr %i.as, i64 %i.ar seq_cst, align 8 ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph284, %.loopexit
  %.0112282 = phi i64 [ 0, %.lr.ph284 ], [ %i.kf, %.loopexit ] ; 10 uses
  %i.au = add i64 %.0112282, %i.s                 ; 3 uses
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.0112282)
  %i.aw = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 3 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.aw) ; 4 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.au) ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1392
  switch i8 %i.ba, label %bb.fa [
    i8 110, label %bb.c
    i8 123, label %bb.d
    i8 120, label %bb.d
    i8 121, label %bb.d
    i8 -126, label %bb.e
    i8 -125, label %bb.cc
    i8 125, label %bb.et
    i8 -123, label %bb.ez
    i8 -124, label %bb.ez
  ]

bb.c:                                             ; preds = %bb.b
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.0112282)
  %i.bc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20StreamingWindowState14AggregateStateESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  call void @_ZN6duckdb20StreamingWindowState14AggregateState7ExecuteERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(888) %i.bc, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.ay)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.bd = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.au)
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.0112282)
  %i.bf = call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.bd, ptr noundef nonnull align 8 dereferenceable(104) %i.bf)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !1827, !range !150, !noundef !151
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.f, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.0112282)
  %i.bk = call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1645 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.f
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !212
  %i.bo = trunc i64 %i.bn to i1
  br i1 %i.bo, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1034, !nonnull !151, !align !241
  call void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef nonnull align 8 dereferenceable(512) %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 104 ; 3 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef 0)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.bs = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bs)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef 0)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.bu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %8, i64 noundef 2048)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  invoke void @_ZN6duckdb18ExpressionExecutor17ExecuteExpressionERNS_9DataChunkERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %7)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.0112282)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.bx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %bb.s unwind label %bb.ac      ; 4 uses

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.ah, align 8, !tbaa !1645
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef 0)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.bx, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef nonnull align 8 dereferenceable(104) %i.bx)
          to label %bb.bh unwind label %bb.ac

bb.w:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.x:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.y:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  br label %bb.ca

bb.z:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.aa:                                            ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ab:                                            ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ac:                                            ; preds = %bb.v, %bb.r, %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ad:                                            ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn174 = phi { ptr, i32 } [ %i.ch, %bb.ae ], [ %i.cg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bx

bb.ag:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef 0)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.cj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
end_hunk_0
