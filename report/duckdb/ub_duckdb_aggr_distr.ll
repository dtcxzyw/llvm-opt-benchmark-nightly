inline.NumInlined: 12080
inline.NumDeleted: 2860
begin_hunk_0_@_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataES8_mm:bb.a
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ac = load i8, ptr %i.g, align 1, !tbaa !214
  store i8 %i.ac, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.af = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.o:                                             ; preds = %bb.m
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !66
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %2, ptr %10, align 8, !tbaa !509
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.al, align 8, !tbaa !511
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataES8_mm.exit

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i
  %.021.i = phi i64 [ %i.au, %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i ] ; 3 uses
  %i.an = add i64 %.021.i, %4                     ; 2 uses
  store i64 %i.an, ptr %i.am, align 8, !tbaa !513
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.021.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !4171 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !4169, !range !489, !noundef !133
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ap, i64 16, i1 false), !tbaa.struct !1259
  br label %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i

_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i: ; preds = %bb.q, %bb.p
  %i.au = add nuw i64 %.021.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4222

_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataES8_mm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef captures(none) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !52
  switch i8 %i.a, label %bb.t [
    i8 2, label %bb.b
    i8 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %.val.i = load i64, ptr %i.g, align 8           ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val20.i = load i64, ptr %i.h, align 8         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !4169, !range !489, !noundef !133
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  store i64 %.val.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.val20.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !51
  store i8 1, ptr %i.i, align 8, !tbaa !4169
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !4173 ; 2 uses
  %i.n = sdiv i64 %i.m, 86400000000               ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %i.n, -86400000000
  %i.o = add i64 %.neg.i.i.i.i.i.i.i.i, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4174
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %i.n, %i.r                   ; 2 uses
  %i.t = sdiv i64 %i.s, 30                        ; 2 uses
  %.neg16.i.i.i.i.i.i.i.i = mul nsw i64 %i.t, -30
  %i.u = add nsw i64 %.neg16.i.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.v = load i32, ptr %3, align 8, !tbaa !4175
  %i.w = sext i32 %i.v to i64
  %i.x = add nsw i64 %i.t, %i.w                   ; 2 uses
  %i.y = sdiv i64 %.val20.i, 86400000000          ; 2 uses
  %.neg.i8.i.i.i.i.i.i.i = mul nsw i64 %i.y, -86400000000
  %i.z = add i64 %.neg.i8.i.i.i.i.i.i.i, %.val20.i
  %i.aa = ashr i64 %.val.i, 32
  %i.ab = add nsw i64 %i.y, %i.aa                 ; 2 uses
  %i.ac = sdiv i64 %i.ab, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i.i = mul nsw i64 %i.ac, -30
  %i.ad = add nsw i64 %.neg16.i9.i.i.i.i.i.i.i, %i.ab ; 2 uses
  %sext.i.i.i = shl i64 %.val.i, 32
  %i.ae = ashr exact i64 %sext.i.i.i, 32
  %i.af = add nsw i64 %i.ac, %i.ae                ; 2 uses
  %i.ag = icmp sgt i64 %i.x, %i.af
  br i1 %i.ag, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp slt i64 %i.x, %i.af
  br i1 %i.ah, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.u, %i.ad
  br i1 %i.ai, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i: ; preds = %bb.f
  %i.aj = icmp sge i64 %i.u, %i.ad
  %i.ak = icmp sgt i64 %i.o, %i.z
  %spec.select.i.i.i.i.i.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i: ; preds = %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i, %bb.f, %bb.d
  store i64 %.val.i, ptr %3, align 8
  store i64 %.val20.i, ptr %i.l, align 8, !tbaa !51
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4226)
  %i.an = add i64 %4, 63
  %i.ao = lshr i64 %i.an, 6                       ; 2 uses
  %.not65.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not65.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67, !noalias !4228 ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i31.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.lr.ph64.i.i
  %.062.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %i.eu, %.loopexit.i.i ] ; 2 uses
  %.sroa.4.061.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %.sroa.4.3.i.i, %.loopexit.i.i ] ; 10 uses
  br i1 %.not.i.i22.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i: ; preds = %bb.h
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.062.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !51, !noalias !4228 ; 2 uses
  %i.av = add i64 %.sroa.4.061.i.i, 64
  %i.aw = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %4) ; 5 uses
  switch i64 %i.au, label %.preheader55.i.i [
    i64 -1, label %.preheader.i.i
    i64 0, label %.loopexit.i.i
  ]

.preheader55.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.ax = icmp ult i64 %.sroa.4.061.i.i, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %.loopexit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i: ; preds = %bb.h
  %i.ay = add i64 %.sroa.4.061.i.i, 64
  %i.az = tail call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %4)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.ph.i.i = phi i64 [ %i.az, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i ], [ %i.aw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ] ; 5 uses
  %i.ba = icmp ult i64 %.sroa.4.061.i.i, %.ph.i.i
  br i1 %i.ba, label %.lr.ph59.i.i, label %.loopexit.i.i

.lr.ph59.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i8, ptr %i.ar, align 8, !tbaa !4169, !alias.scope !4226, !noalias !4223
  %i.bb = trunc nuw i8 %.promoted.i.i to i1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.4.061.i.i
  %6 = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !4223, !noalias !4226 ; 6 uses
  %7 = extractelement <2 x i64> %6, i64 1         ; 4 uses
  %8 = extractelement <2 x i64> %6, i64 0         ; 4 uses
  br i1 %i.bb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph59.i.i
  store <2 x i64> %6, ptr %3, align 8, !alias.scope !4226, !noalias !4223
  store i8 1, ptr %i.ar, align 8, !tbaa !4169, !alias.scope !4226, !noalias !4223
  %9 = bitcast <2 x i64> %6 to <4 x i32>
  %10 = extractelement <4 x i32> %9, i64 1
  %i.bd = trunc i64 %8 to i32
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i

bb.j:                                             ; preds = %.lr.ph59.i.i
  %i.be = load i64, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !4173, !alias.scope !4226, !noalias !4223 ; 4 uses
  %i.bf = sdiv i64 %i.be, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.peel.i = mul nsw i64 %i.bf, -86400000000
  %i.bg = add i64 %.neg.i.i.i.i.i.i.i.i.peel.i, %i.be
  %i.bh = load i32, ptr %i.as, align 4, !tbaa !4174, !alias.scope !4226, !noalias !4223 ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = add nsw i64 %i.bf, %i.bi                ; 2 uses
  %i.bk = sdiv i64 %i.bj, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.i.i.peel.i = mul nsw i64 %i.bk, -30
  %i.bl = add nsw i64 %.neg16.i.i.i.i.i.i.i.i.peel.i, %i.bj ; 2 uses
  %i.bm = load i32, ptr %3, align 8, !tbaa !4175, !alias.scope !4226, !noalias !4223 ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bk, %i.bn                ; 2 uses
  %i.bp = sdiv i64 %7, 86400000000                ; 2 uses
  %.neg.i8.i.i.i.i.i.i.i.peel.i = mul nsw i64 %i.bp, -86400000000
  %i.bq = add i64 %.neg.i8.i.i.i.i.i.i.i.peel.i, %7
  %i.br = ashr i64 %8, 32
  %i.bs = add nsw i64 %i.bp, %i.br                ; 2 uses
  %i.bt = sdiv i64 %i.bs, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i.i.peel.i = mul nsw i64 %i.bt, -30
  %i.bu = add nsw i64 %.neg16.i9.i.i.i.i.i.i.i.peel.i, %i.bs ; 2 uses
  %sext.i.i.i.peel.i = shl i64 %8, 32
  %i.bv = ashr exact i64 %sext.i.i.i.peel.i, 32
  %i.bw = add nsw i64 %i.bt, %i.bv                ; 2 uses
  %i.bx = icmp sgt i64 %i.bo, %i.bw
  br i1 %i.bx, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %i.bo, %i.bw
  br i1 %i.by, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i64 %i.bl, %i.bu
  br i1 %i.bz, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i: ; preds = %bb.l
  %i.ca = icmp sge i64 %i.bl, %i.bu
  %i.cb = icmp sgt i64 %i.bg, %i.bq
  %spec.select.i.i.i.i.i.i.i.peel.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.peel.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i: ; preds = %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i, %bb.l, %bb.j
  store <2 x i64> %6, ptr %3, align 8, !alias.scope !4226, !noalias !4223
  %11 = bitcast <2 x i64> %6 to <4 x i32>
  %12 = extractelement <4 x i32> %11, i64 1
  %i.cc = trunc i64 %8 to i32
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i: ; preds = %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i, %bb.k, %bb.i
  %i.cd = phi i32 [ %i.cc, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i ], [ %i.bm, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i ], [ %i.bm, %bb.k ], [ %i.bd, %bb.i ]
  %i.ce = phi i32 [ %12, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i ], [ %i.bh, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i ], [ %i.bh, %bb.k ], [ %10, %bb.i ]
  %i.cf = phi i64 [ %7, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i ], [ %i.be, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i ], [ %i.be, %bb.k ], [ %7, %bb.i ]
  %i.cg = add nuw i64 %.sroa.4.061.i.i, 1         ; 2 uses
  %exitcond68.not.i.peel.i = icmp eq i64 %i.cg, %.ph.i.i
  br i1 %exitcond68.not.i.peel.i, label %.loopexit.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.ch = phi i32 [ %i.dk, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.cd, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 3 uses
  %i.ci = phi i32 [ %i.dl, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.ce, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 3 uses
  %i.cj = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.cf, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 4 uses
  %.sroa.4.158.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.cg, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.4.158.i.i ; 2 uses
  %.val29.i.i = load i64, ptr %i.ck, align 8, !alias.scope !4223, !noalias !4226 ; 5 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val30.i.i = load i64, ptr %i.cl, align 8, !alias.scope !4223, !noalias !4226 ; 4 uses
  %i.cm = sdiv i64 %i.cj, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.cm, -86400000000
  %i.cn = add i64 %.neg.i.i.i.i.i.i.i.i.i, %i.cj
  %i.co = sext i32 %i.ci to i64
  %i.cp = add nsw i64 %i.cm, %i.co                ; 2 uses
  %i.cq = sdiv i64 %i.cp, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.cq, -30
  %i.cr = add nsw i64 %.neg16.i.i.i.i.i.i.i.i.i, %i.cp ; 2 uses
  %i.cs = sext i32 %i.ch to i64
  %i.ct = add nsw i64 %i.cq, %i.cs                ; 2 uses
  %i.cu = sdiv i64 %.val30.i.i, 86400000000       ; 2 uses
  %.neg.i8.i.i.i.i.i.i.i.i = mul nsw i64 %i.cu, -86400000000
  %i.cv = add i64 %.neg.i8.i.i.i.i.i.i.i.i, %.val30.i.i
  %i.cw = ashr i64 %.val29.i.i, 32
  %i.cx = add nsw i64 %i.cu, %i.cw                ; 2 uses
  %i.cy = sdiv i64 %i.cx, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i.i.i = mul nsw i64 %i.cy, -30
  %i.cz = add nsw i64 %.neg16.i9.i.i.i.i.i.i.i.i, %i.cx ; 2 uses
  %sext.i.i.i.i = shl i64 %.val29.i.i, 32
  %i.da = ashr exact i64 %sext.i.i.i.i, 32
  %i.db = add nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = icmp sgt i64 %i.ct, %i.db
  br i1 %i.dc, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.peel.next.i
  %i.dd = icmp slt i64 %i.ct, %i.db
  br i1 %i.dd, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = icmp sgt i64 %i.cr, %i.cz
  br i1 %i.de, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i: ; preds = %bb.n
  %i.df = icmp sge i64 %i.cr, %i.cz
  %i.dg = icmp sgt i64 %i.cn, %i.cv
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i: ; preds = %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i, %bb.n, %.peel.next.i
  store i64 %.val29.i.i, ptr %3, align 8, !alias.scope !4226, !noalias !4223
  store i64 %.val30.i.i, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !51, !alias.scope !4226, !noalias !4223
  %i.dh = lshr i64 %.val29.i.i, 32
  %i.di = trunc nuw i64 %i.dh to i32
  %i.dj = trunc i64 %.val29.i.i to i32
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i: ; preds = %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i, %bb.m
  %i.dk = phi i32 [ %i.dj, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i ], [ %i.ch, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i ], [ %i.ch, %bb.m ]
  %i.dl = phi i32 [ %i.di, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i ], [ %i.ci, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i ], [ %i.ci, %bb.m ]
  %i.dm = phi i64 [ %.val30.i.i, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i ], [ %i.cj, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i ], [ %i.cj, %bb.m ]
  %i.dn = add nuw i64 %.sroa.4.158.i.i, 1         ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %i.dn, %.ph.i.i
  br i1 %exitcond68.not.i.i, label %.loopexit.i.i, label %.peel.next.i, !llvm.loop !4229

.lr.ph.i.i:                                       ; preds = %.preheader55.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i
  %.sroa.4.257.i.i = phi i64 [ %i.et, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i ], [ %.sroa.4.061.i.i, %.preheader55.i.i ] ; 3 uses
  %i.do = sub nuw i64 %.sroa.4.257.i.i, %.sroa.4.061.i.i
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.au
  %.not.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.4.257.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !4223, !noalias !4226 ; 4 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %.val28.i.i = load i64, ptr %i.ds, align 8, !alias.scope !4223, !noalias !4226 ; 4 uses
  %i.dt = load i8, ptr %i.ar, align 8, !tbaa !4169, !range !489, !alias.scope !4226, !noalias !4223, !noundef !133
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.val.i.i, ptr %3, align 8, !alias.scope !4226, !noalias !4223
  store i64 %.val28.i.i, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !51, !alias.scope !4226, !noalias !4223
  store i8 1, ptr %i.ar, align 8, !tbaa !4169, !alias.scope !4226, !noalias !4223
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i

bb.q:                                             ; preds = %bb.o
  %i.dv = load i64, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !4173, !alias.scope !4226, !noalias !4223 ; 2 uses
  %i.dw = sdiv i64 %i.dv, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i.i.i32.i.i = mul nsw i64 %i.dw, -86400000000
  %i.dx = add i64 %.neg.i.i.i.i.i.i.i32.i.i, %i.dv
  %i.dy = load i32, ptr %i.as, align 4, !tbaa !4174, !alias.scope !4226, !noalias !4223
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add nsw i64 %i.dw, %i.dz                ; 2 uses
  %i.eb = sdiv i64 %i.ea, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.i33.i.i = mul nsw i64 %i.eb, -30
  %i.ec = add nsw i64 %.neg16.i.i.i.i.i.i.i33.i.i, %i.ea ; 2 uses
  %i.ed = load i32, ptr %3, align 8, !tbaa !4175, !alias.scope !4226, !noalias !4223
  %i.ee = sext i32 %i.ed to i64
  %i.ef = add nsw i64 %i.eb, %i.ee                ; 2 uses
  %i.eg = sdiv i64 %.val28.i.i, 86400000000       ; 2 uses
  %.neg.i8.i.i.i.i.i.i34.i.i = mul nsw i64 %i.eg, -86400000000
  %i.eh = add i64 %.neg.i8.i.i.i.i.i.i34.i.i, %.val28.i.i
  %i.ei = ashr i64 %.val.i.i, 32
  %i.ej = add nsw i64 %i.eg, %i.ei                ; 2 uses
  %i.ek = sdiv i64 %i.ej, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i35.i.i = mul nsw i64 %i.ek, -30
  %i.el = add nsw i64 %.neg16.i9.i.i.i.i.i.i35.i.i, %i.ej ; 2 uses
  %sext.i.i36.i.i = shl i64 %.val.i.i, 32
  %i.em = ashr exact i64 %sext.i.i36.i.i, 32
  %i.en = add nsw i64 %i.ek, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.ef, %i.en
  br i1 %i.eo, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = icmp slt i64 %i.ef, %i.en
  br i1 %i.ep, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eq = icmp sgt i64 %i.ec, %i.el
  br i1 %i.eq, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i: ; preds = %bb.s
  %i.er = icmp sge i64 %i.ec, %i.el
  %i.es = icmp sgt i64 %i.dx, %i.eh
  %spec.select.i.i.i.i.i.i38.i.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %spec.select.i.i.i.i.i.i38.i.i, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i: ; preds = %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i, %bb.s, %bb.q
  store i64 %.val.i.i, ptr %3, align 8, !alias.scope !4226, !noalias !4223
  store i64 %.val28.i.i, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !51, !alias.scope !4226, !noalias !4223
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i: ; preds = %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i, %bb.r, %bb.p, %.lr.ph.i.i
  %i.et = add nuw i64 %.sroa.4.257.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.et, %i.aw
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !4230

.loopexit.i.i:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %.preheader.i.i, %.preheader55.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.aw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.ph.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ], [ %.sroa.4.061.i.i, %.preheader.i.i ], [ %.sroa.4.061.i.i, %.preheader55.i.i ], [ %.ph.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.aw, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i ]
  %i.eu = add nuw nsw i64 %.062.i.i, 1            ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %i.eu, %i.ao
  br i1 %exitcond69.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %bb.h, !llvm.loop !4231

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.u unwind label %bb.ay

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.v unwind label %bb.ay

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !78 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ey = load ptr, ptr %5, align 8, !tbaa !87
  %.val21.i = load ptr, ptr %i.ey, align 8        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4232)
  call void @llvm.experimental.noalias.scope.decl(metadata !4235)
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !67, !noalias !4237 ; 2 uses
  %.not.i.i23.i = icmp eq ptr %i.ez, null
  %.not7.i.i = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not.i.i23.i, label %.preheader.i37.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.v
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.preheader1.i.i
  %.not.i21.i.i = icmp eq ptr %.val21.i, null
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.ab

.preheader.i37.i:                                 ; preds = %bb.v
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i37.i
  %.not.i23.i.i = icmp eq ptr %.val21.i, null     ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i25.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.promoted.i38.i = load i8, ptr %i.fc, align 8, !tbaa !4169, !alias.scope !4235, !noalias !4232
  %i.fe = trunc nuw i8 %.promoted.i38.i to i1
  br i1 %.not.i23.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.peel.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph5.i.i
  %i.ff = load i32, ptr %.val21.i, align 4, !tbaa !3, !noalias !4237
  %i.fg = zext i32 %i.ff to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.peel.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.peel.i: ; preds = %bb.w, %.lr.ph5.i.i
  %i.fh = phi i64 [ %i.fg, %bb.w ], [ 0, %.lr.ph5.i.i ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataES8_mm:bb.a
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ac = load i8, ptr %i.g, align 1, !tbaa !214
  store i8 %i.ac, ptr %i.b, align 1, !tbaa !408
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.af = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.o:                                             ; preds = %bb.m
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !66
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %2, ptr %10, align 8, !tbaa !509
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.al, align 8, !tbaa !511
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataES8_mm.exit

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i
  %.021.i = phi i64 [ %i.au, %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEEEEPT_RNS_6VectorE.exit.i ] ; 3 uses
  %i.an = add i64 %.021.i, %4                     ; 2 uses
  store i64 %i.an, ptr %i.am, align 8, !tbaa !513
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.021.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !4171 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !4169, !range !489, !noundef !133
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ap, i64 16, i1 false), !tbaa.struct !1259
  br label %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i

_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i: ; preds = %bb.q, %bb.p
  %i.au = add nuw i64 %.021.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5247

_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataES8_mm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117NumericMinMaxBase8FinalizeINS_10interval_tENS0_11MinMaxStateIS3_EEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef captures(none) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !52
  switch i8 %i.a, label %bb.t [
    i8 2, label %bb.b
    i8 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %.val.i = load i64, ptr %i.g, align 8           ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val20.i = load i64, ptr %i.h, align 8         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !4169, !range !489, !noundef !133
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  store i64 %.val.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.val20.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !51
  store i8 1, ptr %i.i, align 8, !tbaa !4169
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.l = sdiv i64 %.val20.i, 86400000000          ; 2 uses
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %i.l, -86400000000
  %i.m = add i64 %.neg.i.i.i.i.i.i.i, %.val20.i
  %i.n = ashr i64 %.val.i, 32
  %i.o = add nsw i64 %i.l, %i.n                   ; 2 uses
  %i.p = sdiv i64 %i.o, 30                        ; 2 uses
  %.neg16.i.i.i.i.i.i.i = mul nsw i64 %i.p, -30
  %i.q = add nsw i64 %.neg16.i.i.i.i.i.i.i, %i.o  ; 2 uses
  %sext.i.i.i = shl i64 %.val.i, 32
  %i.r = ashr exact i64 %sext.i.i.i, 32
  %i.s = add nsw i64 %i.p, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !4173 ; 2 uses
  %i.v = sdiv i64 %i.u, 86400000000               ; 2 uses
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.v, -86400000000
  %i.w = add i64 %.neg.i8.i.i.i.i.i.i, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4174
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i64 %i.v, %i.z                  ; 2 uses
  %i.ab = sdiv i64 %i.aa, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i = mul nsw i64 %i.ab, -30
  %i.ac = add nsw i64 %.neg16.i9.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ad = load i32, ptr %3, align 8, !tbaa !4175
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.ab, %i.ae                ; 2 uses
  %i.ag = icmp sgt i64 %i.s, %i.af
  br i1 %i.ag, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp slt i64 %i.s, %i.af
  br i1 %i.ah, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.q, %i.ac
  br i1 %i.ai, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i: ; preds = %bb.f
  %i.aj = icmp sge i64 %i.q, %i.ac
  %i.ak = icmp sgt i64 %i.m, %i.w
  %spec.select.i.i.i.i.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i: ; preds = %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i, %bb.f, %bb.d
  store i64 %.val.i, ptr %3, align 8
  store i64 %.val20.i, ptr %i.t, align 8, !tbaa !51
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5251)
  %i.an = add i64 %4, 63
  %i.ao = lshr i64 %i.an, 6                       ; 2 uses
  %.not65.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not65.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67, !noalias !5253 ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i31.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.lr.ph64.i.i
  %.062.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %i.eu, %.loopexit.i.i ] ; 2 uses
  %.sroa.4.061.i.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %.sroa.4.3.i.i, %.loopexit.i.i ] ; 10 uses
  br i1 %.not.i.i22.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i: ; preds = %bb.h
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.062.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !51, !noalias !5253 ; 2 uses
  %i.av = add i64 %.sroa.4.061.i.i, 64
  %i.aw = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %4) ; 5 uses
  switch i64 %i.au, label %.preheader55.i.i [
    i64 -1, label %.preheader.i.i
    i64 0, label %.loopexit.i.i
  ]

.preheader55.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.ax = icmp ult i64 %.sroa.4.061.i.i, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %.loopexit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i: ; preds = %bb.h
  %i.ay = add i64 %.sroa.4.061.i.i, 64
  %i.az = tail call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %4)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.ph.i.i = phi i64 [ %i.az, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i ], [ %i.aw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ] ; 5 uses
  %i.ba = icmp ult i64 %.sroa.4.061.i.i, %.ph.i.i
  br i1 %i.ba, label %.lr.ph59.i.i, label %.loopexit.i.i

.lr.ph59.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i8, ptr %i.ar, align 8, !tbaa !4169, !alias.scope !5251, !noalias !5248
  %i.bb = trunc nuw i8 %.promoted.i.i to i1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.4.061.i.i
  %6 = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !5248, !noalias !5251 ; 6 uses
  %7 = extractelement <2 x i64> %6, i64 1         ; 4 uses
  %8 = extractelement <2 x i64> %6, i64 0         ; 4 uses
  br i1 %i.bb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph59.i.i
  store <2 x i64> %6, ptr %3, align 8, !alias.scope !5251, !noalias !5248
  store i8 1, ptr %i.ar, align 8, !tbaa !4169, !alias.scope !5251, !noalias !5248
  %9 = bitcast <2 x i64> %6 to <4 x i32>
  %10 = extractelement <4 x i32> %9, i64 1
  %i.bd = trunc i64 %8 to i32
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i

bb.j:                                             ; preds = %.lr.ph59.i.i
  %i.be = sdiv i64 %7, 86400000000                ; 2 uses
  %.neg.i.i.i.i.i.i.i.peel.i = mul nsw i64 %i.be, -86400000000
  %i.bf = add i64 %.neg.i.i.i.i.i.i.i.peel.i, %7
  %i.bg = ashr i64 %8, 32
  %i.bh = add nsw i64 %i.be, %i.bg                ; 2 uses
  %i.bi = sdiv i64 %i.bh, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.i.peel.i = mul nsw i64 %i.bi, -30
  %i.bj = add nsw i64 %.neg16.i.i.i.i.i.i.i.peel.i, %i.bh ; 2 uses
  %sext.i.i.i.peel.i = shl i64 %8, 32
  %i.bk = ashr exact i64 %sext.i.i.i.peel.i, 32
  %i.bl = add nsw i64 %i.bi, %i.bk                ; 2 uses
  %i.bm = load i64, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !4173, !alias.scope !5251, !noalias !5248 ; 4 uses
  %i.bn = sdiv i64 %i.bm, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i.i.peel.i = mul nsw i64 %i.bn, -86400000000
  %i.bo = add i64 %.neg.i8.i.i.i.i.i.i.peel.i, %i.bm
  %i.bp = load i32, ptr %i.as, align 4, !tbaa !4174, !alias.scope !5251, !noalias !5248 ; 3 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = add nsw i64 %i.bn, %i.bq                ; 2 uses
  %i.bs = sdiv i64 %i.br, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i.peel.i = mul nsw i64 %i.bs, -30
  %i.bt = add nsw i64 %.neg16.i9.i.i.i.i.i.i.peel.i, %i.br ; 2 uses
  %i.bu = load i32, ptr %3, align 8, !tbaa !4175, !alias.scope !5251, !noalias !5248 ; 3 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = add nsw i64 %i.bs, %i.bv                ; 2 uses
  %i.bx = icmp sgt i64 %i.bl, %i.bw
  br i1 %i.bx, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %i.bl, %i.bw
  br i1 %i.by, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i64 %i.bj, %i.bt
  br i1 %i.bz, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i: ; preds = %bb.l
  %i.ca = icmp sge i64 %i.bj, %i.bt
  %i.cb = icmp sgt i64 %i.bf, %i.bo
  %spec.select.i.i.i.i.i.i.peel.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %spec.select.i.i.i.i.i.i.peel.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i: ; preds = %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i, %bb.l, %bb.j
  store <2 x i64> %6, ptr %3, align 8, !alias.scope !5251, !noalias !5248
  %11 = bitcast <2 x i64> %6 to <4 x i32>
  %12 = extractelement <4 x i32> %11, i64 1
  %i.cc = trunc i64 %8 to i32
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i: ; preds = %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i, %bb.k, %bb.i
  %i.cd = phi i32 [ %i.cc, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i ], [ %i.bu, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i ], [ %i.bu, %bb.k ], [ %i.bd, %bb.i ]
  %i.ce = phi i32 [ %12, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i ], [ %i.bp, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i ], [ %i.bp, %bb.k ], [ %10, %bb.i ]
  %i.cf = phi i64 [ %7, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.peel.i ], [ %i.bm, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.peel.i ], [ %i.bm, %bb.k ], [ %7, %bb.i ]
  %i.cg = add nuw i64 %.sroa.4.061.i.i, 1         ; 2 uses
  %exitcond68.not.i.peel.i = icmp eq i64 %i.cg, %.ph.i.i
  br i1 %exitcond68.not.i.peel.i, label %.loopexit.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %i.ch = phi i32 [ %i.dk, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.cd, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 3 uses
  %i.ci = phi i32 [ %i.dl, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.ce, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 3 uses
  %i.cj = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.cf, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 4 uses
  %.sroa.4.158.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.cg, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.4.158.i.i ; 2 uses
  %.val29.i.i = load i64, ptr %i.ck, align 8, !alias.scope !5248, !noalias !5251 ; 5 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val30.i.i = load i64, ptr %i.cl, align 8, !alias.scope !5248, !noalias !5251 ; 4 uses
  %i.cm = sdiv i64 %.val30.i.i, 86400000000       ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %i.cm, -86400000000
  %i.cn = add i64 %.neg.i.i.i.i.i.i.i.i, %.val30.i.i
  %i.co = ashr i64 %.val29.i.i, 32
  %i.cp = add nsw i64 %i.cm, %i.co                ; 2 uses
  %i.cq = sdiv i64 %i.cp, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i.i.i = mul nsw i64 %i.cq, -30
  %i.cr = add nsw i64 %.neg16.i.i.i.i.i.i.i.i, %i.cp ; 2 uses
  %sext.i.i.i.i = shl i64 %.val29.i.i, 32
  %i.cs = ashr exact i64 %sext.i.i.i.i, 32
  %i.ct = add nsw i64 %i.cq, %i.cs                ; 2 uses
  %i.cu = sdiv i64 %i.cj, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i.i.i = mul nsw i64 %i.cu, -86400000000
  %i.cv = add i64 %.neg.i8.i.i.i.i.i.i.i, %i.cj
  %i.cw = sext i32 %i.ci to i64
  %i.cx = add nsw i64 %i.cu, %i.cw                ; 2 uses
  %i.cy = sdiv i64 %i.cx, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i.i.i = mul nsw i64 %i.cy, -30
  %i.cz = add nsw i64 %.neg16.i9.i.i.i.i.i.i.i, %i.cx ; 2 uses
  %i.da = sext i32 %i.ch to i64
  %i.db = add nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = icmp sgt i64 %i.ct, %i.db
  br i1 %i.dc, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.peel.next.i
  %i.dd = icmp slt i64 %i.ct, %i.db
  br i1 %i.dd, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = icmp sgt i64 %i.cr, %i.cz
  br i1 %i.de, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i: ; preds = %bb.n
  %i.df = icmp sge i64 %i.cr, %i.cz
  %i.dg = icmp sgt i64 %i.cn, %i.cv
  %spec.select.i.i.i.i.i.i.i = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i: ; preds = %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i, %bb.n, %.peel.next.i
  store i64 %.val29.i.i, ptr %3, align 8, !alias.scope !5251, !noalias !5248
  store i64 %.val30.i.i, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !51, !alias.scope !5251, !noalias !5248
  %i.dh = lshr i64 %.val29.i.i, 32
  %i.di = trunc nuw i64 %i.dh to i32
  %i.dj = trunc i64 %.val29.i.i to i32
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i: ; preds = %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i, %bb.m
  %i.dk = phi i32 [ %i.dj, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i ], [ %i.ch, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i ], [ %i.ch, %bb.m ]
  %i.dl = phi i32 [ %i.di, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i ], [ %i.ci, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i ], [ %i.ci, %bb.m ]
  %i.dm = phi i64 [ %.val30.i.i, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i.i.i ], [ %i.cj, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i.i.i ], [ %i.cj, %bb.m ]
  %i.dn = add nuw i64 %.sroa.4.158.i.i, 1         ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %i.dn, %.ph.i.i
  br i1 %exitcond68.not.i.i, label %.loopexit.i.i, label %.peel.next.i, !llvm.loop !5254

.lr.ph.i.i:                                       ; preds = %.preheader55.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i
  %.sroa.4.257.i.i = phi i64 [ %i.et, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i ], [ %.sroa.4.061.i.i, %.preheader55.i.i ] ; 3 uses
  %i.do = sub nuw i64 %.sroa.4.257.i.i, %.sroa.4.061.i.i
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.au
  %.not.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.4.257.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !5248, !noalias !5251 ; 4 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %.val28.i.i = load i64, ptr %i.ds, align 8, !alias.scope !5248, !noalias !5251 ; 4 uses
  %i.dt = load i8, ptr %i.ar, align 8, !tbaa !4169, !range !489, !alias.scope !5251, !noalias !5248, !noundef !133
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.val.i.i, ptr %3, align 8, !alias.scope !5251, !noalias !5248
  store i64 %.val28.i.i, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !51, !alias.scope !5251, !noalias !5248
  store i8 1, ptr %i.ar, align 8, !tbaa !4169, !alias.scope !5251, !noalias !5248
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i

bb.q:                                             ; preds = %bb.o
  %i.dv = sdiv i64 %.val28.i.i, 86400000000       ; 2 uses
  %.neg.i.i.i.i.i.i32.i.i = mul nsw i64 %i.dv, -86400000000
  %i.dw = add i64 %.neg.i.i.i.i.i.i32.i.i, %.val28.i.i
  %i.dx = ashr i64 %.val.i.i, 32
  %i.dy = add nsw i64 %i.dv, %i.dx                ; 2 uses
  %i.dz = sdiv i64 %i.dy, 30                      ; 2 uses
  %.neg16.i.i.i.i.i.i33.i.i = mul nsw i64 %i.dz, -30
  %i.ea = add nsw i64 %.neg16.i.i.i.i.i.i33.i.i, %i.dy ; 2 uses
  %sext.i.i34.i.i = shl i64 %.val.i.i, 32
  %i.eb = ashr exact i64 %sext.i.i34.i.i, 32
  %i.ec = add nsw i64 %i.dz, %i.eb                ; 2 uses
  %i.ed = load i64, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !4173, !alias.scope !5251, !noalias !5248 ; 2 uses
  %i.ee = sdiv i64 %i.ed, 86400000000             ; 2 uses
  %.neg.i8.i.i.i.i.i35.i.i = mul nsw i64 %i.ee, -86400000000
  %i.ef = add i64 %.neg.i8.i.i.i.i.i35.i.i, %i.ed
  %i.eg = load i32, ptr %i.as, align 4, !tbaa !4174, !alias.scope !5251, !noalias !5248
  %i.eh = sext i32 %i.eg to i64
  %i.ei = add nsw i64 %i.ee, %i.eh                ; 2 uses
  %i.ej = sdiv i64 %i.ei, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i.i36.i.i = mul nsw i64 %i.ej, -30
  %i.ek = add nsw i64 %.neg16.i9.i.i.i.i.i36.i.i, %i.ei ; 2 uses
  %i.el = load i32, ptr %3, align 8, !tbaa !4175, !alias.scope !5251, !noalias !5248
  %i.em = sext i32 %i.el to i64
  %i.en = add nsw i64 %i.ej, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.ec, %i.en
  br i1 %i.eo, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = icmp slt i64 %i.ec, %i.en
  br i1 %i.ep, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eq = icmp sgt i64 %i.ea, %i.ek
  br i1 %i.eq, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i: ; preds = %bb.s
  %i.er = icmp sge i64 %i.ea, %i.ek
  %i.es = icmp sgt i64 %i.dw, %i.ef
  %spec.select.i.i.i.i.i38.i.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %spec.select.i.i.i.i.i38.i.i, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i: ; preds = %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i, %bb.s, %bb.q
  store i64 %.val.i.i, ptr %3, align 8, !alias.scope !5251, !noalias !5248
  store i64 %.val28.i.i, ptr %.sroa.2.0..sroa_idx.i.i31.i.i, align 8, !tbaa !51, !alias.scope !5251, !noalias !5248
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i: ; preds = %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.thread.i.i39.i.i, %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit.i.i37.i.i, %bb.r, %bb.p, %.lr.ph.i.i
  %i.et = add nuw i64 %.sroa.4.257.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.et, %i.aw
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5255

.loopexit.i.i:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %.preheader.i.i, %.preheader55.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %.sroa.4.3.i.i = phi i64 [ %i.aw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i ], [ %.ph.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i ], [ %.sroa.4.061.i.i, %.preheader.i.i ], [ %.sroa.4.061.i.i, %.preheader55.i.i ], [ %.ph.i.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i ], [ %i.aw, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationINS_10interval_tENS0_11MinMaxStateIS3_EENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit40.i.i ]
  %i.eu = add nuw nsw i64 %.062.i.i, 1            ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %i.eu, %i.ao
  br i1 %exitcond69.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %bb.h, !llvm.loop !5256

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.u unwind label %bb.ay

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.v unwind label %bb.ay

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !78 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ey = load ptr, ptr %5, align 8, !tbaa !87
  %.val21.i = load ptr, ptr %i.ey, align 8        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5257)
  call void @llvm.experimental.noalias.scope.decl(metadata !5260)
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !67, !noalias !5262 ; 2 uses
  %.not.i.i23.i = icmp eq ptr %i.ez, null
  %.not7.i.i = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not.i.i23.i, label %.preheader.i37.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.v
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.preheader1.i.i
  %.not.i21.i.i = icmp eq ptr %.val21.i, null
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.ab

.preheader.i37.i:                                 ; preds = %bb.v
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateINS_10interval_tEEES4_NS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i37.i
  %.not.i23.i.i = icmp eq ptr %.val21.i, null     ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i25.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.promoted.i38.i = load i8, ptr %i.fc, align 8, !tbaa !4169, !alias.scope !5260, !noalias !5257
  %i.fe = trunc nuw i8 %.promoted.i38.i to i1
  br i1 %.not.i23.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.peel.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph5.i.i
  %i.ff = load i32, ptr %.val21.i, align 4, !tbaa !3, !noalias !5262
  %i.fg = zext i32 %i.ff to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.peel.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.peel.i: ; preds = %bb.w, %.lr.ph5.i.i
  %i.fh = phi i64 [ %i.fg, %bb.w ], [ 0, %.lr.ph5.i.i ]
end_hunk_1
